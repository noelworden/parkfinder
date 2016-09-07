Rails.application.routes.draw do
  resources :locations

  get 'welcome/show'

  get 'welcome/about'

  # root 'welcome#main'

  root 'locations#new'
end
