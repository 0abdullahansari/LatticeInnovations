import express from "express";
import { writeToDB } from "../util/writeToDB";

export const register = async (req, res) => {
  try {
    writeToDB();
    return res
      .status(201)
      .json({ status: "Successful", message: "Registered successfully." });
  } catch (error) {
    console.log(error);
    return res
      .status(500)
      .json({ status: "Failed", error: "Server side error." });
  }
};
