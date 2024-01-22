import { getConnection } from "../db/connection.js";

// This fumction checks if the hospital id is valid by querying database.

export const validateHospitalID = async (id) => {
  const connection = await getConnection();
  try {
    const [rows] = await connection.execute(
      "SELECT hospital_id FROM hospitals WHERE(hospital_id=?)",
      [id]
    );
    return rows.length > 0
      ? rows[0].hospital_id.toString() === id
        ? true
        : false
      : false;
  } catch (error) {
    throw error;
  } finally {
    connection.release();
  }
};
