source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?('/')
  "https://github.com/#{repo_name}.git"
end

# Admin Area
gem 'activeadmin'
gem 'activeadmin_addons', '~> 1.4.0 '
gem 'activeadmin_quill_editor'

# Assets
gem 'jquery-rails'
gem 'jquery-ui-rails'
gem 'sass-rails', '~> 5.0'
gem 'turbolinks'
gem 'uglifier', '>= 1.3.0'

# Basic logic
gem 'chewy'
gem 'devise'

# Build JSON APIs
gem 'active_model_serializers', '~> 0.8.3 '

# Deployment
gem 'capistrano3-puma'
gem 'puma', '~> 3.0'
gem 'snp-best-practices', git: 'git@git.snpdev.ru:saltpepper/snp-best-practices.git'

# Environment settings management
gem 'figaro'

# External APIs clients
gem 'httparty'

# Pagination
gem 'kaminari'

# Persistence
gem 'pg', '~> 0.20'

# Rails
gem 'rails'
gem 'rails-ujs'
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]

# Servers
gem 'redis', '~> 3.0'
gem 'redis-namespace'

# Service Objects
gem 'active_interaction', '~> 3.5'

group :development do
  gem 'web-console', '>= 3.3.0'
end

group :development, :test do
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'

  # Code styling
  gem 'rubocop'
  gem 'rubocop-rspec'

  # Debuging and profiling
  gem 'annotate'
  gem 'byebug', platform: :mri

  # Testing
  gem 'factory_bot_rails'
  gem 'faker'
  gem 'rspec-rails', '~> 3.7'
  gem 'rswag'
end

group :test do
  gem 'database_cleaner'
  gem 'shoulda-matchers', require: false
end
