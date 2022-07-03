class ApplicationController < ActionController::Base
    skip_before_action :verify_authenticity_token
    
    # secret_key = Rails.application.credentials.dig(:jwt_key)
    def secret_key
        Rails.application.credentials.dig(:jwt_key)
    end
    def encode(payload)
        JWT.encode(payload, secret_key, 'HS256')
    end
    def decode(token)
        JWT.decode(token, secret_key, true, { algorithm: 'HS256'})[0]
    end
    def create
        user = User.find_by(email: params[:email])
        if user && user.authenticate(params[:password])
            # session[:user_id] = user.id
            payload = {'user_id': user.id}
            token = encode(payload)
            # result = serialize(user, UserSerializer).
            # merge(serialize(token, UserSerializer)) 
            # include: { posts: {include: { comments: {only: :body } },only: :title } }
            x = user.as_json(only: [:id, :full_name,:email,:company,:street1,:street2,:city,:state,:zip,:phone])
            render json: {user: x, token: token}
            
        else 
            render json: {
                message: 'Incorrect Username/Password',
                authenticated: false
            }
        end
    end
end
