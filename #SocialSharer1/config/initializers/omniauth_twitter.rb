Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, Rails.application.config.twitter_key, Rails.application.config.twitter_secret, use_authorize: true
 provider :facebook, FACEBOOK_CONFIG['app_id'], FACEBOOK_CONFIG['secret'], :scope => 'user_about_me,publish_actions'
end
