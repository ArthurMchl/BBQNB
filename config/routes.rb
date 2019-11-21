Rails.application.routes.draw do
  get 'profiles/dashboard', to: 'profiles#dashboard'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :barbecues do
    resources :rentals, only: [:new, :create]
    resources :reviews, only: [:new, :create]
  end

  resources :rentals, only: [:show, :destroy, :edit, :update]
end
