class DbExercisesController < ApplicationController
  
  def index
    exercises = DbExercise.all
    render json: exercises
  end
  
  def show
    exercises = DbExercise.all 
    filtered_exercises = []
    final_workout = []
    exercises.each do |exercise| 
      equip_arr = params[:equip_arr]
      i = 0
      while i < equip_arr.length
        if exercise[:equipment] == equip_arr[i]
          filtered_exercises << exercise
        end
        i += 1
      end
    end
    filtered_exercises.each do |filtered_exercise|
      targets = params[:targets]
      t = 0
      while t < targets.length
        if filtered_exercise[:target] == targets[t]
          final_workout << filtered_exercise
        end
        t += 1
      end
    end
    render json: final_workout.shuffle.take(params[:exercise_count].to_i)
  end
 
end
