import { useNavigate } from "react-router-dom";
import "../styles/Register.scss";
import api from "../services/AxiosConfig.js";
import { useState } from "react";
function Register() {
  let navigate = useNavigate();
  const [form, setForm] = useState({
    name: "Name",
    email: "Email Address",
    company: "Company Name",
    streetOne: "Street One",
    streetTwo: "Street Two",
    city: "City",
    state: "State",
    zip: "Zip Code",
  });
  let registerUser = async (e) => {
    e.preventDefault();

    let user = await api.post("/signup", form);

    console.log(user);
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
        <form onSubmit={registerUser}>
          <input
            type="text"
            name="name"
            onChange={updateForm}
            placeholder={form.name}
            required
          />
          <input
            type="text"
            name="email"
            onChange={updateForm}
            placeholder={form.email}
            required
          />
          <input
            type="text"
            name="company"
            onChange={updateForm}
            placeholder={form.company}
          />
          <input
            type="text"
            name="streetOne"
            onChange={updateForm}
            placeholder={form.streetOne}
            required
          />
          <input
            type="text"
            name="streetTwo"
            onChange={updateForm}
            placeholder={form.streetTwo}
          />
          <input
            type="text"
            name="city"
            onChange={updateForm}
            placeholder={form.city}
            required
          />
          <input
            type="text"
            name="state"
            onChange={updateForm}
            placeholder={form.state}
            required
          />
          <input
            type="text"
            name="zip"
            onChange={updateForm}
            placeholder={form.zip}
            required
          />
          <input type="submit" value={"Register"} />
          <p onClick={() => navigate("/login")}>
            Already have an account ? Login
          </p>
        </form>
      </div>
    </>
  );
}

export default Register;
