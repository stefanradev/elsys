TwitterExample::Application.configure do
  config.cache_classes = false
  config.eager_load = false
  config.consider_all_requests_local       = true
  config.action_controller.perform_caching = false
  config.action_mailer.raise_delivery_errors = false
  config.active_support.deprecation = :log
  config.active_record.migration_error = :page_load
  config.assets.debug = true
  config.twitter_key = "n7bv0tSgDIAYEt34VMxhz5SRh"
  config.twitter_secret = "PLFptNKr5v4F94g4BTM1OTpFRVUTM1BTXg45kra1L4qmgB6MHV"
end
