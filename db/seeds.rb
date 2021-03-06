# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
MuscleGroup.destroy_all 
Workout.destroy_all 
Diet.destroy_all

biceps = MuscleGroup.create(muscle_name: "Biceps")
triceps = MuscleGroup.create(muscle_name: "Triceps")
back = MuscleGroup.create(muscle_name: "Back")
legs = MuscleGroup.create(muscle_name: "Legs")
shoulders = MuscleGroup.create(muscle_name: "Shoulders")
chest = MuscleGroup.create(muscle_name: "Chest")
fullbody = MuscleGroup.create(muscle_name: "Full Body")
other = MuscleGroup.create(muscle_name: "Other")





keto = Diet.create(name: "Keto Diet", description: "High fat, adequate protein, low carbohydrate diet, used to control epilepsy, now used to stimulate fat loss")
paleo = Diet.create(name: "Paleo Diet", description: "Predominant eating of foods presumed to have been available to humans during the Paleolithic era")
vegan = Diet.create(name: "Vegetarian", description: "Abstaining from the consumption of meat but not necessarily abstaining from animal products")
therock = Diet.create(name: "The Rock's insane cheat day", description: "Only do this if you're up for the challenge")
fish = Diet.create(name: "Pescatarian", description: "the practice of adhering to a diet that incorporates seafood as the only source of meat in an otherwise vegetarian diet.")

