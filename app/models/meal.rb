class Meal < ApplicationRecord
    belongs_to :diet
    belongs_to :user

    validates :name, presence: true
    validates :calories, presence: true, numericality: {only_integer: true }

    validates :serving, presence: true, numericality: {only_integer: true }

 


end
