import React from 'react'

function OrderCard({order}) {
  return (
    <div className="admin-order-single">
        <p>Order# {order.id}</p>
        <p>{order.brand_name}</p>
        <p>{order.model_number}</p>
        <p>{order.papers? 'Yes': 'No'}</p>
        <p>{order.previous_polish}</p>
        <p>{order.previous_service}</p>
        <p>{order.included_items}</p>
        <p>{order.extra_comment}</p>
        <p>{order.tracking_number}</p>
        <p>{order.updated_at}</p>
        <p>{order.created_at}</p>
        <button onClick={()=>console.log('pressed')}>Manage</button>
    </div>
  )
}

export default OrderCard