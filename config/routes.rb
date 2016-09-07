Rails.application.routes.draw do
  resources :locations

  get 'welcome/show'

  get 'welcome/about'

  root 'locations#new'
end
