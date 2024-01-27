Rails.application.routes.draw do
  root 'client_workouts#index'
  resources :client_workouts
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
