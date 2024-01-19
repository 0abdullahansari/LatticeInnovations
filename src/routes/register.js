import { upload } from "../middleware/multer";
import { validate } from "../middleware/validate";
import { register } from "../controllers/register";

export default (router) => {
  router.post("/register", upload.single("photo"), validate, register);
};
