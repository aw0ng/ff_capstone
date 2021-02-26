class RemoveTypeFromDiet < ActiveRecord::Migration[6.0]
  def change
    remove_column :diets, :type, :string
    remove_column :diets, :kcal_per_oz, :integer
  end
end
