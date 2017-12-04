class MessageController < ApplicationController
  def create
    @message = Message.new(
      user_id: params[:user_id],
      talk_id: params[:talk_id],
      message: params[:message]
    )
    if @message.save
      TalkChannel.broadcast_to Talk.find(params[:talk_id]), message: @message
      redirect_to("/talks/#{@message.talk_id}")
    end
  end
end
