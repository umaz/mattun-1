class TalkChannel < ApplicationCable::Channel
  def subscribed
    # stream_from "some_channel"
    talk = Talk.find(params[:talk_id])
    stream_for talk
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
