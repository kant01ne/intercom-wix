class HomeController < IntercomApp::AuthenticatedController
  def index
    @app_id = App.find_by(compId: params[:compId]).intercom_app_id
  end
end
