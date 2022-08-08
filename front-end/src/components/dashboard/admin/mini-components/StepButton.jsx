import React from "react";
import ToggleButton from "@mui/material/ToggleButton";
import CircularProgress from "@mui/material/CircularProgress";
export default function StepButton({ data, isLoading, handleClick }) {
  let offStyle = {
    color: "#ba1329",
    backgroundColor: "#f5484220",
    margin: "1rem",
    borderColor: "#ba1329",
    minWidth: "60px",
  };
  let onStyle = {
    color: "#1bba13",
    backgroundColor: "#2dd61320",
    margin: "1rem",
    borderColor: "#1bba13",
    minWidth: "60px",
  };
  return (
    <div className="AdminOrderDetail-card-steps-button">
      <p>{data.title}</p>
      {isLoading ? (
        <CircularProgress sx={{ color: "green" }} />
      ) : (
        <ToggleButton
          style={data.completed ? onStyle : offStyle}
          value="check"
          selected={data.completed}
          onChange={handleClick}
        >
          {data.completed ? "ON" : "OFF"}
        </ToggleButton>
      )}
    </div>
  );
}
