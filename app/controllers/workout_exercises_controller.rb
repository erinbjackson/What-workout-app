class WorkoutExercisesController < ApplicationController
  def index
    workout_exercise = WorkoutExercise.all
    render json: workout_exercise
    
  end
  
  def create
    workout_exercise = WorkoutExercise.new(
    workout_id: params[:workout_id],
    exerciseDB_id: params[:exerciseDB_id]
    ) 
    if workout_exercise.save
      render json: workout_exercise
    else
      render json: {errors: workout_exercise.errors.full_messages}, status: :bad_request
    end
  end
end
