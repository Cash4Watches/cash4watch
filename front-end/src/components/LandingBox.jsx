import React from "react";
import { useSelector } from "react-redux";
import { useNavigate } from "react-router-dom";

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
        <div className="Landing__form__title">
          <p className="LandingBox-title">Cash4Watches</p>
        </div>
        <div className="LandingBox-content">
          <div className="LandingBox-content-text">
            <h1>Welcome Back ! </h1>
            <span>{abbreviateName()}</span>
          </div>
          <button onClick={() => navigate("/dashboard")}>My Dashboard</button>
        </div>
      </div>
    </>
  );
}
