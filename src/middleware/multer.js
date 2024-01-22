import multer from "multer";

// Configuration for multer to handle incoming photos.

const storage = multer.diskStorage({
  destination: function (req, file, cb) {
    cb(null, "./public/temp");
  },
  filename: function (req, file, cb) {
    cb(null, req.body.name + "-" + req.body.address + "-" + file.originalname);
  },
});

export const upload = multer({ storage: storage });
