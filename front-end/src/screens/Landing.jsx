import "../styles/Landing.scss";
// import {useState} from "react"
import moblieRolex from "../media/rolexMoblie.svg";
import TextField from "@mui/material/TextField";
import InputLabel from "@mui/material/InputLabel";
import MenuItem from "@mui/material/MenuItem";
import FormControl from "@mui/material/FormControl";
import Select from "@mui/material/Select";
import ArrowForwardIcon from "@mui/icons-material/ArrowForward";

import { useState } from "react";

function Landing() {
  // const [form, setForm] = useState({});
  return (
    <>
      <div className="Landing">
        <div className="Landing__rolex-moblie">
          <img src={moblieRolex} alt="rolex" />
        </div>
        <div className="Landing__form-container">
          <div className="Landing__form__title">
            <p>Get your label by completing form</p>
          </div>
          <div className="Landing__form-items">
            <form onSubmit={(e) => e.preventDefault()}>
              <TextField
                label="Full Name"
                className="Landing__form-items__text-field"
                onChange={() => {
                  console.log("change");
                }}
              />
              <TextField
                label="Email"
                className="Landing__form-items__text-field"
                onChange={() => {
                  console.log("change");
                }}
              />
              <TextField
                label="Phone Number"
                className="Landing__form-items__text-field"
                onChange={() => {
                  console.log("change");
                }}
              />

              <FormControl
                className="Landing__form-items__text-field"
                fullWidth
              >
                <InputLabel id="demo-simple-select-label">
                  Brand Name
                </InputLabel>
                <Select
                  labelId="demo-simple-select-label"
                  id="demo-simple-select"
                  label="Brand Name"
                  onChange={() => {
                    console.log("change");
                  }}
                >
                  <MenuItem value={"Rolex"}>Rolex</MenuItem>
                  <MenuItem value={"Patek Philippe"}>Patek Philippe</MenuItem>
                  <MenuItem value={"Cartier"}>Cartier</MenuItem>
                  <MenuItem value={"Richard Mille"}>Richard Mille</MenuItem>
                  <MenuItem value={"Vacheron"}>Vacheron</MenuItem>
                  <MenuItem value={"Omega"}>Omega</MenuItem>
                  <MenuItem value={"Aude4mars Piguet"}>
                    Audemars Piguet
                  </MenuItem>
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
        </div>
      </div>
    </>
  );
}
export default Landing;
