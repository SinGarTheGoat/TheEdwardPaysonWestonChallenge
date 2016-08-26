class UserChallenge < ActiveRecord::Base
  belongs_to :user
  belongs_to :challenge

  before_create do
    self.distance_completed = 0.00
  end

  def daily_distance
    return 0
  end

  def daily_distance=(val)
    self.update_attribute(:distance_completed, (self.distance_completed + val.to_f))
  end


  def percent_complete
    (distance_completed / challenge.distance) *100
  end
end

# UserChallenge.create(user_id: 0, challenge_id: 0)
