require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module SampleApp
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
    config.load_defaults 6.0
    config.time_zone = 'Tokyo'
    config.action_mailer.delivery_method = :smtp
    config.action_mailer.smtp_settings = {
      address:              'smtp.gmail.com',
      port:                  587,
      domain:               'gmail.com',
      user_name:            Rails.application.credentials.gmail[:address],
      password:             Rails.application.credentials.gmail[:password],
      authentication:       'plain',
      enable_starttls_auto:  true
    }
  end
end
