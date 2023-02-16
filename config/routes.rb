Rails.application.routes.draw do
  namespace :api do
    resources :projects, only: %i[index create update destroy]
    resources :tags, only: %i[index]
  end
end
