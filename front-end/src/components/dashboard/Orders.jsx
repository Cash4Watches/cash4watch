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
  let fetchOrders = async () => {
    let response = await api.post("/my-orders");
    setOrderArr(response.data.orders);
  };
  useEffect(() => {
    fetchOrders();
    if (orderArr.length === 0) {
      setOrderDetail({
        ...orderDetail,
        label: "Sorry no Orders here :(",
        view: <h4>NO ORDERS</h4>,
      });
    } else {
      setOrderDetail({
        ...orderDetail,
        label: "Order Number(s)",
        view: <OrderView values={orderArr[orderDetail.index]} />,
      });
    }
  }, [orderArr.length, orderDetail.index]);

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
                {order.id.split("-")[0]}
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