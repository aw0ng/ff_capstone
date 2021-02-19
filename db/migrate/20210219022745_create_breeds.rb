class CreateBreeds < ActiveRecord::Migration[6.0]
  def change
    create_table :breeds do |t|
      t.string :name
      t.integer :weight
      t.integer :min_of_activity
      t.integer :daily_kcal

      t.timestamps
    end
  end
end
