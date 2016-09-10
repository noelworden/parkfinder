Rails.application.routes.draw do
  #TODO clean
  resources :locations#, only: [:new, :show]
  resources :parks

  #get 'welcome/show'

  get 'welcome/about'

  root 'locations#new'
end
