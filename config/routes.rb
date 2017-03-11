Rails.application.routes.draw do
  root 'quests#index'
  resources :places, only: [:show]
  resources :quests, only: [:index] do
    post 'assignment', on: :member
  end
  resources :users, only: [:new, :create, :show]
end
