import { v2 as cloudinary } from "cloudinary";
import fs from "fs";

cloudinary.config({
  cloud_name: "dzjxwddew",
  api_key: "146831995814989",
  api_secret: "_rD6EtuQZeWmMqYbsQK891uszAI",
});

// This function handles patient photo upload to cloudinary and appends the img url in req object.

export const writeToCloud = async (req, res, next) => {
  try {
    // console.log(process.env.CLOUD_NAME);
    // console.log(process.env.API_KEY);
    // console.log(process.env.API_SECRET);
    // console.log(req.file.path + "/" + req.file.filename);
    const response = await cloudinary.uploader.upload(req.file.path);
    fs.unlinkSync(req.file.path);
    req.img_details = response;
    next();
  } catch (error) {
    console.log(error);
    fs.unlinkSync(req.file.path);
    return res.status(503).json({
      status: "Failed",
      error: "Experiencing issues with image upload.",
    });
  }
};
