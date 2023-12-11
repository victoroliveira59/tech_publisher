# frozen_string_literal: true

Rails.application.routes.draw do

  namespace :api, defaults: { format: :json } do
    resources :authors
    resources :books
    resources :assemblies
    resources :parts
    resources :suppliers do
      resources :accounts
      get 'search', on: :collection
    end
    resources :report_books, only: [:index]
    get 'reports_suppliers/index'
    get 'reports_authors/index'
  end
  # routes crud's
  resources :assemblies
  resources :parts
  resources :books
  resources :authors
  resources :suppliers do
    resources :accounts, controller: 'accounts'
    get 'search', on: :collection
  end
  resources :report_books, only: [:index]
  get 'reports_suppliers/index'
  get 'reports_authors/index'
end
