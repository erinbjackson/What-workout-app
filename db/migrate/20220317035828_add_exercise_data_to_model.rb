class AddExerciseDataToModel < ActiveRecord::Migration[7.0]
  def change
    add_column :exercises, :name, :string
    add_column :exercises, :bodyPart, :string
    add_column :exercises, :equipment, :string
    add_column :exercises, :gifUrl, :string
    add_column :exercises, :exerciseDB_id, :string
    add_column :exercises, :target, :string
  end
end
