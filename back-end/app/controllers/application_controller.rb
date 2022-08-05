class ApplicationController < ActionController::Base
  skip_before_action :verify_authenticity_token
  require 'jwt'
  # secret_key = Rails.application.credentials.dig(:jwt_key)
  def secret_key
    'my$ecretK3y'
  end

  def encode(payload)
    JWT.encode(payload, secret_key, 'HS256')
  end

  def decode(token)
    JWT.decode(token, secret_key, true, { algorithm: 'HS256' })[0]
  rescue StandardError
    puts 'FAILED'
  end

  def create
    user = User.find_by(email: params[:email])
    if user&.authenticate(params[:password])
      # session[:user_id] = user.id
      payload = { "exp": Time.now.to_i + 2.week, 'user_id': user.id }
      p payload
      token = encode(payload)
      p token
      # result = serialize(user, UserSerializer).
      # merge(serialize(token, UserSerializer))
      # include: { posts: {include: { comments: {only: :body } },only: :title } }
      x = user.as_json(only: %i[id full_name email company street1 street2 city state zip phone
                                is_admin])
      render json: { user: x, token: token }

    else
      render json: {
        message: 'Incorrect Username/Password',
        authenticated: false
      }
    end
  end
end
