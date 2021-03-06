source 'https://rubygems.org'
ruby '2.0.0'

gem 'rails', '4.1.1'
gem 'sass-rails', '~> 4.0.3'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.0.0'
gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder', '~> 2.0'
gem 'bootstrap-sass', '~> 3.3.1'
gem 'autoprefixer-rails'
gem 'bootstrap_form'
gem 'bcrypt-ruby', '3.1.2'
gem 'haml'
gem 'kaminari'
gem 'sidekiq'
gem 'unicorn'
gem 'sentry-raven'
gem 'paperclip'
gem 'aws-sdk', '< 2.0'
gem 'stripe'
gem 'figaro'
gem 'elasticsearch-model'
gem 'elasticsearch-rails'

group :doc do
  gem 'sdoc', '~> 0.4.0'
end

group :development do
  gem 'spring'
  gem 'letter_opener'
end

group :test do
  gem 'shoulda-matchers', require: false
  gem 'simplecov', require: false
  gem 'capybara'
  gem 'capybara-email'
  gem 'launchy'
  gem 'vcr'
  gem 'webmock'
  gem 'selenium-webdriver'
  gem 'database_cleaner'
end

group :development, :test do
  gem 'sqlite3'
  gem 'pry'
  gem 'rubocop', require: false
  gem 'rubocop-rspec'
  gem 'rails_best_practices'
  gem 'rspec-rails'
  gem 'fabrication'
  gem 'faker'
end

group :production, :staging do
  gem 'pg'
  gem 'rails_12factor'
end
