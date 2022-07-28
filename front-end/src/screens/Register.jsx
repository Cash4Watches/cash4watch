import { useNavigate } from "react-router-dom";
import "../styles/Register.scss";
import api from "../services/AxiosConfig.js";
import TextField from "@mui/material/TextField";
import OutlinedInput from "@mui/material/OutlinedInput";
import InputAdornment from "@mui/material/InputAdornment";
import IconButton from "@mui/material/IconButton";
import InputLabel from "@mui/material/InputLabel";
import FormControl from "@mui/material/FormControl";
import Visibility from "@mui/icons-material/Visibility";
import VisibilityOff from "@mui/icons-material/VisibilityOff";
import { FormHelperText } from "@mui/material";
import { useDispatch } from "react-redux";
import { setUser } from "../state/user.js";
import { useState } from "react";

function Register() {
  let navigate = useNavigate();
  const dispatch = useDispatch();

  const [showPassword, setShowPassword] = useState(false);
  const [formError, setFormError] = useState({
    passMatch: { value: false, message: "" },
  });
  const [form, setForm] = useState({});
  let registerUser = async (e) => {
    e.preventDefault();

    let response = await api.post("/signup", form);
    let data = response.data;
    console.log(data);
    if (data["message"]) {
      alert(data.message);
    } else {
      localStorage.setItem("jwt_token", data.token);
      dispatch(setUser({ name: data.user.full_name, profile: data.user }));
      navigate("/dashboard");
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
  let clearError = () => {
    setFormError({
      passMatch: { value: false, message: "" },
    });
  };
  return (
    <>
      <div className="Register">
        <form onSubmit={registerUser}>
          <h1>Register</h1>
          <TextField
            fullWidth
            type="text"
            name="full_name"
            label="Name"
            placeholder="Full Name"
            onChange={updateForm}
            autoComplete="full name"
            value={form["full_name"] || ""}
            inputProps={{ pattern: "[a-zA-Z ]+" }}
            required
          />
          <TextField
            fullWidth
            type="text"
            name="email"
            label="Email"
            placeholder="Email Address"
            autoComplete="email"
            onChange={updateForm}
            value={form["email"] || ""}
            required
          />
          <TextField
            fullWidth
            type="text"
            name="phone"
            label="Phone"
            placeholder="Phone Number"
            autoComplete="phone"
            onChange={updateForm}
            value={form["phone"] || ""}
            required
          />
          <TextField
            fullWidth
            type="text"
            name="company"
            label="Company"
            placeholder="Optional"
            onChange={updateForm}
            value={form["company"] || ""}
          />
          <TextField
            fullWidth
            type="text"
            name="street1"
            label="Street One"
            onChange={updateForm}
            value={form["street1"] || ""}
            autoComplete="street-address"
            required
          />
          <TextField
            fullWidth
            type="text"
            name="street2"
            label="Street Two"
            placeholder="Optional"
            autoComplete="none"
            onChange={updateForm}
            value={form["street2"] || ""}
          />
          <TextField
            fullWidth
            type="text"
            name="city"
            label="City"
            onChange={updateForm}
            value={form["city"] || ""}
            required
          />
          <TextField
            fullWidth
            type="text"
            name="state"
            label="state"
            onChange={updateForm}
            value={form["state"] || ""}
            required
          />
          <TextField
            fullWidth
            className="Register-input"
            type="text"
            inputProps={{ inputMode: "numeric", pattern: "[0-9]*" }}
            name="zip"
            label="Zip"
            placeholder="Zip Code"
            onChange={updateForm}
            value={form["zip"] || ""}
            required
          />
          <FormControl>
            <InputLabel htmlFor="outlined-adornment-password">
              Password
            </InputLabel>
            <OutlinedInput
              type={showPassword ? "text" : "password"}
              value={form["password"] || ""}
              name="password"
              onChange={updateForm}
              error={formError.passMatch.value}
              onKeyDown={clearError}
              required
              autoComplete="current-password"
              endAdornment={
                <InputAdornment position="end">
                  <IconButton
                    aria-label="toggle password visibility"
                    onClick={() => setShowPassword((prev) => !prev)}
                    edge="end"
                  >
                    {showPassword ? <VisibilityOff /> : <Visibility />}
                  </IconButton>
                </InputAdornment>
              }
              label="Password"
            />
            <FormHelperText error={formError.passMatch.value}>
              {formError.passMatch.message}
            </FormHelperText>
          </FormControl>
          <FormControl>
            <InputLabel>Confirm</InputLabel>
            <OutlinedInput
              type={showPassword ? "text" : "password"}
              value={form["confirm"] || ""}
              name="confirm"
              onChange={updateForm}
              error={formError.passMatch.value}
              onKeyDown={clearError}
              required
              label="Confirm"
              placeholder="Confirm Password"
              autoComplete="password"
              endAdornment={
                <InputAdornment position="end">
                  <IconButton
                    aria-label="toggle password visibility"
                    onClick={() => setShowPassword((prev) => !prev)}
                    edge="end"
                  >
                    {showPassword ? <VisibilityOff /> : <Visibility />}
                  </IconButton>
                </InputAdornment>
              }
            />
            <FormHelperText error={formError.passMatch.value}>
              {formError.passMatch.message}
            </FormHelperText>
          </FormControl>
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
