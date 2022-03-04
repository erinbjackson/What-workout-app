class ExerciseSerializer < ActiveModel::Serializer
  attributes :id, :name, :equipment, :gifUrl, :target, :bodyPart

  belongs_to :workout
end
