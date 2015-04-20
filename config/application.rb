require File.expand_path('../boot', __FILE__)

require 'rails/all'
require 'simple-rss'
require 'open-uri'

#require 'dotenv'; Dotenv.load ".env.local", ".env.#{Rails.env}"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module MyAssistant
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # Set Time.zone default to the specified zone and make Active Record auto-convert to this zone.
    # Run "rake -D time" for a list of tasks for finding time zone names. Default is UTC.
    # config.time_zone = 'Central Time (US & Canada)'

    # The default locale is :en and all translations from config/locales/*.rb,yml are auto loaded.
    # config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]
    # config.i18n.default_locale = :de

    #config.secret_key_base = ENV['SECRET_KEY_BASE'] #'a062b70a2800dab5d10d4b4b83e2d0a3dd157609100f1c2927770ec5d033c4144036da844997a166eb8970e6962dcac7be820c9711ef67a3a71f4b0f2a6ff659'

    config.autoload_paths += %W(#{config.root}/lib/rss)
    config.autoload_paths += %W(#{config.root}/lib/parse)
    config.autoload_paths += %W(#{config.root}/lib/images)
    config.autoload_paths += %W(#{config.root}/lib/lastfm)

    config.generators do |g|
      g.test_framework :rspec, :view_specs => false,
                       :fixture => true,
                       :fixture_replacement => "factory_girl"
      g.assets = false
      g.helper = false
      g.fixture_replacement :factory_girl, :dir => 'spec/factories'
    end

  end

end
