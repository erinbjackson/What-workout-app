class ExerciseSerializer < ActiveModel::Serializer
  attributes :id, :name, :equipment, :gifUrl, :target, :bodyPart
  
 

  belongs_to :workout
  belongs_to :workout_exercise
  has_many :workout_exercises
  
end
