class ImagesController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, with: :show_errors
  def create
    order_id = params[:order_id].to_i
    order = Order.find(order_id)
    if order
      file = params[:file]
      if file
        image = Image.create(alt: params[:name], order_id: order.id)
        image.file.attach(io: params[:file], filename: file.original_filename, content_type: file.content_type)
        if image
          render json: image
        else
          render json: { message: 'Failed to create Image' }
        end
      else
        render json: { message: 'No File detected' }
      end
    else
      render json: { message: 'Incorrect Order ID' }
    end
  end

  def destroy
    token = request.headers['Authentication'].split(' ')[1]
    payload = decode(token)
    if payload
      user = User.find(payload['user_id'])
      if user.is_admin
        image = Image.find(params[:id])
        if image
          image.destroy
          render json: image
        else
          render json: { message: 'Failed to find Image' }
        end
      else
        render json: { message: 'Unauthorized Route' }
      end
    else
      render json: { message: 'Missing Token' }
    end
  end

  def show_errors
    render json: { message: 'Image not found' }
  end
end
