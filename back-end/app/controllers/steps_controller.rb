class StepsController < ApplicationController
    def update
        token = request.headers['Authentication'].split(' ')[1]
        payload = decode(token) 
        if payload
            user = User.find(payload['user_id'])  
            if user.is_admin
                order = Order.find(params[:order_id])
                if order
                    step = order.steps.where(id: params[:step_id])[0]
                    p step
                    if step
                        case step.index
                        when 1
                            if create_label(order.id)
                                step.completed = !step.completed
                                step.save
                                OrderMailer.with(user: order.user, order: order).order_update.deliver_later
                                render json: step
                            else
                                render json: {message: "Failed to Generate Label Try Again"}
                            end
                        when 2
                        # email for step 2
                            step.completed = !step.completed
                            step.save
                            OrderMailer.with(user: order.user, order: order).order_update.deliver_later
                            render json: step
                        when 3
                        # email for step 3
                            step.completed = !step.completed
                            step.save
                            OrderMailer.with(user: order.user, order: order).order_update.deliver_later
                            render json: step
                        when 4
                        # email for step 4
                            step.completed = !step.completed
                            step.save
                            OrderMailer.with(user: order.user, order: order).order_update.deliver_later
                            render json: step
                        when 5
                        # email for step 5
                            step.completed = !step.completed
                            step.save
                            OrderMailer.with(user: order.user, order: order).order_update.deliver_later  
                            render json: step
                        end
                    else
                        render json: {message: "Incorrect or Invalid step_id"}
                    end
                else
                    render json: {message: "Incorrect or Invalid order_id"}
                end
            else
                render json: {message: "Unauthorized Route"}
            end 
             
        else
            render json: {message: 'Missing Token'}
        end
    end
end
