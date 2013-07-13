StorytapApi::Application.routes.draw do
  ActiveAdmin.routes(self)
  devise_for :users
  devise_scope :users do
    post "users/authenticate" => "authenticate#index"
  end
  resources :stories
  root to: 'home#index'
end
