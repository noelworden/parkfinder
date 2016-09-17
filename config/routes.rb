Rails.application.routes.draw do

  resources :locations, only: [:index, :show, :new, :create]
  resources :parks, only: [:show]

  root 'locations#new'
end
