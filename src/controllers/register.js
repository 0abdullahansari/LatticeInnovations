import express from "express";

export const register = async (req, res) => {
  try {
    const { name, address, email, phone, password, photo } = req.body;
    if (!(name && address && email && password && photo))
      res
        .status(400)
        .json({ status: "Failed", error: "Mandatory fields found empty." });
    name = name.trim().replace(/\s+/g, " ");
  } catch (error) {}
};
