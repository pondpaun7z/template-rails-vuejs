require_relative "boot"

require "rails/all"
require "view_component/engine"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module TemplateRailsVuejs
  class Application < Rails::Application
    config.load_defaults 6.0
    config.i18n.available_locales = [:th, :en]
    config.i18n.default_locale = :th
    config.i18n.fallbacks = [:th]
    config.time_zone = "Bangkok"
    config.active_storage.replace_on_assign_to_many = false
    config.middleware.use OliveBranch::Middleware, inflection: "camel"
  end
end
