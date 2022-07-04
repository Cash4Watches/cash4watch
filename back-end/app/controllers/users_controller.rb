class UsersController < ApplicationController
  
    def create
        user = User.create!(user_params)
        if user
          user.avatar.attach(
            io: File.open('./public/default.png'),
            filename: 'default.png',
            content_type: 'application/png'
        )
            payload = {'user_id': user.id}
            token = encode(payload)
            render json: {
                user: user,
                token: token,
                authenticated: true
            }
        else 
            render json: { message: 'There was an error creating your account' }
        end
    end

  def profile
    token = request.headers['Authentication'].split(' ')[1] 
    p token
    payload = decode(token) 
    p payload
    user = User.find(payload['user_id'])
    if user
      render json: user
    else
      render json: { message: 'Invalid or Missing Token', authenticated: false }
    end
  end
  private

  def user_params
    params.permit(
        :full_name,
        :password,
        :email,
        :company,
        :street1,
        :street2,
        :city,
        :state,
        :zip,
        :phone)
  end
end
