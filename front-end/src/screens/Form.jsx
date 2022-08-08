import "../styles/Form.scss";
import PublishIcon from "@mui/icons-material/Publish";
import { useState } from "react";
import TextField from "@mui/material/TextField";
import InputLabel from "@mui/material/InputLabel";
import MenuItem from "@mui/material/MenuItem";
import Select from "@mui/material/Select";
import FormControl from "@mui/material/FormControl";
import { useNavigate } from "react-router-dom";
import api from "../services/AxiosConfig.js";
function Form() {
  let navigate = useNavigate();
  const [form, setForm] = useState({});
  const [disable, setDisable] = useState(false);

  let vaildateForm = (form) => {
    let isVaild = true;
    //EMPTY FOR NOW BUT ALLOWS FOR VAILIDING FORM BEFORE SUBMISSION
    return isVaild;
  };
  let handleSubmit = async (e) => {
    e.preventDefault();
    if (vaildateForm(e.target)) {
      try {
        setDisable(true);
        await api.post("/create-new-order", form, {
          headers: {
            Authentication: `Bearer ${localStorage.getItem("jwt_token")}`,
          },
        });
        navigate("/dashboard");
      } catch (e) {
        alert(e.response.statusText);
      }
    } else {
      // due to time constraints this error message is alert for now
      alert("Double check form inputs");
    }
    setDisable(false);
  };
  let updateFormData = (e) => {
    let { name, value } = e.target;
    setForm({
      ...form,
      [name]: value,
    });
  };

  return (
    <>
      <div className="Form">
        <h1 className="Form-title">Watch Submission Form</h1>
        <form onSubmit={handleSubmit}>
          <FormControl fullWidth className="Form-input">
            <InputLabel id="demo-simple-select-label">Order Type</InputLabel>
            <Select
              value={form.order_type || ""}
              label="Order Type"
              onChange={updateFormData}
              name="order_type"
            >
              <MenuItem value={"consignment"}>Consignment/Sell</MenuItem>
              <MenuItem value={"service"}>Repair/Service</MenuItem>
              <MenuItem value={"polish"}>Polish</MenuItem>
            </Select>
          </FormControl>
          <FormControl fullWidth className="Form-input">
            <InputLabel id="demo-simple-select-label">Brand Name</InputLabel>
            <Select
              value={form.brand_name || ""}
              label="Brand Name"
              onChange={updateFormData}
              name="brand_name"
              required
            >
              <MenuItem value={"Rolex"}>Rolex</MenuItem>
              <MenuItem value={"Patek Philippe"}>Patek Philippe</MenuItem>
              <MenuItem value={"Cartier"}>Cartier</MenuItem>
              <MenuItem value={"Richard Mille"}>Richard Mille</MenuItem>
              <MenuItem value={"Vacheron"}>Vacheron</MenuItem>
              <MenuItem value={"Omega"}>Omega</MenuItem>
              <MenuItem value={"Audemars Piguet"}>Audemars Piguet</MenuItem>
              <MenuItem value={"Tudor"}>Tudor</MenuItem>
              <MenuItem value={"IWC"}>IWC</MenuItem>
              <MenuItem value={"Bulgari"}>Bulgari</MenuItem>
              <MenuItem value={"Panerai"}>Panerai</MenuItem>
            </Select>
          </FormControl>
          {/* MORE INPUT FIELDS */}
          <TextField
            label="Model Number"
            name="model_number"
            onChange={updateFormData}
            required
            fullWidth
            className="Form-input"
            // type="number"
            value={form.model_number || ""}
          />
          <TextField
            label="Previous Service"
            name="previous_service"
            onChange={updateFormData}
            fullWidth
            multiline
            minRows={2}
            maxRows={5}
            className="Form-input"
            value={form.previous_service || ""}
          />
          <TextField
            label="Previous Polish"
            name="previous_polish"
            onChange={updateFormData}
            fullWidth
            multiline
            minRows={2}
            maxRows={5}
            className="Form-input"
            value={form.previous_polish || ""}
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
          <FormControl fullWidth className="Form-input">
            <InputLabel id="demo-simple-select-label">Condition</InputLabel>
            <Select
              value={form.condition || ""}
              label="condition"
              onChange={updateFormData}
              name="condition"
              required
            >
              <MenuItem value={"New"}>New</MenuItem>
              <MenuItem value={"Used"}>Used</MenuItem>
            </Select>
          </FormControl>
          <TextField
            label="Whats included "
            helperText="(e.g, box, manuals)"
            name="included_items"
            onChange={updateFormData}
            fullWidth
            multiline
            minRows={2}
            maxRows={5}
            className="Form-input"
            value={form.included_items || ""}
          />
          <TextField
            label="Anything Else ? "
            name="extra_comment"
            onChange={updateFormData}
            fullWidth
            multiline
            minRows={2}
            maxRows={5}
            className="Form-input"
            value={form.extra_comment || ""}
          />
          <button className="Form-submit" type="submit" disabled={disable}>
            <p>Submit</p>
            <PublishIcon className="Form-submit-icon" sx={{ fontSize: 40 }} />
          </button>
        </form>
      </div>
    </>
  );
}

export default Form;
