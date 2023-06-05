class CreateClubs < ActiveRecord::Migration[7.0]
  def change
    create_table :clubs do |t|
      t.string :name
      t.integer :zip_code
      t.string :city
      t.string :street
      t.integer :phone_number
      t.string :email
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
