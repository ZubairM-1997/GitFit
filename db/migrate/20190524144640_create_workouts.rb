class CreateWorkouts < ActiveRecord::Migration[5.2]
  def change
    create_table :workouts do |t|
      t.string :name
      t.integer :sets
      t.integer :reps
      t.integer :muscle_group_id

      t.timestamps
    end
  end
end
