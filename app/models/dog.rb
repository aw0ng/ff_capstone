class Dog < ApplicationRecord
  belongs_to :user
  belongs_to :breed
  belongs_to :diet
  belongs_to :fitness
  has_many :recommendations

  # def recommendations
  #   # Look in recommendations table for all recommendations with dog_id that matches current_id
  #   Recommendation.where(dog_id: id)
  # end

  # def diet
  #   Recommendation.where(dog_id: id)
  # end

  # def fitness
  #   Recommendation.where(dog_id: id)

  # end

  # def weight
  #   Recommendation.where(dog_id: id)
  # end

  # def min_of_activity
  #   Recommendation.where(dog_id: id)
  # end
end
