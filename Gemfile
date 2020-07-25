source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "2.7.0"

gem "rails", "~> 6.0.3", ">= 6.0.3.2"
gem "pg", ">= 0.18", "< 2.0"
gem "puma", "~> 4.1"
gem "sass-rails", ">= 6"
gem "webpacker", "~> 4.0"
gem "turbolinks", "~> 5"
gem "jbuilder", "~> 2.7"
gem "bootsnap", ">= 1.4.2", require: false

gem "image_processing", "~> 1.2" # Use Active Storage variant

gem "paper_trail" # Activity log
gem "paranoia" # Soft Delete

# Authentication & Autorization
gem "cancancan"
gem "devise"

# Admin panel
gem "administrate"
gem "administrate-field-active_storage"
gem "administrate-field-enum"

# Helper
gem "goldiloader"
gem "kaminari" # Pagination
gem "ransack" # Search
gem "rails-i18n", "~> 6.0.0" # Localization
gem "strong_migrations" # Safty migration
gem "view_component"
gem "activerecord-import"
gem "olive_branch"
gem "figaro"

group :development, :test do
  # Degybber
  gem "pry-byebug"
  gem "pry-rails"

  gem "standard", "0.4.3"
  gem "bullet" # help to kill N+1 queries and unused eager loading

  gem "amazing_print", require: "ap"

  # Mailer Preview
  gem "letter_opener"
  gem "letter_opener_web", "~> 1.0"

  gem "capistrano", "~> 3.11.0", require: false
  gem "capistrano-rails", require: false
  gem "capistrano-bundler", require: false
  gem "capistrano-rbenv", require: false
  gem "capistrano-yarn", require: false
  gem "capistrano-db-tasks", require: false
  gem "capistrano-rails-console", require: false
  gem "capistrano-rails-db"
  gem "capistrano-rails-logs-tail"
end

group :development do
  gem "web-console", ">= 3.3.0"
  gem "listen", "~> 3.2"
  gem "spring"
  gem "spring-watcher-listen", "~> 2.0.0"

  # Error UI
  gem "better_errors"
  gem "binding_of_caller"
end

group :test do
  gem "capybara", ">= 2.15"
  gem "selenium-webdriver"
  gem "webdrivers"
end

gem "tzinfo-data", platforms: [:mingw, :mswin, :x64_mingw, :jruby]
