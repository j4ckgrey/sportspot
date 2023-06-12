class AddListToChatrooms < ActiveRecord::Migration[7.0]
  def change
    add_column :chatrooms, :list, :boolean, default: true
  end
end
