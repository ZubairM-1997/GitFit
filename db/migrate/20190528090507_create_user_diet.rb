class CreateUserDiet < ActiveRecord::Migration[5.2]
  def change
    create_table :user_diets do |t|
      t.integer :user_id
      t.integer :diet_id
    end
  end
end
