class Diet < ApplicationRecord
    
    has_many :meals
    has_many :userdiets
    has_many :users, through: :userdiet


end
