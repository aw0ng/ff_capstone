class AddColumnsToRecommendation < ActiveRecord::Migration[6.0]
  def change
    add_column :recommendations, :weight, :integer
    add_column :recommendations, :min_of_activity, :integer
    add_column :recommendations, :daily_kcal, :integer
  end
end
