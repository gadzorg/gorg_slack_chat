function attachSlackChat(emnt) {
    var slackChatOptions;
    emnt.slackChat('destroy');
    $('[data-toggle=tooltip]').tooltip();
    emnt.slackChat('destroy');
    emnt.hide();
    slackChatOptions = {
        apiToken: gon.global.slack_chat_token,
        channelId: gon.global.slack_chat_channel_id,
        user: user_name,
        userLink: user_link,
        userId: user_id,
        msgUserId: user_id,
        //userImg: "data: image/png;base64,"+ (new Identicon('d3b07384d113edec49eaa6238ad5ff01', 40).toString()),
        defaultUserImg: gon.global.slack_chat_user_img,
        defaultSysImg: gon.global.slack_chat_default_sys_img,
        defaultSysUser: 'Equipe Gadz.org',
        chatBoxHeader: gon.global.slack_chat_chat_box_header,
        botUser: 'ChatSupport - '+gon.global.slack_chat_app_name,
        elementToDisable: $('.message-box'),
        disableIfAway: false,
        webCache: false,
        debug: false,
        privateChannel: false,
        heightOffset: 150,
        messageFetchCount: 25
    };
    emnt.slackChat(slackChatOptions);
    return emnt.show();
}

$(document).ready(function() {

    var button=$('.message-box');

    var handler=function(e) {
        e.preventDefault();
        e.stopPropagation();

        swal({
                title: '',
                text: "Cette conversation est publique, tous les utilisateurs de Gadz.org peuvent en voir le contenu. \n\n Des bénévoles pourront te répondre s'ils sont disponibles, mais si tu n'as pas de réponse dans les 10 minutes, tu peux nous envoyer un email à support@gadz.org.",
                type: "warning",
                confirmButtonText: "C'est compris !"
            },
            function(){
            button.unbind('click',handler);
            attachSlackChat(button);
            button.trigger( "click" );
        });
    };

    button.on('click',handler);


});

