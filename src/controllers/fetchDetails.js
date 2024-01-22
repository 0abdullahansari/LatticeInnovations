import { getConnection } from "../db/connection.js";
import { validateHospitalID } from "../util/validateHospitalID.js";

// This function validates hospital id and fetches relevant data.

export const fetchDetails = async (req, res) => {
  const connection = await getConnection();
  try {
    let details = {
      hospitalName: null,
      psychiatristCount: 0,
      totalPatients: 0,
      psychiatristsDetails: [],
      patientDetails: [],
    };
    if (!req.query.hospital_id) {
      return res
        .status(400)
        .json({ status: "Failed", error: "Provide hospital id." });
    } else if (!(await validateHospitalID(req.query.hospital_id))) {
      return res
        .status(400)
        .json({ status: "Failed", error: "Invalid hospital id." });
    }
    const h_id = req.query.hospital_id;

    const [rows] = await connection.execute(
      "SELECT * FROM hospitals JOIN psychiatrists ON hospitals.hospital_id = psychiatrists.hospital_id JOIN patients ON psychiatrists.psych_id = patients.psych_id"
    );

    for (const item of rows) {
      if (item.hospital_id.toString() === h_id) {
        details["hospitalName"] = item.hospital_name;
        details["psychiatristCount"]++;
        details["totalPatients"]++;

        let existingPsychiatrist = details["psychiatristsDetails"].find(
          (psychiatrist) => {
            return psychiatrist.id === item.psych_id;
          }
        );

        if (existingPsychiatrist) {
          existingPsychiatrist.patientCount++;
        } else {
          details["psychiatristsDetails"].push({
            id: item.psych_id,
            name: item.psychiatrist_name,
            patientCount: 1,
          });
        }

        details["patientDetails"].push({
          patientId: item.patient_id,
          psychId: item.psych_id,
          name: item.patient_name,
          address: item.address,
          email: item.email,
          phone: item.phone,
          password: item.password,
          photo: item.photo,
        });
      }
    }

    return res.status(200).json(details);
  } catch (error) {
    console.log(error);
    return res
      .status(500)
      .json({ status: "Failed", error: "Error while fetching from database." });
  } finally {
    connection.release();
  }
};
