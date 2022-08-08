import React, { useState } from "react";
import ToggleButton from "@mui/material/ToggleButton";
import CircularProgress from "@mui/material/CircularProgress";
import api from "../../../../services/AxiosConfig.js";

export default function StepButton({ data, orderId, forceRefresh }) {
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
  const [isLoading, setIsLoading] = useState(false);

  let updateStep = async () => {
    setIsLoading(true);
    try {
      let token = localStorage.getItem("jwt_token");
      let response = await api.post(
        "/update-step",
        {
          order_id: orderId,
          step_id: data.id,
        },
        {
          headers: {
            Authentication: `Bearer ${token}`,
          },
        }
      );
      setIsLoading(false);

      if (!response.data["message"]) {
        forceRefresh((prev) => !prev);
      } else {
        alert(response.data["message"]);
      }
    } catch (e) {
      alert(e.response.statusText);
    }
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
          onChange={updateStep}
        >
          {data.completed ? "ON" : "OFF"}
        </ToggleButton>
      )}
    </div>
  );
}
