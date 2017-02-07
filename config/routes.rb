Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  #comfy_route :cms_admin, :path => '/admin'

  # Make sure this routeset is defined last
  root to: 'home#index'
  #comfy_route :cms, :path => '/', :sitemap => false

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
