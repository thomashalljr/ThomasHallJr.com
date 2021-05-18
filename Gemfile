source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

ruby '2.5.0'

gem 'rails', '~> 5.2.4', '>= 5.2.4.4'
gem 'puma', '~> 4.3'
gem 'sass-rails', '>= 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'turbolinks', '~> 5'
gem 'bootstrap', '~> 4.3.1'
gem 'will_paginate-bootstrap4'
gem 'jquery-rails'
gem 'mysql2', '~> 0.4.4'
gem 'bcrypt', '~> 3.1.7'

group :development, :test do
  gem 'byebug', '~> 9.0', '>= 9.0.6'
  gem 'nokogiri', '>= 1.10.8' # remediates dependabot vulnerability
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'better_errors'
end

group :test do
  gem 'database_cleaner'
end
