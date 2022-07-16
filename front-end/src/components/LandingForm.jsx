import React from "react";
import TextField from "@mui/material/TextField";
import InputLabel from "@mui/material/InputLabel";
import MenuItem from "@mui/material/MenuItem";
import FormControl from "@mui/material/FormControl";
import Select from "@mui/material/Select";
import ArrowForwardIcon from "@mui/icons-material/ArrowForward";

import { useNavigate } from "react-router-dom";
import { useSelector, useDispatch } from "react-redux";
import { setForm } from "../state/form.js";
import { useState } from "react";

const LandingForm = () => {
  const form = useSelector((state) => state.form.value);
  const [emailError, setEmailError] = useState(false);
  const [nameError, setNameError] = useState(false);
  let navigate = useNavigate();
  const dispatch = useDispatch();
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
    console.log(form);
  };

  let handleSubmit = (e) => {
    e.preventDefault();
    if (form.email.includes("@") && !onlySpaces(form.name)) navigate("/form");
    !form.email.includes("@") ? setEmailError(true) : setEmailError(false);
    onlySpaces(form.name) ? setNameError(true) : setNameError(false);
  };
  return (
    <>
      <div className="Landing__form__title">
        <p>Get your label by completing form</p>
      </div>
      <div className="Landing__form-items">
        <form onSubmit={handleSubmit}>
          <TextField
            label="Full Name"
            name="name"
            className="Landing__form-items__text-field"
            onChange={updateFormData}
            required
            error={nameError}
            value={form.name || ""}
            inputProps={{ pattern: "[a-zA-Z ]+" }}
          />
          <TextField
            label="Email"
            name="email"
            className="Landing__form-items__text-field"
            onChange={updateFormData}
            required
            error={emailError}
            value={form.email || ""}
          />
          <TextField
            label="Phone Number"
            name="number"
            className="Landing__form-items__text-field"
            onChange={updateFormData}
            value={form.number || ""}
            required
          />

          <FormControl className="Landing__form-items__text-field" fullWidth>
            <InputLabel id="demo-simple-select-label">Brand Name</InputLabel>
            <Select
              value={form.brand}
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

          <button className="Landing__form-submit" type="submit">
            <p>Get Started</p>
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
