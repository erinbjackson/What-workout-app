class WorkoutSerializer < ActiveModel::Serializer
  attributes :id, :name

  
  #has_many :workout_exercises
  has_many :exercises
  

  
  
end