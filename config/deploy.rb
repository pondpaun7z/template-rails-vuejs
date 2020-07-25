set :application, "app_name"
set :repo_url, "git@github.com:pondpaun7z/app_name.git"
set :deploy_to, "/home/deploy/apps/app_name"

append :linked_files,
  "config/database.yml",
  "config/application.yml"

append :linked_dirs,
  "log",
  "tmp/pids",
  "tmp/cache",
  "tmp/sockets",
  "public/system",
  "vendor/bundle",
  "storage"

# Capistrano::rbenv
set :rbenv_path, "/home/deploy/.rbenv"
set :rbenv_ruby, File.read(".ruby-version").strip
set :rbenv_type, :user
# Capistrano::Rails
set :rails_env, "production"

# Capistrano::Puma
set :puma_access_log, "#{shared_path}/log/puma.stdout.log"
set :puma_error_log, "#{shared_path}/log/puma.stderr.log"

namespace :deploy do
  desc "Config bundler"
  task :config_bundler do
    on roles(/.*/) do
      execute :bundle, "config", "--local deployment", true
      execute :bundle, "config", "--local", "without", "development:test"
      execute :bundle, "config", "--local", "path", shared_path.join("bundle")
    end
  end
end

before "bundler:install", "deploy:config_bundler"
# after "deploy:starting", "sidekiq:quiet"
# after "deploy:reverted", "sidekiq:restart"
# after "deploy:published", "sidekiq:restart"
after "deploy:reverted", "puma:restart"
after "deploy:published", "puma:restart"
