class AddRolesToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :user_role, :boolean, default: true
    add_column :users, :superadmin_role, :boolean, default: false
  end
end
