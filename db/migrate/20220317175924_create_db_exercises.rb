class CreateDbExercises < ActiveRecord::Migration[7.0]
  def change
    create_table :db_exercises do |t|

      t.timestamps
    end
  end
end
