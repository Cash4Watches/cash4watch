import React from "react";
import { useSelector } from "react-redux";
import { useNavigate } from "react-router-dom";
import AddIcon from "@mui/icons-material/Add";
import EmailIcon from "@mui/icons-material/Email";
export default function LandingBox() {
  let navigate = useNavigate();
  const user = useSelector((state) => state.user);
  let abbreviateName = () => {
    try {
      if (user.name.split(" ")[1]) {
        return user.name.split(" ")[1];
      } else {
        return user.name;
      }
    } catch (e) {
      alert(e.response.statusText);
    }
  };
  return (
    <div className="LandingBox">
      <div className="LandingBox-title">
        <p>Cash4Watches</p>
      </div>
      <div className="LandingBox-contact">
        <a target="_blank" rel="noreferrer" href="mailto:info@cash4watches.com">
          <EmailIcon fontSize="large" />
          <p>info@cash4watches.com</p>
        </a>
      </div>
      <div className="LandingBox-content">
        <div className="LandingBox-content-text">
          <h1>
            Hello, <span>{abbreviateName()}</span>
          </h1>
        </div>
        <button onClick={() => navigate("/dashboard")}>My Dashboard</button>
        <button onClick={() => navigate("/form")}>
          New Order <AddIcon fontSize="large" />
        </button>
      </div>
    </div>
  );
}
