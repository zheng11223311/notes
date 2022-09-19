.class public Lio/rong/push/CommandService;
.super Landroid/app/IntentService;
.source "CommandService.java"


# instance fields
.field mStub:Lio/rong/imlib/IVersionHandler$Stub;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    const-string v0, "RongCommandService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 33
    new-instance v0, Lio/rong/push/CommandService$1;

    invoke-direct {v0, p0}, Lio/rong/push/CommandService$1;-><init>(Lio/rong/push/CommandService;)V

    iput-object v0, p0, Lio/rong/push/CommandService;->mStub:Lio/rong/imlib/IVersionHandler$Stub;

    .line 21
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 43
    invoke-static {}, Lio/rong/push/PushContext;->getInstance()Lio/rong/push/PushContext;

    move-result-object v0

    invoke-virtual {v0}, Lio/rong/push/PushContext;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    .line 44
    invoke-static {}, Lio/rong/push/PushContext;->getInstance()Lio/rong/push/PushContext;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/rong/push/PushContext;->init(Landroid/content/Context;)V

    .line 46
    :cond_0
    const-string v0, "onBind"

    invoke-virtual {p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lio/rong/common/RLog;->i(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    iget-object v0, p0, Lio/rong/push/CommandService;->mStub:Lio/rong/imlib/IVersionHandler$Stub;

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 26
    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    .line 27
    invoke-static {}, Lio/rong/push/PushContext;->getInstance()Lio/rong/push/PushContext;

    move-result-object v0

    invoke-virtual {v0}, Lio/rong/push/PushContext;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    .line 28
    invoke-static {}, Lio/rong/push/PushContext;->getInstance()Lio/rong/push/PushContext;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/rong/push/PushContext;->init(Landroid/content/Context;)V

    .line 30
    :cond_0
    const-string v0, "onCreate"

    const-string v1, "create Command service."

    invoke-static {p0, v0, v1}, Lio/rong/common/RLog;->i(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 52
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 71
    :cond_0
    :goto_0
    return-void

    .line 55
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "io.rong.push.check_version"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 56
    invoke-static {}, Lio/rong/push/PushContext;->getInstance()Lio/rong/push/PushContext;

    move-result-object v1

    invoke-virtual {v1}, Lio/rong/push/PushContext;->syncVersion()V

    .line 57
    invoke-static {}, Lio/rong/push/PushContext;->getInstance()Lio/rong/push/PushContext;

    move-result-object v1

    invoke-virtual {v1}, Lio/rong/push/PushContext;->isNewestVersion()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lio/rong/push/PushContext;->getInstance()Lio/rong/push/PushContext;

    move-result-object v1

    invoke-virtual {v1}, Lio/rong/push/PushContext;->validateNetworkEnable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 59
    invoke-static {}, Lio/rong/push/PushContext;->getInstance()Lio/rong/push/PushContext;

    move-result-object v1

    invoke-virtual {v1}, Lio/rong/push/PushContext;->getRunningPushServiceVersion()Lio/rong/imlib/model/AppVersion;

    move-result-object v0

    .line 61
    .local v0, "runVersion":Lio/rong/imlib/model/AppVersion;
    if-nez v0, :cond_3

    .line 62
    const-string v1, "SYNC_CONNECT"

    const-string v2, "getRunningPushServiceVersion null"

    invoke-static {p0, v1, v2}, Lio/rong/common/RLog;->i(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    invoke-static {}, Lio/rong/push/PushContext;->getInstance()Lio/rong/push/PushContext;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Lio/rong/push/PushContext;->sendConnectCommand(Landroid/content/Context;Ljava/lang/String;)V

    .line 70
    .end local v0    # "runVersion":Lio/rong/imlib/model/AppVersion;
    :cond_2
    :goto_1
    invoke-static {p1}, Lio/rong/push/PushReceiver;->completeWakefulIntent(Landroid/content/Intent;)Z

    goto :goto_0

    .line 65
    .restart local v0    # "runVersion":Lio/rong/imlib/model/AppVersion;
    :cond_3
    const-string v1, "SYNC_CONNECT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lio/rong/imlib/model/AppVersion;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lio/rong/imlib/model/AppVersion;->getPushVersionCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lio/rong/common/RLog;->i(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    invoke-static {}, Lio/rong/push/PushContext;->getInstance()Lio/rong/push/PushContext;

    move-result-object v1

    invoke-virtual {p0}, Lio/rong/push/CommandService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Lio/rong/push/PushContext;->sendConnectCommand(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1
.end method
