class User < ApplicationRecord
    has_many :userdiet 
    has_many :usermuscle
    
    has_many :diets, through: :userdiet

    has_many :muscle_groups, through: :usermuscle

    has_many :workouts
    has_many :meals
    
    before_save { self.email = email.downcase }
    #before saving, the email is lowercased
    validates :name, presence: true, length: { maximum: 50 }
    #validates the names presence, max char length is 50 

    validates :weight, presence: true, numericality: true
    validates :goal_weight, presence: true, numericality: true
    validates :height, presence: true, numericality: true

    validates_inclusion_of :gender, :in => %w( m f male Male female Female)
    validates :age, presence: true, numericality: {only_integer: true }
    
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, presence: true, length: { maximum: 255 },
                      format: { with: VALID_EMAIL_REGEX },
                      uniqueness: { case_sensitive: false }

    has_secure_password

    def workouts_by_muscle_group(muscle_group)
        self.workouts.select do |workout|
            workout.muscle_group_id == muscle_group.id
        end
    end

    def meals_by_diet(diet)
        self.meals.select do |meal|
            meal.diet_id == diet.id 
        end 
    end 

    def calculate_bmi

        height = self.height.to_f / 100 
        height_square = height * height

        self.weight / height_square

    end 

    def goal_bmi 
        height = self.height.to_f / 100 
        height_square = height * height 

        self.goal_weight / height_square 
    end 

    def percentage_difference 
        if self.goal_weight > self.weight 
            increase = self.goal_weight - self.weight 
            percentage = increase.to_f/self.weight * 100  
            return percentage 

        elsif self.goal_weight < self.weight 
            decrease = self.weight - self.goal_weight
            percentage = decrease.to_f/self.weight * 100 
            return percentage 
        
        else 
            return "No percentage difference" 
        end 
    end 
        
        

   


    def determine_bmi 
        calculation = calculate_bmi 
            if calculation < 18 
                return "You are underweight"
            elsif calculation.between?(18, 25)
                return "You are at a healthy weight, theres always room for improvement."
            elsif calculation.between?(25, 30)
                return "You are overweight, you should take care of yourself"
            else 
                return "You are dangerously obese, please go to the gym"
            end 
    end 





  

end
