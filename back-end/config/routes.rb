Rails.application.routes.draw do
  # Customer Routes
  post '/login', to: 'application#create' # login to account
  get '/profile', to: 'users#profile' # get user profile using token
  post '/signup', to: 'users#create' # update User Data
  post '/forgot-password', to: 'users#forgot_password' # sends forgot password email if user exists
  # Order routes
  post '/create-new-order', to: 'orders#create' # create new order
  post '/check-order', to: 'orders#show' # show order status by ID
  post '/my-orders', to: 'orders#my_orders' # returns all the orders of a user
  post '/upload', to: 'documents#create' # Upload documents to order
  post '/upload-image', to: 'images#create' # Upload Images to order

  # Review routes
  post '/add-review', to: 'reviews#create' # customers create reviews
  get '/reviews', to: 'reviews#user_reviews' # shows only approved reviews
  get '/market', to: 'markets#show_all' # get all market
  # Admin Routes
  post '/update-step', to: 'steps#update' # update step of an order
  get '/admin-orders', to: 'orders#admin_show' # Get Orders unrestricted as an admin
  post '/admin-view-order', to: 'orders#admin_show_one' # Get Orders unrestricted as an admin
  post '/delete-user', to: 'users#admin_delete_user' # Delete User as a admin
  post '/delete-document', to: 'documents#destroy' # destroy documents by ID
  post '/delete-image', to: 'images#destroy' # destroy documents by ID
  post '/destroy-orders', to: 'orders#admin_destroy_orders' #
  post '/delete-review', to: 'reviews#admin_delete' # delete reviews only through admin token
  get '/admin-show-reviews', to: 'reviews#admin_show' # Show all reviews included non-approved reviews
  post '/update-review', to: 'reviews#admin_approve_review' # Update approved status of review
  post '/add-market', to: 'markets#create'
  post '/remove-market', to: 'markets#delete'
  post'/update-account', to: 'users#user_update_details'
end
