Rails.application.routes.draw do
  namespace :api, defaults: {format: :json} do
    resources :authors
    resources :books
    resources :assemblies
    resources :parts
    resources :suppliers do
      resources :accounts
    end
  end
  resources :assemblies
  resources :parts
  resources :books
  resources :authors
  resources :suppliers do
    resources :accounts
  end
end
