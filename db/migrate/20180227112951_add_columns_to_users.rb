class AddColumnsToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :avatar, :string
    add_column :users, :age, :integer
    add_column :users, :description, :string
    add_column :users, :city, :string
    add_column :users, :country, :string
    add_column :users, :planner, :boolean
    add_column :users, :facebook, :string
    add_column :users, :instagram, :string
    add_column :users, :twitter, :string
  end
end
