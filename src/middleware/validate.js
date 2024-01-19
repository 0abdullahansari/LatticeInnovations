import { isEmail, isMobilePhone } from "validator";

export const validate = (req, res, next) => {
  try {
    const { name, address, email, phone, password } = req.body;

    if (!(name && address && email && password && photo && req.file))
      return res
        .status(400)
        .json({ status: "Failed", error: "Mandatory fields found empty." });

    name = name.trim().replace(/\s+/g, " ");

    address = address.trim().replace(/\s+/g, " ");

    if (address.length < 10)
      return res
        .status(400)
        .json({ status: "Failed", error: "Provide full address." });

    if (!isEmail)
      return res.status(400).json({ status: "Failed", erro: "Invalid Email." });

    if (phone) {
      if (!isMobilePhone(phone, "any", { strictMode: true })) {
        return res
          .status(400)
          .json({ status: "Failed", error: "Invalid Phone no." });
      }
    }

    if (
      !/^(?=.*[a-z])(?=.*[A-Z])(?=.*\d).+$/.test(password) ||
      password.length < 8 ||
      password.length > 15
    ) {
      return res.status(400).json({
        status: "Failed",
        error:
          "Password length must be 8 to 15, contain atleast uppercase and lowercase alphabet and a number.",
      });
    }

    if (!req.file.mimetype.startsWith("image/")) {
      return res
        .status(400)
        .json({ status: "Failed", error: "Only images are allowed." });
    }

    next();
  } catch (error) {
    console.log(error);
    return res
      .status(400)
      .json({ status: "Failed", error: "Unexpected client side erro." });
  }
};
