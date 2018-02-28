class AddPhotoToPlans < ActiveRecord::Migration[5.1]
  def change
    add_column :plans, :photo, :string
  end
end
