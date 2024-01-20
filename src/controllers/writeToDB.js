import { getConnection } from "../db/connection.js";
import { v2 as cloudinary } from "cloudinary";

export const writeToDB = async (req, res) => {
  try {
    const connection = await getConnection();
    await connection.execute(
      "INSERT INTO patients(psych_id, name, address, email, phone, password, photo) VALUES(?, ?, ?, ?, ?, ?, ?)",
      [
        req.body.psych_id,
        req.body.name,
        req.body.address,
        req.body.email,
        req.body.phone,
        req.body.password,
        req.img_details.url,
      ]
    );
    connection.release();
    return res
      .status(201)
      .json({ status: "Successful", message: "Registered successfully." });
  } catch (error) {
    cloudinary.api.delete_resources(req.img_details.public_id);
    console.log(error);
    return res
      .status(503)
      .json({ status: "Failed", error: "Experiencing issues with database." });
  }
};
