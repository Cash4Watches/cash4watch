import "../styles/Landing.scss";
import moblieRolex from "../media/rolexMoblie.svg";
import desktopRolex from "../media/rolexDesktop.svg";

import TextField from "@mui/material/TextField";
import InputLabel from "@mui/material/InputLabel";
import MenuItem from "@mui/material/MenuItem";
import FormControl from "@mui/material/FormControl";
import Select from "@mui/material/Select";
import ArrowForwardIcon from "@mui/icons-material/ArrowForward";
import LocalShippingIcon from "@mui/icons-material/LocalShipping";
import LibraryAddCheckIcon from "@mui/icons-material/LibraryAddCheck";
import AttachMoneyIcon from "@mui/icons-material/AttachMoney";
import Acordain from "../components/Acordain.jsx";
import { useState, useEffect } from "react";
import { useNavigate } from "react-router-dom";
import { useSelector, useDispatch } from "react-redux";
import { setForm } from "../state/form.js";

function Landing() {
  const form = useSelector((state) => state.form.value);
  let navigate = useNavigate();
  const dispatch = useDispatch();
  const [background, setBackground] = useState("");
  const [emailError, setEmailError] = useState(false);
  const [nameError, setNameError] = useState(false);

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
  let handleResize = () => {
    if (800 <= window.innerWidth) {
      setBackground(
        <div className="Landing__rolex-desktop">
          <img src={desktopRolex} alt="rolex" />
        </div>
      );
    } else {
      setBackground(
        <div className="Landing__rolex-moblie">
          <img src={moblieRolex} alt="rolex" />
        </div>
      );
    }
  };
  useEffect(() => {
    handleResize();
    window.addEventListener("resize", handleResize);
    return () => {
      window.removeEventListener("resize", handleResize);
    };
  }, []);
  return (
    <>
      <div className="Landing">
        {background}

        <div className="Landing__form-container">
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

              <FormControl
                className="Landing__form-items__text-field"
                fullWidth
              >
                <InputLabel id="demo-simple-select-label">
                  Brand Name
                </InputLabel>
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

        <div className="Landing__banner-container">
          <div className="Landing__banner-container__item">
            <LibraryAddCheckIcon fontSize="inherit" />
            <p>
              Complete Form To Get
              <span style={{ color: "purple", fontWeight: "bolder" }}>
                {" "}
                Fed
              </span>
              <span style={{ color: "darkorange", fontWeight: "bolder" }}>
                Ex{" "}
              </span>
              label
            </p>
          </div>
          <div className="Landing__banner-container__arrow">
            <ArrowForwardIcon fontSize="inherit" />
          </div>
          <div className="Landing__banner-container__item">
            <LocalShippingIcon fontSize="inherit" />
            <p>Ship Your Watches For Free</p>
          </div>
          <div className="Landing__banner-container__arrow">
            <ArrowForwardIcon fontSize="inherit" />
          </div>
          <div className="Landing__banner-container__item">
            <AttachMoneyIcon fontSize="inherit" />
            <p>Get Paid</p>
          </div>
        </div>
        <div className="Landing__about-container">
          <h1>About</h1>
          <p>
            We are a high end watch consignment company with elite methods to
            maximize your watches' value. Our long and trusted reputation in the
            industry of over 10 years speaks for itself. Our tenure in the
            industry has allowed us to build relationships stretching to the
            other side of the globe which help us get you the most money
            possible for your watch.
          </p>
        </div>
        <Acordain />
      </div>
    </>
  );
}
export default Landing;
