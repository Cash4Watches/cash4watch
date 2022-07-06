import "../styles/Form.scss";
import PublishIcon from "@mui/icons-material/Publish";
import { useState, useEffect } from "react";
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
function Form() {
  const [showPassword, setShowPassword] = useState(false);
  const dispatch = useDispatch();
  const form = useSelector((state) => state.form.value);
  const [nameError, setNameError] = useState(false);
  const [emailError, setEmailError] = useState(false);

  let handleSubmit = (e) => {
    e.preventDefault();
    console.log(form);
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
            error={nameError}
            fullWidth
            className="Form-input"
            value={form.name || ""}
          />
          <TextField
            label="Email"
            name="email"
            onChange={updateFormData}
            required
            error={emailError}
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
            label="Whats included (e.g, box, manuals)"
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
          <FormControl sx={{ m: 1, width: "25ch" }} variant="outlined">
            <InputLabel htmlFor="outlined-adornment-password">
              Password
            </InputLabel>
            <OutlinedInput
              type={showPassword ? "text" : "password"}
              value={form.password || ""}
              name="password"
              onChange={updateFormData}
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
          </FormControl>
          <FormControl sx={{ m: 1, width: "25ch" }} variant="outlined">
            <InputLabel htmlFor="outlined-adornment-password">
              Confirm Password
            </InputLabel>
            <OutlinedInput
              type={showPassword ? "text" : "password"}
              value={form.confirm || ""}
              name="confirm"
              onChange={updateFormData}
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
              label="Confirm Password"
            />
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
