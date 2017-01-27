Rails.application.routes.draw do
  resources :contacts
  resources :constructionplans
  root 'pages#main'
  get 'pages/general'
  get 'pages/general2'
  get 'pages/construction'
  get 'pages/destinations'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
