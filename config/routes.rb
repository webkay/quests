Rails.application.routes.draw do
  root 'quests#index'
  resources :places, only: [:show]
  resources :quests, only: [:index]
  resources :users, only: [:new, :create, :show]
end
