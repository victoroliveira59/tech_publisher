# frozen_string_literal: true

Rails.application.routes.draw do
  if Rails.env.development? || Rails.env.test?
    mount Railsui::Engine, at: "/railsui"
  end

  # Inherits from Railsui::PageController#index
  # To overide, add your own page#index view or change to a new root
  # Visit the start page for Rails UI any time at /railsui/start
  root action: :index, controller: "railsui/page"

  devise_for :users

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
