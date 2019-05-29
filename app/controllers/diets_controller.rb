class DietsController < ApplicationController 
    def index 
        @diets = Diet.all 
    end 

    def show 
        @diet = Diet.find(params[:id])
        
        @meals = @current_user.meals_by_diet(@diet)
    end 


end 