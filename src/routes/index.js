import { Router } from "express";
import register from "./register";

const router = Router();

export default () => {
  register(router);
  return router;
};
