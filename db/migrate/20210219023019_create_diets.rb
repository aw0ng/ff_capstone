class CreateDiets < ActiveRecord::Migration[6.0]
  def change
    create_table :diets do |t|
      t.string :brand
      t.string :type
      t.integer :kcal_per_cup
      t.integer :kcal_per_oz

      t.timestamps
    end
  end
end
