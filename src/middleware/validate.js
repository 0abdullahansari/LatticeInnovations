import validator from "validator";
import { patienExists } from "../util/patientExists.js";
import { validatePsychID } from "../util/validatePsychID.js";
import fs from "fs";

// This function validates form data.

export const validate = async (req, res, next) => {
  try {
    const { name, address, email, phone, password } = req.body;

    if (!(name && address && email && password && req.file)) {
      if (req.file) fs.unlinkSync(req.file.path);
      return res
        .status(400)
        .json({ status: "Failed", error: "Mandatory fields found empty." });
    }

    if (await validatePsychID(req.body.psych_id)) {
      fs.unlinkSync(req.file.path);
      return res
        .status(400)
        .json({ status: "Failed", error: "Invalid psychiatrist ID." });
    }
    req.body.name = name.trim().replace(/\s+/g, " ");

    if (req.body.name.length < 2) {
      fs.unlinkSync(req.file.path);
      return res
        .status(400)
        .json({ status: "Failed", error: "Name too short." });
    }

    const temp_address = address.trim().replace(/\s+/g, " ");

    if (temp_address.length < 10) {
      fs.unlinkSync(req.file.path);
      return res
        .status(400)
        .json({ status: "Failed", error: "Provide full address." });
    }

    req.body.address = temp_address;

    if (!validator.isEmail(email)) {
      fs.unlinkSync(req.file.path);
      return res
        .status(400)
        .json({ status: "Failed", error: "Invalid Email." });
    }

    if (phone && !validator.isMobilePhone(phone, "any", { strictMode: true })) {
      fs.unlinkSync(req.file.path);
      return res
        .status(400)
        .json({ status: "Failed", error: "Invalid Phone no." });
    }

    if (
      !/^(?=.*[a-z])(?=.*[A-Z])(?=.*\d).+$/.test(password) ||
      password.length < 8 ||
      password.length > 15
    ) {
      fs.unlinkSync(req.file.path);
      return res.status(400).json({
        status: "Failed",
        error:
          "Password length must be 8 to 15, contain atleast uppercase and lowercase alphabet and a number.",
      });
    }
    if (!req.file.mimetype.startsWith("image/")) {
      fs.unlinkSync(req.file.path);
      return res
        .status(400)
        .json({ status: "Failed", error: "Only images are allowed." });
    } else if (req.file.size > 2097152) {
      fs.unlinkSync(req.file.path);
      return res
        .status(400)
        .json({ status: "Failed", error: "Image size shoud be under 2MB." });
    }

    const existence = await patienExists(
      req.body.name,
      temp_address,
      req.body.psych_id
    );

    switch (existence) {
      case 1: {
        fs.unlinkSync(req.file.path);
        return res.status(400).json({
          status: "Failed",
          error: "Patient already registered by you.",
        });
      }

      case 2: {
        fs.unlinkSync(req.file.path);
        return res.status(400).json({
          status: "Failed",
          error: "Patient already registered by other psychiatrist.",
        });
      }
      case 3:
        next();
    }
  } catch (error) {
    console.log(error);
    if (req.file) fs.unlinkSync(req.file.path);
    return res
      .status(400)
      .json({ status: "Failed", error: "Unexpected client side error." });
  }
};
