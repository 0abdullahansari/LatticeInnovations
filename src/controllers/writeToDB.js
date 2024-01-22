import { getConnection } from "../db/connection.js";
import { v2 as cloudinary } from "cloudinary";
import bcrypt from "bcrypt";

// This function is called after the form data is validated and registers the patient.

export const writeToDB = async (req, res) => {
  const connection = await getConnection();
  try {
    const hashedPassword = await bcrypt.hash(req.body.password, 2);

    const phoneNumber = req.body.phone || null;

    const query = phoneNumber
      ? "INSERT INTO patients(psych_id, patient_name, address, email, phone, password, photo) VALUES(?, ?, ?, ?, ?, ?, ?)"
      : "INSERT INTO patients(psych_id, patient_name, address, email, password, photo) VALUES(?, ?, ?, ?, ?, ?)";

    const params = phoneNumber
      ? [
          req.body.psych_id,
          req.body.name,
          req.body.address,
          req.body.email,
          phoneNumber,
          hashedPassword,
          req.img_details.url,
        ]
      : [
          req.body.psych_id,
          req.body.name,
          req.body.address,
          req.body.email,
          hashedPassword,
          req.img_details.url,
        ];

    await connection.execute(query, params);

    return res
      .status(201)
      .json({
        status: "Successful",
        message: "Registered successfully.",
        registeredData: req.body,
      });
  } catch (error) {
    cloudinary.api.delete_resources(req.img_details.public_id);
    console.log(error);
    return res
      .status(503)
      .json({ status: "Failed", error: "Experiencing issues with database." });
  } finally {
    connection.release();
  }
};
