class AddMoreInfoToExercises < ActiveRecord::Migration[6.0]
  def change
    add_column :exercises, :more_info, :string
  end
end
