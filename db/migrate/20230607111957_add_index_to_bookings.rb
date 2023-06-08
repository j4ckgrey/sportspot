class AddIndexToBookings < ActiveRecord::Migration[7.0]
  def change
    add_column :bookings, :status, :integer, default: 0, null: false
    add_index :bookings, :status
  end
end
