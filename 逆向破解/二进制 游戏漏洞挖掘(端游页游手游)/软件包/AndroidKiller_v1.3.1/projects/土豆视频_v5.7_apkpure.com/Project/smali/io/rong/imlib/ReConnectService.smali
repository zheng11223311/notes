.class public Lio/rong/imlib/ReConnectService;
.super Landroid/app/IntentService;
.source "ReConnectService.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    const-string v0, "RONG_ReConnect"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 17
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 22
    if-eqz p1, :cond_0

    .line 23
    invoke-static {}, Lio/rong/imlib/RongIMClient;->getInstance()Lio/rong/imlib/RongIMClient;

    move-result-object v0

    if-nez v0, :cond_1

    .line 24
    invoke-static {p1}, Lio/rong/imlib/ConnectChangeReceiver;->completeWakefulIntent(Landroid/content/Intent;)Z

    .line 46
    :cond_0
    :goto_0
    return-void

    .line 26
    :cond_1
    const-string v0, "RECONNECT"

    invoke-virtual {p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lio/rong/common/RLog;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    invoke-static {}, Lio/rong/imlib/RongIMClient;->getInstance()Lio/rong/imlib/RongIMClient;

    move-result-object v0

    new-instance v1, Lio/rong/imlib/ReConnectService$1;

    invoke-direct {v1, p0, p1}, Lio/rong/imlib/ReConnectService$1;-><init>(Lio/rong/imlib/ReConnectService;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Lio/rong/imlib/RongIMClient;->reconnect(Lio/rong/imlib/RongIMClient$ConnectCallback;)V

    goto :goto_0
.end method
