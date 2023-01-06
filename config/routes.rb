Rails.application.routes.draw do

  root to: 'landing_page#index'

  resources :users, only: %i[index show new create]

  get '/auth/:provider/callback', to: 'sessions#create'
  get '/auth/failure', to: redirect('/')
end
