source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'rails', '~> 5.1.1'
gem 'pg', '~> 0.18'
gem 'puma', '~> 3.7'
gem 'sass-rails', '~> 5.0'
gem 'compass-rails'
gem 'uglifier', '>= 1.3.0'
gem 'jquery-rails'
gem 'coffee-rails', '~> 4.2'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'selenium-webdriver'
  gem 'rspec-rails', '~> 3.5'
  gem 'capybara', '~> 2.13'
  gem 'factory_girl_rails', '~> 4.8'
  gem 'rails-controller-testing'
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

gem 'slim-rails', '~> 3.1'
gem 'petergate', '~> 1.7'
gem 'devise', '~> 4.2'
gem 'bootstrap', '~> 4.0.0.alpha6'
gem 'font-awesome-rails', '~> 4.7'
gem 'gritter', '~> 1.2'
gem 'hirb'
gem 'kaminari', '~> 1.0'
gem 'devcamp_view_tool', '~> 0.1.0'
gem 'dotenv-rails', groups: [:development, :test]
gem 'httparty', '~> 0.15.5'
gem 'redcarpet'
gem 'coderay'
