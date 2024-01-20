import { getConnection } from "../db/connection.js";

const connection = await getConnection();

export const patienExists = async (name, address, psych_id) => {
  try {
    const connection = await getConnection();
    const [rows, fields] = await connection.execute(
      "SELECT psych_id FROM patients WHERE(name = ? AND address = ?)",
      [name, address]
    );
    return rows.length > 0 ? (psych_id === rows[0].psych_id ? 1 : 2) : 3;
  } catch (error) {
    throw error;
  } finally {
    connection.release();
  }
};
