import React, {useState,useEffect}from "react";
import api from "../../../services/AxiosConfig.js";
import '../../../styles/AdminOrders.scss'
import OrderCard from "./OrderCard.jsx";
export default function AdminOrders() {
  const [orders, setOrders] = useState([])
  const [errorMessage, setErrorMessage] = useState('')
  useEffect(() => {
    let fetchOrders = async () => {
      let response = await api.get(
        "/admin-orders",
        {},
        {
          headers: {
            Authentication: `Bearer ${localStorage.getItem("jwt_token")}`,
          },
        }
      );
      if (response.data["message"]) {
        setErrorMessage(response.data.message);
      } else {
        if (response.data.orders.length === 0) {
          setErrorMessage('No orders created Yet!');
        } else {
          console.log(response.data.orders)
          setOrders(response.data.orders)
        }
      }
    };
    fetchOrders();
  }, [])
  
  return (
    <>
     <div className="admin-order-container">
     <div className="admin-order-top">
      <h1>Orders:</h1>
     </div>
      <div className="admin-order-mid">
      <h1>FILTER SECTION</h1>
     </div>
      <div className="admin-order-bottom">
      {orders.map((order)=>{
      return <OrderCard key={order.id} order={order}/>
    })}
    {orders.map((order)=>{
      return <OrderCard key={order.id} order={order}/>
    })}
     </div>
     </div>
    </>
  );
}
