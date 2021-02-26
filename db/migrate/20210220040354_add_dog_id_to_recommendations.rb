class AddDogIdToRecommendations < ActiveRecord::Migration[6.0]
  def change
    add_column :recommendations, :dog_id, :integer
  end
end
