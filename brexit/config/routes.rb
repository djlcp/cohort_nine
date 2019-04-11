Rails.application.routes.draw do
  resources :sales
  resources :products
  resources :suppliers
<<<<<<< HEAD
=======
  resources :orders

  root 'reports#index'
>>>>>>> b9285db3e439075e2a32a51c8f749b8c4afcf7eb
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
