class AddBreedToRecommendation < ActiveRecord::Migration[6.0]
  def change
    add_column :recommendations, :breed_id, :integer
  end
end
