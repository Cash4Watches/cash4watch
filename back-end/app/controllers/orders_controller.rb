class OrdersController < ApplicationController
   
    def create
      token = request.headers['Authentication'].split(' ')[1] 
    payload = decode(token) 
    user = User.find(payload['user_id'])
    if user
      order = Order.create!(order_params);
      if order
          step1 = Step.create!({index: 1,title: "Case Approved",desc: "",completed: false,order_id: order.id})
          step2 = Step.create!({index: 2,title: "Label Generated",desc: "",completed: false,order_id: order.id})
          step3 = Step.create!({index: 3,title: "Watch Received",desc: "",completed: false,order_id: order.id})
          step4 = Step.create!({index: 4,title: "Watch Inspected",desc: "",completed: false,order_id: order.id})
          step5 = Step.create!({index: 5,title: "Watch Sold",desc: "",completed: false,order_id: order.id})
          render json: order
      else
          render json: {message: 'Failed to create Order'}
      end
    else
      render json: {message: "Invalid or expired token"}
    end
   end
   def show
    token = request.headers['Authentication'].split(' ')[1] 
    payload = decode(token) 
    user = User.find(payload['user_id'])
    if user
      order = user.orders.where(id: params[:order_id])
      if order
        render json: order
      else
        render json: {message: "Order not found"}
      end
    else
      render json: { message: "Invalid or Expired Token"}
    end
   end
   private
   def order_params
    params.permit(:brand_name, :model_number, :reference_number, :condition, :previous_service,:previous_polish,:papers,:included_items,:extra_comment,:user_id)
   end
end
