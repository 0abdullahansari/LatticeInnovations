import { upload } from "../middleware/multer.js";
import { validate } from "../middleware/validate.js";
import { writeToCloud } from "../util/cloudinary.js";
import { writeToDB } from "../controllers/writeToDB.js";

export default (router) => {
  router.post(
    "/register",
    upload.single("photo"),
    validate,
    writeToCloud,
    writeToDB
  );
};
