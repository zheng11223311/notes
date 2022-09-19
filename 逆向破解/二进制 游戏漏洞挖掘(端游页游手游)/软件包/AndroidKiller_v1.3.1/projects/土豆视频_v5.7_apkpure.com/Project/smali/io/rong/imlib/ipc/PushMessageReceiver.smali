.class public Lio/rong/imlib/ipc/PushMessageReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PushMessageReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PushMsgReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private findConversationTypeById(Ljava/lang/String;)Lio/rong/imlib/model/Conversation$ConversationType;
    .locals 8
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 129
    const/16 v6, 0x8

    new-array v4, v6, [Lio/rong/imlib/model/Conversation$ConversationType;

    const/4 v6, 0x0

    sget-object v7, Lio/rong/imlib/model/Conversation$ConversationType;->PRIVATE:Lio/rong/imlib/model/Conversation$ConversationType;

    aput-object v7, v4, v6

    const/4 v6, 0x1

    sget-object v7, Lio/rong/imlib/model/Conversation$ConversationType;->DISCUSSION:Lio/rong/imlib/model/Conversation$ConversationType;

    aput-object v7, v4, v6

    const/4 v6, 0x2

    sget-object v7, Lio/rong/imlib/model/Conversation$ConversationType;->GROUP:Lio/rong/imlib/model/Conversation$ConversationType;

    aput-object v7, v4, v6

    const/4 v6, 0x3

    sget-object v7, Lio/rong/imlib/model/Conversation$ConversationType;->CHATROOM:Lio/rong/imlib/model/Conversation$ConversationType;

    aput-object v7, v4, v6

    const/4 v6, 0x4

    sget-object v7, Lio/rong/imlib/model/Conversation$ConversationType;->CUSTOMER_SERVICE:Lio/rong/imlib/model/Conversation$ConversationType;

    aput-object v7, v4, v6

    const/4 v6, 0x5

    sget-object v7, Lio/rong/imlib/model/Conversation$ConversationType;->SYSTEM:Lio/rong/imlib/model/Conversation$ConversationType;

    aput-object v7, v4, v6

    const/4 v6, 0x6

    sget-object v7, Lio/rong/imlib/model/Conversation$ConversationType;->APP_PUBLIC_SERVICE:Lio/rong/imlib/model/Conversation$ConversationType;

    aput-object v7, v4, v6

    const/4 v6, 0x7

    sget-object v7, Lio/rong/imlib/model/Conversation$ConversationType;->PUBLIC_SERVICE:Lio/rong/imlib/model/Conversation$ConversationType;

    aput-object v7, v4, v6

    .line 133
    .local v4, "types":[Lio/rong/imlib/model/Conversation$ConversationType;
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 134
    .local v5, "value":I
    move-object v0, v4

    .local v0, "arr$":[Lio/rong/imlib/model/Conversation$ConversationType;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 135
    .local v3, "type":Lio/rong/imlib/model/Conversation$ConversationType;
    invoke-virtual {v3}, Lio/rong/imlib/model/Conversation$ConversationType;->getValue()I

    move-result v6

    if-ne v6, v5, :cond_0

    .line 139
    .end local v3    # "type":Lio/rong/imlib/model/Conversation$ConversationType;
    :goto_1
    return-object v3

    .line 134
    .restart local v3    # "type":Lio/rong/imlib/model/Conversation$ConversationType;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 139
    .end local v3    # "type":Lio/rong/imlib/model/Conversation$ConversationType;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private startVoIP(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 144
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 145
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 147
    .local v0, "appName":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "rong://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "calledsideactivity"

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "VoIPAccept"

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 148
    .local v2, "uri":Landroid/net/Uri;
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 150
    const-string v3, "io.rong.voipkit.calledSideActivity.action"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 151
    const-string v3, "appId"

    const-string v4, "appId"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 152
    const-string v3, "push"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 153
    const-string v3, "fromUserPhoneUri"

    const-string v4, "fromUserPo"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 154
    const-string v3, "fromUserName"

    const-string v4, "fromUserName"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 155
    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 157
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 158
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 26
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_2

    .line 27
    :cond_0
    const-string v10, "PushMessageReceiver"

    const-string/jumbo v11, "the action is null!!!"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :cond_1
    :goto_0
    return-void

    .line 31
    :cond_2
    const-string v10, "PushMsgReceiver"

    const-string v11, "onReceive."

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    const-string v11, "io.rong.push.message"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 37
    const/4 v4, 0x0

    .line 38
    .local v4, "isDealt":Z
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 41
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-static {}, Lio/rong/imlib/LibContext;->getInstance()Lio/rong/imlib/LibContext;

    move-result-object v10

    if-nez v10, :cond_3

    .line 42
    invoke-static {p1}, Lio/rong/imlib/LibContext;->init(Landroid/content/Context;)V

    .line 46
    :cond_3
    :try_start_0
    const-string v10, "channelType"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 51
    .local v1, "channelType":I
    invoke-static {v1}, Lio/rong/imlib/model/Conversation$ConversationType;->setValue(I)Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v2

    .line 52
    .local v2, "conversationType":Lio/rong/imlib/model/Conversation$ConversationType;
    new-instance v7, Lio/rong/notification/PushNotificationMessage;

    invoke-direct {v7}, Lio/rong/notification/PushNotificationMessage;-><init>()V

    .line 54
    .local v7, "notiMsg":Lio/rong/notification/PushNotificationMessage;
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v10

    const-string/jumbo v11, "userId"

    const-string v12, ""

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 56
    .local v9, "userId":Ljava/lang/String;
    const-string v10, "PushMsgReceiver"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "The cached userId is :"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    sget-object v10, Lio/rong/imlib/model/Conversation$ConversationType;->PUSH_SERVICE:Lio/rong/imlib/model/Conversation$ConversationType;

    if-eq v2, v10, :cond_5

    .line 59
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 60
    const-string v10, "PushMsgReceiver"

    const-string v11, "The cached userId is null. Return directly!!"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 47
    .end local v1    # "channelType":I
    .end local v2    # "conversationType":Lio/rong/imlib/model/Conversation$ConversationType;
    .end local v7    # "notiMsg":Lio/rong/notification/PushNotificationMessage;
    .end local v9    # "userId":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 48
    .local v3, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v3}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0

    .line 63
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    .restart local v1    # "channelType":I
    .restart local v2    # "conversationType":Lio/rong/imlib/model/Conversation$ConversationType;
    .restart local v7    # "notiMsg":Lio/rong/notification/PushNotificationMessage;
    .restart local v9    # "userId":Ljava/lang/String;
    :cond_4
    const-string/jumbo v10, "tId"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 64
    const-string v10, "PushMsgReceiver"

    const-string v11, "The tId didn\'t equal to the current user id. Return directly!!"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 69
    :cond_5
    sget-object v10, Lio/rong/imlib/model/Conversation$ConversationType;->CHATROOM:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual {v2, v10}, Lio/rong/imlib/model/Conversation$ConversationType;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6

    sget-object v10, Lio/rong/imlib/model/Conversation$ConversationType;->DISCUSSION:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual {v2, v10}, Lio/rong/imlib/model/Conversation$ConversationType;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6

    sget-object v10, Lio/rong/imlib/model/Conversation$ConversationType;->GROUP:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual {v2, v10}, Lio/rong/imlib/model/Conversation$ConversationType;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_12

    .line 71
    :cond_6
    const-string v10, "channelId"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 72
    .local v5, "msgTargetId":Ljava/lang/String;
    const-string v10, "channelName"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 78
    .local v6, "msgTargetName":Ljava/lang/String;
    :goto_1
    sget-object v10, Lio/rong/imlib/model/Conversation$ConversationType;->PUSH_SERVICE:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual {v2, v10}, Lio/rong/imlib/model/Conversation$ConversationType;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    const-string/jumbo v10, "title"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_8

    :cond_7
    sget-object v10, Lio/rong/imlib/model/Conversation$ConversationType;->SYSTEM:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual {v2, v10}, Lio/rong/imlib/model/Conversation$ConversationType;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    const-string v10, "id"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_9

    .line 80
    :cond_8
    const-string/jumbo v10, "title"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Lio/rong/notification/PushNotificationMessage;->setPushTitle(Ljava/lang/String;)V

    .line 84
    :cond_9
    :try_start_1
    const-string v10, "receivedTime"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 85
    .local v8, "receivedTime":Ljava/lang/Long;
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-virtual {v7, v10, v11}, Lio/rong/notification/PushNotificationMessage;->setReceivedTime(J)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 90
    .end local v8    # "receivedTime":Ljava/lang/Long;
    :goto_2
    invoke-virtual {v7, v5}, Lio/rong/notification/PushNotificationMessage;->setTargetId(Ljava/lang/String;)V

    .line 91
    const-string v10, "pushData"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_a

    .line 92
    const-string v10, "pushData"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Lio/rong/notification/PushNotificationMessage;->setPushData(Ljava/lang/String;)V

    .line 95
    :cond_a
    const-string v10, "id"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_b

    sget-object v10, Lio/rong/imlib/model/Conversation$ConversationType;->SYSTEM:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual {v2, v10}, Lio/rong/imlib/model/Conversation$ConversationType;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_c

    :cond_b
    sget-object v10, Lio/rong/imlib/model/Conversation$ConversationType;->PUSH_SERVICE:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual {v2, v10}, Lio/rong/imlib/model/Conversation$ConversationType;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 97
    :cond_c
    const-string v10, "id"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Lio/rong/notification/PushNotificationMessage;->setPushId(Ljava/lang/String;)V

    .line 98
    const-string v10, "extra"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_13

    const/4 v10, 0x0

    :goto_3
    invoke-virtual {v7, v10}, Lio/rong/notification/PushNotificationMessage;->setExtra(Ljava/lang/String;)V

    .line 101
    :cond_d
    const-string v10, "content"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Lio/rong/notification/PushNotificationMessage;->setPushContent(Ljava/lang/String;)V

    .line 103
    invoke-virtual {v7, v2}, Lio/rong/notification/PushNotificationMessage;->setConversationType(Lio/rong/imlib/model/Conversation$ConversationType;)V

    .line 104
    invoke-virtual {v7, v6}, Lio/rong/notification/PushNotificationMessage;->setTargetUserName(Ljava/lang/String;)V

    .line 105
    const-string v10, "objectName"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Lio/rong/notification/PushNotificationMessage;->setObjectName(Ljava/lang/String;)V

    .line 106
    const-string v10, "fromUserId"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Lio/rong/notification/PushNotificationMessage;->setSenderId(Ljava/lang/String;)V

    .line 107
    const-string v10, "fromUserName"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Lio/rong/notification/PushNotificationMessage;->setSenderName(Ljava/lang/String;)V

    .line 108
    const-string v10, "portraitUri"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_14

    const/4 v10, 0x0

    :goto_4
    invoke-virtual {v7, v10}, Lio/rong/notification/PushNotificationMessage;->setSenderPortraitUri(Landroid/net/Uri;)V

    .line 111
    invoke-static {}, Lio/rong/imlib/RongIMClient;->getInstance()Lio/rong/imlib/RongIMClient;

    move-result-object v10

    if-eqz v10, :cond_e

    invoke-static {}, Lio/rong/imlib/RongIMClient;->getInstance()Lio/rong/imlib/RongIMClient;

    move-result-object v10

    invoke-virtual {v10}, Lio/rong/imlib/RongIMClient;->getOnReceivePushMessageListener()Lio/rong/imlib/RongIMClient$OnReceivePushMessageListener;

    move-result-object v10

    if-eqz v10, :cond_e

    .line 112
    invoke-static {}, Lio/rong/imlib/RongIMClient;->getInstance()Lio/rong/imlib/RongIMClient;

    move-result-object v10

    invoke-virtual {v10}, Lio/rong/imlib/RongIMClient;->getOnReceivePushMessageListener()Lio/rong/imlib/RongIMClient$OnReceivePushMessageListener;

    move-result-object v10

    invoke-interface {v10, v7}, Lio/rong/imlib/RongIMClient$OnReceivePushMessageListener;->onReceivePushMessage(Lio/rong/notification/PushNotificationMessage;)Z

    move-result v4

    .line 113
    const-string v10, "PushMsgReceiver"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "have setPushMessageBehaviorListener. isDealt:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :cond_e
    invoke-static {}, Lio/rong/imlib/RongIMClient;->getInstance()Lio/rong/imlib/RongIMClient;

    move-result-object v10

    if-eqz v10, :cond_f

    invoke-static {}, Lio/rong/imlib/RongIMClient;->getInstance()Lio/rong/imlib/RongIMClient;

    move-result-object v10

    invoke-virtual {v10}, Lio/rong/imlib/RongIMClient;->getOnReceivePushMessageListener()Lio/rong/imlib/RongIMClient$OnReceivePushMessageListener;

    move-result-object v10

    if-eqz v10, :cond_10

    :cond_f
    if-nez v4, :cond_11

    .line 118
    :cond_10
    invoke-static {}, Lio/rong/notification/PushNotificationManager;->getInstance()Lio/rong/notification/PushNotificationManager;

    move-result-object v10

    if-eqz v10, :cond_11

    .line 119
    invoke-static {}, Lio/rong/notification/PushNotificationManager;->getInstance()Lio/rong/notification/PushNotificationManager;

    move-result-object v10

    invoke-virtual {v10, v7}, Lio/rong/notification/PushNotificationManager;->onReceivePush(Lio/rong/notification/PushNotificationMessage;)V

    .line 122
    :cond_11
    invoke-virtual {v7}, Lio/rong/notification/PushNotificationMessage;->getObjectName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "Voip"

    invoke-virtual {v10, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    if-lez v10, :cond_1

    .line 123
    invoke-direct {p0, p1, v0}, Lio/rong/imlib/ipc/PushMessageReceiver;->startVoIP(Landroid/content/Context;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 74
    .end local v5    # "msgTargetId":Ljava/lang/String;
    .end local v6    # "msgTargetName":Ljava/lang/String;
    :cond_12
    const-string v10, "fromUserId"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 75
    .restart local v5    # "msgTargetId":Ljava/lang/String;
    const-string v10, "fromUserName"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "msgTargetName":Ljava/lang/String;
    goto/16 :goto_1

    .line 86
    :catch_1
    move-exception v3

    .line 87
    .restart local v3    # "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v3}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto/16 :goto_2

    .line 98
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    :cond_13
    const-string v10, "extra"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_3

    .line 108
    :cond_14
    const-string v10, "portraitUri"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    goto/16 :goto_4
.end method
