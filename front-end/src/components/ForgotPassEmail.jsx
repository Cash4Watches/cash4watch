import React, { useState, useEffect } from "react";
import TextField from "@mui/material/TextField";
import { useNavigate } from "react-router-dom";
import api from "../services/AxiosConfig.js";
function ForgotPassEmail() {
  let navigate = useNavigate();
  const [token, setToken] = useState("");
  const [email, setEmail] = useState("");
  console.log(token);
  useEffect(() => {
    let windowToken = window.location.search.substr(1);
    setToken(windowToken);
  }, []);
  let handleSubmit = async (e) => {
    e.preventDefault();
    try {
      let response = await api.post("/forgot-password", {
        email: email,
      });
      alert(response.data["message"]);
      navigate("/");
    } catch (e) {
      alert(e.response.statusText);
    }
  };
  return (
    <div
      style={{
        width: "100vw",
        height: "95vh",
        // backgroundColor: "black",
        display: "flex",
        justifyContent: "center",
        alignItems: "center",
      }}
    >
      <form
        onSubmit={(e) => {
          handleSubmit(e);
        }}
        style={{ display: "flex", flexDirection: "column" }}
      >
        <h1>Enter Your Email:</h1>
        <TextField
          label="Email"
          type="text"
          name="email"
          onChange={(e) => {
            setEmail(e.target.value);
          }}
          value={email}
          required
        />
      </form>
    </div>
  );
}

export default ForgotPassEmail;
