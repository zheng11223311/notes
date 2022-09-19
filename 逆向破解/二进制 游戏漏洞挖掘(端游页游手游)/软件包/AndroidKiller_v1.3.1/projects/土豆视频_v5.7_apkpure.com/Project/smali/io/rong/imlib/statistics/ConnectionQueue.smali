.class public Lio/rong/imlib/statistics/ConnectionQueue;
.super Ljava/lang/Object;
.source "ConnectionQueue.java"


# instance fields
.field private appKey_:Ljava/lang/String;

.field private connectionProcessorFuture_:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation
.end field

.field private context_:Landroid/content/Context;

.field private deviceId_:Lio/rong/imlib/statistics/DeviceId;

.field private executor_:Ljava/util/concurrent/ExecutorService;

.field private serverURL_:Ljava/lang/String;

.field private sslContext_:Ljavax/net/ssl/SSLContext;

.field private store_:Lio/rong/imlib/statistics/StatisticsStore;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lio/rong/imlib/statistics/ConnectionQueue;)Lio/rong/imlib/statistics/StatisticsStore;
    .locals 1
    .param p0, "x0"    # Lio/rong/imlib/statistics/ConnectionQueue;

    .prologue
    .line 49
    iget-object v0, p0, Lio/rong/imlib/statistics/ConnectionQueue;->store_:Lio/rong/imlib/statistics/StatisticsStore;

    return-object v0
.end method


# virtual methods
.method beginSession()V
    .locals 3

    .prologue
    .line 154
    iget-object v1, p0, Lio/rong/imlib/statistics/ConnectionQueue;->store_:Lio/rong/imlib/statistics/StatisticsStore;

    invoke-virtual {v1}, Lio/rong/imlib/statistics/StatisticsStore;->uploadIfNeed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 155
    invoke-virtual {p0}, Lio/rong/imlib/statistics/ConnectionQueue;->checkInternalState()V

    .line 156
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deviceId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lio/rong/imlib/statistics/ConnectionQueue;->deviceId_:Lio/rong/imlib/statistics/DeviceId;

    invoke-virtual {v2}, Lio/rong/imlib/statistics/DeviceId;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&appKey="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lio/rong/imlib/statistics/ConnectionQueue;->appKey_:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&timestamp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lio/rong/imlib/statistics/Statistics;->currentTimestamp()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 159
    .local v0, "data":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&deviceInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lio/rong/imlib/statistics/ConnectionQueue;->context_:Landroid/content/Context;

    invoke-static {v2}, Lio/rong/imlib/statistics/DeviceInfo;->getMetrics(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 160
    iget-object v1, p0, Lio/rong/imlib/statistics/ConnectionQueue;->store_:Lio/rong/imlib/statistics/StatisticsStore;

    invoke-virtual {v1, v0}, Lio/rong/imlib/statistics/StatisticsStore;->addConnection(Ljava/lang/String;)V

    .line 162
    invoke-virtual {p0}, Lio/rong/imlib/statistics/ConnectionQueue;->tick()V

    .line 164
    .end local v0    # "data":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method checkInternalState()V
    .locals 2

    .prologue
    .line 131
    iget-object v0, p0, Lio/rong/imlib/statistics/ConnectionQueue;->context_:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 132
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "context has not been set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 134
    :cond_0
    iget-object v0, p0, Lio/rong/imlib/statistics/ConnectionQueue;->appKey_:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/rong/imlib/statistics/ConnectionQueue;->appKey_:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 135
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "app key has not been set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 137
    :cond_2
    iget-object v0, p0, Lio/rong/imlib/statistics/ConnectionQueue;->store_:Lio/rong/imlib/statistics/StatisticsStore;

    if-nez v0, :cond_3

    .line 138
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "countly store has not been set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 140
    :cond_3
    iget-object v0, p0, Lio/rong/imlib/statistics/ConnectionQueue;->serverURL_:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lio/rong/imlib/statistics/ConnectionQueue;->serverURL_:Ljava/lang/String;

    invoke-static {v0}, Lio/rong/imlib/statistics/Statistics;->isValidURL(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 141
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "server URL is not valid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 143
    :cond_5
    sget-object v0, Lio/rong/imlib/statistics/Statistics;->publicKeyPinCertificates:Ljava/util/List;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lio/rong/imlib/statistics/ConnectionQueue;->serverURL_:Ljava/lang/String;

    const-string v1, "https"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 144
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "server must start with https once you specified public keys"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 146
    :cond_6
    return-void
.end method

.method endSession(I)V
    .locals 3
    .param p1, "duration"    # I

    .prologue
    .line 213
    invoke-virtual {p0}, Lio/rong/imlib/statistics/ConnectionQueue;->checkInternalState()V

    .line 214
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "app_key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lio/rong/imlib/statistics/ConnectionQueue;->appKey_:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&timestamp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lio/rong/imlib/statistics/Statistics;->currentTimestamp()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&end_session=1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 217
    .local v0, "data":Ljava/lang/String;
    if-lez p1, :cond_0

    .line 218
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&session_duration="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 221
    :cond_0
    iget-object v1, p0, Lio/rong/imlib/statistics/ConnectionQueue;->store_:Lio/rong/imlib/statistics/StatisticsStore;

    invoke-virtual {v1, v0}, Lio/rong/imlib/statistics/StatisticsStore;->addConnection(Ljava/lang/String;)V

    .line 223
    invoke-virtual {p0}, Lio/rong/imlib/statistics/ConnectionQueue;->tick()V

    .line 224
    return-void
.end method

.method ensureExecutor()V
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lio/rong/imlib/statistics/ConnectionQueue;->executor_:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    .line 316
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lio/rong/imlib/statistics/ConnectionQueue;->executor_:Ljava/util/concurrent/ExecutorService;

    .line 318
    :cond_0
    return-void
.end method

.method getAppKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lio/rong/imlib/statistics/ConnectionQueue;->appKey_:Ljava/lang/String;

    return-object v0
.end method

.method getConnectionProcessorFuture()Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 336
    iget-object v0, p0, Lio/rong/imlib/statistics/ConnectionQueue;->connectionProcessorFuture_:Ljava/util/concurrent/Future;

    return-object v0
.end method

.method getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lio/rong/imlib/statistics/ConnectionQueue;->context_:Landroid/content/Context;

    return-object v0
.end method

.method getCountlyStore()Lio/rong/imlib/statistics/StatisticsStore;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lio/rong/imlib/statistics/ConnectionQueue;->store_:Lio/rong/imlib/statistics/StatisticsStore;

    return-object v0
.end method

.method getDeviceId()Lio/rong/imlib/statistics/DeviceId;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lio/rong/imlib/statistics/ConnectionQueue;->deviceId_:Lio/rong/imlib/statistics/DeviceId;

    return-object v0
.end method

.method getExecutor()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lio/rong/imlib/statistics/ConnectionQueue;->executor_:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method getServerURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lio/rong/imlib/statistics/ConnectionQueue;->serverURL_:Ljava/lang/String;

    return-object v0
.end method

.method recordEvents(Ljava/lang/String;)V
    .locals 3
    .param p1, "events"    # Ljava/lang/String;

    .prologue
    .line 284
    invoke-virtual {p0}, Lio/rong/imlib/statistics/ConnectionQueue;->checkInternalState()V

    .line 285
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deviceId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lio/rong/imlib/statistics/ConnectionQueue;->deviceId_:Lio/rong/imlib/statistics/DeviceId;

    invoke-virtual {v2}, Lio/rong/imlib/statistics/DeviceId;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&appKey="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lio/rong/imlib/statistics/ConnectionQueue;->appKey_:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&timestamp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lio/rong/imlib/statistics/Statistics;->currentTimestamp()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&pushEvent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 290
    .local v0, "data":Ljava/lang/String;
    iget-object v1, p0, Lio/rong/imlib/statistics/ConnectionQueue;->store_:Lio/rong/imlib/statistics/StatisticsStore;

    invoke-virtual {v1, v0}, Lio/rong/imlib/statistics/StatisticsStore;->addConnection(Ljava/lang/String;)V

    .line 292
    invoke-virtual {p0}, Lio/rong/imlib/statistics/ConnectionQueue;->tick()V

    .line 293
    return-void
.end method

.method recordLocation(Ljava/lang/String;)V
    .locals 3
    .param p1, "events"    # Ljava/lang/String;

    .prologue
    .line 301
    invoke-virtual {p0}, Lio/rong/imlib/statistics/ConnectionQueue;->checkInternalState()V

    .line 302
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "app_key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lio/rong/imlib/statistics/ConnectionQueue;->appKey_:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&timestamp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lio/rong/imlib/statistics/Statistics;->currentTimestamp()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&events="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 306
    .local v0, "data":Ljava/lang/String;
    iget-object v1, p0, Lio/rong/imlib/statistics/ConnectionQueue;->store_:Lio/rong/imlib/statistics/StatisticsStore;

    invoke-virtual {v1, v0}, Lio/rong/imlib/statistics/StatisticsStore;->addConnection(Ljava/lang/String;)V

    .line 308
    invoke-virtual {p0}, Lio/rong/imlib/statistics/ConnectionQueue;->tick()V

    .line 309
    return-void
.end method

.method sendCrashReport(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "error"    # Ljava/lang/String;
    .param p2, "nonfatal"    # Z

    .prologue
    .line 267
    invoke-virtual {p0}, Lio/rong/imlib/statistics/ConnectionQueue;->checkInternalState()V

    .line 268
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "app_key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lio/rong/imlib/statistics/ConnectionQueue;->appKey_:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&timestamp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lio/rong/imlib/statistics/Statistics;->currentTimestamp()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&sdk_version="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "15.06"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&crash="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lio/rong/imlib/statistics/ConnectionQueue;->context_:Landroid/content/Context;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, p1, v3}, Lio/rong/imlib/statistics/CrashDetails;->getCrashData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 273
    .local v0, "data":Ljava/lang/String;
    iget-object v1, p0, Lio/rong/imlib/statistics/ConnectionQueue;->store_:Lio/rong/imlib/statistics/StatisticsStore;

    invoke-virtual {v1, v0}, Lio/rong/imlib/statistics/StatisticsStore;->addConnection(Ljava/lang/String;)V

    .line 275
    invoke-virtual {p0}, Lio/rong/imlib/statistics/ConnectionQueue;->tick()V

    .line 276
    return-void
.end method

.method sendReferrerData(Ljava/lang/String;)V
    .locals 3
    .param p1, "referrer"    # Ljava/lang/String;

    .prologue
    .line 250
    invoke-virtual {p0}, Lio/rong/imlib/statistics/ConnectionQueue;->checkInternalState()V

    .line 252
    if-eqz p1, :cond_0

    .line 253
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "app_key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lio/rong/imlib/statistics/ConnectionQueue;->appKey_:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&timestamp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lio/rong/imlib/statistics/Statistics;->currentTimestamp()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 256
    .local v0, "data":Ljava/lang/String;
    iget-object v1, p0, Lio/rong/imlib/statistics/ConnectionQueue;->store_:Lio/rong/imlib/statistics/StatisticsStore;

    invoke-virtual {v1, v0}, Lio/rong/imlib/statistics/StatisticsStore;->addConnection(Ljava/lang/String;)V

    .line 258
    invoke-virtual {p0}, Lio/rong/imlib/statistics/ConnectionQueue;->tick()V

    .line 260
    .end local v0    # "data":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method sendUserData()V
    .locals 4

    .prologue
    .line 231
    invoke-virtual {p0}, Lio/rong/imlib/statistics/ConnectionQueue;->checkInternalState()V

    .line 232
    invoke-static {}, Lio/rong/imlib/statistics/UserData;->getDataForRequest()Ljava/lang/String;

    move-result-object v1

    .line 234
    .local v1, "userdata":Ljava/lang/String;
    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 235
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "app_key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lio/rong/imlib/statistics/ConnectionQueue;->appKey_:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&timestamp="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lio/rong/imlib/statistics/Statistics;->currentTimestamp()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 238
    .local v0, "data":Ljava/lang/String;
    iget-object v2, p0, Lio/rong/imlib/statistics/ConnectionQueue;->store_:Lio/rong/imlib/statistics/StatisticsStore;

    invoke-virtual {v2, v0}, Lio/rong/imlib/statistics/StatisticsStore;->addConnection(Ljava/lang/String;)V

    .line 240
    invoke-virtual {p0}, Lio/rong/imlib/statistics/ConnectionQueue;->tick()V

    .line 242
    .end local v0    # "data":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method setAppKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "appKey"    # Ljava/lang/String;

    .prologue
    .line 65
    iput-object p1, p0, Lio/rong/imlib/statistics/ConnectionQueue;->appKey_:Ljava/lang/String;

    .line 66
    return-void
.end method

.method setConnectionProcessorFuture(Ljava/util/concurrent/Future;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 337
    .local p1, "connectionProcessorFuture":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    iput-object p1, p0, Lio/rong/imlib/statistics/ConnectionQueue;->connectionProcessorFuture_:Ljava/util/concurrent/Future;

    return-void
.end method

.method setContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 73
    iput-object p1, p0, Lio/rong/imlib/statistics/ConnectionQueue;->context_:Landroid/content/Context;

    .line 74
    return-void
.end method

.method setCountlyStore(Lio/rong/imlib/statistics/StatisticsStore;)V
    .locals 0
    .param p1, "statisticsStore"    # Lio/rong/imlib/statistics/StatisticsStore;

    .prologue
    .line 117
    iput-object p1, p0, Lio/rong/imlib/statistics/ConnectionQueue;->store_:Lio/rong/imlib/statistics/StatisticsStore;

    .line 118
    return-void
.end method

.method public setDeviceId(Lio/rong/imlib/statistics/DeviceId;)V
    .locals 0
    .param p1, "deviceId"    # Lio/rong/imlib/statistics/DeviceId;

    .prologue
    .line 123
    iput-object p1, p0, Lio/rong/imlib/statistics/ConnectionQueue;->deviceId_:Lio/rong/imlib/statistics/DeviceId;

    .line 124
    return-void
.end method

.method setExecutor(Ljava/util/concurrent/ExecutorService;)V
    .locals 0
    .param p1, "executor"    # Ljava/util/concurrent/ExecutorService;

    .prologue
    .line 335
    iput-object p1, p0, Lio/rong/imlib/statistics/ConnectionQueue;->executor_:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method setServerURL(Ljava/lang/String;)V
    .locals 5
    .param p1, "serverURL"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 81
    iput-object p1, p0, Lio/rong/imlib/statistics/ConnectionQueue;->serverURL_:Ljava/lang/String;

    .line 83
    sget-object v2, Lio/rong/imlib/statistics/Statistics;->publicKeyPinCertificates:Ljava/util/List;

    if-nez v2, :cond_0

    .line 84
    iput-object v3, p0, Lio/rong/imlib/statistics/ConnectionQueue;->sslContext_:Ljavax/net/ssl/SSLContext;

    .line 110
    :goto_0
    return-void

    .line 90
    :cond_0
    const/4 v2, 0x1

    :try_start_0
    new-array v1, v2, [Ljavax/net/ssl/TrustManager;

    const/4 v2, 0x0

    new-instance v3, Lio/rong/imlib/statistics/ConnectionQueue$1;

    invoke-direct {v3, p0}, Lio/rong/imlib/statistics/ConnectionQueue$1;-><init>(Lio/rong/imlib/statistics/ConnectionQueue;)V

    aput-object v3, v1, v2

    .line 104
    .local v1, "tm":[Ljavax/net/ssl/TrustManager;
    const-string v2, "TLS"

    invoke-static {v2}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v2

    iput-object v2, p0, Lio/rong/imlib/statistics/ConnectionQueue;->sslContext_:Ljavax/net/ssl/SSLContext;

    .line 105
    iget-object v2, p0, Lio/rong/imlib/statistics/ConnectionQueue;->sslContext_:Ljavax/net/ssl/SSLContext;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v4}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 106
    .end local v1    # "tm":[Ljavax/net/ssl/TrustManager;
    :catch_0
    move-exception v0

    .line 107
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method tick()V
    .locals 6

    .prologue
    .line 327
    iget-object v0, p0, Lio/rong/imlib/statistics/ConnectionQueue;->store_:Lio/rong/imlib/statistics/StatisticsStore;

    invoke-virtual {v0}, Lio/rong/imlib/statistics/StatisticsStore;->isEmptyConnections()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/rong/imlib/statistics/ConnectionQueue;->connectionProcessorFuture_:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/rong/imlib/statistics/ConnectionQueue;->connectionProcessorFuture_:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 328
    :cond_0
    invoke-virtual {p0}, Lio/rong/imlib/statistics/ConnectionQueue;->ensureExecutor()V

    .line 329
    iget-object v0, p0, Lio/rong/imlib/statistics/ConnectionQueue;->executor_:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lio/rong/imlib/statistics/ConnectionProcessor;

    iget-object v2, p0, Lio/rong/imlib/statistics/ConnectionQueue;->serverURL_:Ljava/lang/String;

    iget-object v3, p0, Lio/rong/imlib/statistics/ConnectionQueue;->store_:Lio/rong/imlib/statistics/StatisticsStore;

    iget-object v4, p0, Lio/rong/imlib/statistics/ConnectionQueue;->deviceId_:Lio/rong/imlib/statistics/DeviceId;

    iget-object v5, p0, Lio/rong/imlib/statistics/ConnectionQueue;->sslContext_:Ljavax/net/ssl/SSLContext;

    invoke-direct {v1, v2, v3, v4, v5}, Lio/rong/imlib/statistics/ConnectionProcessor;-><init>(Ljava/lang/String;Lio/rong/imlib/statistics/StatisticsStore;Lio/rong/imlib/statistics/DeviceId;Ljavax/net/ssl/SSLContext;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lio/rong/imlib/statistics/ConnectionQueue;->connectionProcessorFuture_:Ljava/util/concurrent/Future;

    .line 331
    :cond_1
    return-void
.end method

.method public tokenSession(Ljava/lang/String;Lio/rong/imlib/statistics/Statistics$CountlyMessagingMode;)V
    .locals 6
    .param p1, "token"    # Ljava/lang/String;
    .param p2, "mode"    # Lio/rong/imlib/statistics/Statistics$CountlyMessagingMode;

    .prologue
    .line 186
    invoke-virtual {p0}, Lio/rong/imlib/statistics/ConnectionQueue;->checkInternalState()V

    .line 188
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "app_key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lio/rong/imlib/statistics/ConnectionQueue;->appKey_:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "timestamp="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lio/rong/imlib/statistics/Statistics;->currentTimestamp()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "token_session=1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "android_token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "test_mode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v2, Lio/rong/imlib/statistics/Statistics$CountlyMessagingMode;->TEST:Lio/rong/imlib/statistics/Statistics$CountlyMessagingMode;

    if-ne p2, v2, :cond_0

    const/4 v2, 0x2

    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "locale="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lio/rong/imlib/statistics/DeviceInfo;->getLocale()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 196
    .local v0, "data":Ljava/lang/String;
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    .line 197
    .local v1, "worker":Ljava/util/concurrent/ScheduledExecutorService;
    new-instance v2, Lio/rong/imlib/statistics/ConnectionQueue$2;

    invoke-direct {v2, p0, v0}, Lio/rong/imlib/statistics/ConnectionQueue$2;-><init>(Lio/rong/imlib/statistics/ConnectionQueue;Ljava/lang/String;)V

    const-wide/16 v4, 0xa

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v4, v5, v3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 204
    return-void

    .line 188
    .end local v0    # "data":Ljava/lang/String;
    .end local v1    # "worker":Ljava/util/concurrent/ScheduledExecutorService;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method updateSession(I)V
    .locals 3
    .param p1, "duration"    # I

    .prologue
    .line 173
    invoke-virtual {p0}, Lio/rong/imlib/statistics/ConnectionQueue;->checkInternalState()V

    .line 174
    if-lez p1, :cond_0

    .line 175
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deviceId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lio/rong/imlib/statistics/ConnectionQueue;->deviceId_:Lio/rong/imlib/statistics/DeviceId;

    invoke-virtual {v2}, Lio/rong/imlib/statistics/DeviceId;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&appKey="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lio/rong/imlib/statistics/ConnectionQueue;->appKey_:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&timestamp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lio/rong/imlib/statistics/Statistics;->currentTimestamp()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 179
    .local v0, "data":Ljava/lang/String;
    iget-object v1, p0, Lio/rong/imlib/statistics/ConnectionQueue;->store_:Lio/rong/imlib/statistics/StatisticsStore;

    invoke-virtual {v1, v0}, Lio/rong/imlib/statistics/StatisticsStore;->addConnection(Ljava/lang/String;)V

    .line 181
    invoke-virtual {p0}, Lio/rong/imlib/statistics/ConnectionQueue;->tick()V

    .line 183
    .end local v0    # "data":Ljava/lang/String;
    :cond_0
    return-void
.end method
