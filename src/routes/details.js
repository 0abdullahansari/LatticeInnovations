import { fetchDetails } from "../util/fetchDetails.js";
export default (router) => {
  router.get("/details", fetchDetails);
};
