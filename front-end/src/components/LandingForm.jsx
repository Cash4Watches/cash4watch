import React from "react";
import ArrowForwardIcon from "@mui/icons-material/ArrowForward";
import TextField from "@mui/material/TextField";
import OutlinedInput from "@mui/material/OutlinedInput";
import InputAdornment from "@mui/material/InputAdornment";
import IconButton from "@mui/material/IconButton";
import InputLabel from "@mui/material/InputLabel";
import FormControl from "@mui/material/FormControl";
import Visibility from "@mui/icons-material/Visibility";
import VisibilityOff from "@mui/icons-material/VisibilityOff";
import { FormHelperText } from "@mui/material";
import { useNavigate } from "react-router-dom";
import { useSelector, useDispatch } from "react-redux";
import { setForm } from "../state/form.js";
import { useState } from "react";
import api from "../services/AxiosConfig.js";
import { setUser } from "../state/user.js";
const LandingForm = () => {
  const form = useSelector((state) => state.form.value);
  const [showPassword, setShowPassword] = useState(false);
  const [formError, setFormError] = useState({
    emailError: { value: false, message: "" },
    full_nameError: { value: false, message: "" },
    passwordError: { value: false, message: "" },
  });
  const [isLoading, setIsLoading] = useState(false);
  let navigate = useNavigate();
  const dispatch = useDispatch();
  //this clears the error of what ever input field in being typed in
  let clearError = (e) => {
    let name = e.target.name;
    // in the event the user presses a key on the confirm box it should instead clear both the conform and password fields
    if (name === "confirm") name = "password";
    setFormError({
      ...formError,
      [`${name}Error`]: { value: false, message: "" },
    });
  };
  let onlySpaces = (str) => {
    return str.trim().length === 0;
  };
  let updateFormData = (e) => {
    let { name, value } = e.target;
    dispatch(
      setForm({
        ...form,
        [name]: value,
      })
    );
  };
  let registerUser = async () => {
    try {
      if (!isLoading) {
        setIsLoading(true);
        let response = await api.post("/signup", form);
        let data = response.data;
        if (data["message"]) {
          alert(data.message);
        } else {
          localStorage.setItem("jwt_token", data.token);
          dispatch(setUser({ name: data.user.full_name, profile: data.user }));
          navigate("/dashboard");
        }
        setIsLoading(false);
      } else {
        alert("Please wait .... registering user ...");
      }
    } catch (error) {
      alert(error);
    }
  };
  let handleFormError = (
    nameErr = false,
    emailErr = false,
    passErr = false
  ) => {
    if (nameErr) {
      setFormError({
        ...formError,
        full_nameError: { value: true, message: "Incorrect naming" },
      });
    } else if (emailErr) {
      setFormError({
        ...formError,
        emailError: { value: true, message: "Incorrect email" },
      });
    } else if (passErr) {
      setFormError({
        ...formError,
        passwordError: { value: true, message: "Passwords do not match" },
      });
    }
  };

  let handleSubmit = (e) => {
    e.preventDefault();
    if (
      form.email.includes("@") &&
      !onlySpaces(form.full_name) &&
      form.password === form.confirm
    )
      registerUser();

    if (!form.email.includes("@")) handleFormError(false, true);

    if (onlySpaces(form.full_name)) handleFormError(true, false);

    if (form.password !== form.confirm) handleFormError(false, false, true);
  };

  return (
    <div className="Landing-Form">
      <div className="Landing__form__title">
        <p>We Buy Your Watches at Top End Prices</p>
      </div>
      <div className="Landing__form-items">
        <form onSubmit={handleSubmit}>
          <TextField
            className="Landing__form-items-inputs"
            type="text"
            name="full_name"
            label="Name"
            placeholder="Full Name"
            onChange={updateFormData}
            autoComplete="full name"
            value={form["full_name"] || ""}
            inputProps={{ pattern: "[a-zA-Z ]+" }}
            error={formError.full_nameError.value}
            helperText={formError.full_nameError.message}
            onKeyDown={clearError}
            required
          />
          <TextField
            className="Landing__form-items-inputs"
            type="text"
            name="email"
            label="Email"
            placeholder="Email Address"
            autoComplete="email"
            onChange={updateFormData}
            value={form["email"] || ""}
            error={formError.emailError.value}
            helperText={formError.emailError.message}
            onKeyDown={clearError}
            required
          />
          <TextField
            className="Landing__form-items-inputs"
            type="text"
            name="phone"
            label="Phone"
            placeholder="Phone Number"
            autoComplete="phone"
            onChange={updateFormData}
            value={form["phone"] || ""}
            required
          />

          <TextField
            className="Landing__form-items-inputs"
            type="text"
            name="street1"
            label="Address"
            onChange={updateFormData}
            value={form["street1"] || ""}
            autoComplete="street-address"
            required
          />

          <TextField
            className="Landing__form-items-inputs"
            type="text"
            name="city"
            label="City"
            onChange={updateFormData}
            value={form["city"] || ""}
            required
          />
          <TextField
            className="Landing__form-items-inputs"
            type="text"
            name="state"
            label="State"
            onChange={updateFormData}
            autoComplete="address-level1"
            value={form["state"] || ""}
            required
          />
          <TextField
            className="Landing__form-items-inputs"
            type="text"
            inputProps={{ inputMode: "numeric", pattern: "[0-9]*" }}
            name="zip"
            label="Zip"
            placeholder="Zip Code"
            onChange={updateFormData}
            value={form["zip"] || ""}
            required
          />
          <div className="Landing__form-items-inputs-passwords">
            <FormControl className="Landing__form-items-inputs">
              <InputLabel htmlFor="outlined-adornment-password">
                Password
              </InputLabel>
              <OutlinedInput
                type={showPassword ? "text" : "password"}
                value={form["password"] || ""}
                name="password"
                onChange={updateFormData}
                error={formError.passwordError.value}
                helpertext={formError.passwordError.message}
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
              <FormHelperText error={formError.passwordError.value}>
                {formError.passwordError.message}
              </FormHelperText>
            </FormControl>
            <FormControl className="Landing__form-items-inputs">
              <InputLabel>Confirm</InputLabel>
              <OutlinedInput
                type={showPassword ? "text" : "password"}
                value={form["confirm"] || ""}
                name="confirm"
                onChange={updateFormData}
                error={formError.passwordError.value}
                helpertext={formError.passwordError.message}
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
              <FormHelperText error={formError.passwordError.value}>
                {formError.passwordError.message}
              </FormHelperText>
            </FormControl>
          </div>
          <button className="Landing__form-submit" type="submit">
            <p>Sign Up </p>
            <ArrowForwardIcon
              className="Landing__form-submit__arrow"
              sx={{ fontSize: 25 }}
            />
          </button>
        </form>
      </div>
    </div>
  );
};

export default LandingForm;
