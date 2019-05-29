class Workout < ApplicationRecord
    belongs_to :muscle_group
    belongs_to :user

    validates :name, presence: true
    validates :sets, presence: true, numericality: {only_integer: true }
    validates :reps, presence: true, numericality: {only_integer: true }

end
