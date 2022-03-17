Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  #User Routes
  post "/users" => "users#create"
  get "/users/me" => "users#show"
  patch "/users/me" => "users#update"
  delete "users/me" => "users#destroy"

  #Session Routes
  post "/sessions" => "sessions#create"
  
  #Exercise Routes
  get "/exercises" => "exercises#index"

  get "/exercises-muscle/:target" => "exercises#show_muscle"
  
  get "/exercises-equipment" => "exercises#show_equipment"

  

  get "/exercises/:id" => "exercises#show"


#Workout Routes for current user
  get "/workouts/me" => "workouts#index"
  post "/workouts/me" => "workouts#create"
  get "/workouts/me/:id" => "workouts#show"
  patch "/workouts/:id" => "workouts#update"
  delete "/workouts/me/:id" => "workouts#destroy"


  get "/workout_exercises" => "workout_exercises#index"
  post "/workout_exercises" => "workout_exercises#create"
  delete "/workout_exercises/me/:id" => "workout_exercises#destroy"
  

  

  #Routes From API 
  # get "/exercises" => "workouts#exercises_index"
end
