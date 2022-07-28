import React from "react";
import WatchIcon from "@mui/icons-material/Watch";
import Stepper from "@mui/material/Stepper";
import Step from "@mui/material/Step";
import StepLabel from "@mui/material/StepLabel";
import ColorHash from "color-hash";
import { useState, useEffect, useRef } from "react";
import PictureAsPdfIcon from "@mui/icons-material/PictureAsPdf";
import api from "../../services/AxiosConfig.js";

export default function OrderView(props) {
  const {
    id,
    brand_name,
    model_number,
    condition,
    // previous_service,
    // previous_polish,
    papers,
    // included_items,
    extra_comment,
    created_at,
    updated_at,
  } = props.values;

  let colorHash = new ColorHash();
  const details = useRef(null);
  const [stepperStyle, setStepperStyle] = useState({
    alternativeLabel: true,
    orientation: "horizontal",
  });
  const [stepValue, setStepValue] = useState(0);
  const [documents, setDocuments] = useState([{}]);
  const [stepsArr, setStepsArr] = useState([]);
  let showDetails = () => {
    details.current.classList.toggle("OrderView-show");
  };

  let checkProgress = () => {
    stepsArr.forEach((step) => {
      if (step) {
        if (step.completed) setStepValue((prev) => prev + 1);
      }
    });
  };

  useEffect(() => {
    //if the id changes the progress resets

    let handleStepperOrentation = () => {
      if (window.innerWidth <= 650) {
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
    };
    window.addEventListener("resize", handleStepperOrentation);
    handleStepperOrentation();
    return () => {
      window.removeEventListener("resize", handleStepperOrentation);
    };
  }, [id]);

  useEffect(() => {
    let getStepCount = async () => {
      let response = await api.post(
        "/check-order",
        { order_id: id },
        {
          headers: {
            Authentication: `Bearer ${localStorage.getItem("jwt_token")}`,
          },
        }
      );
      setDocuments(response.data.documents);
      setStepsArr(response.data.steps);
    };

    getStepCount();
  }, [id]);

  useEffect(() => {
    checkProgress();
  }, [stepsArr]);

  return (
    <div className="OrderView">
      <h2 style={{ borderBottom: `3px solid ${colorHash.hex(id)}` }}>
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
          <span>Documents :</span>

          {documents.length !== 0 ? (
            documents.map((doc, i) => (
              <a target="_blank" rel="noreferrer" href={doc.file_url} key={i}>
                {doc.name}
                <PictureAsPdfIcon />
              </a>
            ))
          ) : (
            <span>Cant seem to grab docs</span>
          )}
        </p>
      </div>

      <h4 onClick={showDetails}>More Details</h4>
      <div ref={details} className="OrderView-main OrderView-detail-container">
        <p>
          <span>papers : </span>
          {papers ? "Yes" : "No"}
        </p>
        <p>
          <span>Condition :</span> {condition}
        </p>
        <p>
          <span>Comment :</span> {extra_comment}
        </p>
        <p>
          <span>Created :</span> {created_at.split("T")[0]}
        </p>
        <p>
          <span>Last Updated :</span> {updated_at.split("T")[0]}
        </p>
      </div>
      <h3>Current Status:</h3>
      <Stepper
        className="OrderView-stepper"
        activeStep={stepValue}
        alternativeLabel={stepperStyle.alternativeLabel}
        orientation={stepperStyle.orientation}
      >
        {stepsArr.map((label) => (
          <Step key={label.title}>
            <StepLabel>{label.title}</StepLabel>
          </Step>
        ))}
      </Stepper>
    </div>
  );
}
