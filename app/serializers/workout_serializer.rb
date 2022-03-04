class WorkoutSerializer < ActiveModel::Serializer
  attributes :id, :name, :muscle_group

  has_many :exercises
  # has_many :workout_exercises
end
