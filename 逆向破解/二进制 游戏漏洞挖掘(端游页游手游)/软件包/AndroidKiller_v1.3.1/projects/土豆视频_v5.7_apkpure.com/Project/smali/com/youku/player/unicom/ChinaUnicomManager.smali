.class public Lcom/youku/player/unicom/ChinaUnicomManager;
.super Ljava/lang/Object;
.source "ChinaUnicomManager.java"


# static fields
.field private static final KEEP_ALIVE:I = 0x1e

.field private static final MAX_WORKING_THREAD:I = 0x8

.field private static final TAG:Ljava/lang/String; = "ChinaUnicomManager"

.field private static instance:Lcom/youku/player/unicom/ChinaUnicomManager;

.field private static object:Ljava/lang/Object;

.field private static service:Ljava/util/concurrent/ThreadPoolExecutor;


# instance fields
.field private acceleraterManager:Lcom/youku/service/acc/AcceleraterManager;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/16 v2, 0x8

    .line 40
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v4, 0x1e

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    move v3, v2

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    sput-object v1, Lcom/youku/player/unicom/ChinaUnicomManager;->service:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 43
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/youku/player/unicom/ChinaUnicomManager;->object:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    invoke-static {p1}, Lcom/youku/service/acc/AcceleraterManager;->getInstance(Landroid/content/Context;)Lcom/youku/service/acc/AcceleraterManager;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/player/unicom/ChinaUnicomManager;->acceleraterManager:Lcom/youku/service/acc/AcceleraterManager;

    .line 70
    iget-object v0, p0, Lcom/youku/player/unicom/ChinaUnicomManager;->acceleraterManager:Lcom/youku/service/acc/AcceleraterManager;

    invoke-virtual {v0}, Lcom/youku/service/acc/AcceleraterManager;->bindService()V

    .line 71
    return-void
.end method

.method static synthetic access$000(Lcom/youku/player/unicom/ChinaUnicomManager;Ljava/lang/String;Ljava/util/concurrent/CountDownLatch;Lcom/youku/player/goplay/ItemSeg;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/player/unicom/ChinaUnicomManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/util/concurrent/CountDownLatch;
    .param p3, "x3"    # Lcom/youku/player/goplay/ItemSeg;
    .param p4, "x4"    # Ljava/util/Map;
    .param p5, "x5"    # Ljava/lang/String;
    .param p6, "x6"    # Ljava/lang/String;
    .param p7, "x7"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-direct/range {p0 .. p7}, Lcom/youku/player/unicom/ChinaUnicomManager;->getWoVideoUrl(Ljava/lang/String;Ljava/util/concurrent/CountDownLatch;Lcom/youku/player/goplay/ItemSeg;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static checkChinaUnicomStatus(Landroid/app/Activity;Lcom/youku/player/plugin/MediaPlayerDelegate;Lcom/youku/player/module/VideoUrlInfo;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "mediaPlayerDelegate"    # Lcom/youku/player/plugin/MediaPlayerDelegate;
    .param p2, "videoInfo"    # Lcom/youku/player/module/VideoUrlInfo;

    .prologue
    .line 154
    invoke-static {p0}, Lcom/youku/player/unicom/ChinaUnicomFreeFlowUtil;->getOperatorType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "unicom"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    invoke-static {}, Lcom/youku/player/unicom/ChinaUnicomFreeFlowUtil;->isSatisfyChinaUnicomFreeFlow()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Lcom/youku/player/util/PlayerUtil;->isFromLocal(Lcom/youku/player/module/VideoUrlInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lcom/youku/player/module/VideoUrlInfo;->isCached()Z

    move-result v0

    if-nez v0, :cond_0

    .line 160
    new-instance v0, Lcom/youku/player/unicom/ChinaUnicomManager$3;

    invoke-direct {v0, p2, p0, p1}, Lcom/youku/player/unicom/ChinaUnicomManager$3;-><init>(Lcom/youku/player/module/VideoUrlInfo;Landroid/app/Activity;Lcom/youku/player/plugin/MediaPlayerDelegate;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 219
    :cond_0
    return-void
.end method

.method public static getChinaUnicomVideoInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 3
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "videoId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 134
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 135
    .local v0, "woVideoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "videoid"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    const-string/jumbo v1, "videourl"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    const-string/jumbo v1, "tag"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    const-string v1, "phoneversion"

    sget-object v2, Lcom/youku/analytics/data/Device;->os_ver:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    const-string v1, "phonetype"

    const-string v2, "android"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    const-string v1, "modelnumber"

    sget-object v2, Lcom/youku/analytics/data/Device;->btype:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    return-object v0
.end method

.method public static declared-synchronized getInstance()Lcom/youku/player/unicom/ChinaUnicomManager;
    .locals 4

    .prologue
    .line 48
    const-class v1, Lcom/youku/player/unicom/ChinaUnicomManager;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/youku/player/unicom/ChinaUnicomManager;->initChinaUnicomSDK()V

    .line 50
    sget-object v0, Lcom/youku/player/unicom/ChinaUnicomManager;->instance:Lcom/youku/player/unicom/ChinaUnicomManager;

    if-nez v0, :cond_0

    .line 51
    sget-object v2, Lcom/youku/player/unicom/ChinaUnicomManager;->object:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 52
    :try_start_1
    new-instance v0, Lcom/youku/player/unicom/ChinaUnicomManager;

    sget-object v3, Lcom/baseproject/utils/Profile;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/youku/player/unicom/ChinaUnicomManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/youku/player/unicom/ChinaUnicomManager;->instance:Lcom/youku/player/unicom/ChinaUnicomManager;

    .line 53
    sget-object v0, Lcom/youku/player/unicom/ChinaUnicomManager;->service:Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 54
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 56
    :cond_0
    :try_start_2
    sget-object v0, Lcom/youku/player/unicom/ChinaUnicomManager;->instance:Lcom/youku/player/unicom/ChinaUnicomManager;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v1

    return-object v0

    .line 54
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 48
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getWoVideoUrl(Ljava/lang/String;Ljava/util/concurrent/CountDownLatch;Lcom/youku/player/goplay/ItemSeg;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p1, "videoId"    # Ljava/lang/String;
    .param p2, "countDownLatch"    # Ljava/util/concurrent/CountDownLatch;
    .param p3, "item"    # Lcom/youku/player/goplay/ItemSeg;
    .param p5, "token"    # Ljava/lang/String;
    .param p6, "oip"    # Ljava/lang/String;
    .param p7, "sid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/CountDownLatch;",
            "Lcom/youku/player/goplay/ItemSeg;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 100
    .local p4, "woVideoUrls":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p3}, Lcom/youku/player/goplay/ItemSeg;->get_Url()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 101
    .local v8, "WoVideoUrl":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    invoke-static {}, Lcom/youku/player/config/MediaPlayerConfiguration;->getInstance()Lcom/youku/player/config/MediaPlayerConfiguration;

    move-result-object v0

    iget-object v0, v0, Lcom/youku/player/config/MediaPlayerConfiguration;->mPlantformController:Lcom/youku/player/apiservice/PlantformController;

    invoke-virtual {p3}, Lcom/youku/player/goplay/ItemSeg;->get_Url()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Lcom/youku/player/goplay/ItemSeg;->getFieldId()Ljava/lang/String;

    move-result-object v2

    sget-object v6, Lcom/youku/player/plugin/MediaPlayerDelegate;->is:Ljava/io/InputStream;

    sget-object v7, Lcom/youku/analytics/data/Device;->gdid:Ljava/lang/String;

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    invoke-virtual/range {v0 .. v7}, Lcom/youku/player/apiservice/PlantformController;->getEncreptUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 105
    .local v9, "encryptUrl":Ljava/lang/String;
    sget-object v0, Lcom/youku/player/LogTag;->TAG_WO_VIDEO:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "encryptUrl:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    invoke-static {v9, p1}, Lcom/youku/player/unicom/ChinaUnicomManager;->getChinaUnicomVideoInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v10

    .line 109
    .local v10, "woVideoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v0, Lcom/baseproject/utils/Profile;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/youku/player/unicom/ChinaUnicomManager$2;

    invoke-direct {v1, p0, p4, p3, p2}, Lcom/youku/player/unicom/ChinaUnicomManager$2;-><init>(Lcom/youku/player/unicom/ChinaUnicomManager;Ljava/util/Map;Lcom/youku/player/goplay/ItemSeg;Ljava/util/concurrent/CountDownLatch;)V

    invoke-static {v0, v10, v1}, Lcom/unicom/iap/sdk/WoVideoSDK;->identifyWoVideoSDK(Landroid/content/Context;Ljava/util/Map;Lcom/unicom/iap/sdk/IWoVideoSDKCallBack;)V

    .line 131
    .end local v9    # "encryptUrl":Ljava/lang/String;
    .end local v10    # "woVideoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    return-void

    .line 129
    :cond_0
    invoke-virtual {p2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_0
.end method

.method public static initChinaUnicomSDK()V
    .locals 1

    .prologue
    .line 63
    invoke-static {}, Lcom/youku/player/config/MediaPlayerConfiguration;->getInstance()Lcom/youku/player/config/MediaPlayerConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/player/config/MediaPlayerConfiguration;->unicomFree()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/youku/player/unicom/ChinaUnicomFreeFlowUtil;->isChinaUnicom3GNet()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/youku/player/unicom/ChinaUnicomFreeFlowUtil;->isChinaUnicomSubscribed:Z

    if-nez v0, :cond_0

    .line 64
    sget-object v0, Lcom/baseproject/utils/Profile;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/youku/player/unicom/ChinaUnicomFreeFlowUtil;->initChinaUnicomSDK(Landroid/content/Context;)V

    .line 66
    :cond_0
    return-void
.end method


# virtual methods
.method public getWoVideoUrls(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 14
    .param p1, "videoId"    # Ljava/lang/String;
    .param p4, "token"    # Ljava/lang/String;
    .param p5, "oip"    # Ljava/lang/String;
    .param p6, "sid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/youku/player/goplay/ItemSeg;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 76
    .local p2, "vSeg":Ljava/util/List;, "Ljava/util/List<Lcom/youku/player/goplay/ItemSeg;>;"
    .local p3, "woVideoUrls":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p2, :cond_0

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 95
    :cond_0
    :goto_0
    return-void

    .line 78
    :cond_1
    new-instance v3, Ljava/util/concurrent/CountDownLatch;

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v3, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 79
    .local v3, "countDownLatch":Ljava/util/concurrent/CountDownLatch;
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v12

    .line 80
    .local v12, "size":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    if-ge v11, v12, :cond_2

    .line 81
    move v5, v11

    .line 82
    .local v5, "index":I
    sget-object v13, Lcom/youku/player/unicom/ChinaUnicomManager;->service:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v0, Lcom/youku/player/unicom/ChinaUnicomManager$1;

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v4, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    invoke-direct/range {v0 .. v9}, Lcom/youku/player/unicom/ChinaUnicomManager$1;-><init>(Lcom/youku/player/unicom/ChinaUnicomManager;Ljava/lang/String;Ljava/util/concurrent/CountDownLatch;Ljava/util/List;ILjava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v13, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 80
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 91
    .end local v5    # "index":I
    :cond_2
    :try_start_0
    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 92
    :catch_0
    move-exception v10

    .line 93
    .local v10, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v10}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public replaceAdvUrl(Lcom/youku/player/goplay/VideoAdvInfo;Ljava/lang/Runnable;)V
    .locals 9
    .param p1, "videoAdvInfo"    # Lcom/youku/player/goplay/VideoAdvInfo;
    .param p2, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 223
    sget-object v0, Lcom/youku/player/LogTag;->TAG_WO_VIDEO:Ljava/lang/String;

    const-string/jumbo v1, "\u8054\u901a3G\u524d\u8d34\u5e7f\u544a\u5f00\u59cb"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    iget-object v0, p1, Lcom/youku/player/goplay/VideoAdvInfo;->VAL:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 225
    .local v7, "size":I
    new-instance v5, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v5, v7}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 226
    .local v5, "countDownLatch":Ljava/util/concurrent/CountDownLatch;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v7, :cond_0

    .line 227
    iget-object v0, p1, Lcom/youku/player/goplay/VideoAdvInfo;->VAL:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/player/goplay/AdvInfo;

    iget-object v0, v0, Lcom/youku/player/goplay/AdvInfo;->RS:Ljava/lang/String;

    const-string v1, "0"

    invoke-static {v0, v1}, Lcom/youku/player/unicom/ChinaUnicomManager;->getChinaUnicomVideoInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    .line 228
    .local v2, "woVideoAdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move v4, v6

    .line 229
    .local v4, "index":I
    sget-object v8, Lcom/youku/player/unicom/ChinaUnicomManager;->service:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v0, Lcom/youku/player/unicom/ChinaUnicomManager$4;

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/youku/player/unicom/ChinaUnicomManager$4;-><init>(Lcom/youku/player/unicom/ChinaUnicomManager;Ljava/util/Map;Lcom/youku/player/goplay/VideoAdvInfo;ILjava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v8, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 226
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 247
    .end local v2    # "woVideoAdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "index":I
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/youku/player/unicom/ChinaUnicomManager$5;

    invoke-direct {v1, p0, v5, p2}, Lcom/youku/player/unicom/ChinaUnicomManager$5;-><init>(Lcom/youku/player/unicom/ChinaUnicomManager;Ljava/util/concurrent/CountDownLatch;Ljava/lang/Runnable;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 259
    return-void
.end method
