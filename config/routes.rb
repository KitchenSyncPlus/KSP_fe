Rails.application.routes.draw do


  root to: 'landing_page#index'

  resources :users, only: %i[index show new create destroy] do
    resources :groups, only: %i[new]
  end

  get '/auth/:provider/callback', to: 'sessions#create'
  get '/auth/failure', to: redirect('/')

  resources :groups, only: %i[index show new create]
  resources :recipes, only: %i[index show]
end
