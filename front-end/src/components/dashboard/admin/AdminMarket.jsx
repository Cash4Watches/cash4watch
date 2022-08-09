import React, { useState, useEffect, useRef } from "react";
import api from "../../../services/AxiosConfig.js";
import AdminMarketView from "./mini-components/AdminMarketView.jsx";
import AddRoundedIcon from "@mui/icons-material/AddRounded";
import Box from "@mui/material/Box";
import Typography from "@mui/material/Typography";
import Modal from "@mui/material/Modal";
import TextField from "@mui/material/TextField";
import { AdapterDateFns } from "@mui/x-date-pickers/AdapterDateFns";
import { LocalizationProvider } from "@mui/x-date-pickers/LocalizationProvider";
import { DatePicker } from "@mui/x-date-pickers/DatePicker";

export default function AdminMarket() {
  const nameRef = useRef(null);
  const priceRef = useRef(null);
  const [value, setValue] = useState({});
  const [market, setMarket] = useState({
    content: [],
    isLoaded: false,
  });
  const [modalOpen, setModalOpen] = useState(false);
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

  useEffect(() => {
    let grabMarket = async () => {
      let token = localStorage.getItem("jwt_token");
      try {
        let response = await api.get(
          "/market",
          {},
          {
            headers: {
              Authentication: `Bearer ${token}`,
            },
          }
        );
        !response.data["message"]
          ? setMarket({
              content: response.data.markets,
              isLoaded: true,
            })
          : alert(response.data["message"]);
      } catch (e) {
        alert(e.response.statusText);
      }
    };
    if (!market.isLoaded) grabMarket();
  }, [market.isLoaded]);
  let handleCreate = async () => {
    let token = localStorage.getItem("jwt_token");
    try {
      let response = await api.post(
        "/add-market",
        {
          name: nameRef.current.value,
          price: priceRef.current.value,
          date: value.toLocaleDateString(),
        },
        {
          headers: {
            Authentication: `Bearer ${token}`,
          },
        }
      );
      if (!response.data["message"]) {
        setMarket({
          ...market,
          isLoaded: false,
        });
        setModalOpen(false);
      } else {
        alert(response.data["message"]);
      }
    } catch (e) {
      alert(e.response.statusText);
    }
  };
  return (
    <div className="AdminMarket">
      <h1 style={{ alignSelf: "center" }}>Market Control Panel</h1>
      <div className="AdminMarket-map-container">
        <h2>Market prices </h2>
        {market.isLoaded ? (
          market.content.map((ticker, i) => (
            <AdminMarketView
              key={i}
              setMarket={setMarket}
              market={market}
              data={ticker}
            />
          ))
        ) : (
          <h1>LOADING ...</h1>
        )}
      </div>
      <button
        className="AdminMarket-create-btn"
        onClick={() => setModalOpen(true)}
      >
        <AddRoundedIcon fontSize="inherit" />
      </button>
      <Modal
        open={modalOpen}
        onClose={() => setModalOpen(false)}
        aria-labelledby="modal-modal-title"
        aria-describedby="modal-modal-description"
      >
        <Box sx={style} className="AdminMarket-modal">
          <Typography id="modal-modal-title" variant="h6" component="h2">
            Create Ticker
          </Typography>
          <div className="AdminMarket-modal-form">
            <input
              className="AdminMarket-modal-form-input"
              type="text"
              ref={nameRef}
              placeholder="Name"
            />
            <input
              className="AdminMarket-modal-form-input"
              type="text"
              ref={priceRef}
              placeholder="Price"
            />
            <LocalizationProvider dateAdapter={AdapterDateFns}>
              <DatePicker
                label="Enter Date"
                value={value || null}
                onChange={(newValue) => {
                  console.log(typeof newValue);
                  setValue(newValue);
                }}
                renderInput={(params) => <TextField {...params} />}
              />
            </LocalizationProvider>
            <button
              className="AdminMarket-modal-form-button"
              onClick={handleCreate}
            >
              Submit
            </button>
          </div>
        </Box>
      </Modal>
    </div>
  );
}
