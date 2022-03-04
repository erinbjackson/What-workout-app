Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  #User Routes
  post "/users" => "users#create"
  get "/users/:id" => "users#show"
  patch "/users/:id" => "users#update"
  delete "users/:id" => "users#destroy"

  #Session Routes
  post "/sessions" => "sessions#create"
  
  #Workout Routes
  get "/workouts" => "workouts#index"
  post "/workouts" => "workouts#create"
  get "/workouts-muscle/:target" => "workouts#show_muscle"

  get "/workouts/:id" => "workouts#show"

  

  post "/workout_exercises" => "workout_exercises#index"
  post "/workout_exercises" => "workout_exercises#create"

  #Routes From API 
  # get "/exercises" => "workouts#exercises_index"
end
