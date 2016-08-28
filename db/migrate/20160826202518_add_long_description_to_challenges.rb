class AddLongDescriptionToChallenges < ActiveRecord::Migration
  def change
    add_column :challenges, :long_description, :string
  end
end
