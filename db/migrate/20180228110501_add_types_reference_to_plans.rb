class AddTypesReferenceToPlans < ActiveRecord::Migration[5.1]
  def change
    add_reference :plans, :type, foreign_key: true
  end
end
