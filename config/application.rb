# frozen_string_literal: true

require_relative 'boot'

require 'rails/all'

require 'active_model/railtie'
require 'active_job/railtie'
require 'active_record/railtie'
require 'action_controller/railtie'
require 'action_mailer/railtie'
require 'action_view/railtie'
require 'action_text/engine'
require 'active_storage/engine'
require 'action_mailbox/engine'
require 'action_cable/engine'
require 'active_support/all'
require 'rails/test_unit/railtie'

Bundler.require(*Rails.groups)

module SqluaComUa
  class Application < Rails::Application
    config.load_defaults 8.0

    # Please, add to the `ignore` list any other `lib` subdirectories that do
    # not contain `.rb` files, or that should not be reloaded or eager loaded.
    # Common ones are `templates`, `generators`, or `middleware`, for example.
    config.autoload_lib(ignore: %w[assets tasks])

    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    # config.time_zone = 'Central Time (US & Canada)'
    # config.eager_load_paths << Rails.root.join('extras')
  end
end
