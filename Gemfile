source 'https://rubygems.org'

group :development, :test do
  gem 'pry-rails'
  gem 'pry'
  gem 'pry-nav'
  gem 'pry-remote'
  gem 'factory_girl_rails'
  gem 'faker', '~> 1.2.0'
  gem 'spring'  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring

  #capistrano
  gem 'capistrano', github: 'capistrano/capistrano'
  gem 'capistrano-bundler'
  gem 'capistrano-rails'
  #gem 'rvm1-capistrano3', require: false
  gem 'capistrano-rvm', github: "capistrano/rvm"
  gem 'capistrano-ssh-doctor', '~> 1.0'
end



group :test do
  gem 'rspec-rails'
  gem 'spork'
  gem 'database_cleaner'
  gem 'shoulda-matchers'
  gem 'webmock'
end

group :production do
  gem 'unicorn'
  gem 'foreman'

  #for heroku deploy
  gem 'rails_12factor'
end

group :production, :development, :test do
  gem 'devise'

  gem 'enumerize'
  gem 'state_machine'
  gem 'carrierwave'

  #google
  gem 'google_image_api'

  #for css
  gem 'bootstrap-sass'
  gem 'autoprefixer-rails'

  #for rss
  gem 'simple-rss'
  gem 'nokogiri'
  gem 'feedjira', github: 'feedjira/feedjira'

  gem 'rake', '10.4.2'
  gem 'pg'

  # Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
  gem 'rails', '4.1.4'

  # Use SCSS for stylesheets
  gem 'sass-rails', '~> 4.0.3'

  # Use Uglifier as compressor for JavaScript assets
  #gem 'uglifier', '>= 1.3.0'

  # Use CoffeeScript for .js.coffee assets and views
  gem 'coffee-rails', '~> 4.0.0'

  # Use jquery as the JavaScript library
  gem 'jquery-rails'

  # Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
  gem 'turbolinks'

  # Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
  #gem 'jbuilder', '~> 2.0'
  # bundle exec rake doc:rails generates the API under doc/api.
  #gem 'sdoc', '~> 0.4.0',          group: :doc
end



























