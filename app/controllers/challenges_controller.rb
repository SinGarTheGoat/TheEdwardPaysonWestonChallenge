class ChallengesController < ApplicationController
  def index
    @challenges = Challenge.all
  end

  def new
    @challenge = Challenge.new
  end

  def create

    @challenge =Challenge.create(challenge_params)
    redirect_to challenges_path
  end

  def show
    @challenge =Challenge.find(params[:id])
  end

  def join
    if current_user.challenges.exists?(params[:id])
      puts "already joined!"
      flash[:alert] = "already joined!"
      redirect_to challenges_path
    else
      @challenge =Challenge.find(params[:id])
      current_user.challenges << @challenge
      redirect_to user_path(current_user)
    end
  end



private
  def challenge_params
    params.require(:challenge).permit(:name, :number_of_days, :distance)
  end



end
