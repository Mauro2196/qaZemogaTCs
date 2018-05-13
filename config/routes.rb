Rails.application.routes.draw do
  devise_for :users
  root "tests#index" 
  resources :tests
  resources :steps, only: [:create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
