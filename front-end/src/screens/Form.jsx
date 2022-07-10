import "../styles/Form.scss";
import PublishIcon from "@mui/icons-material/Publish";
import { useState } from "react";
import TextField from "@mui/material/TextField";
import InputLabel from "@mui/material/InputLabel";
import MenuItem from "@mui/material/MenuItem";
import OutlinedInput from "@mui/material/OutlinedInput";
import InputAdornment from "@mui/material/InputAdornment";
import IconButton from "@mui/material/IconButton";

import FormControl from "@mui/material/FormControl";
import Visibility from "@mui/icons-material/Visibility";
import VisibilityOff from "@mui/icons-material/VisibilityOff";

import Select from "@mui/material/Select";
import { useSelector, useDispatch } from "react-redux";
import { setForm } from "../state/form.js";
import { useNavigate } from "react-router-dom";
import { FormHelperText } from "@mui/material";

function Form() {
  let navigate = useNavigate();
  const [showPassword, setShowPassword] = useState(false);
  const dispatch = useDispatch();
  const form = useSelector((state) => state.form.value);
  const [formError, setFormError] = useState({
    name: { value: false, message: "" },
    email: { value: false, message: "" },
    passMatch: { value: false, message: "" },
  });
  let onlySpaces = (str) => {
    return str.trim().length === 0;
  };
  let passwordisVaild = (password, confirm) => {
    //i made this a function inorder to allow more vaildation to passwords
    //but for now im only checking if they match
    if (password !== confirm) return false;
    return true;
  };
  let vaildateForm = (form) => {
    let isVaild = true;
    if (onlySpaces(form["name"].value)) {
      setFormError({
        ...formError,
        name: { value: true, message: "Name cant be empty" },
      });
      isVaild = false;
    }
    if (
      !form["email"].value.includes(".") ||
      !form["email"].value.includes("@")
    ) {
      setFormError({
        ...formError,
        email: { value: true, message: "Needs to be a vaild emai" },
      });
      isVaild = false;
    }
    if (!passwordisVaild(form["password"].value, form["confirm"].value)) {
      isVaild = false;
      setFormError({
        ...formError,
        passMatch: { value: true, message: "Passwords dont match" },
      });
    }
    return isVaild;
  };
  let handleSubmit = (e) => {
    e.preventDefault();
    if (vaildateForm(e.target)) {
      navigate("/dashboard");
    } else {
      // due to time constraints this error message is alert for now
      alert("Double check form inputs");
    }
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
  let clearError = (e) => {
    let inputName = e.target.name;
    if (inputName === "confirm" || inputName === "password")
      inputName = "passMatch";
    setFormError({
      ...formError,
      [inputName]: { value: false, message: "" },
    });
  };
  return (
    <>
      <div className="Form">
        <h1 className="Form-title">Watch Submission Form</h1>
        <form onSubmit={handleSubmit}>
          <TextField
            label="Full Name"
            name="name"
            onChange={updateFormData}
            required
            error={formError.name.value}
            helperText={formError.name.message}
            onKeyDown={clearError}
            fullWidth
            className="Form-input"
            value={form.name || ""}
          />
          <TextField
            label="Email"
            name="email"
            onChange={updateFormData}
            required
            error={formError.email.value}
            onKeyDown={clearError}
            helperText={formError.email.message}
            fullWidth
            className="Form-input"
            value={form.email || ""}
          />
          <TextField
            label="Phone Number"
            name="number"
            onChange={updateFormData}
            required
            fullWidth
            className="Form-input"
            value={form.number || ""}
          />

          <FormControl fullWidth className="Form-input">
            <InputLabel id="demo-simple-select-label">Brand Name</InputLabel>
            <Select
              value={form.brand || ""}
              label="Brand Name"
              onChange={updateFormData}
              name="brand"
              required
            >
              <MenuItem value={"Rolex"}>Rolex</MenuItem>
              <MenuItem value={"Patek Philippe"}>Patek Philippe</MenuItem>
              <MenuItem value={"Cartier"}>Cartier</MenuItem>
              <MenuItem value={"Richard Mille"}>Richard Mille</MenuItem>
              <MenuItem value={"Vacheron"}>Vacheron</MenuItem>
              <MenuItem value={"Omega"}>Omega</MenuItem>
              <MenuItem value={"Aude4mars Piguet"}>Audemars Piguet</MenuItem>
              <MenuItem value={"Tudor"}>Tudor</MenuItem>
              <MenuItem value={"IWC"}>IWC</MenuItem>
              <MenuItem value={"Bulgari"}>Bulgari</MenuItem>
              <MenuItem value={"Panerai"}>Panerai</MenuItem>
            </Select>
          </FormControl>
          {/* MORE INPUT FIELDS */}
          <TextField
            label="Model Number"
            name="model"
            onChange={updateFormData}
            required
            fullWidth
            className="Form-input"
            // type="number"
            value={form.model || ""}
          />
          <TextField
            label="Reference Number"
            name="reference"
            onChange={updateFormData}
            required
            fullWidth
            className="Form-input"
            // type="number"
            value={form.reference || ""}
          />
          <TextField
            label="Previous Service"
            name="service"
            onChange={updateFormData}
            fullWidth
            multiline
            minRows={2}
            maxRows={5}
            className="Form-input"
            value={form.service || ""}
          />
          <TextField
            label="Previous Polish"
            name="polish"
            onChange={updateFormData}
            fullWidth
            multiline
            minRows={2}
            maxRows={5}
            className="Form-input"
            value={form.polish || ""}
          />
          <FormControl fullWidth className="Form-input">
            <InputLabel id="demo-simple-select-label">Papers</InputLabel>
            <Select
              value={form.papers || ""}
              label="Papers"
              onChange={updateFormData}
              name="papers"
              required
            >
              <MenuItem value={"yes"}>Yes</MenuItem>
              <MenuItem value={"no"}>No</MenuItem>
            </Select>
          </FormControl>
          <TextField
            label="Whats included "
            helperText="(e.g, box, manuals)"
            name="included"
            onChange={updateFormData}
            fullWidth
            multiline
            minRows={2}
            maxRows={5}
            className="Form-input"
            value={form.included || ""}
          />
          <TextField
            label="Anything Else ? "
            name="notes"
            onChange={updateFormData}
            fullWidth
            multiline
            minRows={2}
            maxRows={5}
            className="Form-input"
            value={form.notes || ""}
          />
          {/* PASSWORDS INPUT FIELDS */}
          <FormControl sx={{ m: 1, width: "100%" }} variant="outlined">
            <InputLabel htmlFor="outlined-adornment-password">
              Password
            </InputLabel>
            <OutlinedInput
              type={showPassword ? "text" : "password"}
              value={form.password || ""}
              name="password"
              onChange={updateFormData}
              error={formError.passMatch.value}
              onKeyDown={clearError}
              required
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
              label="Password"
            />
            <FormHelperText error={formError.passMatch.value}>
              {formError.passMatch.message}
            </FormHelperText>
          </FormControl>
          <FormControl sx={{ m: 1, width: "100%" }} variant="outlined">
            <InputLabel htmlFor="outlined-adornment-password">
              Confirm Password
            </InputLabel>
            <OutlinedInput
              type={showPassword ? "text" : "password"}
              value={form.confirm || ""}
              name="confirm"
              onChange={updateFormData}
              error={formError.passMatch.value}
              onKeyDown={clearError}
              required
              label="Confirm Password"
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
          <button className="Form-submit" type="submit">
            <p>Submit</p>
            <PublishIcon className="Form-submit-icon" sx={{ fontSize: 40 }} />
          </button>
        </form>
      </div>
    </>
  );
}

export default Form;
