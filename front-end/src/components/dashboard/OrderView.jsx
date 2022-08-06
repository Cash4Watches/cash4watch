import React from "react";
import AddAPhotoRoundedIcon from "@mui/icons-material/AddAPhotoRounded";
import Stepper from "@mui/material/Stepper";
import Step from "@mui/material/Step";
import StepLabel from "@mui/material/StepLabel";
import ColorHash from "color-hash";
import { useState, useEffect, useRef } from "react";
import PictureAsPdfIcon from "@mui/icons-material/PictureAsPdf";
import api from "../../services/AxiosConfig.js";
import Box from "@mui/material/Box";
import Typography from "@mui/material/Typography";
import Modal from "@mui/material/Modal";

export default function OrderView({ data }) {
  let colorHash = new ColorHash();
  const details = useRef(null);
  const imageRef = useRef(null);
  const [stepperStyle, setStepperStyle] = useState({
    alternativeLabel: true,
    orientation: "horizontal",
  });
  const [stepValue, setStepValue] = useState(0);
  const [documents, setDocuments] = useState([{}]);
  const [stepsArr, setStepsArr] = useState([]);
  const [modalOpen, setModalOpen] = useState(false);

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
  }, [data.id]);

  useEffect(() => {
    let getStepCount = async () => {
      try {
        let response = await api.post(
          "/check-order",
          { order_id: data.id },
          {
            headers: {
              Authentication: `Bearer ${localStorage.getItem("jwt_token")}`,
            },
          }
        );
        if (response.data["message"]) {
          alert(response.data["message"]);
          window.location.reload();
        } else {
          setDocuments(response.data.documents);
          setStepsArr(response.data.steps);
        }
      } catch (e) {
        alert(e.response.statusText);
      }
    };

    getStepCount();
  }, [data.id]);

  useEffect(() => {
    checkProgress();
  }, [stepsArr]);
  const style = {
    position: "absolute",
    top: "50%",
    left: "50%",
    transform: "translate(-50%, -50%)",
    width: 400,
    bgcolor: "background.paper",
    border: "2px solid #000",
    boxShadow: 24,
    p: 4,
  };
  let cleanDataString = (date) => {
    if (typeof date === "string") {
      let filteredDate = date.split("T")[0];
      filteredDate = filteredDate.replace(/-/g, "/");
      return filteredDate;
    } else {
      return "";
    }
  };
  let handleSubmitImage = async () => {
    let uploadForm = new FormData();
    let fileName = imageRef.current.files[0].name;
    let file = imageRef.current.files[0]
    let type = imageRef.current.files[0].type;
    let uri = imageRef.current.value;
    console.log(fileName, type, uri);
    uploadForm.append("file", file);
    uploadForm.append("type", type);
    uploadForm.append("name", fileName);
    uploadForm.append("order_id", data.id);
    try {
      let token = localStorage.getItem("jwt_token");
      let response = await api.post("/upload-image", uploadForm, {
        headers: {
          "Content-Type": "multipart/form-data",
          Authentication: `Bearer ${token}`,
        },
      });
      if (response.data["message"]) {
        alert(response.data["message"]);
      } else {
        console.log(response);
      }
    } catch (e) {
      alert(e.response.statusText);
    }
  };
  return (
    <div className="OrderView">
      <Modal
        open={modalOpen}
        onClose={() => setModalOpen(false)}
        aria-labelledby="modal-modal-title"
        aria-describedby="modal-modal-description"
      >
        <Box sx={style} className="OrderView-modal">
          <Typography id="modal-modal-title" variant="h6" component="h2">
            Upload Images
          </Typography>
          <div className="OrderView-modal-form">
            <input
              type="file"
              name="Image"
              accept="image/png, image/gif, image/jpeg"
              ref={imageRef}
            />
            <button onClick={handleSubmitImage}>Submit</button>
          </div>
        </Box>
      </Modal>
      <h2
        style={{
          borderBottom: `3px solid ${colorHash.hex(data.brand_name)}`,
        }}
      >
        {data.brand_name}
        <AddAPhotoRoundedIcon
          onClick={() => setModalOpen(true)}
          sx={{ color: `${colorHash.hex(data.brand_name)}` }}
          className="OrderView-documents-camera"
          fontSize="large"
        />
      </h2>
      <div className="OrderView-main">
        <p>
          <span>Full ID :</span> {data.id}
        </p>
        <p>
          <span>Model :</span> {data.model_number}
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
          {data.papers ? "Yes" : "No"}
        </p>
        <p>
          <span>Condition :</span> {data.condition}
        </p>
        <p>
          <span>Comment :</span> {data.extra_comment}
        </p>
        <p>
          <span>Created :</span> {cleanDataString(data.created_at)}
        </p>
        <p>
          <span>Last Updated :</span> {cleanDataString(data.updated_at)}
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
