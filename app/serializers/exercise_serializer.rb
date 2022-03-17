class ExerciseSerializer < ActiveModel::Serializer
  attributes :id, :name, :bodyPart, :equipment, :gifUrl, :exerciseDB_id, :target

  belongs_to :workout_exercise
  belongs_to :workout
end
