class WorkoutExerciseSerializer < ActiveModel::Serializer
  attributes 
  
  belongs_to :workout
  has_many :exercises
end
