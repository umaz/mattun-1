App.MakeMessageChannel = (talk_id)->
  App.message = App.cable.subscriptions.create {channel: "TalkChannel", talk_id: talk_id},
    connected: ->
      # Called when the subscription is ready for use on the server
      console.log 'connected'

    disconnected: ->
      # Called when the subscription has been terminated by the server
      console.log 'disconnected'

    received: (data) ->
      # Called when there's incoming data on the websocket for this channel
      location.reload()
