class Exercise < ApplicationRecord
  belongs_to :workout
  belongs_to :workout_exercise

  
  #This works in isolation- now incorporate into code.
#   def nonSexistName (name) 
#     name.slice! "(male)"
#     name.gsub!"sissy ", "lean back "
#     p name
#   end
# nonSexistName(exercise[:exercise][:name])

  
  

  
  
end
  
