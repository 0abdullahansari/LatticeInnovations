import express from "express";
import router from "./routes/index.js";
import cors from "cors";
import dotenv from "dotenv";

dotenv.config();
const app = express();
const PORT = process.env.PORT || 3000;
app.use(cors({ origin: "*" }));
app.use("/", router());
app.listen(PORT, () => {
  console.log("Running");
});
