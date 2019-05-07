Rails.application.routes.draw do
  root to: "home#index"
  
  namespace :admin do
    resources :users
  end

  namespace :customer do
    resources :users do
      resources :vouchers
    end
  end
 
  namespace :vendor do 
    resources :users
  end


  devise_for :users
# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
