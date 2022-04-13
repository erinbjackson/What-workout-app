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
    
    render json: exercises2
  end
 
end
