source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.3'

#Core
gem 'rails', '~> 5.2.3'

#Middleware
gem 'pg', '>= 0.18', '< 2.0' #SQL related
gem 'puma', '~> 3.12' #Application server

#View/Front
gem 'sass-rails', '~> 5.0'  #CSS related
gem 'coffee-rails', '~> 4.2'  #Adapter for rails asset pipeline
gem 'uglifier', '>= 1.3.0' #Ensures the presence of Javascript

#Backend
gem 'turbolinks', '~> 5'  #Speed expeditor by Ajax
gem 'jbuilder', '~> 2.5'  #Generates JSAON objects with a builder-style DSL
gem 'bootsnap', '>= 1.1.0', require: false  #library that plugs into Ruby, with optional support for ActiveSupport and YAML

#Debugger
group :development, :test do

  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do

  gem 'web-console', '>= 3.3.0'  #degger
  gem 'listen', '>= 3.0.5', '< 3.2'  #notified you of changes

  gem 'spring'  #application preloader
  gem 'spring-watcher-listen', '~> 2.0.0' #making spring more responsive in larger projects
end

group :test do

  gem 'capybara', '>= 2.15'  #integration testing tool for rack based web applications
  gem 'selenium-webdriver'  #tool for writing automated tests of websites

  gem 'chromedriver-helper'  #Easy installation and use of chromedriver, the Chromium project's selenium webdriver adapter.
end


gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
