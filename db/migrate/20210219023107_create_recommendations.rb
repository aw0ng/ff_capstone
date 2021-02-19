class CreateRecommendations < ActiveRecord::Migration[6.0]
  def change
    create_table :recommendations do |t|
      t.integer :diet_id
      t.integer :fitness_id

      t.timestamps
    end
  end
end
