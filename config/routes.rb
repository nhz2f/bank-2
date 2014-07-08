Rails.application.routes.draw do

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  match '/home', to: "apprank#index", via: 'get'
  match '/rank', to: 'apprank#rank', via: 'get'
  match '/rule', to: 'apprank#rule', via: 'get'
  match '/apks', to: 'apprank#upapk', via: 'get'
  match '/apks', to: 'apprank#saveapk', via: 'post'

  root 'apprank#index'
end
