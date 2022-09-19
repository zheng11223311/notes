.class public Lio/rong/imkit/widget/provider/VoIPInputProvider;
.super Lio/rong/imkit/widget/provider/InputProvider$ExtendProvider;
.source "VoIPInputProvider.java"


# instance fields
.field handler:Landroid/os/Handler;

.field mDeltaTime:J

.field mVoIPInputProviderHandler:Landroid/os/Handler;

.field mWorkThread:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>(Lio/rong/imkit/RongContext;)V
    .locals 2
    .param p1, "context"    # Lio/rong/imkit/RongContext;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lio/rong/imkit/widget/provider/InputProvider$ExtendProvider;-><init>(Lio/rong/imkit/RongContext;)V

    .line 33
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lio/rong/imkit/widget/provider/VoIPInputProvider;->mDeltaTime:J

    .line 38
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "VoIPInputProvider"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lio/rong/imkit/widget/provider/VoIPInputProvider;->mWorkThread:Landroid/os/HandlerThread;

    .line 39
    iget-object v0, p0, Lio/rong/imkit/widget/provider/VoIPInputProvider;->mWorkThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 40
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lio/rong/imkit/widget/provider/VoIPInputProvider;->mWorkThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lio/rong/imkit/widget/provider/VoIPInputProvider;->mVoIPInputProviderHandler:Landroid/os/Handler;

    .line 42
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lio/rong/imkit/widget/provider/VoIPInputProvider;->handler:Landroid/os/Handler;

    .line 44
    const-string v0, "VoIPInputProvider"

    const-string v1, "----------\u6784\u9020\u65b9\u6cd5----------"

    invoke-static {p0, v0, v1}, Lio/rong/imkit/RLog;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v0

    invoke-virtual {v0}, Lio/rong/imkit/RongContext;->getEventBus()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    .line 47
    return-void
.end method

.method private final openVoIPActivity(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 236
    iget-object v0, p0, Lio/rong/imkit/widget/provider/VoIPInputProvider;->mVoIPInputProviderHandler:Landroid/os/Handler;

    new-instance v1, Lio/rong/imkit/widget/provider/VoIPInputProvider$2;

    invoke-direct {v1, p0, p1}, Lio/rong/imkit/widget/provider/VoIPInputProvider$2;-><init>(Lio/rong/imkit/widget/provider/VoIPInputProvider;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 250
    return-void
.end method


# virtual methods
.method public obtainPluginDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lio/rong/imkit/R$drawable;->rc_ic_phone:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public obtainPluginTitle(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 57
    sget v0, Lio/rong/imkit/R$string;->rc_plugins_voip:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onEventBackgroundThread(Lio/rong/imkit/model/Event$OnReceiveVoIPMessageEvent;)V
    .locals 4
    .param p1, "receiveMessageEvent"    # Lio/rong/imkit/model/Event$OnReceiveVoIPMessageEvent;

    .prologue
    .line 113
    invoke-virtual {p1}, Lio/rong/imkit/model/Event$OnReceiveVoIPMessageEvent;->getMessage()Lio/rong/imlib/model/Message;

    move-result-object v0

    .line 116
    .local v0, "message":Lio/rong/imlib/model/Message;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/rong/imlib/model/Message;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lio/rong/imlib/model/Message;->getMessageDirection()Lio/rong/imlib/model/Message$MessageDirection;

    move-result-object v1

    sget-object v2, Lio/rong/imlib/model/Message$MessageDirection;->RECEIVE:Lio/rong/imlib/model/Message$MessageDirection;

    if-ne v1, v2, :cond_0

    .line 117
    const-string v1, "onEvent-voip"

    invoke-virtual {v0}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lio/rong/imkit/RLog;->i(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    invoke-virtual {v0}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "io.rong.voipkit.message.VoIPCallMessage"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 144
    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v1

    invoke-virtual {v1}, Lio/rong/imkit/RongIM;->getRongIMClient()Lio/rong/imkit/RongIMClientWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lio/rong/imkit/RongIMClientWrapper;->getDeltaTime()J

    move-result-wide v2

    iput-wide v2, p0, Lio/rong/imkit/widget/provider/VoIPInputProvider;->mDeltaTime:J

    .line 146
    iget-object v1, p0, Lio/rong/imkit/widget/provider/VoIPInputProvider;->handler:Landroid/os/Handler;

    new-instance v2, Lio/rong/imkit/widget/provider/VoIPInputProvider$1;

    invoke-direct {v2, p0, v0}, Lio/rong/imkit/widget/provider/VoIPInputProvider$1;-><init>(Lio/rong/imkit/widget/provider/VoIPInputProvider;Lio/rong/imlib/model/Message;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 195
    :cond_0
    return-void
.end method

.method public onPluginClick(Landroid/view/View;)V
    .locals 10
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 64
    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v7

    invoke-virtual {v7}, Lio/rong/imkit/RongIM;->getRongIMClient()Lio/rong/imkit/RongIMClientWrapper;

    move-result-object v7

    invoke-virtual {v7}, Lio/rong/imkit/RongIMClientWrapper;->getCurrentConnectionStatus()Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;

    move-result-object v2

    .line 66
    .local v2, "connectionStatus":Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;
    sget-object v7, Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;->CONNECTED:Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;

    if-eq v7, v2, :cond_0

    .line 67
    iget-object v7, p0, Lio/rong/imkit/widget/provider/VoIPInputProvider;->mFragment:Lio/rong/imkit/fragment/MessageInputFragment;

    iget-object v8, p0, Lio/rong/imkit/widget/provider/VoIPInputProvider;->mFragment:Lio/rong/imkit/fragment/MessageInputFragment;

    sget v9, Lio/rong/imkit/R$string;->rc_notice_disconnect:I

    invoke-virtual {v8, v9}, Lio/rong/imkit/fragment/MessageInputFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lio/rong/imkit/fragment/MessageInputFragment;->showNotification(Ljava/lang/CharSequence;)V

    .line 109
    :goto_0
    return-void

    .line 71
    :cond_0
    invoke-virtual {p0}, Lio/rong/imkit/widget/provider/VoIPInputProvider;->getCurrentConversation()Lio/rong/imlib/model/Conversation;

    move-result-object v7

    invoke-virtual {v7}, Lio/rong/imlib/model/Conversation;->getTargetId()Ljava/lang/String;

    move-result-object v5

    .line 77
    .local v5, "targetId":Ljava/lang/String;
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 79
    .local v4, "intent":Landroid/content/Intent;
    const/4 v0, 0x0

    .line 82
    .local v0, "appKey":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v7

    invoke-virtual {v7}, Lio/rong/imkit/RongContext;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v8

    invoke-virtual {v8}, Lio/rong/imkit/RongContext;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x80

    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 83
    .local v1, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v7

    invoke-virtual {v7}, Lio/rong/imkit/RongContext;->getAppKey()Ljava/lang/String;

    move-result-object v0

    .line 84
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 85
    iget-object v7, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v8, "RONG_CLOUD_APP_KEY"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 92
    .end local v1    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :cond_1
    :goto_1
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v7

    const-string v8, "rc_token"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lio/rong/imkit/RongContext;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    const-string/jumbo v8, "token_value"

    const-string v9, ""

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 94
    .local v6, "token":Ljava/lang/String;
    const-string v7, "appId"

    invoke-virtual {v4, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 95
    const-string/jumbo v7, "token"

    invoke-virtual {v4, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 96
    const-string v7, "mySelfId"

    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v8

    invoke-virtual {v8}, Lio/rong/imkit/RongIM;->getRongIMClient()Lio/rong/imkit/RongIMClientWrapper;

    move-result-object v8

    invoke-virtual {v8}, Lio/rong/imkit/RongIMClientWrapper;->getCurrentUserId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 98
    const-string v7, "peerUId"

    invoke-virtual {v4, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 102
    invoke-direct {p0, v4}, Lio/rong/imkit/widget/provider/VoIPInputProvider;->openVoIPActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 88
    .end local v6    # "token":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 89
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v7, "VoIPInputProvider"

    const-string v8, "appkey is null"

    invoke-static {p0, v7, v8}, Lio/rong/imkit/RLog;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
