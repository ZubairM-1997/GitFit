class CreateUserMuscle < ActiveRecord::Migration[5.2]
  def change
    create_table :user_muscles do |t|
      t.integer :user_id
      t.integer :muscle_group_id
    end
  end
end
