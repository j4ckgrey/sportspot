class AddAddressToClubs < ActiveRecord::Migration[7.0]
  def change
    add_column :clubs, :address, :string
  end
end
