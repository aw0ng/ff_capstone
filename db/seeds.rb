# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

User.create!(first_name: "Anna", last_name: "Wong", email: "anna@test.com", password_digest: "")
User.create!(first_name: "Lexa", last_name: "Abrahamsen", email: "lexa@test.com", password_digest: "")
User.create!(first_name: "Adara", last_name: "Gemellaro", email: "adara@test.com", password_digest: "")

Breed.create!(name: "Chihuahua", weight: 10, min_of_activity: 45, daily_kcal: 225)
Breed.create!(name: "Pekingese", weight: 14, min_of_activity: 30, daily_kcal: 300)
Breed.create!(name: "Middle Eastern Village Dog", weight: 22, min_of_activity: 75, daily_kcal: 425)
Breed.create!(name: "American Bully", weight: 50, min_of_activity: 60, daily_kcal: 1000)

Diet.create!(brand: "Honest Kitchen", kcal_per_cup: 422)
Diet.create!(brand: "Orijen", kcal_per_cup: 449)
Diet.create!(brand: "Blue Buffalo", kcal_per_cup: 409)

Fitness.create!(activity: "Walk", kcal_per_minute: 1)
Fitness.create!(activity: "Run", kcal_per_minute: 2)
Fitness.create!(activity: "Swim", kcal_per_minute: 3)
Fitness.create!(activity: "Play", kcal_per_minute: 2)

Dog.create!(name: "Booty", breed_id: 1, weight: 12, min_of_activity: 30, daily_kcal: 250, image: "", user_id: 1, diet_id: 1, fitness_id: 1)
Dog.create!(name: "Nola", breed_id: 2, weight: 16, min_of_activity: 30, daily_kcal: 330, image: "", user_id: 2, diet_id: 1, fitness_id: 1)
Dog.create!(name: "Sunny", breed_id: 3, weight: 26, min_of_activity: 45, daily_kcal: 500, image: "", user_id: 3, diet_id: 2, fitness_id: 2)
Dog.create!(name: "Lando", breed_id: 4, weight: 65, min_of_activity: 60, daily_kcal: 1200, image: "", user_id: 1, diet_id: 3, fitness_id: 4)