module GorgSlackChat
  class Engine < ::Rails::Engine
    initializer "gorg_slack_chat.assets.precompile" do |app|
      app.config.assets.precompile += %w(gorg_slack_chat/caller.js slack-chat.js gorg_slack_chat/custom-slack-chat.css slack-chat.css identicon.js pnglib.js sweetalert.css sweetalert.min.js)
    end

    initializer "gorg_slack_chat.gon" do |app|
      require 'gon'

      Gon.global.slack_chat_token =  GorgSlackChat.token
      Gon.global.slack_chat_channel_id =  GorgSlackChat.channel_id
      Gon.global.slack_chat_app_name =  GorgSlackChat.app_name
      Gon.global.slack_chat_chat_box_header = "Besoin d'aide ? Demande à Gadz.org"
      Gon.global.slack_chat_default_sys_img = "/assets/gorg_slack_chat/gadzorg.png"
      Gon.global.slack_chat_user_img = "/assets/gorg_slack_chat/user-icon-small.jpg"
    end

  end
end
