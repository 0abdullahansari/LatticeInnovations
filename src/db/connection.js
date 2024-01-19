import mysql2 from "mysql2/promise";

const pool = mysql2.createPool({
  host: process.env.HOST,
  user: process.env.USER,
  password: process.env.PASSWORD,
  database: process.env.DATABASE,
});

export const getConnection = async () => {
  return await pool.getConnection();
};
