import mysql2 from "mysql2/promise";

const pool = mysql2.createPool({
  host: "database-theattice.a.aivencloud.com",
  user: "avnadmin",
  password: "AVNS_PO0Z90RldG2lKLa33qB",
  database: "defaultdb",
  port: 19377,
  waitForConnections: true,
  connectionLimit: 10,
  queueLimit: 0,
});

export const getConnection = async () => {
  return await pool.getConnection();
};
