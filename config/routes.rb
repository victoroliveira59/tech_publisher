Rails.application.routes.draw do
  namespace :api, default: { format: :json } do
    resources :authors
    resources :books
  end
  resources :assemblies
  resources :parts
  resources :books
  resources :authors
  resources :suppliers do
    resources :accounts
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
