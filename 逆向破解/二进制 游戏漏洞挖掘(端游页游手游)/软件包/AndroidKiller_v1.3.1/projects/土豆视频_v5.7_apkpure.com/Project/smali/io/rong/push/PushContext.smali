.class public Lio/rong/push/PushContext;
.super Ljava/lang/Object;
.source "PushContext.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/rong/push/PushContext$ServiceConnectionListener;,
        Lio/rong/push/PushContext$Status;
    }
.end annotation


# static fields
.field static sS:Lio/rong/push/PushContext;


# instance fields
.field mContext:Landroid/content/Context;

.field mNewestVersion:Lio/rong/imlib/model/AppVersion;

.field mPackageValidateCode:I

.field mVersion:Lio/rong/imlib/model/AppVersion;

.field mVersionValidateCode:I

.field mWorkHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    new-instance v0, Lio/rong/push/PushContext;

    invoke-direct {v0}, Lio/rong/push/PushContext;-><init>()V

    sput-object v0, Lio/rong/push/PushContext;->sS:Lio/rong/push/PushContext;

    .line 63
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    return-void
.end method

.method public static getInstance()Lio/rong/push/PushContext;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lio/rong/push/PushContext;->sS:Lio/rong/push/PushContext;

    if-nez v0, :cond_0

    .line 67
    new-instance v0, Lio/rong/push/PushContext;

    invoke-direct {v0}, Lio/rong/push/PushContext;-><init>()V

    sput-object v0, Lio/rong/push/PushContext;->sS:Lio/rong/push/PushContext;

    .line 68
    :cond_0
    sget-object v0, Lio/rong/push/PushContext;->sS:Lio/rong/push/PushContext;

    return-object v0
.end method

.method private initValidateCode()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 106
    const/4 v7, 0x0

    .line 108
    .local v7, "versions":Ljava/util/List;, "Ljava/util/List<Lio/rong/imlib/model/AppVersion;>;"
    const/4 v8, 0x1

    :try_start_0
    new-array v3, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "APP_ID"

    aput-object v9, v3, v8

    .line 109
    .local v3, "params":[Ljava/lang/String;
    iget-object v8, p0, Lio/rong/push/PushContext;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lio/rong/push/DBHelper;->getInstance(Landroid/content/Context;)Lio/rong/push/DBHelper;

    move-result-object v8

    const-string v9, "ASC"

    invoke-virtual {v8, v3, v9}, Lio/rong/push/DBHelper;->order([Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 114
    .end local v3    # "params":[Ljava/lang/String;
    :goto_0
    if-eqz v7, :cond_0

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_1

    .line 137
    :cond_0
    :goto_1
    return-void

    .line 110
    :catch_0
    move-exception v1

    .line 111
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 118
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 119
    .local v0, "builder":Ljava/lang/StringBuilder;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 121
    .local v5, "versionBuilder":Ljava/lang/StringBuilder;
    const-string v9, "PushContext"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "version size is:"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v10, "the first version name:"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lio/rong/imlib/model/AppVersion;

    invoke-virtual {v8}, Lio/rong/imlib/model/AppVersion;->getAppId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/rong/imlib/model/AppVersion;

    .line 123
    .local v4, "version":Lio/rong/imlib/model/AppVersion;
    const-string v8, "PushContext"

    const-string/jumbo v9, "version======"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    const-string v8, "initValidateCode"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "appId is:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Lio/rong/imlib/model/AppVersion;->getAppId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " app version code:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Lio/rong/imlib/model/AppVersion;->getAppVersionCode()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {p0, v8, v9}, Lio/rong/common/RLog;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    invoke-virtual {v4}, Lio/rong/imlib/model/AppVersion;->getAppId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    invoke-virtual {v4}, Lio/rong/imlib/model/AppVersion;->getAppVersionCode()I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 129
    .end local v4    # "version":Lio/rong/imlib/model/AppVersion;
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v8

    iput v8, p0, Lio/rong/push/PushContext;->mPackageValidateCode:I

    .line 130
    const-string v8, "initValidateCode"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mPackageValidateCode is:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lio/rong/push/PushContext;->mPackageValidateCode:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {p0, v8, v9}, Lio/rong/common/RLog;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v8

    iput v8, p0, Lio/rong/push/PushContext;->mVersionValidateCode:I

    .line 133
    const/4 v8, 0x3

    new-array v3, v8, [Ljava/lang/String;

    const-string v8, "PUSH_VERSION_CODE"

    aput-object v8, v3, v11

    const-string v8, "SDKVERSION_CODE"

    aput-object v8, v3, v12

    const/4 v8, 0x2

    const-string v9, "APP_ID"

    aput-object v9, v3, v8

    .line 134
    .restart local v3    # "params":[Ljava/lang/String;
    iget-object v8, p0, Lio/rong/push/PushContext;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lio/rong/push/DBHelper;->getInstance(Landroid/content/Context;)Lio/rong/push/DBHelper;

    move-result-object v8

    const-string v9, "DESC"

    invoke-virtual {v8, v3, v9}, Lio/rong/push/DBHelper;->order([Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 135
    .local v6, "versionList":Ljava/util/List;, "Ljava/util/List<Lio/rong/imlib/model/AppVersion;>;"
    if-eqz v6, :cond_0

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-eqz v8, :cond_0

    .line 136
    invoke-interface {v6, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lio/rong/imlib/model/AppVersion;

    iput-object v8, p0, Lio/rong/push/PushContext;->mNewestVersion:Lio/rong/imlib/model/AppVersion;

    goto/16 :goto_1
.end method

.method private saveDeviceId(Ljava/lang/String;)V
    .locals 5
    .param p1, "deviceId"    # Ljava/lang/String;

    .prologue
    .line 468
    iget-object v2, p0, Lio/rong/push/PushContext;->mContext:Landroid/content/Context;

    const-string v3, "RongPush"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 469
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 470
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "deviceId"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 471
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 472
    return-void
.end method


# virtual methods
.method public cancelHeartbeat()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 235
    new-instance v0, Landroid/content/Intent;

    iget-object v3, p0, Lio/rong/push/PushContext;->mContext:Landroid/content/Context;

    const-class v4, Lio/rong/push/PushReceiver;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 238
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "Heartbeat"

    const-string v4, "cancel"

    invoke-static {p0, v3, v4}, Lio/rong/common/RLog;->i(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    iget-object v3, p0, Lio/rong/push/PushContext;->mContext:Landroid/content/Context;

    const-string v4, "alarm"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    .line 241
    .local v1, "mAlarmMng":Landroid/app/AlarmManager;
    const-string v3, "io.rong.push.HeartBeat"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 242
    iget-object v3, p0, Lio/rong/push/PushContext;->mContext:Landroid/content/Context;

    invoke-static {v3, v5, v0, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 244
    .local v2, "mPendingIntent":Landroid/app/PendingIntent;
    invoke-virtual {v1, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 245
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lio/rong/push/PushContext;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getCurrentVersion()Lio/rong/imlib/model/AppVersion;
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lio/rong/push/PushContext;->mVersion:Lio/rong/imlib/model/AppVersion;

    return-object v0
.end method

.method public getNewestVersion()Lio/rong/imlib/model/AppVersion;
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lio/rong/push/PushContext;->mNewestVersion:Lio/rong/imlib/model/AppVersion;

    return-object v0
.end method

.method public getPackageValidateCode()I
    .locals 1

    .prologue
    .line 141
    iget v0, p0, Lio/rong/push/PushContext;->mPackageValidateCode:I

    return v0
.end method

.method public getRunningPushServiceVersion()Lio/rong/imlib/model/AppVersion;
    .locals 9

    .prologue
    const/4 v5, 0x0

    .line 348
    iget-object v6, p0, Lio/rong/push/PushContext;->mContext:Landroid/content/Context;

    const-string v7, "activity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    .line 349
    .local v2, "manager":Landroid/app/ActivityManager;
    const v6, 0x7fffffff

    invoke-virtual {v2, v6}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v3

    .line 351
    .local v3, "runningServiceInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    if-nez v3, :cond_1

    move-object v4, v5

    .line 370
    :cond_0
    :goto_0
    return-object v4

    .line 354
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 355
    .local v1, "info":Landroid/app/ActivityManager$RunningServiceInfo;
    iget-object v6, v1, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lio/rong/push/PushContext;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 358
    iget-object v6, v1, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    const-class v7, Lio/rong/push/PushService;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 359
    const-string v6, "RUNNING_PUSH"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v1, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v1, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v6, v7}, Lio/rong/common/RLog;->i(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    iget-object v6, p0, Lio/rong/push/PushContext;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lio/rong/push/DBHelper;->getInstance(Landroid/content/Context;)Lio/rong/push/DBHelper;

    move-result-object v6

    const-string v7, "APP_ID"

    iget-object v8, v1, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lio/rong/push/DBHelper;->query(Ljava/lang/String;Ljava/lang/String;)Lio/rong/imlib/model/AppVersion;

    move-result-object v4

    .line 361
    .local v4, "version":Lio/rong/imlib/model/AppVersion;
    if-nez v4, :cond_0

    .line 362
    const-string v6, "RUNNING_PUSH"

    const-string v7, "Error case. Stop the running service !!!!"

    invoke-static {p0, v6, v7}, Lio/rong/common/RLog;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    iget v6, v1, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    invoke-static {v6}, Landroid/os/Process;->killProcess(I)V

    move-object v4, v5

    .line 364
    goto :goto_0

    .end local v1    # "info":Landroid/app/ActivityManager$RunningServiceInfo;
    .end local v4    # "version":Lio/rong/imlib/model/AppVersion;
    :cond_3
    move-object v4, v5

    .line 370
    goto :goto_0
.end method

.method public getVersionValidateCode()I
    .locals 1

    .prologue
    .line 145
    iget v0, p0, Lio/rong/push/PushContext;->mVersionValidateCode:I

    return v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 6
    .param p1, "base"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 72
    iput-object p1, p0, Lio/rong/push/PushContext;->mContext:Landroid/content/Context;

    .line 73
    new-instance v1, Landroid/os/HandlerThread;

    const-string v3, "IPCHandler"

    invoke-direct {v1, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 74
    .local v1, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 75
    new-instance v3, Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v3, p0, Lio/rong/push/PushContext;->mWorkHandler:Landroid/os/Handler;

    .line 76
    const-string v3, "PushContext"

    const-string v4, "init"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    :try_start_0
    new-instance v3, Lio/rong/imlib/model/AppVersion;

    invoke-direct {v3, p1}, Lio/rong/imlib/model/AppVersion;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lio/rong/push/PushContext;->mVersion:Lio/rong/imlib/model/AppVersion;

    .line 80
    invoke-static {p1}, Lio/rong/push/DBHelper;->getInstance(Landroid/content/Context;)Lio/rong/push/DBHelper;

    move-result-object v3

    iget-object v4, p0, Lio/rong/push/PushContext;->mVersion:Lio/rong/imlib/model/AppVersion;

    invoke-virtual {v3, v4}, Lio/rong/push/DBHelper;->insertOrReplace(Lio/rong/imlib/model/AppVersion;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    :goto_0
    invoke-direct {p0}, Lio/rong/push/PushContext;->initValidateCode()V

    .line 86
    invoke-virtual {p0}, Lio/rong/push/PushContext;->validateNeedSyncVersion()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 87
    iget-object v3, p0, Lio/rong/push/PushContext;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v3}, Lio/rong/push/PushContext;->sendSyncVersionCommand(Landroid/content/Context;)V

    .line 95
    :cond_0
    :goto_1
    return-void

    .line 81
    :catch_0
    move-exception v0

    .line 82
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "init"

    invoke-static {p0, v3, v0}, Lio/rong/common/RLog;->w(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 88
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    invoke-virtual {p0}, Lio/rong/push/PushContext;->isNewestVersion()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lio/rong/push/PushContext;->validateNetworkEnable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 89
    invoke-virtual {p0}, Lio/rong/push/PushContext;->getRunningPushServiceVersion()Lio/rong/imlib/model/AppVersion;

    move-result-object v2

    .line 90
    .local v2, "version":Lio/rong/imlib/model/AppVersion;
    if-nez v2, :cond_2

    .line 91
    iget-object v3, p0, Lio/rong/push/PushContext;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v3, v5}, Lio/rong/push/PushContext;->sendConnectCommand(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 92
    :cond_2
    invoke-virtual {p0}, Lio/rong/push/PushContext;->getCurrentVersion()Lio/rong/imlib/model/AppVersion;

    move-result-object v3

    invoke-virtual {v3}, Lio/rong/imlib/model/AppVersion;->getPushVersionCode()I

    move-result v3

    invoke-virtual {v2}, Lio/rong/imlib/model/AppVersion;->getPushVersionCode()I

    move-result v4

    if-le v3, v4, :cond_0

    .line 93
    iget-object v3, p0, Lio/rong/push/PushContext;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v3, v5}, Lio/rong/push/PushContext;->sendConnectCommand(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public isNewestVersion()Z
    .locals 2

    .prologue
    .line 335
    iget-object v0, p0, Lio/rong/push/PushContext;->mVersion:Lio/rong/imlib/model/AppVersion;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/rong/push/PushContext;->mNewestVersion:Lio/rong/imlib/model/AppVersion;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/rong/push/PushContext;->mVersion:Lio/rong/imlib/model/AppVersion;

    invoke-virtual {v0}, Lio/rong/imlib/model/AppVersion;->getPushVersionCode()I

    move-result v0

    iget-object v1, p0, Lio/rong/push/PushContext;->mNewestVersion:Lio/rong/imlib/model/AppVersion;

    invoke-virtual {v1}, Lio/rong/imlib/model/AppVersion;->getPushVersionCode()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 336
    const-string v0, "isNewestVersion"

    const-string/jumbo v1, "return true."

    invoke-static {p0, v0, v1}, Lio/rong/common/RLog;->i(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    const/4 v0, 0x1

    .line 340
    :goto_0
    return v0

    .line 339
    :cond_0
    const-string v0, "isNewestVersion"

    const-string/jumbo v1, "return false."

    invoke-static {p0, v0, v1}, Lio/rong/common/RLog;->i(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPackageUninstalled(Ljava/lang/String;)Z
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 475
    iget-object v5, p0, Lio/rong/push/PushContext;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 476
    .local v3, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v2

    .line 478
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    .line 479
    .local v0, "i":Landroid/content/pm/PackageInfo;
    iget-object v5, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 482
    .end local v0    # "i":Landroid/content/pm/PackageInfo;
    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public isPushRunning()Z
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 486
    iget-object v5, p0, Lio/rong/push/PushContext;->mContext:Landroid/content/Context;

    const-string v6, "activity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    .line 487
    .local v2, "manager":Landroid/app/ActivityManager;
    const v5, 0x7fffffff

    invoke-virtual {v2, v5}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v3

    .line 489
    .local v3, "serviceInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    if-nez v3, :cond_0

    .line 490
    const-string v5, "isPushRunning"

    const-string v6, "null.return false ."

    invoke-static {p0, v5, v6}, Lio/rong/common/RLog;->i(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    :goto_0
    return v4

    .line 494
    :cond_0
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 495
    .local v1, "info":Landroid/app/ActivityManager$RunningServiceInfo;
    iget-object v5, v1, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    const-class v6, Lio/rong/push/PushService;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 496
    const-string v4, "isPushRunning"

    const-string/jumbo v5, "return true."

    invoke-static {p0, v4, v5}, Lio/rong/common/RLog;->i(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    const/4 v4, 0x1

    goto :goto_0

    .line 500
    .end local v1    # "info":Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_2
    const-string v5, "isPushRunning"

    const-string/jumbo v6, "return false."

    invoke-static {p0, v5, v6}, Lio/rong/common/RLog;->i(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isRongApplication(Ljava/lang/String;)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 505
    iget-object v3, p0, Lio/rong/push/PushContext;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_1

    .line 506
    iget-object v3, p0, Lio/rong/push/PushContext;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lio/rong/push/DBHelper;->getInstance(Landroid/content/Context;)Lio/rong/push/DBHelper;

    move-result-object v3

    invoke-virtual {v3}, Lio/rong/push/DBHelper;->queryAll()Ljava/util/List;

    move-result-object v2

    .line 507
    .local v2, "versions":Ljava/util/List;, "Ljava/util/List<Lio/rong/imlib/model/AppVersion;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/rong/imlib/model/AppVersion;

    .line 508
    .local v1, "temp":Lio/rong/imlib/model/AppVersion;
    invoke-virtual {v1}, Lio/rong/imlib/model/AppVersion;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 509
    const/4 v3, 0x1

    .line 513
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "temp":Lio/rong/imlib/model/AppVersion;
    .end local v2    # "versions":Ljava/util/List;, "Ljava/util/List<Lio/rong/imlib/model/AppVersion;>;"
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public sendConnectCommand(Landroid/content/Context;Ljava/lang/String;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 390
    new-instance v1, Landroid/content/Intent;

    iget-object v4, p0, Lio/rong/push/PushContext;->mContext:Landroid/content/Context;

    const-class v5, Lio/rong/push/PushReceiver;

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 391
    .local v1, "intent":Landroid/content/Intent;
    const-string v4, "io.rong.push.Connect"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 392
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v1, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 393
    invoke-static {p1, v6, v1, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 395
    .local v2, "pendingIntent":Landroid/app/PendingIntent;
    const-string v4, "alarm"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 397
    .local v0, "alarmManager":Landroid/app/AlarmManager;
    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 399
    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    const/16 v5, 0x32

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    mul-int/lit8 v3, v4, 0x64

    .line 401
    .local v3, "random":I
    const/4 v4, 0x3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    int-to-long v8, v3

    add-long/2addr v6, v8

    invoke-virtual {v0, v4, v6, v7, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 402
    const-string/jumbo v4, "sendConnectCommand"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v4, v5}, Lio/rong/common/RLog;->i(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    return-void

    .line 392
    .end local v0    # "alarmManager":Landroid/app/AlarmManager;
    .end local v2    # "pendingIntent":Landroid/app/PendingIntent;
    .end local v3    # "random":I
    :cond_0
    iget-object v4, p0, Lio/rong/push/PushContext;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public sendSyncVersionCommand(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    .line 374
    new-instance v1, Landroid/content/Intent;

    iget-object v4, p0, Lio/rong/push/PushContext;->mContext:Landroid/content/Context;

    const-class v5, Lio/rong/push/PushReceiver;

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 375
    .local v1, "intent":Landroid/content/Intent;
    const-string v4, "io.rong.push.check_version"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 376
    iget-object v4, p0, Lio/rong/push/PushContext;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 377
    invoke-static {p1, v6, v1, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 379
    .local v2, "pendingIntent":Landroid/app/PendingIntent;
    const-string v4, "alarm"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 381
    .local v0, "alarmManager":Landroid/app/AlarmManager;
    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 383
    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    const/16 v5, 0x32

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    mul-int/lit8 v3, v4, 0x64

    .line 385
    .local v3, "random":I
    const/4 v4, 0x3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    int-to-long v8, v3

    add-long/2addr v6, v8

    invoke-virtual {v0, v4, v6, v7, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 386
    const-string/jumbo v4, "sendSyncVersionCommand"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v4, v5}, Lio/rong/common/RLog;->i(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 102
    iput-object p1, p0, Lio/rong/push/PushContext;->mContext:Landroid/content/Context;

    .line 103
    return-void
.end method

.method public startNextHeartbeat(J)V
    .locals 11
    .param p1, "nextIntervalMillis"    # J

    .prologue
    const/4 v10, 0x3

    const/4 v8, 0x0

    .line 206
    new-instance v2, Landroid/content/Intent;

    iget-object v6, p0, Lio/rong/push/PushContext;->mContext:Landroid/content/Context;

    const-class v7, Lio/rong/push/PushReceiver;

    invoke-direct {v2, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 209
    .local v2, "intent":Landroid/content/Intent;
    const-string v6, "PushContext"

    const-string/jumbo v7, "startNextHeartbeat"

    invoke-static {p0, v6, v7}, Lio/rong/common/RLog;->i(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    iget-object v6, p0, Lio/rong/push/PushContext;->mContext:Landroid/content/Context;

    const-string v7, "alarm"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AlarmManager;

    .line 212
    .local v3, "mAlarmMng":Landroid/app/AlarmManager;
    const-string v6, "io.rong.push.HeartBeat"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 213
    iget-object v6, p0, Lio/rong/push/PushContext;->mContext:Landroid/content/Context;

    invoke-static {v6, v8, v2, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 215
    .local v4, "mPendingIntent":Landroid/app/PendingIntent;
    invoke-virtual {v3, v4}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 218
    :try_start_0
    const-class v0, Landroid/app/AlarmManager;

    .line 219
    .local v0, "classType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v6, "setExactAndAllowWhileIdle"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    sget-object v9, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const-class v9, Landroid/app/PendingIntent;

    aput-object v9, v7, v8

    invoke-virtual {v0, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 220
    .local v5, "method":Ljava/lang/reflect/Method;
    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const/4 v8, 0x3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    add-long/2addr v8, p1

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    aput-object v4, v6, v7

    invoke-virtual {v5, v3, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    .end local v0    # "classType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 221
    :catch_0
    move-exception v1

    .line 222
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    add-long/2addr v6, p1

    invoke-virtual {v3, v10, v6, v7, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method public syncVersion()V
    .locals 24

    .prologue
    .line 250
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lio/rong/push/PushContext;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_0

    .line 251
    new-instance v19, Ljava/lang/RuntimeException;

    const-string v20, "CheckEnv Cannot Run at mainThread"

    invoke-direct/range {v19 .. v20}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 253
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/rong/push/PushContext;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lio/rong/push/DBHelper;->getInstance(Landroid/content/Context;)Lio/rong/push/DBHelper;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lio/rong/push/DBHelper;->queryAll()Ljava/util/List;

    move-result-object v18

    .line 255
    .local v18, "versions":Ljava/util/List;, "Ljava/util/List<Lio/rong/imlib/model/AppVersion;>;"
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v19

    if-nez v19, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lio/rong/push/PushContext;->mVersion:Lio/rong/imlib/model/AppVersion;

    move-object/from16 v19, v0

    if-eqz v19, :cond_1

    .line 256
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/rong/push/PushContext;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lio/rong/push/DBHelper;->getInstance(Landroid/content/Context;)Lio/rong/push/DBHelper;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lio/rong/push/PushContext;->mVersion:Lio/rong/imlib/model/AppVersion;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lio/rong/push/DBHelper;->insertOrReplace(Lio/rong/imlib/model/AppVersion;)V

    .line 259
    :cond_1
    new-instance v17, Ljava/util/HashMap;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashMap;-><init>()V

    .line 260
    .local v17, "versionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lio/rong/imlib/model/AppVersion;>;"
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lio/rong/imlib/model/AppVersion;

    .line 261
    .local v13, "item":Lio/rong/imlib/model/AppVersion;
    invoke-virtual {v13}, Lio/rong/imlib/model/AppVersion;->getAppId()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-interface {v0, v1, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 264
    .end local v13    # "item":Lio/rong/imlib/model/AppVersion;
    :cond_2
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 265
    .local v11, "infoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/rong/push/PushContext;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    .line 266
    .local v15, "packageManager":Landroid/content/pm/PackageManager;
    new-instance v5, Landroid/content/Intent;

    const-string v19, "io.rong.command"

    move-object/from16 v0, v19

    invoke-direct {v5, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 267
    .local v5, "checkIntent":Landroid/content/Intent;
    const/16 v19, 0x40

    move/from16 v0, v19

    invoke-virtual {v15, v5, v0}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v12

    .line 269
    .local v12, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ResolveInfo;

    .line 271
    .local v10, "info":Landroid/content/pm/ResolveInfo;
    :try_start_0
    iget-object v0, v10, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x80

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v15, v0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 272
    .local v4, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v0, v10, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v15, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v14

    .line 274
    .local v14, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v0, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_4

    .line 275
    iget-object v0, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lio/rong/imlib/model/AppVersion;

    .line 276
    .local v16, "version":Lio/rong/imlib/model/AppVersion;
    invoke-virtual/range {v16 .. v16}, Lio/rong/imlib/model/AppVersion;->getAppVersionCode()I

    move-result v19

    iget v0, v14, Landroid/content/pm/PackageInfo;->versionCode:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_3

    .line 277
    invoke-interface {v11, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 279
    :cond_3
    iget-object v0, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 286
    .end local v4    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v14    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v16    # "version":Lio/rong/imlib/model/AppVersion;
    :goto_2
    const-string v19, "Push_Sync"

    iget-object v0, v10, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Lio/rong/common/RLog;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 281
    .restart local v4    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v14    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_4
    :try_start_1
    invoke-interface {v11, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 283
    .end local v4    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v14    # "packageInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v8

    .line 284
    .local v8, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v8}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_2

    .line 289
    .end local v8    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v10    # "info":Landroid/content/pm/ResolveInfo;
    :cond_5
    const-string v19, "PushContext"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "size is:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v19

    if-lez v19, :cond_7

    .line 291
    new-instance v7, Ljava/util/concurrent/CountDownLatch;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v19

    move/from16 v0, v19

    invoke-direct {v7, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 293
    .local v7, "count":Ljava/util/concurrent/CountDownLatch;
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ApplicationInfo;

    .line 294
    .local v10, "info":Landroid/content/pm/ApplicationInfo;
    const-string v19, "SYNC-BIND"

    iget-object v0, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Lio/rong/common/RLog;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    new-instance v6, Landroid/content/Intent;

    const-string v19, "io.rong.command"

    move-object/from16 v0, v19

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 296
    .local v6, "commandService":Landroid/content/Intent;
    iget-object v0, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 301
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/rong/push/PushContext;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    new-instance v20, Lio/rong/push/PushContext$ServiceConnectionListener;

    iget-object v0, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2, v7}, Lio/rong/push/PushContext$ServiceConnectionListener;-><init>(Lio/rong/push/PushContext;Ljava/lang/String;Ljava/util/concurrent/CountDownLatch;)V

    const/16 v21, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v6, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/content/ReceiverCallNotAllowedException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    .line 302
    :catch_1
    move-exception v8

    .line 303
    .local v8, "e":Ljava/lang/SecurityException;
    invoke-virtual {v7}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 304
    invoke-virtual {v8}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_3

    .line 305
    .end local v8    # "e":Ljava/lang/SecurityException;
    :catch_2
    move-exception v8

    .line 306
    .local v8, "e":Landroid/content/ReceiverCallNotAllowedException;
    invoke-virtual {v7}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_3

    .line 310
    .end local v6    # "commandService":Landroid/content/Intent;
    .end local v8    # "e":Landroid/content/ReceiverCallNotAllowedException;
    .end local v10    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_6
    :try_start_3
    invoke-virtual {v7}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v20

    const-wide/16 v22, 0x0

    cmp-long v19, v20, v22

    if-lez v19, :cond_7

    .line 311
    invoke-virtual {v7}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_3

    .line 317
    .end local v7    # "count":Ljava/util/concurrent/CountDownLatch;
    :cond_7
    :goto_4
    const-string v19, "PushContext"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "size is:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-interface/range {v17 .. v17}, Ljava/util/Map;->size()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    invoke-interface/range {v17 .. v17}, Ljava/util/Map;->size()I

    move-result v19

    if-lez v19, :cond_8

    .line 319
    invoke-interface/range {v17 .. v17}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_8

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lio/rong/imlib/model/AppVersion;

    .line 320
    .restart local v16    # "version":Lio/rong/imlib/model/AppVersion;
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/rong/push/PushContext;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lio/rong/push/DBHelper;->getInstance(Landroid/content/Context;)Lio/rong/push/DBHelper;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lio/rong/push/DBHelper;->delete(Lio/rong/imlib/model/AppVersion;)V

    goto :goto_5

    .line 312
    .end local v16    # "version":Lio/rong/imlib/model/AppVersion;
    .restart local v7    # "count":Ljava/util/concurrent/CountDownLatch;
    :catch_3
    move-exception v8

    .line 313
    .local v8, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v8}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_4

    .line 324
    .end local v7    # "count":Ljava/util/concurrent/CountDownLatch;
    .end local v8    # "e":Ljava/lang/InterruptedException;
    :cond_8
    invoke-direct/range {p0 .. p0}, Lio/rong/push/PushContext;->initValidateCode()V

    .line 326
    return-void
.end method

.method public validateNeedSyncVersion()Z
    .locals 14

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 407
    iget-object v11, p0, Lio/rong/push/PushContext;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 409
    .local v7, "packageManager":Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/Intent;

    const-string v11, "io.rong.command"

    invoke-direct {v1, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 412
    .local v1, "checkIntent":Landroid/content/Intent;
    const/16 v11, 0x40

    invoke-virtual {v7, v1, v11}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    .line 414
    .local v5, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v11, Lio/rong/push/PushContext$1;

    invoke-direct {v11, p0}, Lio/rong/push/PushContext$1;-><init>(Lio/rong/push/PushContext;)V

    invoke-static {v5, v11}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 423
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 425
    .local v8, "stringBuilder":Ljava/lang/StringBuilder;
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 426
    .local v4, "info":Landroid/content/pm/ResolveInfo;
    iget-object v11, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v11, v11, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 428
    .end local v4    # "info":Landroid/content/pm/ResolveInfo;
    :cond_0
    const-string/jumbo v11, "validateNeedSyncVersion"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "getPackageValidateCode is:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {p0}, Lio/rong/push/PushContext;->getPackageValidateCode()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "current package code in system:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->hashCode()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    invoke-virtual {p0}, Lio/rong/push/PushContext;->getPackageValidateCode()I

    move-result v11

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->hashCode()I

    move-result v12

    if-eq v11, v12, :cond_2

    .line 451
    :cond_1
    :goto_1
    return v9

    .line 432
    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    .end local v8    # "stringBuilder":Ljava/lang/StringBuilder;
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 434
    .restart local v8    # "stringBuilder":Ljava/lang/StringBuilder;
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 437
    .restart local v4    # "info":Landroid/content/pm/ResolveInfo;
    :try_start_0
    iget-object v11, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v11, v11, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    const/16 v12, 0x80

    invoke-virtual {v7, v11, v12}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 438
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v11, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v11, v11, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    const/4 v12, 0x0

    invoke-virtual {v7, v11, v12}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    .line 440
    .local v6, "packageInfo":Landroid/content/pm/PackageInfo;
    iget v11, v6, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 442
    .end local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v6    # "packageInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v2

    .line 443
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_2

    .line 447
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v4    # "info":Landroid/content/pm/ResolveInfo;
    :cond_3
    const-string/jumbo v11, "validateNeedSyncVersion"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "getVersionValidateCode is:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {p0}, Lio/rong/push/PushContext;->getVersionValidateCode()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "current version code in system:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->hashCode()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    invoke-virtual {p0}, Lio/rong/push/PushContext;->getVersionValidateCode()I

    move-result v11

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->hashCode()I

    move-result v12

    if-ne v11, v12, :cond_1

    move v9, v10

    .line 451
    goto :goto_1
.end method

.method public validateNetworkEnable()Z
    .locals 4

    .prologue
    .line 455
    iget-object v2, p0, Lio/rong/push/PushContext;->mContext:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 456
    .local v0, "connectivity":Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_0

    .line 457
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 458
    .local v1, "info":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 459
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v2, v3, :cond_0

    .line 460
    const/4 v2, 0x1

    .line 464
    .end local v1    # "info":Landroid/net/NetworkInfo;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
