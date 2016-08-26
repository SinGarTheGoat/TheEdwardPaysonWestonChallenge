class UserChallengesController < ApplicationController
  def update
    user_challenge = UserChallenge.find(params[:id])
    if  user_challenge.update(user_challenge_params)
      redirect_to user_path(current_user)
    end

  end


  private
    def user_challenge_params
      params.require(:user_challenge).permit(:distance_completed, :daily_distance)
    end

end
