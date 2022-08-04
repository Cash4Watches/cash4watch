import React from "react";
import { useSelector } from "react-redux";
import { useNavigate } from "react-router-dom";
import AddIcon from "@mui/icons-material/Add";

export default function LandingBox() {
  let navigate = useNavigate();
  const user = useSelector((state) => state.user);
  let abbreviateName = () => {
    if (user.name.split(" ")[1]) {
      return user.name.split(" ")[1];
    } else {
      return user.name;
    }
  };
  return (
    <>
      <div className="LandingBox">
        <div className="LandingBox-title">
          <p>Cash4Watches</p>
        </div>
        <div className="LandingBox-content">
          <div className="LandingBox-content-text">
            <h1>
              Hey, <span>{abbreviateName()}</span>
            </h1>
          </div>
          <button onClick={() => navigate("/dashboard")}>My Dashboard</button>
          <button onClick={() => navigate("/form")}>
            New Order <AddIcon fontSize="large" />
          </button>
        </div>
      </div>
    </>
  );
}
