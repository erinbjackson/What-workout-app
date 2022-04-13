class DbExercise < ApplicationRecord
  

  def non_sexist_name (name) 
    name.slice! "(male)"
    name.slice! "(female"
    name.gsub! "sissy ", "lean back "
    name
  end

  def self.search(equip_arr, target, exercise_count )
    where(target: target, equipment: equip_arr).order("RANDOM()").limit(exercise_count)
    
    
  end
end
