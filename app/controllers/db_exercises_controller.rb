class DbExercisesController < ApplicationController
  
  def index
    exercises = DbExercise.all
    render json: exercises
  end
  
  def show
    exercises = DbExercise.all 
    filtered_exercises = []
    exercises.each do |exercise| 
      equip_arr = params[:equip_arr]
      targets = params[:targets]
      

      i = 0
      while i < equip_arr.length
        if exercise[:equipment] == equip_arr[i] &&
          exercise[:target] == targets[i]
          filtered_exercises << exercise
        end
        i += 1
      end
    end
    render json: filtered_exercises
  end

#This does work right now but as I loop through its only getting things that meet the criteria for index 1 at the same time, then index 2 at the same time. I really need to loop through twice and shuttle in to two different arrays, returning the 2nd array. 
 
end
