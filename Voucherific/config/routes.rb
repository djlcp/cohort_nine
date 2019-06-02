Rails.application.routes.draw do
  root to: "home#index"

  get '/shop/instances' => "shop/instances#validate"
  get '/shop/templates' => "shop/instances#validate"
  get '/shop/instances/validate' => "shop/instances#validate"
  get '/shop/instances/:id/redeem' => "shop/instances#redeem"

  get '/admin/instances/redeemed' => "admin/instances#redeemed"
  get '/admin/instances/all' => "admin/instances#all"

  get '/admin/templates/disable/:id' => "admin/templates#disable"
  get '/admin/templates/restore/:id' => "admin/templates#restore"

  get '/customer/instances/templates' => "customer/instances#templates"
  post '/customer/instances/custom' => "customer/instances#custom"
  

 
  namespace :admin do
      resources :instances
      resources :templates
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
