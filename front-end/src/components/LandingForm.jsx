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

const LandingForm = () => {
  const form = useSelector((state) => state.form.value);
  const [showPassword, setShowPassword] = useState(false);
  const [formError, setFormError] = useState({
    passMatch: { value: false, message: "" },
  });
  let navigate = useNavigate();
  const dispatch = useDispatch();
  let clearError = () => {
    setFormError({
      passMatch: { value: false, message: "" },
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

  let handleSubmit = (e) => {
    e.preventDefault();
    // if (form.email.includes("@") && !onlySpaces(form.name))
    //   navigate("/form-signup");
    // !form.email.includes("@") ? setEmailError(true) : setEmailError(false);
    // onlySpaces(form.name) ? setNameError(true) : setNameError(false);
  };

  return (
    <>
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
            label="state"
            onChange={updateFormData}
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
            <FormControl className="Landing__form-items-inputs">
              <InputLabel>Confirm</InputLabel>
              <OutlinedInput
                type={showPassword ? "text" : "password"}
                value={form["confirm"] || ""}
                name="confirm"
                onChange={updateFormData}
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
    </>
  );
};

export default LandingForm;
