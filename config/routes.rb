Rails.application.routes.draw do
  root 'client_workouts#index'
  resources :client_workouts
  get '/search', to: 'client_workouts#search', as: 'search_client_workouts'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
