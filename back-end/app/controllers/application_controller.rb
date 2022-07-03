class ApplicationController < ActionController::Base
    skip_before_action :verify_authenticity_token
    secret_key = Rails.application.credentials.dig(:jwt_key)
    def encode(payload)
        JWT.encode(payload, secret_key, 'HS256')
    end
    def decode(token)
        JWT.decode(token, secret_key, true, { algorithm: 'HS256'})[0]
    end
    def create
        user = User.find_by(username: params[:username])
        if user && user.authenticate(params[:password])
            # session[:user_id] = user.id
            payload = {'user_id': user.id}
            token = encode(payload)
            # result = serialize(user, UserSerializer).
            # merge(serialize(token, UserSerializer)) 
            # include: { posts: {include: { comments: {only: :body } },only: :title } }
            render json: {user: user, token: token}
            
        else 
            render json: {
                message: 'Incorrect Username/Password',
                authenticated: false
            }
        end
    end
end
