import React, { useState, useRef, useEffect } from "react";
import NoteAddIcon from "@mui/icons-material/NoteAdd";
import ColorHash from "color-hash";
import CircularProgress from "@mui/material/CircularProgress";
import Alert from "@mui/material/Alert";
import CheckCircleOutlineIcon from "@mui/icons-material/CheckCircleOutline";
import Box from "@mui/material/Box";
import Typography from "@mui/material/Typography";
import Modal from "@mui/material/Modal";
import StepButton from "./StepButton.jsx";
import ImageRoundedIcon from "@mui/icons-material/ImageRounded";
import PictureAsPdfIcon from "@mui/icons-material/PictureAsPdf";
import ClearRoundedIcon from "@mui/icons-material/ClearRounded";
import api from "../../../../services/AxiosConfig.js";
import { useNavigate } from "react-router-dom";
import { set } from "date-fns";

export default function AdminOrderDetailCard({ data, forceRefresh }) {
  let colorHash = new ColorHash();
  const imageRef = useRef(null);
  const navigate = useNavigate();
  const [modalOpen, setModalOpen] = useState(false);
  const [deleteOpen, setDeleteOpen] = useState(false);
  const [modalTitle, setModalTitle] = useState("Document");
  const [stepArray, setStepArry] = useState([]);
  const [returnTrackingInput, setReturnTrackingInput] = useState("");
  const [loadingPhase, setLoadingPhase] = useState({
    isLoading: false,
    isDone: false,
    isError: false,
  });
  let handleReturnTrackingchange = async () => {
    try {
      let token = localStorage.getItem("jwt_token");
      // post /edit-return-tracking
      // new_tracking_number
      // order_id
      // auth
      let response = await api.post(
        "/edit-return-tracking",
        { new_tracking_number: returnTrackingInput, order_id: data.id },
        {
          headers: {
            Authentication: `Bearer ${token}`,
          },
        }
      );

      if (!response.data["message"]) {
        setReturnTrackingInput(response.data.return_tracking_number);
        console.log(response.data);
      } else {
        alert(response.data["message"]);
      }
    } catch (e) {
      alert(e.response.statusText);
    }
  };
  let handleSubmitImage = async () => {
    let fileType = imageRef.current.name;
    let url = fileType === "Document" ? "/upload" : "/upload-image";
    if (imageRef.current.files.length === 0) return alert("Please select file");
    setLoadingPhase({
      isLoading: true,
      isDone: false,
      isError: false,
    });
    let uploadForm = new FormData();
    let fileName = imageRef.current.files[0].name;
    let file = imageRef.current.files[0];
    let type = imageRef.current.files[0].type;
    uploadForm.append("file", file);
    uploadForm.append("type", type);
    uploadForm.append("name", fileName);
    uploadForm.append("order_id", data.id);

    try {
      let token = localStorage.getItem("jwt_token");
      let response = await api.post(url, uploadForm, {
        headers: {
          "Content-Type": "multipart/form-data",
          Authentication: `Bearer ${token}`,
        },
      });

      if (!response.data["message"]) {
        setModalOpen(false);
        forceRefresh((prev) => !prev);
      } else {
        alert(response.data["message"]);
      }
    } catch (e) {
      alert(e.response.statusText);
    }
  };

  useEffect(() => {
    if (!modalOpen) {
      setLoadingPhase({
        isDone: false,
        isLoading: false,
        isError: false,
      });
    }
  }, [modalOpen]);
  const style = {
    position: "absolute",
    top: "50%",
    left: "50%",
    transform: "translate(-50%, -50%)",
    width: "40vw",
    bgcolor: "background.paper",
    border: "2px solid #000",
    boxShadow: 24,
    p: 4,
  };

  useEffect(() => {
    //because there is no guarante the steps come out in a incrementing order so we sort by index
    setReturnTrackingInput(data.return_tracking_number);
    if (data.steps.length > 0) {
      setStepArry(data.steps.sort((a, b) => a.index - b.index));
    }
  }, [data.steps]);

  let cleanFileName = (fileName) => {
    if (fileName) {
      if (fileName.length < 15) {
        return fileName;
      } else {
        let name = fileName.split(".")[0];
        let apprevatedName = name.slice(0, 9) + "~ .";
        return apprevatedName + fileName.split(".")[1];
      }
    }
  };
  let deleteDocument = async (imageData, route) => {
    try {
      let token = localStorage.getItem("jwt_token");
      let response = await api.post(
        route,
        {
          id: imageData.id,
        },
        {
          headers: {
            Authentication: `Bearer ${token}`,
          },
        }
      );

      if (!response.data["message"]) {
        setModalOpen(false);
        forceRefresh((prev) => !prev);
      } else {
        alert(response.data["message"]);
      }
    } catch (e) {
      alert(e.response.statusText);
    }
  };
  let handleDeleteOrder = async () => {
    try {
      let token = localStorage.getItem("jwt_token");
      let response = await api.post(
        "/destroy-orders",
        {
          order_id: data.id,
        },
        {
          headers: {
            Authentication: `Bearer ${token}`,
          },
        }
      );

      if (!response.data["message"]) {
        navigate("/dashboard");
      } else {
        alert(response.data["message"]);
      }
    } catch (e) {
      alert(e.response.statusText);
    }
  };
  return (
    <>
      <div className="AdminOrderDetail-card">
        <h1
          className="AdminOrderDetail-card-title"
          style={{
            borderBottom: `3px solid ${colorHash.hex(data.brand_name)}`,
          }}
        >
          {data.brand_name}
          <NoteAddIcon
            onClick={() => {
              setModalTitle("Document");
              setModalOpen(true);
            }}
            sx={{ color: `${colorHash.hex(data.brand_name)}` }}
            className="OrderView-documents-camera"
            fontSize="large"
          />
        </h1>
        <span>ID: {data.id}</span>

        <p
          style={{
            color: "#242951",
          }}
        >
          {data.user_info.name}
          <span
            style={{
              color: colorHash.hex(data.user_info.name),
            }}
          >
            |
          </span>
          {data.user_info.email}
        </p>
        <h2>Steps : </h2>
        <div className="AdminOrderDetail-card-steps">
          <div className="AdminOrderDetail-card-steps-container">
            {stepArray.map((step, i) => (
              <StepButton
                key={i}
                data={step}
                orderId={data.id}
                forceRefresh={forceRefresh}
              />
            ))}
          </div>
        </div>
        <h2>Documents : </h2>
        <div className="AdminOrderDetail-card-document">
          <div className="AdminOrderDetail-card-document-map-container">
            {data.documents.length !== 0 ? (
              data.documents.map((img, i) => (
                <div key={i} className="AdminOrderDetail-card-item-container">
                  <a target="_blank" rel="noreferrer" href={img.file_url}>
                    {cleanFileName(img.name)}
                    <PictureAsPdfIcon fontSize="large" />
                  </a>
                  <ClearRoundedIcon
                    className="AdminOrderDetail-deleteImg"
                    onClick={() => deleteDocument(img, "/delete-document")}
                  />
                </div>
              ))
            ) : (
              <p>No Documents</p>
            )}
          </div>
          <button
            onClick={() => {
              setModalTitle("Document");
              setModalOpen(true);
            }}
          >
            <p>Add Document</p>
            <NoteAddIcon fontSize="inherit" />
          </button>
        </div>
        <h2>Images : </h2>
        <div className="AdminOrderDetail-card-document">
          <div className="AdminOrderDetail-card-document-map-container">
            {data.images.length !== 0 ? (
              data.images.map((img, i) => (
                <div key={i} className="AdminOrderDetail-card-item-container">
                  <a target="_blank" rel="noreferrer" href={img.file_url}>
                    {cleanFileName(img.name)}
                    <ImageRoundedIcon fontSize="large" />
                  </a>
                  <ClearRoundedIcon
                    className="AdminOrderDetail-deleteImg"
                    onClick={() => deleteDocument(img, "/delete-image")}
                  />
                </div>
              ))
            ) : (
              <p>No Images</p>
            )}
          </div>
          <button
            onClick={() => {
              setModalTitle("Image");
              setModalOpen(true);
            }}
          >
            <p>Add Image</p>
            <NoteAddIcon fontSize="inherit" />
          </button>
        </div>
        <button
          onClick={() => setDeleteOpen(true)}
          className="AdminOrderDetail-deleteOrder"
        >
          DELETE ORDER
        </button>
        <h4>Return Tracking Number:</h4>
        <input
          value={returnTrackingInput}
          onChange={(e) => setReturnTrackingInput(e.target.value)}
        ></input>
        <button
          style={{ marginTop: "2vh" }}
          onClick={() => handleReturnTrackingchange()}
        >
          Update
        </button>
      </div>
      <Modal
        open={modalOpen}
        onClose={() => setModalOpen(false)}
        aria-labelledby="modal-modal-title"
        aria-describedby="modal-modal-description"
      >
        <Box sx={style} className="OrderView-modal">
          <Typography id="modal-modal-title" variant="h6" component="h2">
            Upload {modalTitle}
          </Typography>
          <div className="OrderView-modal-form">
            <input type="file" name={modalTitle} ref={imageRef} />
            {loadingPhase.isError ? (
              <Alert severity="error">
                Something went wrong try refreshing or trying at a later date!
              </Alert>
            ) : loadingPhase.isLoading ? (
              <CircularProgress sx={{ color: "green" }} />
            ) : loadingPhase.isDone ? (
              <CheckCircleOutlineIcon
                fontSize="large"
                sx={{ color: "green" }}
              />
            ) : (
              <button onClick={handleSubmitImage}>Submit</button>
            )}
          </div>
        </Box>
      </Modal>
      <Modal
        open={deleteOpen}
        onClose={() => setDeleteOpen(false)}
        aria-labelledby="modal-modal-title"
        aria-describedby="modal-modal-description"
      >
        <Box sx={style} className="OrderView-modal">
          <Typography id="modal-modal-title" variant="h6" component="h2">
            ARE YOU SURE ?
          </Typography>
          <div className="Delete-modal">
            {loadingPhase.isError ? (
              <Alert severity="error">
                Something went wrong try refreshing or trying at a later date!
              </Alert>
            ) : loadingPhase.isLoading ? (
              <CircularProgress sx={{ color: "green" }} />
            ) : loadingPhase.isDone ? (
              <CheckCircleOutlineIcon
                fontSize="large"
                sx={{ color: "green" }}
              />
            ) : (
              <button onClick={handleDeleteOrder}> YES IM SURE </button>
            )}
          </div>
        </Box>
      </Modal>
    </>
  );
}
