import { fetchDetails } from "../controllers/fetchDetails.js";
export default (router) => {
  router.get("/details", fetchDetails);
};
