# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


biceps = MuscleGroup.create(muscle_name: "Biceps")
triceps = MuscleGroup.create(muscle_name: "Triceps")
back = MuscleGroup.create(muscle_name: "Back")
legs = MuscleGroup.create(muscle_name: "Legs")
shoulders = MuscleGroup.create(muscle_name: "Shoulders")
chest = MuscleGroup.create(muscle_name: "Chest")
fullbody = MuscleGroup.create(muscle_name: "Full Body")
other = MuscleGroup.create(muscle_name: "Other")


curls = Workout.create(name: "Bicep Curls", muscle_group_id: biceps.id, sets: 5, reps: 10)
deadlift = Workout.create(name: "Deadlifts", muscle_group_id: back.id, sets: 5, reps: 5)
bentoverrows = Workout.create(name: "Bent Over Rows", muscle_group_id: back.id, sets: 5, reps: 5)
pullups = Workout.create(name: "Pull ups", muscle_group_id: back.id, sets: 5, reps: 8)

squats = Workout.create(name: "Squats", muscle_group_id: legs.id, sets: 5, reps: 5)

boxing = Workout.create(name: "Boxing", muscle_group_id: fullbody.id, sets: 5, reps: 5)


keto = Diet.create(name: "Keto Diet")
paleo = Diet.create(name: "Paleo Diet")
vegan = Diet.create(name: "Vegetarian")
therock = Diet.create(name: "The Rock's insane cheat day")