require "capistrano/setup"
require "capistrano/deploy"
require "capistrano/scm/git"
install_plugin Capistrano::SCM::Git

require "capistrano/rbenv"
require "capistrano/bundler"
require "capistrano/rails/assets"
require "capistrano/rails/migrations"
require "capistrano/yarn"
require "capistrano/rails/db"
require "capistrano/rails/logs"
require "capistrano/rails/console"
require "capistrano-db-tasks"

Dir.glob("lib/capistrano/tasks/*.rake").each { |r| import r }
