import mysql2 from "mysql2/promise";

// For using hosted database.

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

// For using local database.

// const pool = mysql2.createPool({
//   host: "localhost",
//   user: "your username",
//   password: "your password",
//   database: "defaultdb",   ---> Change if needed
//   connectionLimit: 10,
//   port: 3306,      ----------->Change if needed
//   waitForConnections: true,
// });

// This function returns a MySQL connection from pool.

export const getConnection = async () => {
  return await pool.getConnection();
};
