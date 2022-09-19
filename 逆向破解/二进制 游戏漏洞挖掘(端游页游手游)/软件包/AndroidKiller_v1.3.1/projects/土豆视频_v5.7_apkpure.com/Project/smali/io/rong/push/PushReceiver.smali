.class public Lio/rong/push/PushReceiver;
.super Lio/rong/common/WakefulRongReceiver;
.source "PushReceiver.java"


# static fields
.field private static final STATUS_ERROR:I = 0x0

.field private static final STATUS_MOBILE:I = 0x1

.field private static final STATUS_WIFI:I = 0x2

.field private static final TAG:Ljava/lang/String; = "PushReceiver"

.field private static mStastus:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x2

    sput v0, Lio/rong/push/PushReceiver;->mStastus:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lio/rong/common/WakefulRongReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 29
    if-nez p2, :cond_1

    .line 160
    :cond_0
    :goto_0
    return-void

    .line 32
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 33
    .local v1, "action":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 36
    const-string v11, "PushReceiver"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Action is:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    invoke-static {}, Lio/rong/push/PushContext;->getInstance()Lio/rong/push/PushContext;

    move-result-object v11

    if-nez v11, :cond_2

    .line 40
    const-string v11, "onReceive"

    const-string v12, "PushContext is null!"

    invoke-static {p0, v11, v12}, Lio/rong/common/RLog;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 44
    :cond_2
    invoke-static {}, Lio/rong/push/PushContext;->getInstance()Lio/rong/push/PushContext;

    move-result-object v11

    invoke-virtual {v11}, Lio/rong/push/PushContext;->getContext()Landroid/content/Context;

    move-result-object v11

    if-nez v11, :cond_3

    .line 45
    const-string v11, "PushReceiver"

    const-string v12, "push process must be init in application!!!!!!"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    invoke-static {}, Lio/rong/push/PushContext;->getInstance()Lio/rong/push/PushContext;

    move-result-object v11

    invoke-virtual {v11, p1}, Lio/rong/push/PushContext;->init(Landroid/content/Context;)V

    .line 49
    :cond_3
    const-string v11, "io.rong.push.Connect"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 51
    invoke-static {}, Lio/rong/push/PushContext;->getInstance()Lio/rong/push/PushContext;

    move-result-object v11

    if-eqz v11, :cond_0

    invoke-static {}, Lio/rong/push/PushContext;->getInstance()Lio/rong/push/PushContext;

    move-result-object v11

    invoke-virtual {v11}, Lio/rong/push/PushContext;->isNewestVersion()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-static {}, Lio/rong/push/PushContext;->getInstance()Lio/rong/push/PushContext;

    move-result-object v11

    invoke-virtual {v11}, Lio/rong/push/PushContext;->validateNetworkEnable()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 52
    invoke-static {}, Lio/rong/push/PushContext;->getInstance()Lio/rong/push/PushContext;

    move-result-object v11

    invoke-virtual {v11}, Lio/rong/push/PushContext;->getRunningPushServiceVersion()Lio/rong/imlib/model/AppVersion;

    move-result-object v9

    .line 53
    .local v9, "version":Lio/rong/imlib/model/AppVersion;
    if-eqz v9, :cond_4

    invoke-static {}, Lio/rong/push/PushContext;->getInstance()Lio/rong/push/PushContext;

    move-result-object v11

    invoke-virtual {v11}, Lio/rong/push/PushContext;->getCurrentVersion()Lio/rong/imlib/model/AppVersion;

    move-result-object v11

    invoke-virtual {v11}, Lio/rong/imlib/model/AppVersion;->getPushVersionCode()I

    move-result v11

    invoke-virtual {v9}, Lio/rong/imlib/model/AppVersion;->getPushVersionCode()I

    move-result v12

    if-le v11, v12, :cond_0

    .line 54
    :cond_4
    new-instance v2, Landroid/content/Intent;

    const-class v11, Lio/rong/push/PushService;

    invoke-direct {v2, p1, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 55
    .local v2, "connectIntent":Landroid/content/Intent;
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 56
    invoke-static {p1, v2}, Lio/rong/push/PushReceiver;->startWakefulService(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 57
    const-string v11, "ACTION_CONNECT"

    const-string/jumbo v12, "run connect"

    invoke-static {p0, v11, v12}, Lio/rong/common/RLog;->i(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 62
    .end local v2    # "connectIntent":Landroid/content/Intent;
    .end local v9    # "version":Lio/rong/imlib/model/AppVersion;
    :cond_5
    const-string v11, "io.rong.push.StopHeartBeat"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 63
    new-instance v3, Landroid/content/Intent;

    const-class v11, Lio/rong/push/PushService;

    invoke-direct {v3, p1, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 65
    .local v3, "disConnectIntent":Landroid/content/Intent;
    const-string v11, "ACTION_STOP_HEART"

    const-string v12, "Receive heartbeat action."

    invoke-static {p0, v11, v12}, Lio/rong/common/RLog;->i(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    invoke-virtual {v3, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 69
    invoke-static {p1, v3}, Lio/rong/push/PushReceiver;->startWakefulService(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    .line 70
    .end local v3    # "disConnectIntent":Landroid/content/Intent;
    :cond_6
    const-string v11, "io.rong.push.HeartBeat"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 71
    new-instance v4, Landroid/content/Intent;

    const-class v11, Lio/rong/push/PushService;

    invoke-direct {v4, p1, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 73
    .local v4, "heartbeatIntent":Landroid/content/Intent;
    const-string v11, "ACTION_HEARTBEAT"

    const-string v12, "Receive heartbeat action."

    invoke-static {p0, v11, v12}, Lio/rong/common/RLog;->i(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    invoke-virtual {v4, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 77
    invoke-static {p1, v4}, Lio/rong/push/PushReceiver;->startWakefulService(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    .line 79
    .end local v4    # "heartbeatIntent":Landroid/content/Intent;
    :cond_7
    const-string v11, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_10

    .line 80
    const/4 v8, -0x1

    .line 81
    .local v8, "temp_status":I
    const/4 v10, 0x0

    .line 82
    .local v10, "wifi_state":Landroid/net/NetworkInfo$State;
    const/4 v5, 0x0

    .line 84
    .local v5, "mobile_state":Landroid/net/NetworkInfo$State;
    const-string v11, "CONNECTIVITY_ACTION"

    const-string v12, "Receive the network change message start "

    invoke-static {p0, v11, v12}, Lio/rong/common/RLog;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    invoke-static {}, Lio/rong/push/PushContext;->getInstance()Lio/rong/push/PushContext;

    move-result-object v11

    if-nez v11, :cond_8

    .line 87
    const-string v11, "CONNECTIVITY_ACTION"

    const-string v12, "PushContext does not initialize!"

    invoke-static {p0, v11, v12}, Lio/rong/common/RLog;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 90
    :cond_8
    const-string v11, "CONNECTIVITY_ACTION"

    const-string v12, "Receive the network change message end"

    invoke-static {p0, v11, v12}, Lio/rong/common/RLog;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    const-string v11, "connectivity"

    invoke-virtual {p1, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 94
    .local v0, "ConnManager":Landroid/net/ConnectivityManager;
    const/4 v11, 0x1

    invoke-virtual {v0, v11}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v11

    if-nez v11, :cond_9

    .line 95
    const/4 v10, 0x0

    .line 99
    :goto_1
    const/4 v11, 0x0

    invoke-virtual {v0, v11}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v11

    if-nez v11, :cond_a

    .line 100
    const/4 v5, 0x0

    .line 104
    :goto_2
    if-eqz v10, :cond_b

    sget-object v11, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v10, v11, :cond_b

    .line 105
    const/4 v8, 0x2

    .line 106
    const-string v11, "STATUS_WIFI"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "mStatus is "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget v13, Lio/rong/push/PushReceiver;->mStastus:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ",the network has changed to be WIFI"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {p0, v11, v12}, Lio/rong/common/RLog;->i(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :goto_3
    sget v11, Lio/rong/push/PushReceiver;->mStastus:I

    if-eq v8, v11, :cond_f

    .line 116
    if-nez v8, :cond_d

    .line 117
    const-string v11, "STATUS_ERROR"

    const-string v12, "No network! Stop the heart beat!!"

    invoke-static {p0, v11, v12}, Lio/rong/common/RLog;->i(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    invoke-static {}, Lio/rong/push/PushContext;->getInstance()Lio/rong/push/PushContext;

    move-result-object v11

    invoke-virtual {v11}, Lio/rong/push/PushContext;->cancelHeartbeat()V

    .line 120
    new-instance v2, Landroid/content/Intent;

    const-class v11, Lio/rong/push/PushService;

    invoke-direct {v2, p1, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 121
    .restart local v2    # "connectIntent":Landroid/content/Intent;
    const-string v11, "io.rong.push.Disconnect"

    invoke-virtual {v2, v11}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 122
    invoke-static {p1, v2}, Lio/rong/push/PushReceiver;->startWakefulService(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 131
    .end local v2    # "connectIntent":Landroid/content/Intent;
    :goto_4
    const-string v11, "The network type has been changed."

    const-string v12, "Notify the service to re-connect"

    invoke-static {p0, v11, v12}, Lio/rong/common/RLog;->i(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :goto_5
    sput v8, Lio/rong/push/PushReceiver;->mStastus:I

    goto/16 :goto_0

    .line 97
    :cond_9
    const/4 v11, 0x1

    invoke-virtual {v0, v11}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v11

    invoke-virtual {v11}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v10

    goto :goto_1

    .line 102
    :cond_a
    const/4 v11, 0x0

    invoke-virtual {v0, v11}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v11

    invoke-virtual {v11}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v5

    goto :goto_2

    .line 107
    :cond_b
    if-eqz v5, :cond_c

    sget-object v11, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v5, v11, :cond_c

    .line 108
    const/4 v8, 0x1

    .line 109
    const-string v11, "STATUS_MOBILE"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "mStatus is "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget v13, Lio/rong/push/PushReceiver;->mStastus:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ",the network has changed to be MOBILE"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {p0, v11, v12}, Lio/rong/common/RLog;->i(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 111
    :cond_c
    const/4 v8, 0x0

    .line 112
    const-string v11, "STATUS_ERROR"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "mStatus is "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget v13, Lio/rong/push/PushReceiver;->mStastus:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ",the network has changed to be ERROR"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {p0, v11, v12}, Lio/rong/common/RLog;->i(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 125
    :cond_d
    invoke-static {}, Lio/rong/push/PushContext;->getInstance()Lio/rong/push/PushContext;

    move-result-object v11

    invoke-virtual {v11}, Lio/rong/push/PushContext;->validateNeedSyncVersion()Z

    move-result v11

    if-eqz v11, :cond_e

    .line 126
    invoke-static {}, Lio/rong/push/PushContext;->getInstance()Lio/rong/push/PushContext;

    move-result-object v11

    invoke-virtual {v11, p1}, Lio/rong/push/PushContext;->sendSyncVersionCommand(Landroid/content/Context;)V

    goto :goto_4

    .line 128
    :cond_e
    invoke-static {}, Lio/rong/push/PushContext;->getInstance()Lio/rong/push/PushContext;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, p1, v12}, Lio/rong/push/PushContext;->sendConnectCommand(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 133
    :cond_f
    const-string v11, "CONNECTIVITY_ACTION"

    const-string v12, "The network is same as before, do nothing!!"

    invoke-static {p0, v11, v12}, Lio/rong/common/RLog;->i(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 137
    .end local v0    # "ConnManager":Landroid/net/ConnectivityManager;
    .end local v5    # "mobile_state":Landroid/net/NetworkInfo$State;
    .end local v8    # "temp_status":I
    .end local v10    # "wifi_state":Landroid/net/NetworkInfo$State;
    :cond_10
    const-string v11, "io.rong.push.check_version"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_11

    .line 138
    new-instance v7, Landroid/content/Intent;

    const-class v11, Lio/rong/push/CommandService;

    invoke-direct {v7, p1, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 139
    .local v7, "syncIntent":Landroid/content/Intent;
    const-string v11, "io.rong.push.check_version"

    invoke-virtual {v7, v11}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 140
    invoke-static {p1, v7}, Lio/rong/push/PushReceiver;->startWakefulService(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    .line 141
    .end local v7    # "syncIntent":Landroid/content/Intent;
    :cond_11
    const-string v11, "android.intent.action.USER_PRESENT"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_12

    const-string v11, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_12

    const-string v11, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_13

    .line 143
    :cond_12
    const-string v11, "receiver."

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "receive action:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {p0, v11, v12}, Lio/rong/common/RLog;->i(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    invoke-static {}, Lio/rong/push/PushContext;->getInstance()Lio/rong/push/PushContext;

    move-result-object v11

    invoke-virtual {v11}, Lio/rong/push/PushContext;->isNewestVersion()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 145
    const-string v11, "USER_PRESENT.No push running.reconnect."

    const-string/jumbo v12, "reconnect"

    invoke-static {p0, v11, v12}, Lio/rong/common/RLog;->i(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    invoke-static {}, Lio/rong/push/PushContext;->getInstance()Lio/rong/push/PushContext;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, p1, v12}, Lio/rong/push/PushContext;->sendConnectCommand(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 148
    :cond_13
    const-string v11, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 149
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 150
    .local v6, "packageName":Ljava/lang/String;
    const-string v11, "ACTION"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "PACKAGE_REMOVED:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {p0, v11, v12}, Lio/rong/common/RLog;->i(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    invoke-static {}, Lio/rong/push/PushContext;->getInstance()Lio/rong/push/PushContext;

    move-result-object v11

    invoke-virtual {v11, v6}, Lio/rong/push/PushContext;->isRongApplication(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 152
    const-string v11, "ACTION_PACKAGE_REMOVED"

    const-string/jumbo v12, "the package removed is rong app, syncVersion"

    invoke-static {p0, v11, v12}, Lio/rong/common/RLog;->i(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    new-instance v7, Landroid/content/Intent;

    const-class v11, Lio/rong/push/CommandService;

    invoke-direct {v7, p1, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 154
    .restart local v7    # "syncIntent":Landroid/content/Intent;
    const-string v11, "io.rong.push.check_version"

    invoke-virtual {v7, v11}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 155
    invoke-static {p1, v7}, Lio/rong/push/PushReceiver;->startWakefulService(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0
.end method
