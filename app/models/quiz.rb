class Quiz < ApplicationRecord
    has_many :userquiz 
    has_many :users, through: :userquiz 

    validates :exercise_q, presence: true, numericality: {only_integer: true }
    validates :membership_q , presence: true , numericality: {only_integer: true }
    validates :training_q, presence: true 
    validates :fruit, presence: true 
end
