Rails.application.routes.draw do
  root to: "home#index"

  get'/shop' => "shop/vouchers#validate"
  get '/admin' => "admin/vouchers#index"
  get '/customer' => "customer/vouchers#index"

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
      resources :templates
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


  devise_for :users
# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
end
