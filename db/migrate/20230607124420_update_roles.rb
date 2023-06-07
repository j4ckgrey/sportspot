class UpdateRoles < ActiveRecord::Migration[7.0]
  def change
    change_column :users, :roles, :string, array: true, default: ['user']
  end
end
