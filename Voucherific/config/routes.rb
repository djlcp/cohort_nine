Rails.application.routes.draw do
  root to: "home#index"

  get '/shop/instances' => "shop/instances#validate"
  get '/shop/instances/validate' => "shop/instances#validate"
  get '/shop/instances/:id/redeem' => "shop/instances#redeem"
  

 
  namespace :admin do
      resources :instances
  end

  namespace :customer do
      resources :instances
  end
 
  namespace :shop do 
      resources :instances
  end


  devise_for :users
# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
end
