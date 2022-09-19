.class public Lcom/youku/gamecenter/statistics/InstallStatisticHelper;
.super Landroid/content/BroadcastReceiver;
.source "InstallStatisticHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/gamecenter/statistics/InstallStatisticHelper$TrackMessage;,
        Lcom/youku/gamecenter/statistics/InstallStatisticHelper$MyRunnable;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Statistics"

.field private static final TWO_MINS:I = 0x1d4c0

.field private static sInstance:Lcom/youku/gamecenter/statistics/InstallStatisticHelper;


# instance fields
.field private mData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/youku/gamecenter/statistics/InstallStatisticHelper$TrackMessage;",
            ">;"
        }
    .end annotation
.end field

.field private mIsRegistered:Z


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/youku/gamecenter/statistics/InstallStatisticHelper;->mData:Ljava/util/HashMap;

    .line 30
    const-string v0, "instance"

    const-string v1, "InstallStatisticHelper()"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method static synthetic access$000(Lcom/youku/gamecenter/statistics/InstallStatisticHelper;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/gamecenter/statistics/InstallStatisticHelper;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/youku/gamecenter/statistics/InstallStatisticHelper;->cancelAppInstallEnd(Ljava/lang/String;)V

    return-void
.end method

.method private declared-synchronized addMessage(Ljava/lang/String;Lcom/youku/gamecenter/statistics/InstallStatisticHelper$TrackMessage;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "message"    # Lcom/youku/gamecenter/statistics/InstallStatisticHelper$TrackMessage;

    .prologue
    .line 158
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/youku/gamecenter/statistics/InstallStatisticHelper;->mData:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    const-string v0, "Statistics"

    const-string v1, "addMessage , same message have not done!"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    :goto_0
    monitor-exit p0

    return-void

    .line 162
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/youku/gamecenter/statistics/InstallStatisticHelper;->mData:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 158
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private cancelAppInstallEnd(Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 153
    const-string v0, "Statistics"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancel AppInstallEnd "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    invoke-direct {p0, p1}, Lcom/youku/gamecenter/statistics/InstallStatisticHelper;->removeMessage(Ljava/lang/String;)V

    .line 155
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/youku/gamecenter/statistics/InstallStatisticHelper;
    .locals 2

    .prologue
    .line 34
    const-class v1, Lcom/youku/gamecenter/statistics/InstallStatisticHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/youku/gamecenter/statistics/InstallStatisticHelper;->sInstance:Lcom/youku/gamecenter/statistics/InstallStatisticHelper;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Lcom/youku/gamecenter/statistics/InstallStatisticHelper;

    invoke-direct {v0}, Lcom/youku/gamecenter/statistics/InstallStatisticHelper;-><init>()V

    sput-object v0, Lcom/youku/gamecenter/statistics/InstallStatisticHelper;->sInstance:Lcom/youku/gamecenter/statistics/InstallStatisticHelper;

    .line 37
    :cond_0
    sget-object v0, Lcom/youku/gamecenter/statistics/InstallStatisticHelper;->sInstance:Lcom/youku/gamecenter/statistics/InstallStatisticHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 34
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private notifyCancelLater(Ljava/lang/String;Lcom/youku/gamecenter/statistics/InstallStatisticHelper$TrackMessage;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "message"    # Lcom/youku/gamecenter/statistics/InstallStatisticHelper$TrackMessage;

    .prologue
    .line 115
    new-instance v0, Lcom/youku/gamecenter/statistics/InstallStatisticHelper$MyRunnable;

    invoke-direct {v0, p0, p1}, Lcom/youku/gamecenter/statistics/InstallStatisticHelper$MyRunnable;-><init>(Lcom/youku/gamecenter/statistics/InstallStatisticHelper;Ljava/lang/String;)V

    .line 117
    .local v0, "runnable":Lcom/youku/gamecenter/statistics/InstallStatisticHelper$MyRunnable;
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    const-wide/32 v2, 0x1d4c0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 119
    invoke-direct {p0, p1, p2}, Lcom/youku/gamecenter/statistics/InstallStatisticHelper;->addMessage(Ljava/lang/String;Lcom/youku/gamecenter/statistics/InstallStatisticHelper$TrackMessage;)V

    .line 120
    return-void
.end method

.method private registerPackageAddedReceiver1stTime(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 101
    iget-boolean v1, p0, Lcom/youku/gamecenter/statistics/InstallStatisticHelper;->mIsRegistered:Z

    if-eqz v1, :cond_0

    .line 111
    :goto_0
    return-void

    .line 105
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 106
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 110
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/youku/gamecenter/statistics/InstallStatisticHelper;->mIsRegistered:Z

    goto :goto_0
.end method

.method private declared-synchronized removeMessage(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 166
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/youku/gamecenter/statistics/InstallStatisticHelper;->mData:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    monitor-exit p0

    return-void

    .line 166
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private sendTrack(Landroid/content/Context;Lcom/youku/gamecenter/statistics/InstallStatisticHelper$TrackMessage;I)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "message"    # Lcom/youku/gamecenter/statistics/InstallStatisticHelper$TrackMessage;
    .param p3, "type"    # I

    .prologue
    const/4 v6, 0x0

    .line 129
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 131
    .local v0, "appContext":Landroid/content/Context;
    sget-object v4, Lcom/youku/gamecenter/services/URLContainer;->DOWNLOAD_STATISTICS:Ljava/lang/String;

    invoke-static {v0, v4, v6}, Lcom/youku/gamecenter/statistics/GameTrack;->setBaseParam(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    .line 134
    .local v3, "url":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&gameid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p2, Lcom/youku/gamecenter/statistics/InstallStatisticHelper$TrackMessage;->id:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&type="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 135
    iget-object v4, p2, Lcom/youku/gamecenter/statistics/InstallStatisticHelper$TrackMessage;->uid:Ljava/lang/String;

    invoke-static {v4}, Lcom/youku/gamecenter/util/CommonUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 136
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p2, Lcom/youku/gamecenter/statistics/InstallStatisticHelper$TrackMessage;->uid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 138
    :cond_0
    iget-object v4, p2, Lcom/youku/gamecenter/statistics/InstallStatisticHelper$TrackMessage;->ytidAndUsernameAndVip:Ljava/lang/String;

    invoke-static {v4}, Lcom/youku/gamecenter/util/CommonUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 139
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p2, Lcom/youku/gamecenter/statistics/InstallStatisticHelper$TrackMessage;->ytidAndUsernameAndVip:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 142
    :cond_1
    new-instance v2, Lcom/youku/gamecenter/statistics/GameStatisticsTask;

    invoke-direct {v2, v3, v0}, Lcom/youku/gamecenter/statistics/GameStatisticsTask;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    .line 144
    .local v2, "statistics":Lcom/youku/gamecenter/statistics/GameStatisticsTask;
    new-array v4, v6, [Ljava/lang/Void;

    invoke-virtual {v2, v4}, Lcom/youku/gamecenter/statistics/GameStatisticsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 146
    const/4 v4, 0x2

    if-ne p3, v4, :cond_2

    const-string/jumbo v1, "start"

    .line 148
    .local v1, "desc":Ljava/lang/String;
    :goto_0
    const-string v4, "Statistics"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "install sended"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    return-void

    .line 146
    .end local v1    # "desc":Ljava/lang/String;
    :cond_2
    const-string v1, "end"

    goto :goto_0
.end method

.method private sendTrackStart(Landroid/content/Context;Lcom/youku/gamecenter/statistics/InstallStatisticHelper$TrackMessage;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "message"    # Lcom/youku/gamecenter/statistics/InstallStatisticHelper$TrackMessage;

    .prologue
    .line 123
    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, v0}, Lcom/youku/gamecenter/statistics/InstallStatisticHelper;->sendTrack(Landroid/content/Context;Lcom/youku/gamecenter/statistics/InstallStatisticHelper$TrackMessage;I)V

    .line 125
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 68
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, "action":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    if-nez v2, :cond_1

    .line 85
    :cond_0
    :goto_0
    return-void

    .line 73
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    .line 74
    .local v1, "packageName":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 79
    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 83
    const-string v2, "Statistics"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " installed, call AppActionUtls.handleAppInstallDone"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    invoke-static {p1, v1}, Lcom/youku/gamecenter/util/AppInstallActionUtils;->handleAppInstallDone(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public sendAppInstallEnd(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 51
    iget-object v1, p0, Lcom/youku/gamecenter/statistics/InstallStatisticHelper;->mData:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/gamecenter/statistics/InstallStatisticHelper$TrackMessage;

    .line 52
    .local v0, "message":Lcom/youku/gamecenter/statistics/InstallStatisticHelper$TrackMessage;
    if-nez v0, :cond_0

    .line 53
    const-string v1, "Statistics"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not need send statistic , message timeout or not installed by GameCenter!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    const/4 v1, 0x0

    .line 63
    :goto_0
    return v1

    .line 57
    :cond_0
    const-string v1, "Statistics"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendAppInstallEnd "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    const/4 v1, 0x3

    invoke-direct {p0, p1, v0, v1}, Lcom/youku/gamecenter/statistics/InstallStatisticHelper;->sendTrack(Landroid/content/Context;Lcom/youku/gamecenter/statistics/InstallStatisticHelper$TrackMessage;I)V

    .line 61
    invoke-direct {p0, p2}, Lcom/youku/gamecenter/statistics/InstallStatisticHelper;->removeMessage(Ljava/lang/String;)V

    .line 63
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public sendAppInstallStart(Landroid/content/Context;Ljava/lang/String;Lcom/youku/gamecenter/statistics/InstallStatisticHelper$TrackMessage;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "message"    # Lcom/youku/gamecenter/statistics/InstallStatisticHelper$TrackMessage;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/youku/gamecenter/statistics/InstallStatisticHelper;->registerPackageAddedReceiver1stTime(Landroid/content/Context;)V

    .line 44
    invoke-direct {p0, p1, p3}, Lcom/youku/gamecenter/statistics/InstallStatisticHelper;->sendTrackStart(Landroid/content/Context;Lcom/youku/gamecenter/statistics/InstallStatisticHelper$TrackMessage;)V

    .line 46
    invoke-direct {p0, p2, p3}, Lcom/youku/gamecenter/statistics/InstallStatisticHelper;->notifyCancelLater(Ljava/lang/String;Lcom/youku/gamecenter/statistics/InstallStatisticHelper$TrackMessage;)V

    .line 47
    return-void
.end method

.method public unregisterPackageAddedReceiver(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 88
    iget-boolean v1, p0, Lcom/youku/gamecenter/statistics/InstallStatisticHelper;->mIsRegistered:Z

    if-nez v1, :cond_0

    .line 98
    :goto_0
    return-void

    .line 93
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 94
    :catch_0
    move-exception v0

    .line 95
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
