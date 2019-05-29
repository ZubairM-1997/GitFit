class WorkoutsController < ApplicationController 

    def new 
        @workout = Workout.new 
        @current_user = User.find_by(id: session[:user_id])
    end 

    def create 
        @workout = Workout.create(workouts_params)
        redirect_to muscle_group_path(@workout.muscle_group)
    end 

    def destroy 
        @workout = Workout.find(params[:id])
        @workout.destroy 
        
        flash[:success] = "Your workout has been deleted"
        redirect_back fallback_location: muscle_group_path

    end 



    private 
        def workouts_params 
            params.require(:workout).permit(:name, :sets, :reps, :muscle_group_id, :user_id)
        end 

    
end 