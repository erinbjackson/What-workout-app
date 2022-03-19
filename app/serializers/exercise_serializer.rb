class ExerciseSerializer < ActiveModel::Serializer
  attributes :id, :non_sexist_name, :bodyPart, :equipment, :gifUrl, :exerciseDB_id, :target

  belongs_to :workout_exercise
  belongs_to :workout
end
