class DbExercise < ApplicationRecord
  

  def non_sexist_name (name) 
    name.slice! "(male)"
    name.slice! "(female"
    name.gsub! "sissy ", "lean back "
    name
  end
end
