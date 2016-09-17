IntercomApp.configure do |config|
  config.app_key =  ENV['INTERCOM_WIX_CLIENT_ID']
  config.app_secret =  ENV['INTERCOM_WIX_CLIENT_SECRET']
  config.hub_secret = ENV['INTERCOM_WIX_HUB_SECRET']
  config.oauth_modal = true
  config.callback_hash = Proc.new do |session, response|
    app = App.find_by(compId: session[:compId])
    App.destroy(app.id) if app
    {
      compId: session[:compId]
    }
  end
  config.store_in_session_before_login = Proc.new do |session, params|
    session[:compId] = params[:origCompId]
  end
end
