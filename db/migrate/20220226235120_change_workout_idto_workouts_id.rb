class ChangeWorkoutIdtoWorkoutsId < ActiveRecord::Migration[7.0]
  def change
    rename_column :workout_exercises, :workout_id, :workouts_id
  end
end
