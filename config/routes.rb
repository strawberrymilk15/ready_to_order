Rails.application.routes.draw do
  resources :shop_index, only: [:index]
  resources :customers_index, only: [:index]
s:s
  devise_for :shops, controllers: {
    sessions: 'shops/sessions',
    registrations: 'shops/registrations'
  }
  devise_for :customers, controllers: {
    sessions: 'customers/sessions',
    registrations: 'customers/registrations'
  }
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  root to: "homes#index"
  # Defines the root path route ("/")
  # root "articles#index"

end
