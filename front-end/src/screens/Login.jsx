import { useNavigate } from "react-router-dom";
import api from "../services/AxiosConfig.js";
import TextField from "@mui/material/TextField";
import { setUser } from "../state/user.js";
import { useDispatch } from "react-redux";

import { useState } from "react";
function Login() {
  const dispatch = useDispatch();
  let navigate = useNavigate();
  const [form, setForm] = useState({
    email: "",
    password: "",
  });
  let logUser = async (e) => {
    e.preventDefault();
    let response = await api.post("/login", form);
    let data = response.data;
    if (data["user"]) {
      localStorage.setItem("jwt_token", data.token);
      dispatch(setUser({ name: data.user.full_name, profile: data.user }));
      navigate("/dashboard");
    } else {
      alert(data["message"]);
    }
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
            type="password"
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
