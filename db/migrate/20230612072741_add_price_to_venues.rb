class AddPriceToVenues < ActiveRecord::Migration[7.0]
  def change
    add_column :venues, :price, :float
  end
end
