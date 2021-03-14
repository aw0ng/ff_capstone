class Recommendation < ApplicationRecord
  belongs_to :dog
  belongs_to :diet
  belongs_to :fitness
  belongs_to :breed

  # def diet
  #   # Look in the diet's table for a diet with an id that matches diet_id
  #   Diet.find_by(id: diet_id)
  # end

  # def fitness
  #   Fitness.find_by(id: fitness_id)
  # end

  # def weight
  #   Breed.find_by(id: breed_id)
  # end

  # def min_of_activity
  #   Breed.find_by(id: breed_id)
  # end
end
