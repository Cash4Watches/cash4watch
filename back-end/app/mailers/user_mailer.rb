class UserMailer < ApplicationMailer
    default from: "mohamed@muflahi.dev"
    # layout 'welcome_email'
     def welcome_email
        @user = params[:user]
        mail(to: @user.email, subject: "Welcome to MY SITE ")
     end
     def forgot_password
      @user = params[:user]
      @token = params[:token]
      mail(to: @user.email, subject: "Forgoten Password")
     end
end
