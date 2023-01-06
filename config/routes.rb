Rails.application.routes.draw do

  root to: 'landing_page#index'

  resources :users, only: %i[index show new create]
  resources :groups 
end
