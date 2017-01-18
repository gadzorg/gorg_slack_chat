module GorgSlackChatHelper

  def tags_for_gorg_slack_chat
    render partial:'shared/tags_for_gorg_slack_chat'
  end

  def gorg_slack_chat(name: nil, id: nil, link: nil )
    session[:foo] = "bar" #Initialize session if not set

    opts= {
            user_name: (name||"Utilisateur Anonyme - " + session.id[0..4].upcase),
            user_id: (id||""),
            user_link: (link||"")
        }

    render partial:'shared/gorg_slack_chat', :locals => opts
  end

end