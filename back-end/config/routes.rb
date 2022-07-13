Rails.application.routes.draw do
  
  # User routes
   post '/login', to: 'application#create' # login to account
   get '/profile', to: 'users#profile' # get user profile using token
   post '/signup', to: 'users#create' # update User Data
   post '/forgot-password', to: 'users#forgot_password' # sends forgot password email if user exists
   # Order routes
   post '/create-new-order', to: 'orders#create' # create new order
   post '/check-order', to: 'orders#show' # show order status by ID
   post '/my-orders', to: 'orders#my_orders' # returns all the orders of a user

    # Label routes 
    # post '/label', to: 'orders#create_label'
    get '/admin-orders', to: 'orders#admin_show'
    post '/delete-user', to: 'users#admin_delete_user'
    post '/delete-document', to: 'documents#destroy' # destroy documents by ID
    
    # Step Routes 
    post '/update-step', to: 'steps#update'
    #Document routess
    post '/upload', to: 'documents#create' # Upload documents to order
end
