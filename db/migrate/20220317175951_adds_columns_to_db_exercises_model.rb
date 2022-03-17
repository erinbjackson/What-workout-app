class AddsColumnsToDbExercisesModel < ActiveRecord::Migration[7.0]
  def change
    add_column :db_exercises, :name, :string
    add_column :db_exercises, :bodyPart, :string
    add_column :db_exercises, :equipment, :string
    add_column :db_exercises, :gifUrl, :string
    add_column :db_exercises, :exerciseDB_id, :string
    add_column :db_exercises, :target, :string
  end
end
