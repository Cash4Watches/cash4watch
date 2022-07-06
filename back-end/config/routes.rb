Rails.application.routes.draw do
  resources :steps
  # User routes
   post '/login', to: 'application#create' # login to account
   get '/profile', to: 'users#profile' # get user profile using token
   post '/signup', to: 'users#create' # update User Data

   # Order routes
    post '/create-new-order', to: 'orders#create' # create new order
    post '/check-order', to: 'orders#show' # show order status by ID

    # Label routes 
    post '/label', to: 'orders#create_label'
    
    # Step Routes 
    post '/update-step', to: 'steps#update'
    #Document routes
    post '/upload', to: 'documents#create' # Upload documents to order
    post '/delete-document', to: 'documents#destroy' # destroy documents by ID
end
