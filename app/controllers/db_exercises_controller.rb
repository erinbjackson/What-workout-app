class DbExercisesController < ApplicationController
  
  def index
    exercises = DbExercise.all
    render json: exercises
  end
  
  
 
end
