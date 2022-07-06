import "../styles/Form.scss";
import PublishIcon from "@mui/icons-material/Publish";
import { useState, useEffect } from "react";
import TextField from "@mui/material/TextField";
import InputLabel from "@mui/material/InputLabel";
import MenuItem from "@mui/material/MenuItem";
import FormControl from "@mui/material/FormControl";
import Select from "@mui/material/Select";
import { useSelector, useDispatch } from "react-redux";
import { setForm } from "../state/form.js";
function Form() {
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

          <button className="Form__submit" type="submit">
            <p>Submit</p>
            <PublishIcon className="Form__submit-arrow" sx={{ fontSize: 25 }} />
          </button>
        </form>
      </div>
    </>
  );
}

export default Form;
