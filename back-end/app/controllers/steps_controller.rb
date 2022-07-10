class StepsController < ApplicationController
    def update
        order = Order.find(params[:order_id])
        if order
            step = order.steps.where(id: params[:step_id])[0]
            p step
            if step
                step.completed = !step.completed
                step.save!
                case step.index
                when 1
                    create_label(order.id)
                    OrderMailer.with(user: order.user, order: order).order_update.deliver_later
                when 2
                    OrderMailer.with(user: order.user, order: order).order_update.deliver_later
                    # email for step 2
                when 3
                    # email for step 3
                    OrderMailer.with(user: order.user, order: order).order_update.deliver_later
                when 4
                    # email for step 4
                    OrderMailer.with(user: order.user, order: order).order_update.deliver_later
                when 5
                    # email for step 5
                    OrderMailer.with(user: order.user, order: order).order_update.deliver_later
                end
                render json: step
            else
                render json: {message: "Incorrect or Invalid step_id"}
            end
        else
            render json: {message: "Incorrect or Invalid order_id"}
        end
        
    end
end
