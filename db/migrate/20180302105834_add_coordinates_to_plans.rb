class AddCoordinatesToPlans < ActiveRecord::Migration[5.1]
  def change
    add_column :plans, :latitude, :float
    add_column :plans, :longitude, :float
  end
end
