require "rails_helper"

RSpec.describe WidgetController, :type => :controller do
  context "#GET widget with correct app_id" do
     render_views

     before {
       app = create(:app)
       get :index, compId: app.compId
     }

     specify do
       expect(response).to be_success
       expect(response).to have_http_status(200)
       expect(response.body).to include('<script id="intercom-wix"')
       expect(response.body).to include('<script id="intercom-settings"')
       expect(response.body).to include('<script id="intercom-widget"')
     end
   end

   context "#GET widget with unidentified app_id" do
      render_views

      before {
        app = create(:app)
        get :index, compId: 'unidentified_wix_identifier'
      }

      specify do
        expect(response).to be_success
        expect(response).to have_http_status(200)
        expect(response.body).to include('<script id="intercom-wix"')
        expect(response.body).not_to include('<script id="intercom-settings"')
        expect(response.body).not_to include('<script id="intercom-widget"')
      end
    end
end
