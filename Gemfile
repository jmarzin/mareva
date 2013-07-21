source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.0.0'

# utilisation de Haml pour les écrans
gem 'haml'
gem 'haml-rails'

# utilisation de simple form
gem 'simple_form'

# utilisation de devise pour la gestion des utilsateurs
gem 'devise'
gem 'authority'
gem 'rolify','~> 3.3.0.rc4', github: 'EppO/rolify'

#utilisation de kaminari pour la pagination des écrans
gem 'kaminari'

# Use mongo as the database
gem 'mongoid', '~> 4', github: 'mongoid/mongoid'


# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.0'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 1.2'

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

group :development, :test do
  # utilisation de rspec pour les tests unitaires
  gem 'rspec-rails',"~> 2.14.0"
  gem "mongoid-rspec", "~> 1.8.2"
  #utilisation de cucumber pour les tests fonctionnels
  gem 'capybara'
  gem 'cucumber-rails', :require => false
  # autres librairies de tests
  gem "factory_girl_rails"
  gem "database_cleaner"
  gem "ZenTest"
  gem 'spork'
  gem "launchy"
  gem "random_text"
  gem 'simplecov'
end  

# Use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano', group: :development


# Use debugger
group :development, :test do
  gem 'pry'
  gem 'pry-rails'
  gem 'pry-debugger'
  gem 'pry-remote'
end

