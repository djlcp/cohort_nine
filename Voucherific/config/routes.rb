Rails.application.routes.draw do
  root to: "home#index"

  get '/shop/instances' => "shop/instances#search"
  get '/shop/instances/search' => "shop/instances#search"

 
  namespace :admin do
      resources :vouchers
  end

  namespace :customer do
      resources :vouchers
  end
 
  namespace :shop do 
      resources :instances
  end


  devise_for :users
# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
end
