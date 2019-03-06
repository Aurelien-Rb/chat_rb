Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
 devise_for :users
 root to: "pages#index"
 resources :rooms
 resources :user_room
 resources :messages 
end
