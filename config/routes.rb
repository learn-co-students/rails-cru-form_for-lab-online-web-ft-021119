Rails.application.routes.draw do
  resources :artists, only: [:index, :edit, :create, :update, :new, :show]
  resources :genres, only: [:index, :edit, :create, :update, :new, :show]
  resources :songs, only: [:index, :create, :new, :show, :edit, :update]
end
