import React, { useState, useEffect } from "react";
import TextField from "@mui/material/TextField";
// import "../styles/Register.scss";
import { useNavigate } from "react-router-dom";
import api from "../services/AxiosConfig.js";
function ForgottenPassword() {
  let navigate = useNavigate();
  const [token, setToken] = useState("");
  const [password, setPassword] = useState("");
  console.log(token);
  useEffect(() => {
    let windowToken = window.location.search.substr(1);
    setToken(windowToken);
  }, []);
  let handleSubmit = async (e) => {
    e.preventDefault();
    try {
      let response = await api.post(
        "/change-forgotten-password",
        {
          new_password: password,
        },
        {
          headers: {
            Authentication: `Bearer ${token}`,
          },
        }
      );
      !response.data["message"]
        ? navigate("/")
        : alert(response.data["message"]);
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
        <h1>Enter New Password:</h1>
        <TextField
          label="Password"
          type="password"
          name="password"
          onChange={(e) => {
            setPassword(e.target.value);
          }}
          value={password}
          required
        />
      </form>
    </div>
  );
}

export default ForgottenPassword;
