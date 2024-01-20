import { Router } from "express";
import register from "./register.js";

const router = Router();

export default () => {
  register(router);
  return router;
};
