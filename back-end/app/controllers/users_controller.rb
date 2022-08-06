class UsersController < ApplicationController
    def create
        user = User.create(user_params)
        if user.save
            UserMailer.with(user: user).welcome_email.deliver_later
            payload = {'user_id': user.id}
            token = encode(payload)
            x = user.as_json(only: [:id, :full_name,:email,:company,:street1,:street2,:city,:state,:zip,:phone, :is_admin])
            render json: {
                user: x, 
                # edit password digest
                token: token,
            }
        else 
            render json: { message: 'There was an error creating your account' }
        end
    end
  def profile
    token = request.headers['Authentication'].split(' ')[1] 
    payload = decode(token) 
    if payload
    user = User.find(payload['user_id'])
    if user
      render json: user
    else
      render json: { message: 'Invalid or Missing Token', authenticated: false }
    end
  else
    render json: {message: "Missing Token"}
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
    if payload
    user = User.find(payload['user_id'])
    if user.is_admin
      user_to_delete = User.find_by(email: params[:email])
      if user_to_delete
        user_to_delete.destroy
        render json: user_to_delete
      else
        render json: {message: "User Does not Exist"}
      end
    else
      render json: {message: "Unauthorized Route"}
    end
  else
    render json: {message: "Missing Token"}
  end
  end
  def user_update_details
    token = request.headers['Authentication'].split(' ')[1]
    payload = decode(token)
    if payload
      user = User.find(payload['user_id'])
      user.update(user_edit_params)
      render json: user
    else
      render json: {message: "Missing Token"}
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
  def user_edit_params
    params.permit(
        :full_name,
        :company,
        :street1,
        :street2,
        :city,
        :state,
        :zip,
        :phone)
  end
end
