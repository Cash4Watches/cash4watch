import { useNavigate } from "react-router-dom";
import "../styles/Login.scss";
import api from "../services/AxiosConfig.js";
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
      <div className="Login">
        <form onSubmit={logUser}>
          <input
            type="text"
            name="email"
            onChange={updateForm}
            value={form.email}
            placeholder={"Email"}
          />
          <input
            type="text"
            name="password"
            onChange={updateForm}
            value={form.password}
            placeholder={"Password"}
          />
          <input type="submit" value="Log In" />
          <p onClick={() => navigate("/register")}>Sign up ?</p>
        </form>
      </div>
    </>
  );
}

export default Login;
