import InputLabel from "@mui/material/InputLabel";
import MenuItem from "@mui/material/MenuItem";
import FormControl from "@mui/material/FormControl";
import Select from "@mui/material/Select";
import OrderView from "./OrderView.jsx";
import { useState, useEffect } from "react";
// ALL COMPONENT CSS IS IN DASHBOARD.SCSS
function Orders() {
  const [orderDetail, setOrderDetail] = useState({
    index: 0,
    label: "Order Number(s)",
    view: null,
  });
  const [orderArr, setOrderArr] = useState([
    {
      id: "5f77fdae-67a4-4549-bd9b-9967c8e7a10c",
      brand_name: "Rolex",
      model_number: "12345678",
      reference_number: "123123abc",
      condition: "NEW",
      previous_service: "N/A",
      previous_polish: "N/A",
      papers: true,
      included_items: "Box and Original Docs",
      extra_comment: " Please take care of the watch",
      user_id: 6,
      created_at: "2022-07-16T03:36:07.266Z",
      updated_at: "2022-07-16T03:36:07.266Z",
    },
    {
      id: "ac55325e-47ad-4643-a428-d186694fcdf8",
      brand_name: "Versace",
      model_number: "12345678",
      reference_number: "123123abc",
      condition: "NEW",
      previous_service: "N/A",
      previous_polish: "N/A",
      papers: true,
      included_items: "Box and Original Docs",
      extra_comment: " Please take care of the watch",
      user_id: 6,
      created_at: "2022-07-16T03:36:35.825Z",
      updated_at: "2022-07-16T03:36:35.825Z",
    },
  ]);

  useEffect(() => {
    if (orderArr.length === 0) {
      setOrderDetail({
        ...orderDetail,
        label: "Sorry no Orders here :(",
      });
    } else {
      setOrderDetail({
        ...orderDetail,
        label: "Order Number(s)",
      });
    }
    setOrderDetail({
      ...orderDetail,
      view: <OrderView values={orderArr[orderDetail.index]} />,
    });
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
