class AddDurationToPlans < ActiveRecord::Migration[5.1]
  def change
     add_column :plans, :duration, :integer
  end
end
