class ExercisesController < ApplicationController
  def index
    exercises = HTTP.headers("X-Rapidapi-Key" =>Rails.application.credentials.exercise_api_key).get("https://exercisedb.p.rapidapi.com/exercises/target/#{params[:target]}").parse(:json)
    
    render json: exercises.shuffle.take(params[:exercise_count].to_i)
  end

  def show
    exercise = HTTP.headers("X-Rapidapi-Key" => Rails.application.credentials.exercise_api_key).get("https://exercisedb.p.rapidapi.com/exercises/exercise/#{params[:id]}").parse(:json)
    render json: exercise
  end

  def show_muscle
    muscle = HTTP.headers("X-Rapidapi-Key" => Rails.application.credentials.exercise_api_key).get("https://exercisedb.p.rapidapi.com/exercises/target/#{params["target"]}").parse(:json)
    render json: muscle.shuffle.take(5)
  end
  def show_equipment
    equipment = HTTP.headers("X-Rapidapi-Key" => Rails.application.credentials.exercise_api_key).get("https://exercisedb.p.rapidapi.com/exercises/equipment/#{params[:equipment]}").parse(:json)
    render json: equipment.shuffle.take(params[:exercise_count].to_i)
    # render json: muscle.shuffle.take(5)
  end

 
end
