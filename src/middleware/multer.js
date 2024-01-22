import multer from "multer";

const storage = multer.diskStorage({
  destination: function (req, file, cb) {
    cb(null, "./public/temp");
  },
  filename: function (req, file, cb) {
    cb(null, req.body.name + "-" + req.body.address + "-" + file.originalname);
  },
});

const fileFilter = (req, file, cb) => {
  if (req.files && req.files.length > 1) {
    return cb(new Error("Only one file is allowed"));
  }
  cb(null, true);
};

export const upload = multer({ storage: storage, fileFilter: fileFilter });
