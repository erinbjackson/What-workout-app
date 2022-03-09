class WorkoutSerializer < ActiveModel::Serializer
  attributes :id, :name, :muscle_group

  belongs_to :user
  has_many :workout_exercises
  

  
  
end