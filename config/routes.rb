Rails.application.routes.draw do

  resources :friendships, except: [:edit]
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
 devise_for :users
 root to: "pages#index"
 resources :rooms, except: [:create]
 resources :user_room
 resources :messages, except: [:create]
 resources :users, except: [:edit, :destroy]

 resources :user, only: [:create] do 
 	resources :friendships,only: [:create]
 end

 resources :rooms, only: [:create] do
  	resources :messages, only: [:create]
 end 

 resources :users, only: [:show] do 
 	resources :friendships,only: [:index]
 end

 resources :users, only: [:show] do 
 	resources :room,only: [:create]
 end
end
