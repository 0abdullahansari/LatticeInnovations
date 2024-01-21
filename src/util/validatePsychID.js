import { getConnection } from "../db/connection.js";

const connection = await getConnection();

export const validatePsychID = async (psych_id) => {
  const connection = await getConnection();
  try {
    if (!psych_id) return true;
    const [rows] = await connection.execute(
      "SELECT psych_id FROM psychiatrists"
    );
    for (let row of rows) {
      if (row.psych_id.toString() === psych_id) return false;
    }
    return true;
  } catch (error) {
    throw error;
  } finally {
    connection.release();
  }
};
