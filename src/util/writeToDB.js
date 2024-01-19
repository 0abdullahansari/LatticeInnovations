import { getConnection } from "../db/connection";
import { writeToCloudinary } from "../util/cloudinary";

export const writeToDB = async () => {
  try {
    const imgurl = await writeToCloudinary(req.file.destination);
    const connection = await getConnection();
    connection.execute(
      "INSERT INTO patients(psych_id, name, address, email, phone, password, photo) VALUES(?, ?, ?, ?, ?, ?, ?)",
      [
        req.body.psych_id,
        req.body.name,
        req.body.address,
        req.body.email,
        req.body.phone,
        req.body.password,
        imgurl,
      ]
    );
  } catch (error) {
    console.log(error);
  }
};
