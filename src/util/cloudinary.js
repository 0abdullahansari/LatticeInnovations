import { v2 as cloudinary } from "cloudinary";
import fs from "fs";

cloudinary.config({
  cloud_name: process.env.CLOUD_NAME,
  api_key: process.env.API_KEY,
  api_secret: process.env.API_SECRET,
});

export const writeToCloud = async (path) => {
  try {
    const response = await cloudinary.uploader.upload(path);
    fs.unlinkSync(path);
    return response.url;
  } catch (error) {
    console.log(error);
  }
};
