class Challenge < ActiveRecord::Base
  has_many :users, through: :user_challenges
  has_many :user_challenges


  
end
