class CreateMeals < ActiveRecord::Migration[5.2]
  def change
    create_table :meals do |t|
      t.string :name
      t.integer :diet_id
      t.integer :calories

      t.timestamps
    end
  end
end
