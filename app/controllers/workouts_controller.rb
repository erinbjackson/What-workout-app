class WorkoutsController < ApplicationController
  before_action :authenticate_user
  
  def index
    workouts = current_user.workouts
    if workouts
      render json: workouts, include: []
    else
      render json: {}, status: :unauthorized
    end
  end

  def show
    workout = current_user.workouts.find(params[:id])
    if workout
      render json: workout
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
  def update
    workout = Workout.find(params[:id].to_i)
    workout.name = params[:name] || workout.name
    workout.muscle_group = params[:muscle_group] || workout.muscle_group
    if workout.save
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
