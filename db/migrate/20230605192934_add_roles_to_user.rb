class AddRolesToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :roles, :string, array: true, default: ['user', 'owner', 'admin']
  end
end
