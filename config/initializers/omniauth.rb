Rails.application.config.middleware.use OmniAuth::Builder do
provider :intercom,
   IntercomApp.configuration.app_key,
   IntercomApp.configuration.app_secret
end
# Rails.application.config.middleware.use IntercomApp::OAuthMiddleware
