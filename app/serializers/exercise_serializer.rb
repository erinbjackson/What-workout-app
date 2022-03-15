class ExerciseSerializer < ActiveModel::Serializer
  attributes :id, :name

  belongs_to :workout_exercise
  belongs_to :workout
end
