class MuscleGroupsController < ApplicationController 

    def index
        @muscle_groups = MuscleGroup.all
    end 

    def show 

        @muscle_group = MuscleGroup.find(params[:id])
        
        @workouts = current_user.workouts_by_muscle_group(@muscle_group)
    end 

    
end 


