Rails.application.routes.draw do
  resources :shop_index, only: [:index]
  resources :customers_index, only: [:index]

  devise_for :shop, controllers: {
    sessions: 'shop/sessions',
    registrations: 'shop/registrations'
  }
  devise_for :customer, controllers: {
    sessions: 'customer/sessions',
    registrations: 'customer/registrations'
  }
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  root to: "homes#index"
  # Defines the root path route ("/")
  # root "articles#index"

end
