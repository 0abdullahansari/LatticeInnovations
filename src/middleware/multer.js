import express from "express";
import multer from "multer";

const storage = multer.diskStorage({
  destination: function (req, file, cb) {
    cb(null, "./public/temp");
  },
  filename: function (req, file, cb) {
    cb(null, req.body.name + "-" + req.body.address + "-" + file.originalname);
  },
});

export const upload = multer({ storage: storage });
