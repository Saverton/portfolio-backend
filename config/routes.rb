Rails.application.routes.draw do
  namespace :api, defaults: { format: :json } do
    get '/me', to: 'sessions#show'
    post '/login', to: 'sessions#create'
    delete '/logout', to: 'sessions#destroy'

    resources :admins, only: %i[create]
    resources :projects, only: %i[index create update destroy]
    resources :tags, only: %i[index]
  end
end
