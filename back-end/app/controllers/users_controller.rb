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
    # payload = { "exp": Time.now.to_i + 2.week, 'user_id': user.id }
    user = User.find_by(email: params[:email])
    if user
      payload = { "exp": Time.now.to_i + 2.minute, 'user_id': user.id, 'email': true }
      token = encode(payload)
      UserMailer.with(user: user,token: token).forgot_password.deliver_later
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
  def admin_users
    token = request.headers['Authentication'].split(' ')[1]
    payload = decode(token)
    if payload
    user = User.find(payload['user_id'])
    if user.is_admin
      
      users = User.where(email: params[:email])
      render json: users
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
      user.save!(validate: false)
      render json: user
    else
      render json: {message: "Missing Token"}
    end
  end
  def change_password
    token = request.headers['Authentication'].split(' ')[1]
    payload = decode(token)
    if payload
      user = User.find(payload['user_id'])
      if user&.authenticate(params[:password])
        user.password = params[:new_password]
        user.save!
        render json: user
      else
        render json: {
          message: 'Incorrect Old Password',
          authenticated: false
        }
      end
    else
      render json: {message: "Missing or Invalid Token"}
    end
  end
  def change_password_email
    token = request.headers['Authentication'].split(' ')[1]
    payload = decode(token)
    if payload
      user = User.find(payload['user_id'])
        if payload['email']
          user.password = params[:new_password]
          user.save!
          render json: user
        else
          render json: {message: 'Incorrect Link. Try Requesting another Link'}
        end
    else
      render json: {message: "Expired Link. Try Requesting another Link"}
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
