class AddDescriptionToVenues < ActiveRecord::Migration[7.0]
  def change
    add_column :venues, :description, :text
  end
end
