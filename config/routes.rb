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
    get 'reports_authors/index'
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
  get 'reports_authors/index'
end
