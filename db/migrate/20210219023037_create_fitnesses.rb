class CreateFitnesses < ActiveRecord::Migration[6.0]
  def change
    create_table :fitnesses do |t|
      t.string :activity
      t.integer :kcal_per_minute

      t.timestamps
    end
  end
end
