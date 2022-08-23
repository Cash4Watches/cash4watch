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
function Form() {
  let navigate = useNavigate();
  const imageRef = useRef(null);
  const [form, setForm] = useState({});
  const [disable, setDisable] = useState(false);
  const [showMore, setShowMore] = useState(false);
  const [modalOpen, setModalOpen] = useState(false);
  const [imageArr, setImageArr] = useState([]);
  // let handleSubmitImage = async (order_id, image_title) => {
  //   if (imageRef.current.files.length === 0) {
  //     alert("Please enter a file ");
  //     return false;
  //   }
  //   let uploadForm = new FormData();
  //   let fileName = imageRef.current.files[0].name;
  //   let file = imageRef.current.files[0];
  //   let type = imageRef.current.files[0].type;
  //   uploadForm.append("file", file);
  //   uploadForm.append("type", type);
  //   uploadForm.append("name", fileName);
  //   uploadForm.append("order_id", order_id);
  //   try {
  //     let token = localStorage.getItem("jwt_token");
  //     let response = await api.post("/upload-image", uploadForm, {
  //       headers: {
  //         "Content-Type": "multipart/form-data",
  //         Authentication: `Bearer ${token}`,
  //       },
  //     });
  //     if (response.data["message"]) alert(response.data["message"]);
  //   } catch (e) {
  //     alert(e.response.statusText);
  //   }
  // };

  let handleSubmit = async (e) => {
    e.preventDefault();
    try {
      setDisable(true);
      await api.post("/create-new-order", form, {
        headers: {
          Authentication: `Bearer ${localStorage.getItem("jwt_token")}`,
        },
      });
      navigate("/dashboard");
    } catch (e) {
      alert(e.response.statusText);
    }

    setDisable(false);
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
    let reader = new FileReader();
    reader.onload = () => {
      if (reader.readyState === 2) {
        setImageArr([...imageArr, { src: reader.result }]);
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
            <p>Images of Watch:</p>
            <div className="form-image-array">
              {imageArr.length > 0
                ? imageArr.map((image, i) => (
                    <div key={i} className="form-image">
                      <img src={image.src} alt="image 1" />
                    </div>
                  ))
                : ""}
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

          <button className="Form-submit" type="submit" disabled={disable}>
            <p>Submit</p>
            <PublishIcon className="Form-submit-icon" sx={{ fontSize: 40 }} />
          </button>
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
            Upload Images
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
