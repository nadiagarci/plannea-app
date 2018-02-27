class AddReferencesToBookings < ActiveRecord::Migration[5.1]
  def change
    add_reference :bookings, :plan, foreign_key: true
    add_reference :bookings, :user, foreign_key: true
  end
end
