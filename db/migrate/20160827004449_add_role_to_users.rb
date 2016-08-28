class AddRoleToUsers < ActiveRecord::Migration
  def change
    add_column :users, :role, :int, default: "standard"
  end
end
