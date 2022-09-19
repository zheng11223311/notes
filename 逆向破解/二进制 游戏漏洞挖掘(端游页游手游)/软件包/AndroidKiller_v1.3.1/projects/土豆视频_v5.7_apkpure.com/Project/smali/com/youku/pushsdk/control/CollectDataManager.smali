.class public Lcom/youku/pushsdk/control/CollectDataManager;
.super Ljava/lang/Object;
.source "CollectDataManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/pushsdk/control/CollectDataManager$SendTask;
    }
.end annotation


# static fields
.field public static MAX_SEND_TIME_STATE:Z = false

.field private static final TAG:Ljava/lang/String;

.field private static final UPLOAD_INFO_TIMES_MAX:I = 0x3e8

.field private static eventQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/youku/pushsdk/data/EventDataPackage;",
            ">;"
        }
    .end annotation
.end field

.field private static ins:Lcom/youku/pushsdk/control/CollectDataManager;


# instance fields
.field private context:Landroid/content/Context;

.field private executor:Ljava/util/concurrent/ExecutorService;

.field private infos:Lcom/youku/pushsdk/data/StatusData;

.field private sendDataRunnable:Ljava/lang/Runnable;

.field private sendingRunnableFlag:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 25
    const-class v0, Lcom/youku/pushsdk/control/CollectDataManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/youku/pushsdk/control/CollectDataManager;->TAG:Ljava/lang/String;

    .line 26
    const/4 v0, 0x0

    sput-boolean v0, Lcom/youku/pushsdk/control/CollectDataManager;->MAX_SEND_TIME_STATE:Z

    .line 30
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v0, Lcom/youku/pushsdk/control/CollectDataManager;->eventQueue:Ljava/util/concurrent/BlockingQueue;

    .line 32
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/pushsdk/control/CollectDataManager;->executor:Ljava/util/concurrent/ExecutorService;

    .line 29
    invoke-static {}, Lcom/youku/pushsdk/data/StatusData;->getInstance()Lcom/youku/pushsdk/data/StatusData;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/pushsdk/control/CollectDataManager;->infos:Lcom/youku/pushsdk/data/StatusData;

    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youku/pushsdk/control/CollectDataManager;->sendingRunnableFlag:Z

    .line 113
    new-instance v0, Lcom/youku/pushsdk/control/CollectDataManager$1;

    invoke-direct {v0, p0}, Lcom/youku/pushsdk/control/CollectDataManager$1;-><init>(Lcom/youku/pushsdk/control/CollectDataManager;)V

    iput-object v0, p0, Lcom/youku/pushsdk/control/CollectDataManager;->sendDataRunnable:Ljava/lang/Runnable;

    .line 37
    return-void
.end method

.method static synthetic access$0()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/youku/pushsdk/control/CollectDataManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/youku/pushsdk/control/CollectDataManager;Z)V
    .locals 0

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/youku/pushsdk/control/CollectDataManager;->sendingRunnableFlag:Z

    return-void
.end method

.method static synthetic access$2(Lcom/youku/pushsdk/control/CollectDataManager;)Z
    .locals 1

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/youku/pushsdk/control/CollectDataManager;->sendingRunnableFlag:Z

    return v0
.end method

.method static synthetic access$3()Ljava/util/concurrent/BlockingQueue;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/youku/pushsdk/control/CollectDataManager;->eventQueue:Ljava/util/concurrent/BlockingQueue;

    return-object v0
.end method

.method static synthetic access$4(Lcom/youku/pushsdk/control/CollectDataManager;)Ljava/util/concurrent/ExecutorService;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/youku/pushsdk/control/CollectDataManager;->executor:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method static synthetic access$5(Lcom/youku/pushsdk/control/CollectDataManager;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/youku/pushsdk/control/CollectDataManager;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$6(Lcom/youku/pushsdk/control/CollectDataManager;Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 0

    .prologue
    .line 152
    invoke-direct {p0, p1, p2, p3}, Lcom/youku/pushsdk/control/CollectDataManager;->sendData(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method

.method static synthetic access$7(Lcom/youku/pushsdk/control/CollectDataManager;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 200
    invoke-direct {p0, p1, p2, p3}, Lcom/youku/pushsdk/control/CollectDataManager;->collectData(ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private collectData(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "isConnected"    # Z
    .param p2, "topics"    # Ljava/lang/String;
    .param p3, "apps"    # Ljava/lang/String;

    .prologue
    .line 201
    iget-object v1, p0, Lcom/youku/pushsdk/control/CollectDataManager;->infos:Lcom/youku/pushsdk/data/StatusData;

    const-string/jumbo v2, "topics"

    invoke-virtual {v1, v2, p2}, Lcom/youku/pushsdk/data/StatusData;->setData(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    iget-object v1, p0, Lcom/youku/pushsdk/control/CollectDataManager;->infos:Lcom/youku/pushsdk/data/StatusData;

    const-string v2, "brand"

    invoke-static {}, Lcom/youku/pushsdk/util/Device;->getMobileBrand()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/youku/pushsdk/data/StatusData;->setData(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    iget-object v1, p0, Lcom/youku/pushsdk/control/CollectDataManager;->infos:Lcom/youku/pushsdk/data/StatusData;

    const-string v2, "product"

    invoke-static {}, Lcom/youku/pushsdk/util/Device;->getMobileModel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/youku/pushsdk/data/StatusData;->setData(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    iget-object v1, p0, Lcom/youku/pushsdk/control/CollectDataManager;->infos:Lcom/youku/pushsdk/data/StatusData;

    const-string v2, "osname"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Android "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/youku/pushsdk/util/Device;->getDeviceSDKVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/youku/pushsdk/data/StatusData;->setData(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    iget-object v1, p0, Lcom/youku/pushsdk/control/CollectDataManager;->infos:Lcom/youku/pushsdk/data/StatusData;

    const-string/jumbo v2, "secsofts"

    iget-object v3, p0, Lcom/youku/pushsdk/control/CollectDataManager;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/youku/pushsdk/util/Device;->getInstalledSafeApps(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/youku/pushsdk/data/StatusData;->setData(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    iget-object v1, p0, Lcom/youku/pushsdk/control/CollectDataManager;->infos:Lcom/youku/pushsdk/data/StatusData;

    const-string v2, "apps"

    invoke-virtual {v1, v2, p3}, Lcom/youku/pushsdk/data/StatusData;->setData(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    iget-object v1, p0, Lcom/youku/pushsdk/control/CollectDataManager;->infos:Lcom/youku/pushsdk/data/StatusData;

    const-string v2, "netst"

    iget-object v3, p0, Lcom/youku/pushsdk/control/CollectDataManager;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/youku/pushsdk/util/PushUtil;->getNetworkType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/youku/pushsdk/data/StatusData;->setData(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    iget-object v1, p0, Lcom/youku/pushsdk/control/CollectDataManager;->context:Landroid/content/Context;

    const-class v2, Lcom/youku/pushsdk/service/PushService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/youku/pushsdk/util/PushUtil;->isServiceRunning(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 211
    .local v0, "pushServiceRunFlag":Z
    iget-object v2, p0, Lcom/youku/pushsdk/control/CollectDataManager;->infos:Lcom/youku/pushsdk/data/StatusData;

    const-string v3, "psst"

    if-eqz v0, :cond_0

    const-string v1, "1"

    :goto_0
    invoke-virtual {v2, v3, v1}, Lcom/youku/pushsdk/data/StatusData;->setData(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    if-nez v0, :cond_1

    .line 213
    iget-object v1, p0, Lcom/youku/pushsdk/control/CollectDataManager;->infos:Lcom/youku/pushsdk/data/StatusData;

    const-string v2, "mqst"

    const-string v3, "UNAVAILABLE"

    invoke-virtual {v1, v2, v3}, Lcom/youku/pushsdk/data/StatusData;->setData(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    :goto_1
    iget-object v1, p0, Lcom/youku/pushsdk/control/CollectDataManager;->infos:Lcom/youku/pushsdk/data/StatusData;

    const-string/jumbo v2, "ver"

    const-string v3, "2.1"

    invoke-virtual {v1, v2, v3}, Lcom/youku/pushsdk/data/StatusData;->setData(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    new-instance v1, Lcom/youku/pushsdk/data/EventDataPackage;

    const-string v2, "PUSH_\u57fa\u7840\u4fe1\u606f\u6c47\u62a5"

    iget-object v3, p0, Lcom/youku/pushsdk/control/CollectDataManager;->infos:Lcom/youku/pushsdk/data/StatusData;

    invoke-virtual {v3}, Lcom/youku/pushsdk/data/StatusData;->getData()Ljava/util/HashMap;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/youku/pushsdk/data/EventDataPackage;-><init>(Ljava/lang/String;Ljava/util/HashMap;)V

    invoke-virtual {p0, v1}, Lcom/youku/pushsdk/control/CollectDataManager;->send(Lcom/youku/pushsdk/data/EventDataPackage;)V

    .line 224
    return-void

    .line 211
    :cond_0
    const-string v1, "0"

    goto :goto_0

    .line 217
    :cond_1
    iget-object v2, p0, Lcom/youku/pushsdk/control/CollectDataManager;->infos:Lcom/youku/pushsdk/data/StatusData;

    const-string v3, "mqst"

    if-eqz p1, :cond_2

    const-string v1, "1"

    :goto_2
    invoke-virtual {v2, v3, v1}, Lcom/youku/pushsdk/data/StatusData;->setData(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string v1, "0"

    goto :goto_2
.end method

.method public static getInstance()Lcom/youku/pushsdk/control/CollectDataManager;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/youku/pushsdk/control/CollectDataManager;->ins:Lcom/youku/pushsdk/control/CollectDataManager;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lcom/youku/pushsdk/control/CollectDataManager;

    invoke-direct {v0}, Lcom/youku/pushsdk/control/CollectDataManager;-><init>()V

    sput-object v0, Lcom/youku/pushsdk/control/CollectDataManager;->ins:Lcom/youku/pushsdk/control/CollectDataManager;

    .line 42
    :cond_0
    sget-object v0, Lcom/youku/pushsdk/control/CollectDataManager;->ins:Lcom/youku/pushsdk/control/CollectDataManager;

    return-object v0
.end method

.method private declared-synchronized sendData(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "event"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v0, 0x3e8

    .line 155
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 156
    .local v7, "calendar":Ljava/util/Calendar;
    const/4 v1, 0x5

    invoke-virtual {v7, v1}, Ljava/util/Calendar;->get(I)I

    move-result v10

    .line 158
    .local v10, "today":I
    const-string v1, "last_day"

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Lcom/youku/pushsdk/util/PushUtil;->getSendTimesPreference(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v9

    .line 160
    .local v9, "lastDay":I
    if-eqz v9, :cond_0

    if-eq v10, v9, :cond_0

    .line 162
    const-string/jumbo v1, "send_info_times_today"

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Lcom/youku/pushsdk/util/PushUtil;->setSendTimesPreference(Landroid/content/Context;Ljava/lang/String;I)V

    .line 163
    const-string v1, "last_day"

    invoke-static {p1, v1, v10}, Lcom/youku/pushsdk/util/PushUtil;->setSendTimesPreference(Landroid/content/Context;Ljava/lang/String;I)V

    .line 166
    invoke-static {}, Lcom/youku/pushsdk/db/DBHelper;->getInstance()Lcom/youku/pushsdk/db/DBHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/youku/pushsdk/db/DBHelper;->deleteExpireData()V

    .line 171
    :cond_0
    const-string/jumbo v1, "send_info_times_today"

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Lcom/youku/pushsdk/util/PushUtil;->getSendTimesPreference(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v8

    .line 173
    .local v8, "iTimes":I
    sget v1, Lcom/youku/pushsdk/util/PushUtil;->test_send_times:I

    if-lez v1, :cond_3

    sget v1, Lcom/youku/pushsdk/util/PushUtil;->test_send_times:I

    :goto_0
    if-ge v8, v1, :cond_5

    .line 175
    const-string/jumbo v1, "send_info_times_today"

    add-int/lit8 v8, v8, 0x1

    invoke-static {p1, v1, v8}, Lcom/youku/pushsdk/util/PushUtil;->setSendTimesPreference(Landroid/content/Context;Ljava/lang/String;I)V

    .line 177
    sget-object v1, Lcom/youku/pushsdk/control/CollectDataManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "send infos times today :"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/youku/pushsdk/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    sget v1, Lcom/youku/pushsdk/util/PushUtil;->test_send_times:I

    if-lez v1, :cond_1

    sget v0, Lcom/youku/pushsdk/util/PushUtil;->test_send_times:I

    :cond_1
    if-ne v8, v0, :cond_4

    .line 180
    sget-object v0, Lcom/youku/pushsdk/control/CollectDataManager;->TAG:Ljava/lang/String;

    const-string v1, "iTimes == UPLOAD_INFO_TIMES_MAX"

    invoke-static {v0, v1}, Lcom/youku/pushsdk/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    const/4 v0, 0x1

    sput-boolean v0, Lcom/youku/pushsdk/control/CollectDataManager;->MAX_SEND_TIME_STATE:Z

    .line 186
    :goto_1
    sget-object v0, Lcom/youku/pushsdk/control/CollectDataManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "sending data using analytics sdk: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/pushsdk/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    sget-object v2, Lcom/youku/pushsdk/control/CollectDataManager;->TAG:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "PUSH"

    move-object v0, p1

    move-object v1, p2

    move-object v6, p3

    invoke-static/range {v0 .. v6}, Lcom/youku/analytics/AnalyticsAgent;->trackExtendCustomEventWithSession(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    :cond_2
    :goto_2
    monitor-exit p0

    return-void

    :cond_3
    move v1, v0

    .line 173
    goto :goto_0

    .line 183
    :cond_4
    const/4 v0, 0x0

    :try_start_1
    sput-boolean v0, Lcom/youku/pushsdk/control/CollectDataManager;->MAX_SEND_TIME_STATE:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 155
    .end local v7    # "calendar":Ljava/util/Calendar;
    .end local v8    # "iTimes":I
    .end local v9    # "lastDay":I
    .end local v10    # "today":I
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 189
    .restart local v7    # "calendar":Ljava/util/Calendar;
    .restart local v8    # "iTimes":I
    .restart local v9    # "lastDay":I
    .restart local v10    # "today":I
    :cond_5
    :try_start_2
    sget-object v0, Lcom/youku/pushsdk/control/CollectDataManager;->TAG:Ljava/lang/String;

    const-string v1, "max send times today !"

    invoke-static {v0, v1}, Lcom/youku/pushsdk/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    invoke-static {p1}, Lcom/youku/pushsdk/util/Device;->hasNetWork(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/youku/pushsdk/control/CollectDataManager;->MAX_SEND_TIME_STATE:Z

    if-eqz v0, :cond_2

    .line 191
    const/4 v0, 0x0

    sput-boolean v0, Lcom/youku/pushsdk/control/CollectDataManager;->MAX_SEND_TIME_STATE:Z

    .line 192
    sget-object v0, Lcom/youku/pushsdk/control/CollectDataManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "send last cached data"

    invoke-static {v0, v1}, Lcom/youku/pushsdk/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    sget-object v2, Lcom/youku/pushsdk/control/CollectDataManager;->TAG:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "PUSH"

    move-object v0, p1

    move-object v1, p2

    move-object v6, p3

    invoke-static/range {v0 .. v6}, Lcom/youku/analytics/AnalyticsAgent;->trackExtendCustomEventWithSession(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method


# virtual methods
.method public collectBaseInfo(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "isConn"    # Z
    .param p2, "topics"    # Ljava/lang/String;
    .param p3, "apps"    # Ljava/lang/String;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/youku/pushsdk/control/CollectDataManager;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/youku/pushsdk/control/CollectDataManager$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/youku/pushsdk/control/CollectDataManager$2;-><init>(Lcom/youku/pushsdk/control/CollectDataManager;ZLjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 94
    return-void
.end method

.method public init(Landroid/content/Context;)V
    .locals 4
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/youku/pushsdk/control/CollectDataManager;->context:Landroid/content/Context;

    .line 51
    iget-object v1, p0, Lcom/youku/pushsdk/control/CollectDataManager;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/youku/pushsdk/util/PushUtil;->scheduleCollectDataTask(Landroid/content/Context;)V

    .line 54
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PUSH SDK;2.1;Android;"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 56
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 54
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, "userAgent":Ljava/lang/String;
    iget-object v1, p0, Lcom/youku/pushsdk/control/CollectDataManager;->context:Landroid/content/Context;

    const-string v2, "1925cae29ebae0f5"

    const-string v3, "PUSH SDK"

    invoke-static {v1, v0, v2, v3}, Lcom/youku/analytics/AnalyticsAgent;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    sget-boolean v1, Lcom/youku/pushsdk/constants/BuildConfig;->ANALYTIC_DEBUG:Z

    invoke-static {v1}, Lcom/youku/analytics/AnalyticsAgent;->setTestHost(Z)V

    .line 62
    sget-boolean v1, Lcom/youku/pushsdk/constants/BuildConfig;->ANALYTIC_DEBUG:Z

    invoke-static {v1}, Lcom/youku/analytics/AnalyticsAgent;->setTest(Z)V

    .line 64
    sget-boolean v1, Lcom/youku/pushsdk/constants/BuildConfig;->ANALYTIC_DEBUG:Z

    invoke-static {v1}, Lcom/youku/analytics/AnalyticsAgent;->setDebugMode(Z)V

    .line 66
    const-wide/16 v2, 0x7530

    invoke-static {v2, v3}, Lcom/youku/analytics/AnalyticsAgent;->setContinueSessionMillis(J)V

    .line 67
    sget-object v2, Lcom/youku/pushsdk/control/CollectDataManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v1, "AnalyticsAgent type: "

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v1, Lcom/youku/pushsdk/constants/BuildConfig;->ANALYTIC_DEBUG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "test"

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/youku/pushsdk/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    iget-object v1, p0, Lcom/youku/pushsdk/control/CollectDataManager;->executor:Ljava/util/concurrent/ExecutorService;

    iget-object v2, p0, Lcom/youku/pushsdk/control/CollectDataManager;->sendDataRunnable:Ljava/lang/Runnable;

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 70
    return-void

    .line 67
    :cond_0
    const-string v1, "official"

    goto :goto_0
.end method

.method public releaseResource()V
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youku/pushsdk/control/CollectDataManager;->sendingRunnableFlag:Z

    .line 78
    return-void
.end method

.method public send(Lcom/youku/pushsdk/data/EventDataPackage;)V
    .locals 3
    .param p1, "pakage"    # Lcom/youku/pushsdk/data/EventDataPackage;

    .prologue
    .line 102
    :try_start_0
    sget-object v1, Lcom/youku/pushsdk/control/CollectDataManager;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/youku/pushsdk/data/EventDataPackage;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/youku/pushsdk/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    sget-object v1, Lcom/youku/pushsdk/control/CollectDataManager;->eventQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, p1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    :goto_0
    return-void

    .line 105
    :catch_0
    move-exception v0

    .line 107
    .local v0, "e":Ljava/lang/InterruptedException;
    sget-object v1, Lcom/youku/pushsdk/control/CollectDataManager;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/youku/pushsdk/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
