.class public Lio/rong/imlib/HeartbeatReceiver;
.super Landroid/content/BroadcastReceiver;
.source "HeartbeatReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lio/rong/imlib/HeartbeatReceiver;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lio/rong/imlib/HeartbeatReceiver;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lio/rong/imlib/HeartbeatReceiver;->sendReconnect(Landroid/content/Context;)V

    return-void
.end method

.method private sendReconnect(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    .line 39
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lio/rong/imlib/ConnectChangeReceiver;

    invoke-direct {v1, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 40
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "action_reconnect"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 43
    invoke-static {p1, v6, v1, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 44
    .local v2, "reconnectIntent":Landroid/app/PendingIntent;
    const-string v3, "alarm"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 46
    .local v0, "alarmManager":Landroid/app/AlarmManager;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    add-long v4, v6, v8

    .line 48
    .local v4, "time":J
    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 50
    const/4 v3, 0x2

    invoke-virtual {v0, v3, v4, v5, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 51
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 19
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    if-nez v0, :cond_0

    .line 35
    :goto_0
    return-void

    .line 22
    :cond_0
    invoke-static {p1}, Lio/rong/common/WakeLockUtils;->startNextHeartbeat(Landroid/content/Context;)V

    .line 23
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    new-instance v1, Lio/rong/imlib/HeartbeatReceiver$1;

    invoke-direct {v1, p0, p1}, Lio/rong/imlib/HeartbeatReceiver$1;-><init>(Lio/rong/imlib/HeartbeatReceiver;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lio/rong/imlib/NativeObject;->ping(Lio/rong/imlib/NativeObject$PingCallback;)V

    goto :goto_0
.end method
