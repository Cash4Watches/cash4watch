import { useState } from "react";
import TextField from "@mui/material/TextField";
import { useSelector, useDispatch } from "react-redux";
import api from "../../services/AxiosConfig.js";
import { setUser } from "../../state/user.js";
import CircularProgress from "@mui/material/CircularProgress";
import CheckCircleOutlineIcon from "@mui/icons-material/CheckCircleOutline";
import Alert from "@mui/material/Alert";

function Account() {
  const dispatch = useDispatch();
  const [oldPassword, setOldPassword] = useState("");
  const [newPassword, setNewPassword] = useState("");
  console.log({ password: oldPassword, new_password: newPassword });
  const user = useSelector((state) => state.user);
  const [form, setForm] = useState({ ...user.profile });
  const [loading, setLoading] = useState({
    isLoading: false,
    isDone: false,
    isError: false,
  });
  let handlePasswordSubmit = async () => {
    try {
      let token = localStorage.getItem("jwt_token");
      let response = await api.post(
        "/change-password",
        { password: oldPassword, new_password: newPassword },
        {
          headers: {
            Authentication: `Bearer ${token}`,
          },
        }
      );
      console.log(response);
      if (!response.data["message"]) {
        alert("Password Updated");
        setOldPassword("");
        setNewPassword("");
      } else {
        alert(response.data["message"]);
      }
    } catch (e) {
      alert(e.response.statusText);
    }
  };
  let updateForm = (e) => {
    let { name, value } = e.target;
    setForm({
      ...form,
      [name]: value,
    });
  };
  let handleUpdateAccount = async () => {
    setLoading({
      isLoading: true,
      isDone: false,
      isError: false,
    });
    try {
      let token = localStorage.getItem("jwt_token");
      let response = await api.post("/update-account", form, {
        headers: {
          Authentication: `Bearer ${token}`,
        },
      });
      if (!response.data["message"]) {
        setLoading({
          isLoading: false,
          isDone: true,
          isError: false,
        });
        dispatch(
          setUser({
            name: response.data.full_name,
            profile: response.data,
          })
        );
      } else {
        setLoading({
          isLoading: false,
          isDone: false,
          isError: true,
        });
        alert(response.data["message"]);
      }
    } catch (e) {
      setLoading({
        isLoading: false,
        isDone: false,
        isError: true,
      });
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
            label="Company (optional)"
            onChange={updateForm}
            value={form.company}
          />
          <TextField
            type="text"
            name="street1"
            label="Street 1"
            onChange={updateForm}
            value={form.street1}
            required
          />
          <TextField
            type="text"
            name="street2"
            label="Street 2 (optional)"
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
            label="State"
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

        {loading.isLoading ? (
          <CircularProgress />
        ) : loading.isError ? (
          <Alert severity="error">
            Something went wrong trying to update your account please try at a
            later date!
          </Alert>
        ) : !loading.isDone ? (
          <button className="Account-submit" onClick={handleUpdateAccount}>
            Update
          </button>
        ) : (
          <CheckCircleOutlineIcon
            sx={{ color: "green", fontSize: "5rem" }}
            fontSize="inherit"
          />
        )}
        <div
          style={{
            // border: "1px solid red",
            display: "flex",
            flexDirection: "column",
            marginTop: "5vh",
            alignItems: "center",
          }}
        >
          <TextField
            className="Register-input"
            type="password"
            inputProps={{ inputMode: "numeric", pattern: "[0-9]*" }}
            name="oldPassword"
            label="Old Password"
            placeholder="Old Password"
            onChange={(e) => setOldPassword(e.target.value)}
            value={oldPassword}
            required
            style={{
              marginTop: "2vh",
              width: "40vw",
            }}
          />
          <TextField
            className="Register-input"
            type="password"
            inputProps={{ inputMode: "numeric", pattern: "[0-9]*" }}
            name="newPassword"
            label="New Password"
            placeholder="New Password"
            onChange={(e) => setNewPassword(e.target.value)}
            value={newPassword}
            required
            style={{
              marginTop: "2vh",
              width: "40vw",
            }}
          />
          <button
            className="Account-submit"
            style={{ marginTop: "2vh", fontSize: "18px" }}
            onClick={() => handlePasswordSubmit()}
          >
            Update Password
          </button>
        </div>
      </div>
    </div>
  );
}
export default Account;
