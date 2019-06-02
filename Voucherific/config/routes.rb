Rails.application.routes.draw do
  root to: "home#index"

<<<<<<< HEAD
    devise_for :users

  get '/shop/instances' => "shop/instances#validate"
  get '/shop/vouchers' => "shop/instances#validate"
  get '/shop/instances/validate' => "shop/instances#validate"
  get '/shop/instances/:id/redeem' => "shop/instances#redeem"
=======
  get'/shop' => "shop/vouchers#validate"
  get '/admin' => "admin/vouchers#index"
  get '/customer' => "customer/vouchers#index"
>>>>>>> development

  get '/shop/vouchers/validate' => "shop/vouchers#validate"
  get '/shop/vouchers/:id/redeem' => "shop/vouchers#redeem"

  get '/admin/vouchers/redeemed' => "admin/vouchers#redeemed"
  get '/admin/vouchers/all' => "admin/vouchers#all"

  get '/admin/templates/disable/:id' => "admin/templates#disable"
  get '/admin/templates/restore/:id' => "admin/templates#restore"

  get '/customer/vouchers/templates' => "customer/vouchers#templates"
  post '/customer/vouchers/custom' => "customer/vouchers#custom"
  

 
  namespace :admin do
      resources :vouchers
<<<<<<< HEAD
      #resources :users
=======
      resources :templates
>>>>>>> development
  end

  namespace :customer do
      resources :vouchers
      resources :users do
        member do
            get :vouchers
        end
      end
  end
 
  namespace :shop do 
      resources :vouchers
  end



# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
end
