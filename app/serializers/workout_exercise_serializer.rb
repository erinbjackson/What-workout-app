class WorkoutExerciseSerializer < ActiveModel::Serializer
  attributes :id, :exerciseDB_id
  
  belongs_to :exercise
end
