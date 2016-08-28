class ChallengesController < ApplicationController
  # add before filter to check current user admin status only for create and new

  before_action :authorize_user, only: [:create, :new]


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
    params.require(:challenge).permit(:name, :number_of_days, :distance, :short_description, :long_description)
  end

  def authorize_user
    unless current_user.admin?
      flash[:alert] = "You must be an admin to do that."
       redirect_to root_path
     end
  end

end
