import React from "react";
import WatchIcon from "@mui/icons-material/Watch";
import Stepper from "@mui/material/Stepper";
import Step from "@mui/material/Step";
import StepLabel from "@mui/material/StepLabel";
import ColorHash from "color-hash";
import { useState, useEffect } from "react";
const steps = [
  "Case Approved",
  "Label Generated",
  "Watch Received",
  "Watch Inspected",
  "Watch Sold",
];

export default function OrderView(props) {
  let colorHash = new ColorHash();
  const [stepperStyle, setStepperStyle] = useState({
    alternativeLabel: true,
    orientation: "horizontal",
  });
  useEffect(() => {
    if (window.innerWidth <= 500) {
      setStepperStyle({
        alternativeLabel: false,
        orientation: "vertical",
      });
    } else {
      setStepperStyle({
        alternativeLabel: true,
        orientation: "horizontal",
      });
    }
  }, [window.innerWidth]);
  const {
    id,
    brand_name,
    model_number,
    reference_number,
    condition,
    previous_service,
    previous_polish,
    papers,
    included_items,
    extra_comment,
    created_at,
    updated_at,
  } = props.values;

  return (
    <div className="OrderView">
      <h2 style={{ "border-bottom": `3px solid ${colorHash.hex(id)}` }}>
        {brand_name}
      </h2>
      <div className="OrderView-main">
        <p>
          <span>Full ID :</span> {id}
        </p>
        <p>
          <span>Model :</span> {model_number}
        </p>
        <p>
          <span>Reference :</span> {reference_number}
        </p>
        <p>
          <span>papers : </span>
          {papers ? "Yes" : "No"}
        </p>
      </div>
      <h3>Current Status:</h3>
      <Stepper
        className="OrderView-stepper"
        activeStep={2}
        alternativeLabel={stepperStyle.alternativeLabel}
        orientation={stepperStyle.orientation}
      >
        {steps.map((label) => (
          <Step key={label}>
            <StepLabel>{label}</StepLabel>
          </Step>
        ))}
      </Stepper>
    </div>
  );
}
