import { useNavigate } from "react-router-dom";
import api from "../services/AxiosConfig.js";
import TextField from "@mui/material/TextField";

import { useState } from "react";
function Login() {
  let navigate = useNavigate();
  const [form, setForm] = useState({
    email: "",
    password: "",
  });
  let logUser = (e) => {
    e.preventDefault();
    // navigate("/dashboard");
    console.log(form);
  };
  let updateForm = (e) => {
    let name = e.target.name;
    let value = e.target.value;
    setForm({
      ...form,
      [name]: value,
    });
  };
  return (
    <>
      <div className="Register">
        <form onSubmit={logUser}>
          <h1>Login</h1>
          <TextField
            label="Email"
            type="text"
            name="email"
            onChange={updateForm}
            value={form.email}
            required
          />
          <TextField
            type="text"
            name="password"
            label="Password"
            onChange={updateForm}
            value={form.password}
            required
          />
          <input type="submit" value="Log In" />
          <p onClick={() => navigate("/register")}>
            Need an account ? Sign up{" "}
          </p>
        </form>
      </div>
    </>
  );
}

export default Login;
