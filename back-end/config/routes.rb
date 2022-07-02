Rails.application.routes.draw do
  # User routes
   post '/login', to: 'application#create' # login to account
   get '/profile', to: 'users#profile' # get user profile using token
   post '/signup', to: 'users#create' # update User Data

   # Order routes
    post '/create-new-order', to: 'orders#create' # create new order
    post '/check-order', to: 'orders#show' # show order status by ID
end
