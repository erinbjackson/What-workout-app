class WorkoutExercisesController < ApplicationController
  # def index
  #   workout_exercises = HTTP.headers("X-Rapidapi-Key" =>Rails.application.credentials.exercise_api_key).get("https://exercisedb.p.rapidapi.com/exercises").parse(:json)
  #   render json: workout_exercises
  # end
  
  def create
    workout_exercise = Workout_Exercise.new(
    workout_id: params[:workout_id].to_i,
    exerciseDB_id: params[:exerciseDB_id]
    ) 
    if workout_exercise.save
      render json: workout_exercise
    else
      render json: {errors: workout_exercise.errors.full_messages}, status: :bad_request
    end
  end

  def destroy
    w_exercise = current_user.workout_exercises.find(params[:id])
    if w_exercise.delete
    render json:{ message:"Your workout exercises have been destroyed."}
  else
    render json: {errors: w_exercise.errors.full_messages}, status: :bad_request
  end
 
end
