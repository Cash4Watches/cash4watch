import InputLabel from "@mui/material/InputLabel";
import MenuItem from "@mui/material/MenuItem";
import FormControl from "@mui/material/FormControl";
import Select from "@mui/material/Select";
import OrderView from "./OrderView.jsx";
import { useState, useEffect } from "react";
import api from "../../services/AxiosConfig.js";
// ALL COMPONENT CSS IS IN DASHBOARD.SCSS
function Orders() {
  const [orderDetail, setOrderDetail] = useState({
    index: 0,
    label: "Order Number(s)",
    view: null,
  });
  const [orderArr, setOrderArr] = useState([]);

  useEffect(() => {
    let fetchOrders = async () => {
      let response = await api.post(
        "/my-orders",
        {},
        {
          headers: {
            Authentication: `Bearer ${localStorage.getItem("jwt_token")}`,
          },
        }
      );
      if (response.data["message"]) {
        setOrderDetail({
          ...orderDetail,
          label: "No Order Found :(",
          view: <h4>Error : {response.data.message}</h4>,
        });
      } else {
        if (response.data.orders.length === 0) {
          setOrderDetail({
            ...orderDetail,
            label: "No Order Found :(",
            view: <h4>NO ORDERS </h4>,
          });
        } else {
          setOrderArr(response.data.orders);
        }
      }
    };
    fetchOrders();
  }, []);
  useEffect(() => {
    if (orderArr.length === 0) {
      setOrderDetail({
        ...orderDetail,
        label: "Loading Order(s)",
        view: <h4>LOADING ORDERS....</h4>,
      });
    } else {
      setOrderDetail({
        ...orderDetail,
        label: "Order Number(s)",
        view: <OrderView data={orderArr[orderDetail.index]} />,
      });
    }
  }, [orderArr, orderDetail.index]);

  return (
    <div className="Orders">
      <h1>My Orders</h1>
      <div className="Orders-dropdown">
        <FormControl className="Orders-dropdown" fullWidth>
          <InputLabel id="demo-simple-select-label">
            {orderDetail.label}
          </InputLabel>
          <Select
            value={orderDetail.index}
            label={orderDetail.label}
            onChange={(e) => {
              setOrderDetail({
                ...orderDetail,
                index: e.target.value,
              });
            }}
            required
          >
            {orderArr.map((order, i) => (
              <MenuItem value={i} key={i}>
                {order.id}
              </MenuItem>
            ))}
          </Select>
        </FormControl>
      </div>
      {orderDetail.view}
    </div>
  );
}
export default Orders;
