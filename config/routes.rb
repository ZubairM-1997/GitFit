Rails.application.routes.draw do
  get 'sessions/new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  
  resources :users
  resources :muscle_groups 
  resources :diets
  resources :meals
  resources :workouts
  resources :quizzes 

  get    '/login',   to: 'sessions#new', as: :login
  post   '/login',   to: 'sessions#create'
  get '/logout',  to: 'sessions#destroy', as: :logout 

  
end
