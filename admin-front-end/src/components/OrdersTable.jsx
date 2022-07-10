import React from 'react'
import { useState, useEffect } from "react";
import '../styles/OrdersTable.scss'
function OrdersTable() {
  const [ordersArray, setOrdersArray] = useState([])
  useEffect(() => {
    fetch('http://localhost:3000/admin-orders')
    .then(resp=>resp.json())
    .then(data =>{
      setOrdersArray(data.orders)
    })
  }, [])
  
  return (
    <div style={{ height: 400, width: '100%' }}>
      <table>
        <thead>
        <tr>
          <th>Order Id:</th>
          <th>Brand Name:</th>
          <th>Model Number:</th>
          <th>Reference Number:</th>
          <th>Condition:</th>
          <th>Previous Service:</th>
          <th>Previous Polish:</th>
          <th>Papers:</th>
          <th>Included Items:</th>
          <th>Extra Comment:</th>
        </tr>
        </thead>
        <tbody>
        {ordersArray.map((order) => {
          return (
            <tr>
              <td>{order.id}</td>
              <td>{order.brand_name}</td>
              <td>{order.model_number}</td>
              <td>{order.reference_number}</td>
              <td>{order.condition}</td>
              <td>{order.previous_service}</td>
              <td>{order.previous_polish}</td>
              <td>{order.papers}</td>
              <td>{order.included_items}</td>
              <td>{order.extra_comment}</td>
            </tr>
          )
        })}
        </tbody>
      </table>
    </div>
  )
}

export default OrdersTable