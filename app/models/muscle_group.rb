class MuscleGroup < ApplicationRecord
    has_many :workouts
    has_many :usermuscles
    has_many :users, through: :usermuscle

    
end
