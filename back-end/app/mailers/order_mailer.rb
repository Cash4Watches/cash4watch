class OrderMailer < ApplicationMailer
    default from: "mohamed@muflahi.dev"
    # layout 'welcome_email'
     def welcome_email
        @user = params[:user]
        mail(to: @user.email, subject: "Welcome to MY SITE ")
     end
     def order_update
      @user = params[:user]
      @order = params[:order]
      mail(to: @user.email, subject: "Order Update")
     end
end
