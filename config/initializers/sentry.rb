Sentry.init do |config|
  config.dsn = 'Please set DSN'
  config.breadcrumbs_logger = %i[active_support_logger http_logger]

  # Set traces_sample_rate to 1.0 to capture 100%
  # of transactions for performance monitoring.
  # We recommend adjusting this value in production.

  config.traces_sample_rate = 1.0
  # or
  # config.traces_sampler = ->(_context) do
  #   true
  # end
  config.profiles_sample_rate = 0.02
  # config.send_default_pii = true

  config.enabled_environments = %w[development]
  config.environment = Rails.env
end
