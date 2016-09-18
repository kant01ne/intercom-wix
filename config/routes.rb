Rails.application.routes.draw do
  get '/widget' => 'widget#index'
  root :to => 'home#index'
  mount IntercomApp::Engine, at: '/'
end
