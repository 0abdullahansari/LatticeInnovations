import express from "express";
import router from "./routes/index";
const app = express();

app.use(cors({ origin: "*" }));
app.use("/", router());
app.listen(process.env.PORT, () => {
  console.console.log("Running");
});
