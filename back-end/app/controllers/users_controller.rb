class UsersController < ApplicationController
    def create
        user = User.create!(user_params)
        if user
            UserMailer.with(user: user).welcome_email.deliver_later
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
    payload = decode(token) 
    user = User.find(payload['user_id'])
    if user
      render json: user
    else
      render json: { message: 'Invalid or Missing Token', authenticated: false }
    end
  end
   
  def forgot_password
    user = User.find_by(email: params[:email])
    if user
      UserMailer.with(user: user).forgot_password.deliver_later
      render json: {message: "Email sent"}
    else
      render json: { message: 'Invalid or Wrong Email', authenticated: false }
    end
  end
  def admin_delete_user
    token = request.headers['Authentication'].split(' ')[1]
    payload = decode(token) 
    if payload['user_id'] == 1
      user = User.find(params[:user_id])
      if user
        user.destroy
        render json: user
      else
        render json: {message: "User Does not Exist"}
      end
    else
      render json: {message: "Unauthorized Action"}
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
