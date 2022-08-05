class MarketsController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, with: :show_errors
  def create
    token = request.headers['Authentication'].split(' ')[1]
    payload = decode(token)
    if payload
      user = User.find(payload['user_id'])
      if user.is_admin
        market = Market.create(name: params[:name], price: params[:price])
        if market
          render json: market
        else
          render json: { message: 'Failed to Create Market' }
        end
      else
        render json: { message: 'Unauthorized Route' }
      end
    else
      render json: { message: 'Missing Token' }
    end
  end

  def delete
    token = request.headers['Authentication'].split(' ')[1]
    payload = decode(token)
    if payload
      user = User.find(payload['user_id'])
      if user.is_admin
        market = Market.find(params[:market_id])
        if market
          market.destroy
          render json: market
        else
          render json: { message: 'Failed to Create Market' }
        end
      else
        render json: { message: 'Unauthorized Route' }
      end
    else
      render json: { message: 'Missing Token' }
    end
  end

  def show_all
    markets = Market.all
    render json: { markets: markets }
  end

  def show_errors
    render json: { message: 'Market not found' }
  end
end
