Rails.application.routes.draw do

  resources :friendships
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
 devise_for :users
 root to: "pages#index"
 resources :rooms
 resources :user_room
 resources :messages, except: [:create]
 resources :users
 	resources :rooms, only: [:create] do
	  resources :messages, only: [:create]
	end 
end
