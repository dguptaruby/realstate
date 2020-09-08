class AddRolesToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :manager, :boolean, default: false
    add_column :users, :user_role, :boolean, default: true
  end
end
