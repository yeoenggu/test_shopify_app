require 'resque/server'

Rails.application.routes.draw do
  root :to => 'home#index'

  post '/uninstall', to: 'home#uninstall'

  mount ShopifyApp::Engine, at: '/'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  mount Resque::Server, at: '/jobs'




  #or if you would like to protect this with Devise
  # devise_for :users

  # authenticate :user do
  #   mount Resque::Server, at: '/jobs'
  # end
end
