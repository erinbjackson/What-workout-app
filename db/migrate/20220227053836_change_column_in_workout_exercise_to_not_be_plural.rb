class ChangeColumnInWorkoutExerciseToNotBePlural < ActiveRecord::Migration[7.0]
  def change
    rename_column :workout_exercises, :workouts_id, :workout_id
  end
end
