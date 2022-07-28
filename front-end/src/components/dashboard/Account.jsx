import { useState } from "react";
import TextField from "@mui/material/TextField";

function Account() {
  const [form, setForm] = useState({});
  let updateForm = (e) => {
    let { name, value } = e.target;
    setForm({
      ...form,
      [name]: value,
    });
  };
  return (
    <div className="Account">
      <div className="Account-container">
        <h1>Update Account</h1>
        <div className="Account-fields">
          <TextField
            type="text"
            name="name"
            label="Name"
            placeholder="Full Name"
            onChange={updateForm}
            value={form.name}
            inputProps={{ pattern: "[a-zA-Z ]+" }}
            required
          />
          <TextField
            type="text"
            name="email"
            label="Email"
            placeholder="Email Address"
            onChange={updateForm}
            value={form.email}
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
            name="streetOne"
            label="streetOne"
            onChange={updateForm}
            value={form.streetOne}
            required
          />
          <TextField
            type="text"
            name="streetTwo"
            label="streetTwo"
            placeholder="Optional"
            onChange={updateForm}
            value={form.streetTwo}
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
        <button className="Account-submit"> Update </button>
      </div>
    </div>
  );
}
export default Account;
