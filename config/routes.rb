Rails.application.routes.draw do
  root 'quests#index'
  resources :places, only: [:show]
  resources :quests, only: [:index, :show] do
    member do
      post 'assign'
      post 'unassign'
    end
  end
  resources :users, only: [:new, :create, :show]
  resource :session
end
