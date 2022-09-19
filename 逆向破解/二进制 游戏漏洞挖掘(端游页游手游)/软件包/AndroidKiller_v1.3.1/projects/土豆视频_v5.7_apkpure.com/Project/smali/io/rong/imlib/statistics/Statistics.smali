.class public Lio/rong/imlib/statistics/Statistics;
.super Ljava/lang/Object;
.source "Statistics.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/rong/imlib/statistics/Statistics$SingletonHolder;,
        Lio/rong/imlib/statistics/Statistics$CountlyMessagingMode;
    }
.end annotation


# static fields
.field public static final COUNTLY_SDK_VERSION_STRING:Ljava/lang/String; = "15.06"

.field public static final DEFAULT_APP_VERSION:Ljava/lang/String; = "1.0"

.field private static final EVENT_QUEUE_SIZE_THRESHOLD:I = 0xa

.field public static final TAG:Ljava/lang/String; = "Statistics"

.field private static final TIMER_DELAY_IN_SECONDS:J = 0xe10L

.field protected static publicKeyPinCertificates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private activityCount_:I

.field private connectionQueue_:Lio/rong/imlib/statistics/ConnectionQueue;

.field private context_:Landroid/content/Context;

.field private deviceId_Manager_:Lio/rong/imlib/statistics/DeviceId;

.field private disableUpdateSessionRequests_:Z

.field private enableLogging_:Z

.field private eventQueue_:Lio/rong/imlib/statistics/EventQueue;

.field private messagingMode_:Lio/rong/imlib/statistics/Statistics$CountlyMessagingMode;

.field private prevSessionDurationStartTime_:J

.field private timerService_:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    new-instance v0, Lio/rong/imlib/statistics/ConnectionQueue;

    invoke-direct {v0}, Lio/rong/imlib/statistics/ConnectionQueue;-><init>()V

    iput-object v0, p0, Lio/rong/imlib/statistics/Statistics;->connectionQueue_:Lio/rong/imlib/statistics/ConnectionQueue;

    .line 125
    return-void
.end method

.method static synthetic access$000(Lio/rong/imlib/statistics/Statistics;)Lio/rong/imlib/statistics/ConnectionQueue;
    .locals 1
    .param p0, "x0"    # Lio/rong/imlib/statistics/Statistics;

    .prologue
    .line 46
    iget-object v0, p0, Lio/rong/imlib/statistics/Statistics;->connectionQueue_:Lio/rong/imlib/statistics/ConnectionQueue;

    return-object v0
.end method

.method static currentTimestamp()I
    .locals 4

    .prologue
    .line 713
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public static enablePublicKeyPinning(Ljava/util/List;)Lio/rong/imlib/statistics/Statistics;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lio/rong/imlib/statistics/Statistics;"
        }
    .end annotation

    .prologue
    .line 742
    .local p0, "certificates":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sput-object p0, Lio/rong/imlib/statistics/Statistics;->publicKeyPinCertificates:Ljava/util/List;

    .line 743
    invoke-static {}, Lio/rong/imlib/statistics/Statistics;->sharedInstance()Lio/rong/imlib/statistics/Statistics;

    move-result-object v0

    return-object v0
.end method

.method static isValidURL(Ljava/lang/String;)Z
    .locals 3
    .param p0, "urlStr"    # Ljava/lang/String;

    .prologue
    .line 720
    const/4 v1, 0x0

    .line 721
    .local v1, "validURL":Z
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 723
    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 724
    const/4 v1, 0x1

    .line 730
    :cond_0
    :goto_0
    return v1

    .line 726
    :catch_0
    move-exception v0

    .line 727
    .local v0, "e":Ljava/net/MalformedURLException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static sharedInstance()Lio/rong/imlib/statistics/Statistics;
    .locals 1

    .prologue
    .line 107
    sget-object v0, Lio/rong/imlib/statistics/Statistics$SingletonHolder;->instance:Lio/rong/imlib/statistics/Statistics;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized addCrashLog(Ljava/lang/String;)Lio/rong/imlib/statistics/Statistics;
    .locals 1
    .param p1, "record"    # Ljava/lang/String;

    .prologue
    .line 601
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lio/rong/imlib/statistics/CrashDetails;->addLog(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 602
    monitor-exit p0

    return-object p0

    .line 601
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized enableCrashReporting()Lio/rong/imlib/statistics/Statistics;
    .locals 3

    .prologue
    .line 622
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    .line 624
    .local v1, "oldHandler":Ljava/lang/Thread$UncaughtExceptionHandler;
    new-instance v0, Lio/rong/imlib/statistics/Statistics$1;

    invoke-direct {v0, p0, v1}, Lio/rong/imlib/statistics/Statistics$1;-><init>(Lio/rong/imlib/statistics/Statistics;Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 641
    .local v0, "handler":Ljava/lang/Thread$UncaughtExceptionHandler;
    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 642
    monitor-exit p0

    return-object p0

    .line 622
    .end local v0    # "handler":Ljava/lang/Thread$UncaughtExceptionHandler;
    .end local v1    # "oldHandler":Ljava/lang/Thread$UncaughtExceptionHandler;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method getActivityCount()I
    .locals 1

    .prologue
    .line 754
    iget v0, p0, Lio/rong/imlib/statistics/Statistics;->activityCount_:I

    return v0
.end method

.method getConnectionQueue()Lio/rong/imlib/statistics/ConnectionQueue;
    .locals 1

    .prologue
    .line 747
    iget-object v0, p0, Lio/rong/imlib/statistics/Statistics;->connectionQueue_:Lio/rong/imlib/statistics/ConnectionQueue;

    return-object v0
.end method

.method getDisableUpdateSessionRequests()Z
    .locals 1

    .prologue
    .line 755
    iget-boolean v0, p0, Lio/rong/imlib/statistics/Statistics;->disableUpdateSessionRequests_:Z

    return v0
.end method

.method getEventQueue()Lio/rong/imlib/statistics/EventQueue;
    .locals 1

    .prologue
    .line 750
    iget-object v0, p0, Lio/rong/imlib/statistics/Statistics;->eventQueue_:Lio/rong/imlib/statistics/EventQueue;

    return-object v0
.end method

.method getPrevSessionDurationStartTime()J
    .locals 2

    .prologue
    .line 752
    iget-wide v0, p0, Lio/rong/imlib/statistics/Statistics;->prevSessionDurationStartTime_:J

    return-wide v0
.end method

.method getTimerService()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .prologue
    .line 749
    iget-object v0, p0, Lio/rong/imlib/statistics/Statistics;->timerService_:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method public declared-synchronized halt()V
    .locals 4

    .prologue
    .line 252
    monitor-enter p0

    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lio/rong/imlib/statistics/Statistics;->eventQueue_:Lio/rong/imlib/statistics/EventQueue;

    .line 253
    iget-object v1, p0, Lio/rong/imlib/statistics/Statistics;->connectionQueue_:Lio/rong/imlib/statistics/ConnectionQueue;

    invoke-virtual {v1}, Lio/rong/imlib/statistics/ConnectionQueue;->getCountlyStore()Lio/rong/imlib/statistics/StatisticsStore;

    move-result-object v0

    .line 254
    .local v0, "statisticsStore":Lio/rong/imlib/statistics/StatisticsStore;
    if-eqz v0, :cond_0

    .line 255
    invoke-virtual {v0}, Lio/rong/imlib/statistics/StatisticsStore;->clear()V

    .line 257
    :cond_0
    iget-object v1, p0, Lio/rong/imlib/statistics/Statistics;->connectionQueue_:Lio/rong/imlib/statistics/ConnectionQueue;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lio/rong/imlib/statistics/ConnectionQueue;->setContext(Landroid/content/Context;)V

    .line 258
    iget-object v1, p0, Lio/rong/imlib/statistics/Statistics;->connectionQueue_:Lio/rong/imlib/statistics/ConnectionQueue;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lio/rong/imlib/statistics/ConnectionQueue;->setServerURL(Ljava/lang/String;)V

    .line 259
    iget-object v1, p0, Lio/rong/imlib/statistics/Statistics;->connectionQueue_:Lio/rong/imlib/statistics/ConnectionQueue;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lio/rong/imlib/statistics/ConnectionQueue;->setAppKey(Ljava/lang/String;)V

    .line 260
    iget-object v1, p0, Lio/rong/imlib/statistics/Statistics;->connectionQueue_:Lio/rong/imlib/statistics/ConnectionQueue;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lio/rong/imlib/statistics/ConnectionQueue;->setCountlyStore(Lio/rong/imlib/statistics/StatisticsStore;)V

    .line 261
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lio/rong/imlib/statistics/Statistics;->prevSessionDurationStartTime_:J

    .line 262
    const/4 v1, 0x0

    iput v1, p0, Lio/rong/imlib/statistics/Statistics;->activityCount_:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 263
    monitor-exit p0

    return-void

    .line 252
    .end local v0    # "statisticsStore":Lio/rong/imlib/statistics/StatisticsStore;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lio/rong/imlib/statistics/Statistics;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "serverURL"    # Ljava/lang/String;
    .param p3, "appKey"    # Ljava/lang/String;

    .prologue
    .line 141
    const/4 v4, 0x0

    invoke-static {}, Lio/rong/imlib/statistics/OpenUDIDAdapter;->isOpenUDIDAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v5, Lio/rong/imlib/statistics/DeviceId$Type;->OPEN_UDID:Lio/rong/imlib/statistics/DeviceId$Type;

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lio/rong/imlib/statistics/Statistics;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/statistics/DeviceId$Type;)Lio/rong/imlib/statistics/Statistics;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v5, Lio/rong/imlib/statistics/DeviceId$Type;->ADVERTISING_ID:Lio/rong/imlib/statistics/DeviceId$Type;

    goto :goto_0
.end method

.method public init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/rong/imlib/statistics/Statistics;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "serverURL"    # Ljava/lang/String;
    .param p3, "appKey"    # Ljava/lang/String;
    .param p4, "deviceID"    # Ljava/lang/String;

    .prologue
    .line 156
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lio/rong/imlib/statistics/Statistics;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/statistics/DeviceId$Type;)Lio/rong/imlib/statistics/Statistics;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/statistics/DeviceId$Type;)Lio/rong/imlib/statistics/Statistics;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "serverURL"    # Ljava/lang/String;
    .param p3, "appKey"    # Ljava/lang/String;
    .param p4, "deviceID"    # Ljava/lang/String;
    .param p5, "idMode"    # Lio/rong/imlib/statistics/DeviceId$Type;

    .prologue
    .line 172
    monitor-enter p0

    if-nez p1, :cond_0

    .line 173
    :try_start_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "valid context is required"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 175
    :cond_0
    :try_start_1
    invoke-static {p2}, Lio/rong/imlib/statistics/Statistics;->isValidURL(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 176
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "valid serverURL is required"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 178
    :cond_1
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_3

    .line 179
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "valid appKey is required"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 181
    :cond_3
    if-eqz p4, :cond_4

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_4

    .line 182
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "valid deviceID is required"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 184
    :cond_4
    if-nez p4, :cond_5

    if-nez p5, :cond_5

    .line 185
    invoke-static {}, Lio/rong/imlib/statistics/OpenUDIDAdapter;->isOpenUDIDAvailable()Z

    move-result v2

    if-eqz v2, :cond_6

    sget-object p5, Lio/rong/imlib/statistics/DeviceId$Type;->OPEN_UDID:Lio/rong/imlib/statistics/DeviceId$Type;

    .line 188
    :cond_5
    :goto_0
    if-nez p4, :cond_7

    sget-object v2, Lio/rong/imlib/statistics/DeviceId$Type;->OPEN_UDID:Lio/rong/imlib/statistics/DeviceId$Type;

    if-ne p5, v2, :cond_7

    invoke-static {}, Lio/rong/imlib/statistics/OpenUDIDAdapter;->isOpenUDIDAvailable()Z

    move-result v2

    if-nez v2, :cond_7

    .line 189
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "valid deviceID is required because OpenUDID is not available"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 186
    :cond_6
    invoke-static {}, Lio/rong/imlib/statistics/AdvertisingIdAdapter;->isAdvertisingIdAvailable()Z

    move-result v2

    if-eqz v2, :cond_5

    sget-object p5, Lio/rong/imlib/statistics/DeviceId$Type;->ADVERTISING_ID:Lio/rong/imlib/statistics/DeviceId$Type;

    goto :goto_0

    .line 191
    :cond_7
    if-nez p4, :cond_8

    sget-object v2, Lio/rong/imlib/statistics/DeviceId$Type;->ADVERTISING_ID:Lio/rong/imlib/statistics/DeviceId$Type;

    if-ne p5, v2, :cond_8

    invoke-static {}, Lio/rong/imlib/statistics/AdvertisingIdAdapter;->isAdvertisingIdAvailable()Z

    move-result v2

    if-nez v2, :cond_8

    .line 192
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "valid deviceID is required because Advertising ID is not available (you need to include Google Play services 4.0+ into your project)"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 194
    :cond_8
    iget-object v2, p0, Lio/rong/imlib/statistics/Statistics;->eventQueue_:Lio/rong/imlib/statistics/EventQueue;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lio/rong/imlib/statistics/Statistics;->connectionQueue_:Lio/rong/imlib/statistics/ConnectionQueue;

    invoke-virtual {v2}, Lio/rong/imlib/statistics/ConnectionQueue;->getServerURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lio/rong/imlib/statistics/Statistics;->connectionQueue_:Lio/rong/imlib/statistics/ConnectionQueue;

    invoke-virtual {v2}, Lio/rong/imlib/statistics/ConnectionQueue;->getAppKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lio/rong/imlib/statistics/Statistics;->connectionQueue_:Lio/rong/imlib/statistics/ConnectionQueue;

    invoke-virtual {v2}, Lio/rong/imlib/statistics/ConnectionQueue;->getDeviceId()Lio/rong/imlib/statistics/DeviceId;

    move-result-object v2

    invoke-static {p4, p5, v2}, Lio/rong/imlib/statistics/DeviceId;->deviceIDEqualsNullSafe(Ljava/lang/String;Lio/rong/imlib/statistics/DeviceId$Type;Lio/rong/imlib/statistics/DeviceId;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 197
    :cond_9
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Statistics cannot be reinitialized with different values"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 202
    :cond_a
    invoke-static {}, Lio/rong/imlib/statistics/MessagingAdapter;->isMessagingAvailable()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 203
    invoke-static {p1, p2, p3, p4, p5}, Lio/rong/imlib/statistics/MessagingAdapter;->storeConfiguration(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/statistics/DeviceId$Type;)Z

    .line 208
    :cond_b
    iget-object v2, p0, Lio/rong/imlib/statistics/Statistics;->eventQueue_:Lio/rong/imlib/statistics/EventQueue;

    if-nez v2, :cond_c

    .line 210
    if-eqz p4, :cond_d

    .line 211
    new-instance v0, Lio/rong/imlib/statistics/DeviceId;

    invoke-direct {v0, p4}, Lio/rong/imlib/statistics/DeviceId;-><init>(Ljava/lang/String;)V

    .line 216
    .local v0, "deviceIdInstance":Lio/rong/imlib/statistics/DeviceId;
    :goto_1
    new-instance v1, Lio/rong/imlib/statistics/StatisticsStore;

    invoke-direct {v1, p1}, Lio/rong/imlib/statistics/StatisticsStore;-><init>(Landroid/content/Context;)V

    .line 218
    .local v1, "statisticsStore":Lio/rong/imlib/statistics/StatisticsStore;
    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Lio/rong/imlib/statistics/DeviceId;->init(Landroid/content/Context;Lio/rong/imlib/statistics/StatisticsStore;Z)V

    .line 220
    iget-object v2, p0, Lio/rong/imlib/statistics/Statistics;->connectionQueue_:Lio/rong/imlib/statistics/ConnectionQueue;

    invoke-virtual {v2, p2}, Lio/rong/imlib/statistics/ConnectionQueue;->setServerURL(Ljava/lang/String;)V

    .line 221
    iget-object v2, p0, Lio/rong/imlib/statistics/Statistics;->connectionQueue_:Lio/rong/imlib/statistics/ConnectionQueue;

    invoke-virtual {v2, p3}, Lio/rong/imlib/statistics/ConnectionQueue;->setAppKey(Ljava/lang/String;)V

    .line 222
    iget-object v2, p0, Lio/rong/imlib/statistics/Statistics;->connectionQueue_:Lio/rong/imlib/statistics/ConnectionQueue;

    invoke-virtual {v2, v1}, Lio/rong/imlib/statistics/ConnectionQueue;->setCountlyStore(Lio/rong/imlib/statistics/StatisticsStore;)V

    .line 223
    iget-object v2, p0, Lio/rong/imlib/statistics/Statistics;->connectionQueue_:Lio/rong/imlib/statistics/ConnectionQueue;

    invoke-virtual {v2, v0}, Lio/rong/imlib/statistics/ConnectionQueue;->setDeviceId(Lio/rong/imlib/statistics/DeviceId;)V

    .line 225
    new-instance v2, Lio/rong/imlib/statistics/EventQueue;

    invoke-direct {v2, v1}, Lio/rong/imlib/statistics/EventQueue;-><init>(Lio/rong/imlib/statistics/StatisticsStore;)V

    iput-object v2, p0, Lio/rong/imlib/statistics/Statistics;->eventQueue_:Lio/rong/imlib/statistics/EventQueue;

    .line 228
    .end local v0    # "deviceIdInstance":Lio/rong/imlib/statistics/DeviceId;
    .end local v1    # "statisticsStore":Lio/rong/imlib/statistics/StatisticsStore;
    :cond_c
    iput-object p1, p0, Lio/rong/imlib/statistics/Statistics;->context_:Landroid/content/Context;

    .line 231
    iget-object v2, p0, Lio/rong/imlib/statistics/Statistics;->connectionQueue_:Lio/rong/imlib/statistics/ConnectionQueue;

    invoke-virtual {v2, p1}, Lio/rong/imlib/statistics/ConnectionQueue;->setContext(Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 233
    monitor-exit p0

    return-object p0

    .line 213
    :cond_d
    :try_start_2
    new-instance v0, Lio/rong/imlib/statistics/DeviceId;

    invoke-direct {v0, p5}, Lio/rong/imlib/statistics/DeviceId;-><init>(Lio/rong/imlib/statistics/DeviceId$Type;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .restart local v0    # "deviceIdInstance":Lio/rong/imlib/statistics/DeviceId;
    goto :goto_1
.end method

.method public declared-synchronized isInitialized()Z
    .locals 1

    .prologue
    .line 241
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/rong/imlib/statistics/Statistics;->eventQueue_:Lio/rong/imlib/statistics/EventQueue;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isLoggingEnabled()Z
    .locals 1

    .prologue
    .line 669
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lio/rong/imlib/statistics/Statistics;->enableLogging_:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized logException(Ljava/lang/Exception;)Lio/rong/imlib/statistics/Statistics;
    .locals 5
    .param p1, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 610
    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 611
    .local v1, "sw":Ljava/io/StringWriter;
    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 612
    .local v0, "pw":Ljava/io/PrintWriter;
    invoke-virtual {p1, v0}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 613
    iget-object v2, p0, Lio/rong/imlib/statistics/Statistics;->connectionQueue_:Lio/rong/imlib/statistics/ConnectionQueue;

    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lio/rong/imlib/statistics/ConnectionQueue;->sendCrashReport(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 614
    monitor-exit p0

    return-object p0

    .line 610
    .end local v0    # "pw":Ljava/io/PrintWriter;
    .end local v1    # "sw":Ljava/io/StringWriter;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public onRegistrationId(Ljava/lang/String;)V
    .locals 2
    .param p1, "registrationId"    # Ljava/lang/String;

    .prologue
    .line 345
    iget-object v0, p0, Lio/rong/imlib/statistics/Statistics;->connectionQueue_:Lio/rong/imlib/statistics/ConnectionQueue;

    iget-object v1, p0, Lio/rong/imlib/statistics/Statistics;->messagingMode_:Lio/rong/imlib/statistics/Statistics$CountlyMessagingMode;

    invoke-virtual {v0, p1, v1}, Lio/rong/imlib/statistics/ConnectionQueue;->tokenSession(Ljava/lang/String;Lio/rong/imlib/statistics/Statistics$CountlyMessagingMode;)V

    .line 346
    return-void
.end method

.method public declared-synchronized onStart()V
    .locals 4

    .prologue
    .line 273
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lio/rong/imlib/statistics/Statistics;->eventQueue_:Lio/rong/imlib/statistics/EventQueue;

    if-nez v1, :cond_0

    .line 274
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "init must be called before onStart"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 273
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 277
    :cond_0
    :try_start_1
    iget v1, p0, Lio/rong/imlib/statistics/Statistics;->activityCount_:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lio/rong/imlib/statistics/Statistics;->activityCount_:I

    .line 278
    iget v1, p0, Lio/rong/imlib/statistics/Statistics;->activityCount_:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 279
    invoke-virtual {p0}, Lio/rong/imlib/statistics/Statistics;->onStartHelper()V

    .line 283
    :cond_1
    iget-object v1, p0, Lio/rong/imlib/statistics/Statistics;->context_:Landroid/content/Context;

    invoke-static {v1}, Lio/rong/imlib/statistics/ReferrerReceiver;->getReferrer(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 284
    .local v0, "referrer":Ljava/lang/String;
    invoke-static {}, Lio/rong/imlib/statistics/Statistics;->sharedInstance()Lio/rong/imlib/statistics/Statistics;

    move-result-object v1

    invoke-virtual {v1}, Lio/rong/imlib/statistics/Statistics;->isLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 285
    const-string v1, "Statistics"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Checking referrer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    :cond_2
    if-eqz v0, :cond_3

    .line 288
    iget-object v1, p0, Lio/rong/imlib/statistics/Statistics;->connectionQueue_:Lio/rong/imlib/statistics/ConnectionQueue;

    invoke-virtual {v1, v0}, Lio/rong/imlib/statistics/ConnectionQueue;->sendReferrerData(Ljava/lang/String;)V

    .line 289
    iget-object v1, p0, Lio/rong/imlib/statistics/Statistics;->context_:Landroid/content/Context;

    invoke-static {v1}, Lio/rong/imlib/statistics/ReferrerReceiver;->deleteReferrer(Landroid/content/Context;)V

    .line 292
    :cond_3
    invoke-static {}, Lio/rong/imlib/statistics/CrashDetails;->inForeground()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 293
    monitor-exit p0

    return-void
.end method

.method onStartHelper()V
    .locals 2

    .prologue
    .line 300
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lio/rong/imlib/statistics/Statistics;->prevSessionDurationStartTime_:J

    .line 301
    iget-object v0, p0, Lio/rong/imlib/statistics/Statistics;->connectionQueue_:Lio/rong/imlib/statistics/ConnectionQueue;

    invoke-virtual {v0}, Lio/rong/imlib/statistics/ConnectionQueue;->beginSession()V

    .line 302
    return-void
.end method

.method public declared-synchronized onStop()V
    .locals 2

    .prologue
    .line 313
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/rong/imlib/statistics/Statistics;->eventQueue_:Lio/rong/imlib/statistics/EventQueue;

    if-nez v0, :cond_0

    .line 314
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "init must be called before onStop"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 313
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 316
    :cond_0
    :try_start_1
    iget v0, p0, Lio/rong/imlib/statistics/Statistics;->activityCount_:I

    if-nez v0, :cond_1

    .line 317
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "must call onStart before onStop"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 320
    :cond_1
    iget v0, p0, Lio/rong/imlib/statistics/Statistics;->activityCount_:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lio/rong/imlib/statistics/Statistics;->activityCount_:I

    .line 321
    iget v0, p0, Lio/rong/imlib/statistics/Statistics;->activityCount_:I

    if-nez v0, :cond_2

    .line 322
    invoke-virtual {p0}, Lio/rong/imlib/statistics/Statistics;->onStopHelper()V

    .line 325
    :cond_2
    invoke-static {}, Lio/rong/imlib/statistics/CrashDetails;->inBackground()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 326
    monitor-exit p0

    return-void
.end method

.method onStopHelper()V
    .locals 2

    .prologue
    .line 333
    iget-object v0, p0, Lio/rong/imlib/statistics/Statistics;->connectionQueue_:Lio/rong/imlib/statistics/ConnectionQueue;

    invoke-virtual {p0}, Lio/rong/imlib/statistics/Statistics;->roundedSecondsSinceLastSessionDurationUpdate()I

    move-result v1

    invoke-virtual {v0, v1}, Lio/rong/imlib/statistics/ConnectionQueue;->endSession(I)V

    .line 334
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lio/rong/imlib/statistics/Statistics;->prevSessionDurationStartTime_:J

    .line 336
    iget-object v0, p0, Lio/rong/imlib/statistics/Statistics;->eventQueue_:Lio/rong/imlib/statistics/EventQueue;

    invoke-virtual {v0}, Lio/rong/imlib/statistics/EventQueue;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 337
    iget-object v0, p0, Lio/rong/imlib/statistics/Statistics;->connectionQueue_:Lio/rong/imlib/statistics/ConnectionQueue;

    iget-object v1, p0, Lio/rong/imlib/statistics/Statistics;->eventQueue_:Lio/rong/imlib/statistics/EventQueue;

    invoke-virtual {v1}, Lio/rong/imlib/statistics/EventQueue;->events()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/rong/imlib/statistics/ConnectionQueue;->recordEvents(Ljava/lang/String;)V

    .line 339
    :cond_0
    return-void
.end method

.method declared-synchronized onTimer()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 687
    monitor-enter p0

    :try_start_0
    iget v3, p0, Lio/rong/imlib/statistics/Statistics;->activityCount_:I

    if-lez v3, :cond_2

    move v0, v1

    .line 688
    .local v0, "hasActiveSession":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 689
    const-string v3, "Statistics"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onTimer: update="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lio/rong/imlib/statistics/Statistics;->disableUpdateSessionRequests_:Z

    if-nez v5, :cond_3

    :goto_1
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", queue="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lio/rong/imlib/statistics/Statistics;->eventQueue_:Lio/rong/imlib/statistics/EventQueue;

    invoke-virtual {v2}, Lio/rong/imlib/statistics/EventQueue;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    iget-boolean v1, p0, Lio/rong/imlib/statistics/Statistics;->disableUpdateSessionRequests_:Z

    if-nez v1, :cond_0

    .line 691
    iget-object v1, p0, Lio/rong/imlib/statistics/Statistics;->connectionQueue_:Lio/rong/imlib/statistics/ConnectionQueue;

    invoke-virtual {p0}, Lio/rong/imlib/statistics/Statistics;->roundedSecondsSinceLastSessionDurationUpdate()I

    move-result v2

    invoke-virtual {v1, v2}, Lio/rong/imlib/statistics/ConnectionQueue;->updateSession(I)V

    .line 693
    :cond_0
    iget-object v1, p0, Lio/rong/imlib/statistics/Statistics;->eventQueue_:Lio/rong/imlib/statistics/EventQueue;

    invoke-virtual {v1}, Lio/rong/imlib/statistics/EventQueue;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 694
    iget-object v1, p0, Lio/rong/imlib/statistics/Statistics;->connectionQueue_:Lio/rong/imlib/statistics/ConnectionQueue;

    iget-object v2, p0, Lio/rong/imlib/statistics/Statistics;->eventQueue_:Lio/rong/imlib/statistics/EventQueue;

    invoke-virtual {v2}, Lio/rong/imlib/statistics/EventQueue;->events()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/rong/imlib/statistics/ConnectionQueue;->recordEvents(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 697
    :cond_1
    monitor-exit p0

    return-void

    .end local v0    # "hasActiveSession":Z
    :cond_2
    move v0, v2

    .line 687
    goto :goto_0

    .restart local v0    # "hasActiveSession":Z
    :cond_3
    move v1, v2

    .line 689
    goto :goto_1

    .line 687
    .end local v0    # "hasActiveSession":Z
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public recordEvent(Ljava/lang/String;)V
    .locals 6
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 355
    const/4 v2, 0x0

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lio/rong/imlib/statistics/Statistics;->recordEvent(Ljava/lang/String;Ljava/util/Map;ID)V

    .line 356
    return-void
.end method

.method public recordEvent(Ljava/lang/String;I)V
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "count"    # I

    .prologue
    .line 366
    const/4 v2, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    invoke-virtual/range {v0 .. v5}, Lio/rong/imlib/statistics/Statistics;->recordEvent(Ljava/lang/String;Ljava/util/Map;ID)V

    .line 367
    return-void
.end method

.method public recordEvent(Ljava/lang/String;ID)V
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "count"    # I
    .param p3, "sum"    # D

    .prologue
    .line 378
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lio/rong/imlib/statistics/Statistics;->recordEvent(Ljava/lang/String;Ljava/util/Map;ID)V

    .line 379
    return-void
.end method

.method public declared-synchronized recordEvent(Ljava/lang/String;Ljava/util/Map;)V
    .locals 8
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 437
    .local p2, "segmentation":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    monitor-enter p0

    :try_start_0
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    new-array v0, v6, [Ljava/lang/String;

    .line 438
    .local v0, "data":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 439
    .local v1, "i":I
    invoke-virtual {p0}, Lio/rong/imlib/statistics/Statistics;->isInitialized()Z

    move-result v6

    if-nez v6, :cond_0

    .line 440
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "Countly.sharedInstance().init must be called before recordEvent"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 437
    .end local v0    # "data":[Ljava/lang/String;
    .end local v1    # "i":I
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 442
    .restart local v0    # "data":[Ljava/lang/String;
    .restart local v1    # "i":I
    :cond_0
    if-eqz p1, :cond_1

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_2

    .line 443
    :cond_1
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Valid Countly event key is required"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 446
    :cond_2
    if-eqz p2, :cond_7

    .line 447
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 448
    .local v4, "k":Ljava/lang/String;
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_4

    .line 449
    :cond_3
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Countly event segmentation key cannot be null or empty"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 451
    :cond_4
    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_5

    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_6

    .line 452
    :cond_5
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Countly event segmentation value cannot be null or empty"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 454
    :cond_6
    aput-object v4, v0, v1

    .line 455
    add-int/lit8 v1, v1, 0x1

    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    aput-object v6, v0, v1

    .line 456
    add-int/lit8 v1, v1, 0x1

    .line 457
    goto :goto_0

    .line 460
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "k":Ljava/lang/String;
    :cond_7
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 462
    .local v3, "json":Lorg/json/JSONObject;
    invoke-static {v3, v0}, Lio/rong/imlib/statistics/DeviceInfo;->fillJSONIfValuesNotEmpty(Lorg/json/JSONObject;[Ljava/lang/String;)V

    .line 463
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v5

    .line 465
    .local v5, "result":Ljava/lang/String;
    :try_start_2
    const-string v6, "UTF-8"

    invoke-static {v5, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v5

    .line 469
    :goto_1
    :try_start_3
    iget-object v6, p0, Lio/rong/imlib/statistics/Statistics;->connectionQueue_:Lio/rong/imlib/statistics/ConnectionQueue;

    invoke-virtual {v6, v5}, Lio/rong/imlib/statistics/ConnectionQueue;->recordEvents(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 470
    monitor-exit p0

    return-void

    .line 466
    :catch_0
    move-exception v6

    goto :goto_1
.end method

.method public recordEvent(Ljava/lang/String;Ljava/util/Map;I)V
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 390
    .local p2, "segmentation":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lio/rong/imlib/statistics/Statistics;->recordEvent(Ljava/lang/String;Ljava/util/Map;ID)V

    .line 391
    return-void
.end method

.method public declared-synchronized recordEvent(Ljava/lang/String;Ljava/util/Map;ID)V
    .locals 8
    .param p1, "key"    # Ljava/lang/String;
    .param p3, "count"    # I
    .param p4, "sum"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;ID)V"
        }
    .end annotation

    .prologue
    .line 404
    .local p2, "segmentation":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lio/rong/imlib/statistics/Statistics;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 405
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Statistics.sharedInstance().init must be called before recordEvent"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 404
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 407
    :cond_0
    if-eqz p1, :cond_1

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 408
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Valid Statistics event key is required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 410
    :cond_2
    const/4 v0, 0x1

    if-ge p3, v0, :cond_3

    .line 411
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Statistics event count should be greater than zero"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 413
    :cond_3
    if-eqz p2, :cond_8

    .line 414
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 415
    .local v7, "k":Ljava/lang/String;
    if-eqz v7, :cond_5

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_6

    .line 416
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Statistics event segmentation key cannot be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 418
    :cond_6
    invoke-interface {p2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-interface {p2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_4

    .line 419
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Statistics event segmentation value cannot be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 424
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v7    # "k":Ljava/lang/String;
    :cond_8
    iget-object v0, p0, Lio/rong/imlib/statistics/Statistics;->eventQueue_:Lio/rong/imlib/statistics/EventQueue;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lio/rong/imlib/statistics/EventQueue;->recordEvent(Ljava/lang/String;Ljava/util/Map;ID)V

    .line 425
    invoke-virtual {p0}, Lio/rong/imlib/statistics/Statistics;->sendEventsIfNeeded()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 426
    monitor-exit p0

    return-void
.end method

.method roundedSecondsSinceLastSessionDurationUpdate()I
    .locals 8

    .prologue
    .line 703
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 704
    .local v0, "currentTimestampInNanoseconds":J
    iget-wide v4, p0, Lio/rong/imlib/statistics/Statistics;->prevSessionDurationStartTime_:J

    sub-long v2, v0, v4

    .line 705
    .local v2, "unsentSessionLengthInNanoseconds":J
    iput-wide v0, p0, Lio/rong/imlib/statistics/Statistics;->prevSessionDurationStartTime_:J

    .line 706
    long-to-double v4, v2

    const-wide v6, 0x41cdcd6500000000L    # 1.0E9

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v4, v4

    return v4
.end method

.method sendEventsIfNeeded()V
    .locals 3

    .prologue
    .line 676
    const-string v0, "Statistics"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendEventsIfNeeded: queue="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lio/rong/imlib/statistics/Statistics;->eventQueue_:Lio/rong/imlib/statistics/EventQueue;

    invoke-virtual {v2}, Lio/rong/imlib/statistics/EventQueue;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    iget-object v0, p0, Lio/rong/imlib/statistics/Statistics;->eventQueue_:Lio/rong/imlib/statistics/EventQueue;

    invoke-virtual {v0}, Lio/rong/imlib/statistics/EventQueue;->size()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    .line 678
    iget-object v0, p0, Lio/rong/imlib/statistics/Statistics;->connectionQueue_:Lio/rong/imlib/statistics/ConnectionQueue;

    iget-object v1, p0, Lio/rong/imlib/statistics/Statistics;->eventQueue_:Lio/rong/imlib/statistics/EventQueue;

    invoke-virtual {v1}, Lio/rong/imlib/statistics/EventQueue;->events()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/rong/imlib/statistics/ConnectionQueue;->recordEvents(Ljava/lang/String;)V

    .line 680
    :cond_0
    return-void
.end method

.method setConnectionQueue(Lio/rong/imlib/statistics/ConnectionQueue;)V
    .locals 0
    .param p1, "connectionQueue"    # Lio/rong/imlib/statistics/ConnectionQueue;

    .prologue
    .line 748
    iput-object p1, p0, Lio/rong/imlib/statistics/Statistics;->connectionQueue_:Lio/rong/imlib/statistics/ConnectionQueue;

    return-void
.end method

.method public declared-synchronized setCustomCrashSegments(Ljava/util/Map;)Lio/rong/imlib/statistics/Statistics;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lio/rong/imlib/statistics/Statistics;"
        }
    .end annotation

    .prologue
    .line 591
    .local p1, "segments":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 592
    :try_start_0
    invoke-static {p1}, Lio/rong/imlib/statistics/CrashDetails;->setCustomSegments(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 593
    :cond_0
    monitor-exit p0

    return-object p0

    .line 591
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setCustomUserData(Ljava/util/Map;)Lio/rong/imlib/statistics/Statistics;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lio/rong/imlib/statistics/Statistics;"
        }
    .end annotation

    .prologue
    .line 559
    .local p1, "customdata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 560
    :try_start_0
    invoke-static {p1}, Lio/rong/imlib/statistics/UserData;->setCustomData(Ljava/util/Map;)V

    .line 561
    :cond_0
    iget-object v0, p0, Lio/rong/imlib/statistics/Statistics;->connectionQueue_:Lio/rong/imlib/statistics/ConnectionQueue;

    invoke-virtual {v0}, Lio/rong/imlib/statistics/ConnectionQueue;->sendUserData()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 562
    monitor-exit p0

    return-object p0

    .line 559
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDisableUpdateSessionRequests(Z)Lio/rong/imlib/statistics/Statistics;
    .locals 1
    .param p1, "disable"    # Z

    .prologue
    .line 654
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lio/rong/imlib/statistics/Statistics;->disableUpdateSessionRequests_:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 655
    monitor-exit p0

    return-object p0

    .line 654
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method setEventQueue(Lio/rong/imlib/statistics/EventQueue;)V
    .locals 0
    .param p1, "eventQueue"    # Lio/rong/imlib/statistics/EventQueue;

    .prologue
    .line 751
    iput-object p1, p0, Lio/rong/imlib/statistics/Statistics;->eventQueue_:Lio/rong/imlib/statistics/EventQueue;

    return-void
.end method

.method public declared-synchronized setLocation(DD)Lio/rong/imlib/statistics/Statistics;
    .locals 3
    .param p1, "lat"    # D
    .param p3, "lon"    # D

    .prologue
    .line 576
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/rong/imlib/statistics/Statistics;->connectionQueue_:Lio/rong/imlib/statistics/ConnectionQueue;

    invoke-virtual {v0}, Lio/rong/imlib/statistics/ConnectionQueue;->getCountlyStore()Lio/rong/imlib/statistics/StatisticsStore;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lio/rong/imlib/statistics/StatisticsStore;->setLocation(DD)V

    .line 578
    iget-boolean v0, p0, Lio/rong/imlib/statistics/Statistics;->disableUpdateSessionRequests_:Z

    if-eqz v0, :cond_0

    .line 579
    iget-object v0, p0, Lio/rong/imlib/statistics/Statistics;->connectionQueue_:Lio/rong/imlib/statistics/ConnectionQueue;

    invoke-virtual {p0}, Lio/rong/imlib/statistics/Statistics;->roundedSecondsSinceLastSessionDurationUpdate()I

    move-result v1

    invoke-virtual {v0, v1}, Lio/rong/imlib/statistics/ConnectionQueue;->updateSession(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 582
    :cond_0
    monitor-exit p0

    return-object p0

    .line 576
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setLoggingEnabled(Z)Lio/rong/imlib/statistics/Statistics;
    .locals 1
    .param p1, "enableLogging"    # Z

    .prologue
    .line 664
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lio/rong/imlib/statistics/Statistics;->enableLogging_:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 665
    monitor-exit p0

    return-object p0

    .line 664
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method setPrevSessionDurationStartTime(J)V
    .locals 1
    .param p1, "prevSessionDurationStartTime"    # J

    .prologue
    .line 753
    iput-wide p1, p0, Lio/rong/imlib/statistics/Statistics;->prevSessionDurationStartTime_:J

    return-void
.end method

.method public declared-synchronized setUserData(Ljava/util/Map;)Lio/rong/imlib/statistics/Statistics;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lio/rong/imlib/statistics/Statistics;"
        }
    .end annotation

    .prologue
    .line 506
    .local p1, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lio/rong/imlib/statistics/Statistics;->setUserData(Ljava/util/Map;Ljava/util/Map;)Lio/rong/imlib/statistics/Statistics;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setUserData(Ljava/util/Map;Ljava/util/Map;)Lio/rong/imlib/statistics/Statistics;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lio/rong/imlib/statistics/Statistics;"
        }
    .end annotation

    .prologue
    .line 546
    .local p1, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p2, "customdata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lio/rong/imlib/statistics/UserData;->setData(Ljava/util/Map;)V

    .line 547
    if-eqz p2, :cond_0

    .line 548
    invoke-static {p2}, Lio/rong/imlib/statistics/UserData;->setCustomData(Ljava/util/Map;)V

    .line 549
    :cond_0
    iget-object v0, p0, Lio/rong/imlib/statistics/Statistics;->connectionQueue_:Lio/rong/imlib/statistics/ConnectionQueue;

    invoke-virtual {v0}, Lio/rong/imlib/statistics/ConnectionQueue;->sendUserData()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 550
    monitor-exit p0

    return-object p0

    .line 546
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
