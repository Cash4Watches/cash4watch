import "../styles/Form.scss";
import PublishIcon from "@mui/icons-material/Publish";
import { useState, useRef } from "react";
import TextField from "@mui/material/TextField";
import InputLabel from "@mui/material/InputLabel";
import MenuItem from "@mui/material/MenuItem";
import Select from "@mui/material/Select";
import FormControl from "@mui/material/FormControl";
import { useNavigate } from "react-router-dom";
import api from "../services/AxiosConfig.js";
import Typography from "@mui/material/Typography";
import Modal from "@mui/material/Modal";
import Box from "@mui/material/Box";
import AddPhotoAlternateRoundedIcon from "@mui/icons-material/AddPhotoAlternateRounded";
import LinearProgress from "@mui/material/LinearProgress";

function Form() {
  let navigate = useNavigate();
  const imageRef = useRef(null);
  const [form, setForm] = useState({});
  const [showMore, setShowMore] = useState(false);
  const [modalOpen, setModalOpen] = useState(false);
  const [imageArr, setImageArr] = useState([]);
  const [loading, setLoading] = useState({
    progress: 0,
    isLoading: false,
    isError: false,
    loadingMessage: "Loading...",
  });
  let handleSubmitImages = async (order_id) => {
    setLoading({
      ...loading,
      progress: 60,
      loadingMessage: "Uploading your images ....",
    });
    for (let i = 0; i < imageArr.length; i++) {
      let uploadForm = new FormData();
      let fileName = imageArr[i].name;
      let file = imageArr[i].file;
      let type = imageArr[i].type;
      uploadForm.append("file", file);
      uploadForm.append("type", type);
      uploadForm.append("name", fileName);
      uploadForm.append("order_id", order_id);
      try {
        setLoading({
          ...loading,
          loadingMessage: `Uploading image ${i + 1} ...`,
        });
        let token = localStorage.getItem("jwt_token");
        let response = await api.post("/upload-image", uploadForm, {
          headers: {
            "Content-Type": "multipart/form-data",
            Authentication: `Bearer ${token}`,
          },
        });
        if (response.data["message"]) alert(response.data["message"]);

        setLoading({
          ...loading,
          progress: loading.progress + 30 / imageArr.length,
          loadingMessage: `Image ${i + 1} Uploaded !`,
        });
      } catch (e) {
        setLoading({
          ...loading,
          isError: true,
          loadingMessage: `Something went wrong uploading image ${i + 1}!`,
        });
        navigate("/dashboard");
        return alert(e.response.statusText);
      }
    }
    setLoading({
      ...loading,
      progress: 100,
      loadingMessage: `All  ${imageArr.length} Images  Uploaded and Order Created !`,
    });
    navigate("/dashboard");
  };

  let handleSubmit = async (e) => {
    e.preventDefault();

    try {
      if (imageArr.length >= 2) {
        setLoading({
          ...loading,
          isLoading: true,
          loadingMessage: "Creating Order ...",
        });
        let response = await api.post("/create-new-order", form, {
          headers: {
            Authentication: `Bearer ${localStorage.getItem("jwt_token")}`,
          },
        });
        setLoading({
          ...loading,
          progress: 50,
          loadingMessage: "Order Created !",
        });
        handleSubmitImages(response.data.id);
      } else {
        alert("Please add at least two photos of your watch front/back");
      }
    } catch (e) {
      setLoading({
        ...loading,
        isError: true,
        loadingMessage: "Something went wrong x_x",
      });
      alert(e.response.statusText);
    }
  };
  let updateFormData = (e) => {
    let { name, value } = e.target;
    setForm({
      ...form,
      [name]: value,
    });
  };
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
  let addImage = () => {
    if (imageRef.current.files.length === 0) {
      alert("Please enter a file ");
      return false;
    }
    let name = imageRef.current.files[0].name;
    let type = imageRef.current.files[0].type;
    let file = imageRef.current.files[0];
    let reader = new FileReader();
    reader.onload = () => {
      if (reader.readyState === 2) {
        setImageArr([
          ...imageArr,
          { src: reader.result, file: file, name: name, type: type },
        ]);
      }
    };
    reader.readAsDataURL(imageRef.current.files[0]);
    setModalOpen(false);
  };
  return (
    <>
      <div className="Form">
        <h1 className="Form-title">Watch Submission Form</h1>
        <form onSubmit={handleSubmit}>
          <FormControl fullWidth className="Form-input">
            <InputLabel id="demo-simple-select-label">Order Type</InputLabel>
            <Select
              value={form.order_type || ""}
              label="Order Type"
              onChange={updateFormData}
              name="order_type"
              required
            >
              <MenuItem value={"consignment"}>Consignment/Sell</MenuItem>
              <MenuItem value={"service"}>Repair/Service</MenuItem>
              <MenuItem value={"polish"}>Polish</MenuItem>
            </Select>
          </FormControl>
          <FormControl fullWidth className="Form-input">
            <InputLabel id="demo-simple-select-label">Brand Name</InputLabel>
            <Select
              value={form.brand_name || ""}
              label="Brand Name"
              onChange={updateFormData}
              name="brand_name"
              required
            >
              <MenuItem value={"Rolex"}>Rolex</MenuItem>
              <MenuItem value={"Patek Philippe"}>Patek Philippe</MenuItem>
              <MenuItem value={"Cartier"}>Cartier</MenuItem>
              <MenuItem value={"Richard Mille"}>Richard Mille</MenuItem>
              <MenuItem value={"Vacheron"}>Vacheron</MenuItem>
              <MenuItem value={"Omega"}>Omega</MenuItem>
              <MenuItem value={"Audemars Piguet"}>Audemars Piguet</MenuItem>
              <MenuItem value={"Tudor"}>Tudor</MenuItem>
              <MenuItem value={"IWC"}>IWC</MenuItem>
              <MenuItem value={"Bulgari"}>Bulgari</MenuItem>
              <MenuItem value={"Panerai"}>Panerai</MenuItem>
            </Select>
          </FormControl>
          {/* MORE INPUT FIELDS */}
          <TextField
            label="Model Number"
            name="model_number"
            onChange={updateFormData}
            required
            fullWidth
            className="Form-input"
            // type="number"
            value={form.model_number || ""}
          />
          <FormControl fullWidth className="Form-input">
            <InputLabel id="demo-simple-select-label">
              Previous Service
            </InputLabel>
            <Select
              label="Previous Service"
              onChange={(e) => setShowMore(e.target.value)}
              name="previous_service"
              required
            >
              <MenuItem value={true}>Yes</MenuItem>
              <MenuItem value={false}>No</MenuItem>
            </Select>
          </FormControl>
          {showMore ? (
            <TextField
              label="Previous Service"
              name="previous_service"
              onChange={updateFormData}
              fullWidth
              multiline
              minRows={2}
              maxRows={5}
              className="Form-input"
              value={form.previous_service || ""}
              required
            />
          ) : (
            ""
          )}
          <TextField
            label="Previous Polish"
            name="previous_polish"
            onChange={updateFormData}
            fullWidth
            multiline
            minRows={2}
            maxRows={5}
            className="Form-input"
            value={form.previous_polish || ""}
            required
          />
          <FormControl fullWidth className="Form-input">
            <InputLabel id="demo-simple-select-label">Papers</InputLabel>
            <Select
              value={form.papers || ""}
              label="Papers"
              onChange={updateFormData}
              name="papers"
              required
            >
              <MenuItem value={"yes"}>Yes</MenuItem>
              <MenuItem value={"no"}>No</MenuItem>
            </Select>
          </FormControl>
          <FormControl fullWidth className="Form-input">
            <InputLabel id="demo-simple-select-label">Condition</InputLabel>
            <Select
              value={form.condition || ""}
              label="condition"
              onChange={updateFormData}
              name="condition"
              required
            >
              <MenuItem value={"New"}>New</MenuItem>
              <MenuItem value={"Used"}>Used</MenuItem>
            </Select>
          </FormControl>
          <div className="form-image-submit">
            <p style={{ width: "14vw", maxWidth: "215px" }}>
              Images of Watch {"(front/back)"} :
            </p>
            <div className="form-image-wrapper">
              <div className="form-image-array">
                {imageArr.length > 0
                  ? imageArr.map((image, i) => (
                      <div key={i} className="form-image">
                        <img src={image.src} alt="image 1" />
                      </div>
                    ))
                  : ""}
              </div>
            </div>
            <AddPhotoAlternateRoundedIcon
              className="form-image-button"
              onClick={() => {
                setModalOpen(true);
              }}
              fontSize="1rem"
            />
          </div>
          <TextField
            label="Whats included "
            helperText="(e.g, box, manuals)"
            name="included_items"
            onChange={updateFormData}
            fullWidth
            multiline
            minRows={2}
            maxRows={5}
            className="Form-input"
            value={form.included_items || ""}
            required
          />
          <TextField
            label="Anything Else ? "
            name="extra_comment"
            onChange={updateFormData}
            fullWidth
            multiline
            minRows={2}
            maxRows={5}
            className="Form-input"
            value={form.extra_comment || ""}
          />

          {loading.isLoading ? (
            <>
              <LinearProgress
                sx={{
                  width: "80%",
                  height: "1.3rem",
                  borderRadius: "20px",
                  color: "rgb(97 110 220 / 91%)",
                }}
                variant="determinate"
                value={loading.progress}
                color="inherit"
              />
              <h1>{loading.loadingMessage}</h1>
            </>
          ) : (
            <button className="Form-submit" type="submit">
              <p>Submit</p>
              <PublishIcon className="Form-submit-icon" sx={{ fontSize: 40 }} />
            </button>
          )}
        </form>
      </div>
      <Modal
        open={modalOpen}
        onClose={() => setModalOpen(false)}
        aria-labelledby="modal-modal-title"
        aria-describedby="modal-modal-description"
      >
        <Box sx={style} className="OrderView-modal">
          <Typography id="modal-modal-title" variant="h6" component="h2">
            Upload Images of Watch
          </Typography>
          <div className="OrderView-modal-form">
            <input
              type="file"
              name="Image"
              accept="image/png, image/gif, image/jpeg"
              ref={imageRef}
            />
            <button onClick={addImage}>Add Image</button>
          </div>
        </Box>
      </Modal>
    </>
  );
}

export default Form;
