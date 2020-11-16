Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)		
  root to: "movies#index"
  devise_for :users
  resources :aws_texts
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end
