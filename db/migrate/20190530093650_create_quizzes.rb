class CreateQuizzes < ActiveRecord::Migration[5.2]
  def change
    create_table :quizzes do |t|
      t.integer :exercise_q
      t.integer :membership_q
      t.string :training_q
      t.string :fruit

      t.timestamps
    end
  end
end
