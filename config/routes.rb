StorytapApi::Application.routes.draw do
  ActiveAdmin.routes(self)
  devise_for :users
  devise_scope :users do
    post "users/authenticate" => "authenticate#index"
  end
  resources :users, only: [:show]
  resources :stories do
    resources :episodes do
      resources :scenes do
        get :preview
      end
    end
  end
  root to: 'home#index'
end
