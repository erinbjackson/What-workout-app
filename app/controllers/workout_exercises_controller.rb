class WorkoutExercisesController < ApplicationController
  # def index
  #   workout_exercises = HTTP.headers("X-Rapidapi-Key" =>Rails.application.credentials.exercise_api_key).get("https://exercisedb.p.rapidapi.com/exercises").parse(:json)
  #   render json: workout_exercises
  # end
  
  def create
    workout_exercise = WorkoutExercise.new(
    workout_id: params[:workout_id].to_i,
    exerciseDB_id: params[:exerciseDB_id]
    ) 
    if workout_exercise.save
      render json: workout_exercise
    else
      render json: {errors: workout_exercise.errors.full_messages}, status: :bad_request
    end
  end
end
