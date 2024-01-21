import { getConnection } from "../db/connection.js";
import { v2 as cloudinary } from "cloudinary";
import bcrypt from "bcrypt";

export const writeToDB = async (req, res) => {
  const connection = await getConnection();
  try {
    const hashedPassword = await bcrypt.hash(req.body.password, 2);
    await connection.execute(
      "INSERT INTO patients(psych_id, patient_name, address, email, phone, password, photo) VALUES(?, ?, ?, ?, ?, ?, ?)",
      [
        req.body.psych_id,
        req.body.name,
        req.body.address,
        req.body.email,
        req.body.phone,
        hashedPassword,
        req.img_details.url,
      ]
    );
    return res
      .status(201)
      .json({ status: "Successful", message: "Registered successfully." });
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
