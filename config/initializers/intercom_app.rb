IntercomApp.configure do |config|
  config.app_key =  ENV['INTERCOM_WIX_CLIENT_ID']
  config.app_secret =  ENV['INTERCOM_WIX_CLIENT_SECRET']
  config.hub_secret = ENV['INTERCOM_WIX_HUB_SECRET']
  config.oauth_modal = true
end
