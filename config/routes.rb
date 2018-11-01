Rails.application.routes.draw do
  # STEP 1: A ROUTE triggers a controller action
  # verb "/urls" => "namespace/controllers#action"
  namespace :api do
    get '/products' => 'products#index'
    get 'products/:id' => 'products#show'
    post '/products' => 'products#create'
    patch '/products/:id' => 'products#update' 
    delete '/products/:id' => 'products#destroy'
    post '/users' => 'users#create'
    post '/sessions' => 'sessions#create'
    post '/orders' =>  'orders#create'
    get '/orders' => 'orders#index'
    post '/carted_products' => 'carted_products#create'
  end
end

# end of night 10/30
# created model CartedProduct and controller api/carted_products
# need to remove attributes from orders and start associations