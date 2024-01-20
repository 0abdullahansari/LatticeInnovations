import { getConnection } from "../db/connection.js";

const connection = await getConnection();

export const validatePsychID = async (psych_id) => {
  try {
    const connection = await getConnection();
    const [rows, fields] = await connection.execute(
      "SELECT psych_id FROM psychiatrists"
    );
    rows.forEach((item) => {
      if (item.psych_id === psych_id) return true;
    });
    return false;
  } catch (error) {
    throw error;
  } finally {
    connection.release();
  }
};
