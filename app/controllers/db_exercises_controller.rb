class DbExercisesController < ApplicationController
  
  def index
    exercises = DbExercise.all
    render json: exercises
  end
  
  def show
   
    exercises2 = DbExercise.search(
      params[:equip_arr],
      params[:targets],
      params[:exercise_count]
    )
    # filtered_exercises = []
    # final_workouts = []
    # exercises.each do |exercise| 
    #   equip_arr = params[:equip_arr]
    #   i = 0
    #   while i < equip_arr.length
    #     if exercise[:equipment] == equip_arr[i]
    #       filtered_exercises << exercise
    #     end
    #     i += 1
    #   end
    # end
    # filtered_exercises.each do |filtered_exercise|
    #   targets = params[:targets]
    #   t = 0
    #   while t < targets.length
    #     if filtered_exercise[:target] == targets[t]
    #       final_workouts << filtered_exercise
    #     end
    #     t += 1
    #   end
    # end
    render json: exercises2
  end
 
end
