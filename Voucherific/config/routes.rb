Rails.application.routes.draw do
  root to: "home#index"

 
  namespace :admin do
      resources :vouchers
  end

  namespace :customer do
      resources :vouchers
  end
 
  namespace :vendor do 
      resources :vouchers
  end


  devise_for :users
# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
end
