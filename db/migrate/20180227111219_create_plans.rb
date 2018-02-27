class CreatePlans < ActiveRecord::Migration[5.1]
  def change
    create_table :plans do |t|
      t.string :title
      t.string :description
      t.string :picture
      t.string :location
      t.integer :price
      t.datetime :start_time
      t.datetime :end_time

      t.timestamps
    end
  end
end
