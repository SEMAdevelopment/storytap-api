StorytapApi::Application.routes.draw do
  devise_for :users
  devise_scope :users do
    post "users/authenticate" => "authenticate#index"
  end
  root to: 'home#index'
end
