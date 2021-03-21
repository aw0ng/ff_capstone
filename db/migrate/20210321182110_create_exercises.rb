class CreateExercises < ActiveRecord::Migration[6.0]
  def change
    create_table :exercises do |t|
      t.string :breed_group
      t.integer :min_activity
      t.integer :max_activity

      t.timestamps
    end
  end
end
