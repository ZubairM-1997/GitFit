class UserMuscle < ApplicationRecord
    belongs_to :muscle_group
    belongs_to :user 
end 