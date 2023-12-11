Rails.application.routes.draw do
  get 'report_books/index'
  namespace :api, defaults: { format: :json } do
    resources :authors
    resources :books
    resources :assemblies
    resources :parts
    resources :suppliers do
      resources :accounts
      get 'search', on: :collection
    end
  end
  # routes crud's
  resources :assemblies
  resources :parts
  resources :books
  resources :authors
  resources :suppliers do
    resources :accounts
    get 'search', on: :collection
  end
  resources :report_books, only: [:index]
end
