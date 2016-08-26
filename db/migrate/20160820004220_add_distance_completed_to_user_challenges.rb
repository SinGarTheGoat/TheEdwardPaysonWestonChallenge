class AddDistanceCompletedToUserChallenges < ActiveRecord::Migration
  def change
    add_column :user_challenges, :distance_completed, :float
  end
end
