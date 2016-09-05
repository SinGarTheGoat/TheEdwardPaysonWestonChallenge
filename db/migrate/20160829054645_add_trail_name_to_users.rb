class AddTrailNameToUsers < ActiveRecord::Migration
  def change
    add_column :users, :trail_name, :string
  end
end
