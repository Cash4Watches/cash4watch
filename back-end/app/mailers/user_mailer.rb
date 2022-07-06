class UserMailer < ApplicationMailer
    default from: "mohamed@muflahi.dev"
    # layout 'welcome_email'
     def welcome_email
        @user = params[:user]
        mail(to: @user.email, subject: "Welcome to MY SITE ")
     end
end
