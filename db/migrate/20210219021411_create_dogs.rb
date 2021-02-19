class CreateDogs < ActiveRecord::Migration[6.0]
  def change
    create_table :dogs do |t|
      t.string :name
      t.integer :breed_id
      t.integer :weight
      t.integer :min_of_activity
      t.integer :daily_kcal
      t.string :image
      t.integer :user_id
      t.string :diet_id
      t.string :fitness_id

      t.timestamps
    end
  end
end
