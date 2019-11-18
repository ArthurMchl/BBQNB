Rails.application.routes.draw do
  get 'rentals/index'
  get 'rentals/show'
  get 'rentals/new'
  get 'rentals/create'
  get 'rentals/destroy'
  get 'barbecues/index'
  get 'barbecues/show'
  get 'barbecues/new'
  get 'barbecues/create'
  get 'barbecues/edit'
  get 'barbecues/update'
  get 'barbecues/destroy'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :barbecues do
    resources :rentals, except: [:edit, :update]
  end
end
