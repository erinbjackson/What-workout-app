class WorkoutsController < ApplicationController
  
  def index
    workouts = Workout.all
    render json: workouts
  end
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

  def destroy
    workout = Workout.find_by(:id)
    workout.delete
  end
  
end
