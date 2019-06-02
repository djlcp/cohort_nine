Rails.application.routes.draw do
  root to: "home#index"

  get '/shop/instances' => "shop/instances#validate"
  get '/shop/vouchers' => "shop/instances#validate"
  get '/shop/instances/validate' => "shop/instances#validate"
  get '/shop/instances/:id/redeem' => "shop/instances#redeem"

  get '/admin/instances/redeemed' => "admin/instances#redeemed"
  get '/admin/instances/all' => "admin/instances#all"

  get '/admin/vouchers/disable/:id' => "admin/vouchers#disable"
  get '/admin/vouchers/restore/:id' => "admin/vouchers#restore"

  get '/customer/instances/vouchers' => "customer/instances#vouchers"
  post '/customer/instances/custom' => "customer/instances#custom"
  

 
  namespace :admin do
      resources :instances
      resources :vouchers
  end

  namespace :customer do
      resources :instances
      resources :users do
        member do
            get :instances
        end
      end
  end
 
  namespace :shop do 
      resources :instances
  end


  devise_for :users
# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
end
