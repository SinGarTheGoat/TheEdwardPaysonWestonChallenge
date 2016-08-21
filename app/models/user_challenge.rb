class UserChallenge < ActiveRecord::Base
  belongs_to :user
  belongs_to :challenge
  after_create  do
    @distance_completed = 0.00
  end
  def percent_complete
    (distance_completed / challenge.distance) *100
  end

end

# UserChallenge.create(user_id: 0, challenge_id: 0)
