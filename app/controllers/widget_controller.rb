class WidgetController < ApplicationController

  def index
    app = App.find_by(compId: params[:compId])
    @app_id = app.intercom_app_id unless app.nil?
  end
end
