class AddShortDescriptionToChallenges < ActiveRecord::Migration
  def change
    add_column :challenges, :short_description, :string
  end
end
