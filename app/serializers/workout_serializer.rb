class WorkoutSerializer < ActiveModel::Serializer
  attributes :id, :name, :muscle_group

  
  has_many :workout_exercises
  has_many :exercises
  

  
  
end