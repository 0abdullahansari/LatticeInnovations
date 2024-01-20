import express from "express";
import router from "./routes/index.js";
import cors from "cors";
import dotenv from "dotenv";

dotenv.config();
const app = express();
app.use(cors({ origin: "*" }));
app.use("/", router());
app.listen(process.env.PORT, () => {
  console.log("Running");
});
