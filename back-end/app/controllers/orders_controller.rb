class OrdersController < ApplicationController
  def create
    token = request.headers['Authentication'].split(' ')[1]
    payload = decode(token)
    if payload
      user = User.find(payload['user_id'])
      if user
        if params[:order_type]
          order = Order.create(
            brand_name: params[:brand_name],
            model_number: params[:model_number],
            condition: params[:condition],
            previous_service: params[:previous_service],
            previous_polish: params[:previous_polish],
            papers: params[:papers],
            included_items: params[:included_items],
            extra_comment: params[:extra_comment],
            user_id: user.id,
            order_type: params[:order_type]
          )
          if order
            case params[:order_type]
            when 'consignment'
              step1 = Step.create({ index: 1, title: 'Case Approved', desc: '', completed: false, order_id: order.id })
              step2 = Step.create({ index: 2, title: 'Label Generated', desc: '', completed: false,
                                    order_id: order.id })
              step3 = Step.create({ index: 3, title: 'Watch Received', desc: '', completed: false, order_id: order.id })
              step4 = Step.create({ index: 4, title: 'Watch Inspected', desc: '', completed: false,
                                    order_id: order.id })
              step5 = Step.create({ index: 5, title: 'Watch Sold', desc: '', completed: false, order_id: order.id })
              render json: order
            when 'service'
              step1 = Step.create({ index: 1, title: 'Case Approved', desc: '', completed: false, order_id: order.id })
              step2 = Step.create({ index: 2, title: 'Label Generated', desc: '', completed: false,
                                    order_id: order.id })
              step3 = Step.create({ index: 3, title: 'Watch Received', desc: '', completed: false, order_id: order.id })
              step4 = Step.create({ index: 4, title: 'Watch Serviced', desc: '', completed: false, order_id: order.id })
              step5 = Step.create({ index: 5, title: 'Shipped Back', desc: '', completed: false, order_id: order.id })
              render json: order
            when 'polish'
              step1 = Step.create({ index: 1, title: 'Case Approved', desc: '', completed: false, order_id: order.id })
              step2 = Step.create({ index: 2, title: 'Label Generated', desc: '', completed: false,
                                    order_id: order.id })
              step3 = Step.create({ index: 3, title: 'Watch Received', desc: '', completed: false, order_id: order.id })
              step4 = Step.create({ index: 4, title: 'Watch Polished', desc: '', completed: false, order_id: order.id })
              step5 = Step.create({ index: 5, title: 'Shipped Back', desc: '', completed: false, order_id: order.id })
              render json: order
            else
              render json: { message: 'Incorrect Order_type' }
            end
          else
            render json: { message: 'Failed to create Order' }
          end
        else
          order = Order.create(brand_name: params[:brand_name], model_number: params[:model_number],
                               condition: params[:condition], previous_service: params[:previous_service], previous_polish: params[:previous_polish], papers: params[:papers], included_items: params[:included_items], extra_comment: params[:extra_comment], user_id: user.id)
          if order
            step1 = Step.create({ index: 1, title: 'Case Approved', desc: '', completed: false, order_id: order.id })
            step2 = Step.create({ index: 2, title: 'Label Generated', desc: '', completed: false,
                                  order_id: order.id })
            step3 = Step.create({ index: 3, title: 'Watch Received', desc: '', completed: false, order_id: order.id })
            step4 = Step.create({ index: 4, title: 'Watch Inspected', desc: '', completed: false,
                                  order_id: order.id })
            step5 = Step.create({ index: 5, title: 'Watch Sold', desc: '', completed: false, order_id: order.id })
            render json: order
          else
            render json: { message: 'Failed to create Order' }
          end
        end
      else
        render json: { message: 'Invalid or expired token' }
      end
    else
      render json: { message: 'Missing Token' }
    end
  end

  def show
    token = request.headers['Authentication'].split(' ')[1]
    payload = decode(token)
    if payload
      user = User.find(payload['user_id'])
      if user
        order = user.orders.where(id: params[:order_id])[0]
        if order
          # x = order.as_json(only: [:id, :brand_name, :model_number, :condition, :previous_service,:previous_polish, :papers,:included_items, :extra_comment, :steps, :documents])
          render json: order
        else
          render json: { message: 'Order not found' }
        end
      else
        render json: { message: 'Invalid or Expired Token' }
      end
    else
      render json: { message: 'Missing Token' }
    end
  end

  def admin_show_one
    token = request.headers['Authentication'].split(' ')[1]
    payload = decode(token)
    if payload
      user = User.find(payload['user_id'])
      if user.is_admin
        order = Order.find(params[:order_id])
        if order
          render json: order
        else
          render json: { message: 'Incorrect Order id' }
        end
      else
        render json: { message: 'Unauthorized Route' }
      end
    else
      render json: { message: 'Missing Token' }
    end
  end

  def admin_show
    token = request.headers['Authentication'].split(' ')[1]
    payload = decode(token)
    if payload
      user = User.find(payload['user_id'])
      if user.is_admin
        page_param = params[:page] || 1
        orders = Order.order(:created_at).page params[:page]
        render json: { orders: orders }
      else
        render json: { message: 'Unauthorized Route' }
      end
    else
      render json: { message: 'Missing Token' }
    end
  end

  def my_orders
    token = request.headers['Authentication'].split(' ')[1]
    payload = decode(token)
    if payload
      user = User.find(payload['user_id'])
      if user
        orders = user.orders
        render json: { orders: orders }
      else
        render json: { message: 'Invalid or Expired Token' }
      end
    else
      render json: { message: 'Missing Token' }
    end
  end

  def admin_destroy_orders
    token = request.headers['Authentication'].split(' ')[1]
    payload = decode(token)
    if payload
      user = User.find(payload['user_id'])
      if user.is_admin
        order = Order.find(params[:order_id])
        if order
          order.destroy
          render json: order
        else
          render json: { message: 'Order not Found' }
        end
      else
        render json: { message: 'Unauthorized Route' }
      end
    else
      render json: { message: 'Missing Token' }
    end
  end

  # Admin Route for generating order and user
  def admin_create_order
    token = request.headers['Authentication'].split(' ')[1]
    payload = decode(token)
    if payload
      user = User.find(payload['user_id'])
      if user.is_admin
      else
        render json: { message: 'Unauthorized ' }
      end
    else
      render json: { message: 'Missing Token' }
    end
  end

  private

  def order_params
    params.permit(:brand_name, :model_number, :condition, :previous_service, :previous_polish, :papers, :included_items,
                  :extra_comment, :user_id)
  end
end
