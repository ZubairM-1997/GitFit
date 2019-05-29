class MealsController < ApplicationController 

    def new 
        @meal = Meal.new 
        @current_user = User.find_by(id: session[:user_id])
    end 

    def create 
        @meal = Meal.create(meals_params)
        redirect_to diet_path(@meal.diet)
 

    end 

    def destroy 
        @meal = Meal.find(params[:id])
        @meal.destroy 

        flash[:success] = "Your meal has been deleted"
        redirect_back fallback_location: diet_path
        

    end 

    private 
        def meals_params 
            params.require(:meal).permit(:name, :calories, :diet_id, :user_id, :serving)
        end     
end