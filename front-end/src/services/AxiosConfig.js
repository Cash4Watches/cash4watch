import axios from "axios";

let apiUrl;

let productionURL = "https://pacific-escarpment-97348.herokuapp.com/";
let developmentURL = "https://pacific-escarpment-97348.herokuapp.com/";

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
