import { Router } from "express";
import register from "./register.js";
import details from "./details.js";

const router = Router();

export default () => {
  register(router);
  details(router);
  return router;
};
