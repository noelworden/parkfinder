Rails.application.routes.draw do
  get 'welcome/show'

  get 'welcome/about'

  root 'welcome#main'
end
