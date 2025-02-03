# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby File.read('.ruby-version').strip

gem 'bcrypt', '~> 3.1.7'
gem 'bootsnap', require: false
gem 'importmap-rails'
gem 'jbuilder'
gem 'kamal', require: false
gem 'pg', '~> 1.1'
gem 'propshaft'
gem 'rails', '~> 8.0.1'
gem 'solid_cable'
gem 'solid_cache'
gem 'solid_queue'
gem 'stimulus-rails'
gem 'thruster', require: false
gem 'turbo-rails'
gem 'tzinfo-data', platforms: %i[windows jruby]

group :development, :test do
  gem 'brakeman', require: false
  gem 'bundle-audit', '~> 0.1.0'
  gem 'bundler-leak', '~> 0.3.0'
  gem 'debug', platforms: %i[mri windows], require: 'debug/prelude'
  gem 'lefthook', '~> 1.10'
  gem 'listen', '~> 3.3'
  gem 'pry', '~> 0.14'
  gem 'pry-byebug', '~> 3.10'
  gem 'pry-doc', '~> 1.1'
  gem 'pry-rails', '~> 0.3'
  gem 'pry-stack_explorer', '~> 0.6'
  gem 'rubocop', '~> 1.71'
  gem 'rubocop-performance', '~> 1.21'
  gem 'rubocop-rails', '~> 2.29'
  gem 'strong_migrations', '~> 2.2'
  gem 'traceroute', '~> 0.8'
end

group :development do
  gem 'puma', '>= 5.0'
  gem 'spring', '~> 4.2'
  gem 'spring-watcher-listen', '~> 2.0'
end

group :test do
  gem 'capybara'
  gem 'selenium-webdriver'
end
