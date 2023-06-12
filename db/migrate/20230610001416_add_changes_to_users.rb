class AddChangesToUsers < ActiveRecord::Migration[7.0]
  def change
    add_reference :chatrooms, :creator, foreign_key: { to_table: :users }
    add_reference :chatrooms, :club_owner, foreign_key: { to_table: :users }
  end
end
