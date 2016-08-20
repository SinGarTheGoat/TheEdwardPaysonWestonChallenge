class UserChallenge < ActiveRecord::Base
  belongs_to :user
  belongs_to :challenge
  


end

# UserChallenge.create(user_id: 0, challenge_id: 0)
