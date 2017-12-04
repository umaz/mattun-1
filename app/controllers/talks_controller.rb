class TalksController < ApplicationController
  before_action :authenticate_user, {only: [:index , :show]}

  def index
    @users = User.all
    @talk = Talk.new
    @talks = TalkUser.where(user_id: @current_user.id).map do |talk|
      talk.talk
    end
  end

  def show
    @users = User.all
    @talk = Talk.new
    @talks = TalkUser.where(user_id: @current_user.id).map do |talk|
      talk.talk
    end
    @talk = Talk.find_by(id: params[:id])
    @message = Message.new
    @messages = Message.where(talk_id: params[:id])
    @chat_users = Hash.new
    TalkUser.where(talk_id: params[:id]).each do |user|
      @chat_users[user.user.id] = user.user.name
    end
  end

  def create
    @talk = Talk.new(
      name: params[:name],
      talk_users_attributes: [
        {user_id: params[:user_id]},
        {user_id: @current_user.id}
      ]
    )
    if @talk.save
      redirect_to("/talks/#{@talk.id}")
    end
  end
end
