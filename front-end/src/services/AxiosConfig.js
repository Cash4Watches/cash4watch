import axios from "axios";

let apiUrl;

let productionURL = "https://cash4watches-db.herokuapp.com/";
let developmentURL = "https://cash4watches-db.herokuapp.com/";

//when running is development go to the development api
window.location.hostname === "127.0.0.1" ||
  window.location.hostname === "localhost"
  ? (apiUrl = developmentURL)
  : (apiUrl = productionURL);

const api = axios.create({
  baseURL: apiUrl,
  headers: { Authentication: `Bearer ${localStorage.getItem("jwt_token")}` },
});
export default api;
