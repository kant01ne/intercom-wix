require "rails_helper"

RSpec.describe IntercomApp::SessionsController, :type => :controller do
  routes { IntercomApp::Engine.routes }
  wix_id = 'wix-uniqueId'
  context "#GET login" do
    before {
      get :login, origCompId: wix_id
    }
    it "adds compId to session" do
      expect(session[:compId]).to eq(wix_id)
    end
   end

   context "#GET login" do
     before {
       mock_intercom_omniauth
       session[:compId] = wix_id
       get :callback
     }
     it "Store compId to App alongside omniauth attributes" do
       expect(App.last.compId).to eq(wix_id)
     end
    end

    def mock_intercom_omniauth
      request.env['omniauth.auth'] = { 'uid' => '1', 'credentials' => { 'token' => '1234='}, 'extra' => { 'raw_info' => { 'app' => { 'id_code' => 'abc123' } } } }  if request
    end
end
