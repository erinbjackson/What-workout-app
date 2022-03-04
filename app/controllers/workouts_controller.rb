class WorkoutsController < ApplicationController
  before_action :authenticate_user
  
  # def index
  #   puts "key: #{Rails.application.credentials.exercise_key}"
  #   exercises = HTTP.headers("X-Rapidapi-Key" =>Rails.application.credentials.exercise_api_key).get("https://exercisedb.p.rapidapi.com/exercises").parse(:json)
  #   render json: exercises
    
  # end

  
  
  # def show
  #   exercise = HTTP.headers("X-Rapidapi-Key" => Rails.application.credentials.exercise_ke").get("https://exercisedb.p.rapidapi.com/exercises/exercise/#{params[:id]}").parse(:json)
  #   render json: exercise.
  # end

  # def show_muscle
  #   muscle = HTTP.headers("X-Rapidapi-Key" => Rails.application.credentials.exercise_key).get("https://exercisedb.p.rapidapi.com/exercises/target/#{params["target"]}").parse(:json)
  #   render json: muscle
  # end

  def index
    workouts = current_user.workouts
    if workouts
      render json: workouts, include: "exercises"
    else
      render json: {}, status: :unauthorized
    end
  end

  def show
    workout = current_user.workouts.find(params[:id])
    if workout
      render json: workout, include: "exercises"
    else
      render json: {}, status: :unauthorized
    end
  end

  def create
    workout = Workout.new(
    user_id: current_user.id,
    name: params[:name],
    muscle_group: params[:muscle_group]
    ) 
    if workout.save
      #loop through array of exrcise ids and create new workout_exercises (array will be made on the front end and get sent to the backend)
      params[:exercise_ids].each do |exercise_id|
        WorkoutExercise.create({workout_id: workout.id, exerciseDB_id: exercise_id})
      end
      render json: workout
    else
      render json: {errors: workout.errors.full_messages}, status: :bad_request
    end
  end
  

  def destroy
    workout = current_user.workouts.find(params[:id])
    workout.delete
    render json:{ message:"Your workout '#{workout.name}' has been destroyed."}
  end
  
end
