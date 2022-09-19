.class public Lcom/tudou/push/StartActivityService;
.super Landroid/app/IntentService;
.source "StartActivityService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Push_StartActivityService"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    const-string v0, "Push_StartActivityService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 30
    return-void
.end method

.method public static startDetailGame(Lcom/tudou/push/PushMsg;)V
    .locals 9
    .param p0, "msg"    # Lcom/tudou/push/PushMsg;

    .prologue
    .line 177
    sget-object v0, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/youku/gamecenter/download/DownloadManager;->getInstance(Landroid/content/Context;)Lcom/youku/gamecenter/download/DownloadManager;

    move-result-object v0

    iget-object v1, p0, Lcom/tudou/push/PushMsg;->pkg_name:Ljava/lang/String;

    iget-object v2, p0, Lcom/tudou/push/PushMsg;->content:Ljava/lang/String;

    iget-object v3, p0, Lcom/tudou/push/PushMsg;->url:Ljava/lang/String;

    iget-object v4, p0, Lcom/tudou/push/PushMsg;->icon:Ljava/lang/String;

    iget v5, p0, Lcom/tudou/push/PushMsg;->ver_code:I

    iget-object v6, p0, Lcom/tudou/push/PushMsg;->source:Ljava/lang/String;

    iget-object v7, p0, Lcom/tudou/push/PushMsg;->game_id:Ljava/lang/String;

    const-string/jumbo v8, "show_details"

    invoke-virtual/range {v0 .. v8}, Lcom/youku/gamecenter/download/DownloadManager;->openGameCenter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    return-void
.end method

.method public static startDownloadGame(Lcom/tudou/push/PushMsg;)V
    .locals 9
    .param p0, "msg"    # Lcom/tudou/push/PushMsg;

    .prologue
    .line 186
    sget-object v0, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/youku/gamecenter/download/DownloadManager;->getInstance(Landroid/content/Context;)Lcom/youku/gamecenter/download/DownloadManager;

    move-result-object v0

    iget-object v1, p0, Lcom/tudou/push/PushMsg;->pkg_name:Ljava/lang/String;

    iget-object v2, p0, Lcom/tudou/push/PushMsg;->content:Ljava/lang/String;

    iget-object v3, p0, Lcom/tudou/push/PushMsg;->url:Ljava/lang/String;

    iget-object v4, p0, Lcom/tudou/push/PushMsg;->icon:Ljava/lang/String;

    iget v5, p0, Lcom/tudou/push/PushMsg;->ver_code:I

    iget-object v6, p0, Lcom/tudou/push/PushMsg;->source:Ljava/lang/String;

    iget-object v7, p0, Lcom/tudou/push/PushMsg;->game_id:Ljava/lang/String;

    const-string v8, "download_game"

    invoke-virtual/range {v0 .. v8}, Lcom/youku/gamecenter/download/DownloadManager;->openGameCenter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    return-void
.end method

.method public static trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "target"    # Ljava/lang/String;

    .prologue
    .line 194
    const-class v0, Lcom/tudou/push/PushReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 13
    .param p1, "i"    # Landroid/content/Intent;

    .prologue
    const/4 v12, 0x4

    const/high16 v11, 0x34400000

    const/4 v10, 0x1

    .line 38
    const-string v8, "PushMsg"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v6

    check-cast v6, Lcom/tudou/push/PushMsg;

    .line 39
    .local v6, "msg":Lcom/tudou/push/PushMsg;
    iget-object v8, v6, Lcom/tudou/push/PushMsg;->mid:Ljava/lang/String;

    if-eqz v8, :cond_0

    .line 40
    const-string v8, "action"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 41
    .local v0, "action":Ljava/lang/String;
    iget-object v8, v6, Lcom/tudou/push/PushMsg;->mid:Ljava/lang/String;

    iget v9, v6, Lcom/tudou/push/PushMsg;->type:I

    invoke-static {v8, v9, v0}, Lcom/tudou/push/PushReceiver;->notificationOpenFeedback(Ljava/lang/String;ILjava/lang/String;)V

    .line 45
    .end local v0    # "action":Ljava/lang/String;
    :cond_0
    iget v8, v6, Lcom/tudou/push/PushMsg;->type:I

    packed-switch v8, :pswitch_data_0

    .line 160
    :pswitch_0
    const-string/jumbo v8, "\u901a\u77e5\u680f\u63a8\u9001\u6d88\u606f\u70b9\u51fb"

    const-string/jumbo v9, "\u63a8\u9001-\u901a\u77e5\u680f\u63a8\u9001\u6d88\u606f\u70b9\u51fb"

    invoke-static {v8, v9}, Lcom/tudou/push/StartActivityService;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    new-instance p1, Landroid/content/Intent;

    .end local p1    # "i":Landroid/content/Intent;
    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 162
    .restart local p1    # "i":Landroid/content/Intent;
    invoke-virtual {p1, v11}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 166
    const-class v8, Lcom/tudou/ui/activity/WelcomeActivity;

    invoke-virtual {p1, p0, v8}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 167
    const-string v8, "android.intent.action.MAIN"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 168
    const-string v8, "android.intent.category.LAUNCHER"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 169
    invoke-virtual {p0, p1}, Lcom/tudou/push/StartActivityService;->startActivity(Landroid/content/Intent;)V

    .line 173
    :goto_0
    return-void

    .line 47
    :pswitch_1
    const-string/jumbo v8, "\u901a\u77e5\u680f\u63a8\u9001\u5347\u7ea7\u70b9\u51fb"

    const-string/jumbo v9, "\u63a8\u9001-\u901a\u77e5\u680f\u63a8\u9001\u5347\u7ea7\u70b9\u51fb"

    invoke-static {v8, v9}, Lcom/tudou/push/StartActivityService;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    invoke-virtual {p1, v11}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 53
    const-class v8, Lcom/tudou/ui/activity/UpdateActivity;

    invoke-virtual {p1, p0, v8}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 54
    const-string/jumbo v8, "updateurl"

    iget-object v9, v6, Lcom/tudou/push/PushMsg;->updateurl:Ljava/lang/String;

    invoke-virtual {p1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 55
    const-string/jumbo v8, "updateversion"

    iget-object v9, v6, Lcom/tudou/push/PushMsg;->updateversion:Ljava/lang/String;

    invoke-virtual {p1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 56
    const-string/jumbo v8, "updatecontent"

    iget-object v9, v6, Lcom/tudou/push/PushMsg;->updatecontent:Ljava/lang/String;

    invoke-virtual {p1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 57
    invoke-virtual {p0, p1}, Lcom/tudou/push/StartActivityService;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 60
    :pswitch_2
    const-string/jumbo v8, "\u901a\u77e5\u680f\u63a8\u9001\u89c6\u9891\u70b9\u51fb"

    const-string/jumbo v9, "\u63a8\u9001-\u901a\u77e5\u680f\u63a8\u9001\u89c6\u9891\u70b9\u51fb"

    invoke-static {v8, v9}, Lcom/tudou/push/StartActivityService;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    invoke-virtual {p1, v11}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 65
    iget-object v8, v6, Lcom/tudou/push/PushMsg;->itemcode:Ljava/lang/String;

    if-eqz v8, :cond_1

    iget-object v8, v6, Lcom/tudou/push/PushMsg;->itemcode:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_5

    .line 66
    :cond_1
    iget-object v8, v6, Lcom/tudou/push/PushMsg;->albumid:Ljava/lang/String;

    if-eqz v8, :cond_2

    iget-object v8, v6, Lcom/tudou/push/PushMsg;->albumid:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_3

    .line 67
    :cond_2
    const-class v8, Lcom/tudou/ui/activity/WelcomeActivity;

    invoke-virtual {p1, p0, v8}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 68
    const-string v8, "android.intent.action.MAIN"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 69
    const-string v8, "android.intent.category.LAUNCHER"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 70
    invoke-virtual {p0, p1}, Lcom/tudou/push/StartActivityService;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 73
    :cond_3
    sget-boolean v8, Lcom/tudou/android/Youku;->sPageStillExist:Z

    if-eqz v8, :cond_4

    .line 74
    const-class v8, Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {p1, p0, v8}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 82
    :goto_1
    const-string/jumbo v8, "video_id"

    iget-object v9, v6, Lcom/tudou/push/PushMsg;->albumid:Ljava/lang/String;

    invoke-virtual {p1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 83
    const-string/jumbo v8, "title"

    iget-object v9, v6, Lcom/tudou/push/PushMsg;->title:Ljava/lang/String;

    invoke-virtual {p1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 84
    const-string/jumbo v8, "type"

    sget-object v9, Lcom/tudou/android/Youku$Type;->SHOWID:Lcom/tudou/android/Youku$Type;

    invoke-virtual {p1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 85
    const-string v8, "from"

    const-string v9, "push"

    invoke-virtual {p1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 86
    const-string v8, "playlistCode"

    iget-object v9, v6, Lcom/tudou/push/PushMsg;->playlistcode:Ljava/lang/String;

    invoke-virtual {p1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 87
    invoke-virtual {p0, p1}, Lcom/tudou/push/StartActivityService;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 76
    :cond_4
    invoke-static {}, Lcom/tudou/android/Youku;->registerNetReceiver()V

    .line 77
    const-class v8, Lcom/tudou/ui/activity/HomePageActivity;

    invoke-virtual {p1, p0, v8}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 79
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "startGuide"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/youku/config/Profile;->VER:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/tudou/android/Youku;->savePreference(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 80
    const-string v8, "home_way"

    invoke-virtual {p1, v8, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    .line 91
    :cond_5
    sget-boolean v8, Lcom/tudou/android/Youku;->sPageStillExist:Z

    if-eqz v8, :cond_6

    .line 92
    const-class v8, Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {p1, p0, v8}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 98
    :goto_2
    const-string/jumbo v8, "video_id"

    iget-object v9, v6, Lcom/tudou/push/PushMsg;->itemcode:Ljava/lang/String;

    invoke-virtual {p1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 99
    const-string/jumbo v8, "title"

    iget-object v9, v6, Lcom/tudou/push/PushMsg;->title:Ljava/lang/String;

    invoke-virtual {p1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 100
    const-string/jumbo v8, "type"

    sget-object v9, Lcom/tudou/android/Youku$Type;->VIDEOID:Lcom/tudou/android/Youku$Type;

    invoke-virtual {p1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 101
    const-string v8, "from"

    const-string v9, "push"

    invoke-virtual {p1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 102
    const-string v8, "playlistCode"

    iget-object v9, v6, Lcom/tudou/push/PushMsg;->playlistcode:Ljava/lang/String;

    invoke-virtual {p1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 104
    invoke-virtual {p0, p1}, Lcom/tudou/push/StartActivityService;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 94
    :cond_6
    invoke-static {}, Lcom/tudou/android/Youku;->registerNetReceiver()V

    .line 95
    const-class v8, Lcom/tudou/ui/activity/HomePageActivity;

    invoke-virtual {p1, p0, v8}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 96
    const-string v8, "home_way"

    invoke-virtual {p1, v8, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_2

    .line 107
    :pswitch_3
    new-instance v4, Landroid/os/HandlerThread;

    const-string v8, "handler_thread"

    invoke-direct {v4, v8}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 108
    .local v4, "ht":Landroid/os/HandlerThread;
    invoke-virtual {v4}, Landroid/os/HandlerThread;->start()V

    .line 109
    new-instance v3, Lcom/tudou/push/StartActivityService$1;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v8

    invoke-direct {v3, p0, v8, v6}, Lcom/tudou/push/StartActivityService$1;-><init>(Lcom/tudou/push/StartActivityService;Landroid/os/Looper;Lcom/tudou/push/PushMsg;)V

    .line 117
    .local v3, "h":Landroid/os/Handler;
    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v7

    .line 118
    .local v7, "sendmsg":Landroid/os/Message;
    iput v10, v7, Landroid/os/Message;->what:I

    .line 119
    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 122
    .end local v3    # "h":Landroid/os/Handler;
    .end local v4    # "ht":Landroid/os/HandlerThread;
    .end local v7    # "sendmsg":Landroid/os/Message;
    :pswitch_4
    const-string v8, "Push_StartActivityService"

    const-string v9, "TYPE_GAME_LIST"

    invoke-static {v8, v9}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    new-instance p1, Landroid/content/Intent;

    .end local p1    # "i":Landroid/content/Intent;
    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 124
    .restart local p1    # "i":Landroid/content/Intent;
    invoke-virtual {p1, v11}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 128
    const-class v8, Lcom/youku/gamecenter/GameCenterHomeActivity;

    invoke-virtual {p1, p0, v8}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 129
    const-string v8, "packageName"

    iget-object v9, v6, Lcom/tudou/push/PushMsg;->pkg_name:Ljava/lang/String;

    invoke-virtual {p1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 130
    const-string/jumbo v8, "title"

    iget-object v9, v6, Lcom/tudou/push/PushMsg;->content:Ljava/lang/String;

    invoke-virtual {p1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 131
    const-string/jumbo v8, "url"

    iget-object v9, v6, Lcom/tudou/push/PushMsg;->url:Ljava/lang/String;

    invoke-virtual {p1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 132
    const-string v8, "icon"

    iget-object v9, v6, Lcom/tudou/push/PushMsg;->icon:Ljava/lang/String;

    invoke-virtual {p1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 133
    const-string/jumbo v8, "version"

    iget v9, v6, Lcom/tudou/push/PushMsg;->ver_code:I

    invoke-virtual {p1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 134
    const-string v8, "gameid"

    iget-object v9, v6, Lcom/tudou/push/PushMsg;->game_id:Ljava/lang/String;

    invoke-virtual {p1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 135
    const-string/jumbo v8, "source"

    iget-object v9, v6, Lcom/tudou/push/PushMsg;->source:Ljava/lang/String;

    invoke-virtual {p1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 136
    invoke-virtual {p0, p1}, Lcom/tudou/push/StartActivityService;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 139
    :pswitch_5
    const-string v8, "Push_StartActivityService"

    const-string v9, "TYPE_GAME_DETAIL"

    invoke-static {v8, v9}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    invoke-static {v6}, Lcom/tudou/push/StartActivityService;->startDetailGame(Lcom/tudou/push/PushMsg;)V

    goto/16 :goto_0

    .line 145
    :pswitch_6
    :try_start_0
    invoke-static {p0}, Lcom/youku/util/Util;->getClipData(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 146
    .local v2, "clipStr":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_7

    invoke-static {v2}, Lcom/youku/vo/ChatDialogInfo;->matchRegex(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 147
    invoke-static {p0}, Lcom/youku/util/Util;->clearClipData(Landroid/content/Context;)V

    .line 148
    :cond_7
    invoke-static {}, Lcom/tudou/android/chat/ChatManager;->getInstance()Lcom/tudou/android/chat/ChatManager;

    move-result-object v8

    sget-object v9, Lcom/tudou/android/chat/ChatManager$State;->STATE_CONVERSATION:Lcom/tudou/android/chat/ChatManager$State;

    invoke-virtual {v8, v9}, Lcom/tudou/android/chat/ChatManager;->setState(Lcom/tudou/android/chat/ChatManager$State;)V

    .line 150
    const-string v8, "chat_info"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/ChatDialogInfo;

    .line 151
    .local v1, "chatInfo":Lcom/youku/vo/ChatDialogInfo;
    const/4 v8, 0x1

    invoke-virtual {v1, p0, v8}, Lcom/youku/vo/ChatDialogInfo;->goDetailActivity(Landroid/content/Context;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    new-instance v5, Landroid/content/Intent;

    const-string v8, "com.tudou.android.service.chat.notification.action"

    invoke-direct {v5, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 155
    .local v5, "intent":Landroid/content/Intent;
    const-string v8, "chat_close_all_view"

    invoke-virtual {v5, v8, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 156
    invoke-virtual {p0, v5}, Lcom/tudou/push/StartActivityService;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 152
    .end local v1    # "chatInfo":Lcom/youku/vo/ChatDialogInfo;
    .end local v2    # "clipStr":Ljava/lang/String;
    .end local v5    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v8

    .line 154
    new-instance v5, Landroid/content/Intent;

    const-string v8, "com.tudou.android.service.chat.notification.action"

    invoke-direct {v5, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 155
    .restart local v5    # "intent":Landroid/content/Intent;
    const-string v8, "chat_close_all_view"

    invoke-virtual {v5, v8, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 156
    invoke-virtual {p0, v5}, Lcom/tudou/push/StartActivityService;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 154
    .end local v5    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v8

    new-instance v5, Landroid/content/Intent;

    const-string v9, "com.tudou.android.service.chat.notification.action"

    invoke-direct {v5, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 155
    .restart local v5    # "intent":Landroid/content/Intent;
    const-string v9, "chat_close_all_view"

    invoke-virtual {v5, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 156
    invoke-virtual {p0, v5}, Lcom/tudou/push/StartActivityService;->sendBroadcast(Landroid/content/Intent;)V

    .line 157
    throw v8

    .line 45
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
