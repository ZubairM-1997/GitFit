class QuizzesController < ApplicationController
    def new 
        @quiz = Quiz.new
    end 

    def create 
        @quiz = Quiz.create(quiz_params)

            if @quiz.save 
                flash[:success] = "Your answers have been saved"
                redirect_to current_user 
            else 
                render 'new'
            end 
        end 

    end 

       

    private 
        def quiz_params
            params.require(:quiz).permit(:exercise_q, :membership_q, :training_q, :fruit)
        end 
end 