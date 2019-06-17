Rails.application.routes.draw do
  root to: "home#index"

  devise_for :users
  
  get'/shop' => "shop/vouchers#validate"
  get '/admin' => "admin/vouchers#index"
  get '/customer' => "customer/vouchers#index"

  get'/about' => "static_page#about"
  get'/contact' => "static_page#contact"
  get'/faq' => "static_page#faq"
  get'/terms' => "static_page#terms"
  

  get '/shop/vouchers/validate' => "shop/vouchers#validate"
  get '/shop/vouchers/:id/redeem' => "shop/vouchers#redeem"

  get '/admin/vouchers/redeemed' => "admin/vouchers#redeemed"
  get '/admin/vouchers/all' => "admin/vouchers#all"
  get '/admin/vouchers/expired' => "admin/vouchers#expired"
  get '/admin/vouchers/paid' => "admin/vouchers#paid"

  get '/admin/templates/disable/:id' => "admin/templates#disable"
  get '/admin/templates/restore/:id' => "admin/templates#restore"

  get '/customer/vouchers/templates' => "customer/vouchers#templates"
  post '/customer/vouchers/custom' => "customer/vouchers#custom"
  
  get :email_notice, to: 'customer/vouchers#email_notice', as: :email_notice

 
  namespace :admin do
      resources :vouchers
      resources :templates
      resources :shops
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
