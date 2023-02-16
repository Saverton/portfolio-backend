Rails.application.routes.draw do
  resources :project_tags
  resources :tags
  resources :links
  resources :projects
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
