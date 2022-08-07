import { useState } from "react";
import TextField from "@mui/material/TextField";
import { useSelector } from "react-redux";
import api from "../../services/AxiosConfig.js";
function Account() {
  const user = useSelector((state) => state.user);
  const [form, setForm] = useState({ ...user.profile });
  const [loading, setLoading] = useState({
    value: false,
    done: false,
    message: "Submit",
  });
  let updateForm = (e) => {
    let { name, value } = e.target;
    setForm({
      ...form,
      [name]: value,
    });
  };
  let handleUpdateAccount = async () => {
    try {
      let token = localStorage.getItem("jwt_token");
      let response = await api.post("/update-account", form, {
        headers: {
          Authentication: `Bearer ${token}`,
        },
      });
      !response.data["message"]
        ? console.log(response.data)
        : alert(response.data["message"]);
    } catch (e) {
      alert(e.response.statusText);
    }
  };
  return (
    <div className="Account">
      <div className="Account-container">
        <h1>Update Account</h1>
        <div className="Account-fields">
          <TextField
            type="text"
            name="full_name"
            label="Name"
            placeholder="Full Name"
            onChange={updateForm}
            value={form.full_name}
            inputProps={{ pattern: "[a-zA-Z ]+" }}
            required
          />
          <TextField
            type="text"
            name="phone"
            label="Phone"
            placeholder="Phone Number"
            autoComplete="phone"
            onChange={updateForm}
            value={form.phone}
            required
          />
          <TextField
            type="text"
            name="company"
            label="Company"
            placeholder="Optional"
            onChange={updateForm}
            value={form.company}
          />
          <TextField
            type="text"
            name="street1"
            label="streetOne"
            onChange={updateForm}
            value={form.street1}
            required
          />
          <TextField
            type="text"
            name="street2"
            label="streetTwo"
            placeholder="Optional"
            onChange={updateForm}
            value={form.street2}
          />
          <TextField
            type="text"
            name="city"
            label="City"
            onChange={updateForm}
            value={form.city}
            required
          />
          <TextField
            type="text"
            name="state"
            label="state"
            onChange={updateForm}
            value={form.state}
            required
          />
          <TextField
            className="Register-input"
            type="text"
            inputProps={{ inputMode: "numeric", pattern: "[0-9]*" }}
            name="zip"
            label="Zip"
            placeholder="Zip Code"
            onChange={updateForm}
            value={form.zip}
            required
          />
        </div>
        <button className="Account-submit" onClick={handleUpdateAccount}>
          Update
        </button>
      </div>
    </div>
  );
}
export default Account;
