class WorkoutsController < ApplicationController
  
  def index
    puts Rails.application.credentials.exercise_api_key
    exercises = HTTP.headers("X-Rapidapi-Key" =>Rails.application.credentials.exercise_api_key).get("https://exercisedb.p.rapidapi.com/exercises").parse(:json)
    render json: exercises
    
  end

  # def index
  #   exercises = HTTP.headers("X-Rapidapi-Key" => "f8fa836ffbmsh69f9dd27b667f01p1d2cb1jsnaa2a477cb985").get("https://exercisedb.p.rapidapi.com/exercises").parse(:json)
  #   render json: exercises
    
  # end
  
  # def show
  #   exercise = HTTP.headers("X-Rapidapi-Key" => "f8fa836ffbmsh69f9dd27b667f01p1d2cb1jsnaa2a477cb985").get("https://exercisedb.p.rapidapi.com/exercises/exercise/#{params[:id]}").parse(:json)
  #   render json: exercise
  # end

  # def show_muscle
  #   muscle = HTTP.headers("X-Rapidapi-Key" => "f8fa836ffbmsh69f9dd27b667f01p1d2cb1jsnaa2a477cb985").get("https://exercisedb.p.rapidapi.com/exercises/target/#{params["target"]}").parse(:json)
  #   render json: muscle
  # end
  

  def create
    workout = Workout.new(
    user_id: params[:user_id],
    name: params[:name],
    muscle_group: params[:muscle_group]
    ) 
    if workout.save
      render json: workout
    else
      render json: {errors: workout.errors.full_messages}, status: :bad_request
    end
  end
  # def show
  #   workout = Workout.find(para)
    
  # end

  def destroy
    workout = Workout.find_by(:id)
    workout.delete
  end
  
end
