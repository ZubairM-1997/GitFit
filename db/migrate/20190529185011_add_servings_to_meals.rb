class AddServingsToMeals < ActiveRecord::Migration[5.2]
  def change
    add_column :meals, :serving, :integer
  end
end
