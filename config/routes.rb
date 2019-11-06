Rails.application.routes.draw do
  resources :product_treatments
  resources :product_treatment_phases
  resources :add_products
  resources :phases
  resources :treatments
  resources :products
  
  root 'product_treatment_phases#new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html


end
