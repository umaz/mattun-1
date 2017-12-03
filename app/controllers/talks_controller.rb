class TalksController < ApplicationController
  before_action :authenticate_user, {only: [:index , :show]}

  def index
    @users = User.all
    @user_current = session
  end

  def show
    @talk = Talk.find_by(id: params[:id])
  end

end
