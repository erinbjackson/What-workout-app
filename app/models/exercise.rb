class Exercise < ApplicationRecord
  belongs_to :workout
  belongs_to :workout_exercise

  # def exercises
  #   exercises.map do |exercise|
  #     exercise["name"] = non_sexist_name(exercise["name"])
  #     exercises
  # end


  # def non_sexist_name (name) 
  #   name.slice! "(male)"
  #   name.slice! "(female)"
  #   name.gsub! "sissy ", "lean back "
  #   name
  # end

  
  

  
  
end
  
