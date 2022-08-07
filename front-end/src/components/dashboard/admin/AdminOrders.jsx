import React, { useState, useEffect } from "react";
import api from "../../../services/AxiosConfig.js";
import "../../../styles/AdminOrders.scss";
import OrderCard from "./OrderCard.jsx";
import Pagination from "@mui/material/Pagination";
import PaginationItem from "@mui/material/PaginationItem";
import Stack from "@mui/material/Stack";
export default function AdminOrders() {
  const [orders, setOrders] = useState([]);
  const [displayedList, setDisplayedList] = useState([]);
  const [count, setCount] = useState(1);
  const [page, setPage] = useState(1);
  const [errorMessage, setErrorMessage] = useState("");
  const [numberInput, setNumberInput] = useState("");
  const [dateInput, setDateInput] = useState(false);
  const [brandInput, setBrandInput] = useState("");
  let fetchOrders = async (num, date, order_num, brand) => {
    let response = await api.get(
      `/admin-orders?page=${num}&date=${date}&order_id=${order_num}&brand=${brand}`,
      {
        headers: {
          Authentication: `Bearer ${localStorage.getItem("jwt_token")}`,
        },
      }
    );
    if (response.data["message"]) {
      setErrorMessage(response.data.message);
    } else {
      setOrders(response.data.orders);
      setDisplayedList(response.data.orders);
      setCount(response.data.count);
    }
  };
  function handlePageChange(e, page) {
    setPage(page);
    fetchOrders(page, dateInput, numberInput, brandInput);
  }
  useEffect(() => {
    fetchOrders(1, dateInput, numberInput, brandInput);
  }, []);
  const handleChange = (e) => {
    let value = e.target.value;
    console.log(value);
  };
  return (
    <div className="Admin-Order">
      <h1>Order Control Panel</h1>
      <div className="Admin-Order-filter">
        <form className="Admin-Order-filter-search">
          <label>Search By Order#:</label>
          <input
            type="number"
            value={numberInput}
            onChange={(e) => {
              setNumberInput(e.target.value);
              fetchOrders(page, dateInput, e.target.value, brandInput);
            }}
          ></input>
        </form>
        <form className="Admin-Order-filter-drop">
          <label>Date:</label>
          <select
            onChange={(e) => {
              setDateInput(e.target.value);
              fetchOrders(page, e.target.value, numberInput, brandInput);
            }}
          >
            <option value={false}>Latest</option>
            <option value={true}>Oldest</option>
          </select>
          <label>Brand:</label>
          <select
            onChange={(e) => {
              setBrandInput(e.target.value);
              fetchOrders(page, dateInput, numberInput, e.target.value);
            }}
          >
            <option value={""}>All</option>
            <option value={"Rolex"}>Rolex</option>
            <option value={"Patek Philippe"}>Patek Philippe</option>
            <option value={"Cartier"}>Cartier</option>
            <option value={"Richard Mille"}>Richard Mille</option>
            <option value={"Vacheron"}>Vacheron</option>
            <option value={"Omega"}>Omega</option>
            <option value={"Aude4mars Piguet"}>Audemars Piguet</option>
            <option value={"Tudor"}>Tudor</option>
            <option value={"IWC"}>IWC</option>
            <option value={"Bulgari"}>Bulgari</option>
            <option value={"Panerai"}>Panerai</option>
          </select>
        </form>
      </div>
      <div className="Admin-Order-map-container">
        {displayedList.map((order) => {
          return <OrderCard key={order.id} order={order} />;
        })}
      </div>
      <div className="Admin-Order-pager">
        <Stack spacing={2}>
          <Pagination
            count={count}
            showFirstButton
            showLastButton
            boundaryCount={2}
            siblingCount={0}
            variant="outlined"
            shape="rounded"
            onChange={handlePageChange}
            page={page}
          />
        </Stack>
      </div>
    </div>
  );
}
