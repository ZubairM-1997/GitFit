class UsersController < ApplicationController

    def new #render's the sign up page for a new user
        @user = User.new 
        
        
    end 

    def create #action to create the user
        @user = User.create(user_params)

     
        if @user.save 
            log_in @user 
            flash[:success] = "Are you ready to GitFit?!"
            redirect_to @user #redirects to the user's show page, which is the main menu
        else 
            render 'new'
        end 
    end 

    def show 
        @user = User.find(params[:id])
        @workouts = @user.workouts #all the workouts for that particular user
        @meals = @user.meals #all the meals for that particular user

        

    end

    def edit 
        @user = User.find(params[:id])
    end 

    def update 
        @user = User.find(params[:id])
        @user.update(user_params)
        redirect_to user_path
       
        flash[:success] = "Your details have been updated!"
    end 


    private 
        def user_params 
            params.require(:user).permit(:name, 
            :email, 
            :weight,
            :goal_weight,
            :height, 
            :gender,
            :age,
            :password, 
            :password_confirmation)
        end 


end
