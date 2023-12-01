source 'https://rubygems.org'

ruby '3.1.0'

# Core Rails
gem 'rails', '~> 7.1.2'
gem 'sprockets-rails'

# Databases
gem 'mysql2'
gem 'pg'
# gem 'sqlite3', '~> 1.4'

# Web Server
gem 'puma', '>= 5.0'

# Frontend
gem 'importmap-rails'
gem 'turbo-rails'
gem 'stimulus-rails'

# APIs
gem 'jbuilder'

# Caching and Background Jobs
gem 'redis', '>= 4.0.1'
# gem 'kredis'
gem 'bootsnap', require: false
gem 'sidekiq'
gem 'sidekiq-cron'

# Misc
# gem 'bcrypt', '~> 3.1.7'
gem 'tzinfo-data', platforms: %i[mswin mswin64 mingw x64_mingw jruby]
# gem 'image_processing', '~> 1.2'

# Development and Test Groups
group :development, :test do
  gem 'debug', platforms: %i[mri mswin mswin64 mingw x64_mingw]
  gem 'byebug'
  gem 'ruby-progressbar'
end

group :development do
  gem 'error_highlight', '>= 0.4.0', platforms: [:ruby]
  gem 'web-console'
  gem 'rspec-rails', '~> 5.0.0'
  gem 'factory_bot_rails'
  gem 'faker'
end

group :test do
  gem 'capybara'
  gem 'selenium-webdriver'
end
