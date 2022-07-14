import axios from "axios";

let apiUrl;

let productionURL = "heroku/app";
let developmentURL = "http://192.168.1.7:3000";

//when running is development go to the development api
window.location.hostname === "127.0.0.1" ||
window.location.hostname === "localhost"
  ? (apiUrl = developmentURL)
  : (apiUrl = productionURL);

const api = axios.create({
  baseURL: apiUrl,
});

export default api;
