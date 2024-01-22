import { upload } from "../middleware/multer.js";
import { validate } from "../middleware/validate.js";
import { writeToCloud } from "../middleware/cloudinary.js";
import { writeToDB } from "../controllers/writeToDB.js";

// This function configures route and defines validation for the number of files.

export default (router) => {
  router.post(
    "/register",
    (req, res, next) => {
      upload.single("photo")(req, res, (err) => {
        if (err) {
          return res
            .status(400)
            .json({ status: "Failed", error: "Only one image is allowed." });
        }
        next();
      });
    },
    validate,
    writeToCloud,
    writeToDB
  );
};
