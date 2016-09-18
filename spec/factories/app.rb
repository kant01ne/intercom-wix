FactoryGirl.define do
  factory :app do
    intercom_app_id '123abc'
    intercom_token 'token'
    name 'Dummy User'
    email 'dummy@intercom.io'
    compId 'wix-website-uniqueId'
  end
end
