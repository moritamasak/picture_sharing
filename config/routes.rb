Rails.application.routes.draw do
  root 'sessions#new'
  resources :pictures do
    collection do
      post :confirm
    end
  end
  resources :users, only: [:new, :create, :show, :edit, :update]
  resources :sessions, only: [:new, :create, :destroy]
  resources :favorites,only: [:create, :destroy]
  get '/favorites', to:'favorites#index'
end
