# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.2.2'
gem 'active_model_serializers', '~> 0.10.2'
gem 'bootsnap', require: false
gem 'pg', '~> 1.1'
gem 'puma', '~> 6.4'
gem 'rails', '~> 7.1.3'
gem 'rubocop', '~> 1.57'
gem 'sprockets-rails'
gem 'stimulus-rails'
gem 'turbo-rails'
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
gem 'ransack'
gem 'foreman'
gem "railsui", github: "getrailsui/railsui", branch: "main"

# Use Active Storage variants [https://guides.rubyonrails.org/active_storage_overview.html#transforming-images]
gem "image_processing", "~> 1.2"
gem "cpf_cnpj"
gem "validators"
gem 'brazilian_documents', '~> 0.1.4'
gem 'pagy'

group :development, :test do
  gem 'debug', platforms: %i[mri mingw x64_mingw]
end

group :development do
  gem 'faker', '~> 3.2', '>= 3.2.2'
  gem 'web-console'
end

group :test do
  gem 'capybara'
  gem 'selenium-webdriver'
end
gem 'rubocop-ast'
gem "isbn", "~> 2.0"


