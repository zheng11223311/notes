.class public Lcom/youku/player/p2p/P2pManager;
.super Ljava/lang/Object;
.source "P2pManager.java"


# static fields
.field public static final P2P_NOT_AVAILABLE_ERROR:Ljava/lang/String; = "2-\u672a\u542f\u52a8"

.field public static final P2P_NOT_ENABLE_ERROR:Ljava/lang/String; = "0-\u4f18\u5148\u65b9\u5f0f\u4e3acdn"

.field public static final P2P_NOT_SUPPORT:Ljava/lang/String; = "3-cpu\u672a\u6ee1\u8db3\u8f6f\u89e3\u8981\u6c42"

.field public static final P2P_RETRY_ERROR:Ljava/lang/String; = "1-\u91cd\u8bd5\u6b21\u6570\u8d85\u8fc7\u9650\u5b9a"

.field public static final P2P_SWITCH_OFF:Ljava/lang/String; = "4-P2P\u64ad\u653e\u5f00\u5173\u5173\u95ed"

.field private static instance:Lcom/youku/player/p2p/P2pManager;


# instance fields
.field private acceleraterManager:Lcom/youku/service/acc/AcceleraterManager;

.field private isUsingP2P:Z

.field public mLastPlayVid:Ljava/lang/String;

.field public mRetryTimes:I

.field private service:Ljava/util/concurrent/ExecutorService;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/player/p2p/P2pManager;->service:Ljava/util/concurrent/ExecutorService;

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youku/player/p2p/P2pManager;->isUsingP2P:Z

    .line 49
    invoke-static {p1}, Lcom/youku/service/acc/AcceleraterManager;->getInstance(Landroid/content/Context;)Lcom/youku/service/acc/AcceleraterManager;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/player/p2p/P2pManager;->acceleraterManager:Lcom/youku/service/acc/AcceleraterManager;

    .line 50
    iget-object v0, p0, Lcom/youku/player/p2p/P2pManager;->acceleraterManager:Lcom/youku/service/acc/AcceleraterManager;

    invoke-virtual {v0}, Lcom/youku/service/acc/AcceleraterManager;->bindService()V

    .line 51
    return-void
.end method

.method static synthetic access$000(Lcom/youku/player/p2p/P2pManager;Ljava/util/concurrent/CountDownLatch;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/ArrayList;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/player/p2p/P2pManager;
    .param p1, "x1"    # Ljava/util/concurrent/CountDownLatch;
    .param p2, "x2"    # Ljava/util/concurrent/atomic/AtomicInteger;
    .param p3, "x3"    # Ljava/util/ArrayList;
    .param p4, "x4"    # Ljava/util/HashMap;
    .param p5, "x5"    # Ljava/lang/String;
    .param p6, "x6"    # Ljava/lang/String;
    .param p7, "x7"    # Ljava/lang/String;

    .prologue
    .line 25
    invoke-direct/range {p0 .. p7}, Lcom/youku/player/p2p/P2pManager;->getP2PUrl(Ljava/util/concurrent/CountDownLatch;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/ArrayList;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/youku/player/p2p/P2pManager;
    .locals 3

    .prologue
    .line 42
    const-class v1, Lcom/youku/player/p2p/P2pManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/youku/player/p2p/P2pManager;->instance:Lcom/youku/player/p2p/P2pManager;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Lcom/youku/player/p2p/P2pManager;

    sget-object v2, Lcom/baseproject/utils/Profile;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/youku/player/p2p/P2pManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/youku/player/p2p/P2pManager;->instance:Lcom/youku/player/p2p/P2pManager;

    .line 45
    :cond_0
    sget-object v0, Lcom/youku/player/p2p/P2pManager;->instance:Lcom/youku/player/p2p/P2pManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 42
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getP2PUrl(Ljava/util/concurrent/CountDownLatch;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/ArrayList;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 13
    .param p1, "countDownLatch"    # Ljava/util/concurrent/CountDownLatch;
    .param p2, "atomicInteger"    # Ljava/util/concurrent/atomic/AtomicInteger;
    .param p5, "token"    # Ljava/lang/String;
    .param p6, "oip"    # Ljava/lang/String;
    .param p7, "sid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CountDownLatch;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/player/goplay/ItemSeg;",
            ">;",
            "Ljava/util/HashMap",
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
    .line 128
    .local p3, "vSeg":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/player/goplay/ItemSeg;>;"
    .local p4, "p2pUrls":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v10, 0x0

    .line 129
    .local v10, "i":I
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v10

    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v10, v1, :cond_1

    .line 152
    :cond_0
    :goto_0
    return-void

    .line 132
    :cond_1
    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/youku/player/goplay/ItemSeg;

    .line 133
    .local v11, "item":Lcom/youku/player/goplay/ItemSeg;
    invoke-virtual {v11}, Lcom/youku/player/goplay/ItemSeg;->get_Url()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p4

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 134
    .local v12, "p2pUrl":Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 135
    invoke-static {}, Lcom/youku/player/config/MediaPlayerConfiguration;->getInstance()Lcom/youku/player/config/MediaPlayerConfiguration;

    move-result-object v1

    iget-object v1, v1, Lcom/youku/player/config/MediaPlayerConfiguration;->mPlantformController:Lcom/youku/player/apiservice/PlantformController;

    invoke-virtual {v11}, Lcom/youku/player/goplay/ItemSeg;->get_Url()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11}, Lcom/youku/player/goplay/ItemSeg;->getFieldId()Ljava/lang/String;

    move-result-object v3

    sget-object v7, Lcom/youku/player/plugin/MediaPlayerDelegate;->is:Ljava/io/InputStream;

    sget-object v8, Lcom/youku/analytics/data/Device;->gdid:Ljava/lang/String;

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    invoke-virtual/range {v1 .. v8}, Lcom/youku/player/apiservice/PlantformController;->getEncreptUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 138
    .local v9, "encyptUrl":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/youku/player/p2p/P2pManager;->getAccPort()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/youku/player/util/PlayerUtil;->getFinnalUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 139
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 140
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?ua=mp&st=vod"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 141
    invoke-virtual {v11}, Lcom/youku/player/goplay/ItemSeg;->get_Url()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p4

    invoke-virtual {v0, v1, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    sget-object v1, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getP2P url:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    .end local v9    # "encyptUrl":Ljava/lang/String;
    :goto_1
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 149
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 150
    invoke-direct/range {p0 .. p7}, Lcom/youku/player/p2p/P2pManager;->getP2PUrl(Ljava/util/concurrent/CountDownLatch;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/ArrayList;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 144
    .restart local v9    # "encyptUrl":Ljava/lang/String;
    :cond_2
    sget-object v1, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    const-string v2, "getP2P url failed"

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 146
    .end local v9    # "encyptUrl":Ljava/lang/String;
    :cond_3
    sget-object v1, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    const-string v2, "getP2P url from map"

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public canUseAcc()Z
    .locals 2

    .prologue
    .line 62
    sget-object v0, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    const-string v1, "canUseAcc()"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/youku/player/p2p/P2pManager;->acceleraterManager:Lcom/youku/service/acc/AcceleraterManager;

    invoke-virtual {v0}, Lcom/youku/service/acc/AcceleraterManager;->canPlayWithP2P()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/youku/player/p2p/P2pManager;->getAccPort()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/baseproject/utils/Util;->hasInternet()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/baseproject/utils/Util;->isWifi()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    sget-object v0, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    const-string v1, "can play with p2p!"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const/4 v0, 0x1

    .line 71
    :goto_0
    return v0

    .line 70
    :cond_0
    sget-object v0, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    const-string v1, "cann\'t play with p2p!"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public checkPlayP2P(Ljava/lang/String;)Z
    .locals 5
    .param p1, "videoId"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 160
    const/4 v0, 0x0

    .line 161
    .local v0, "p2pError":Ljava/lang/String;
    invoke-static {}, Lcom/youku/player/config/MediaPlayerConfiguration;->getInstance()Lcom/youku/player/config/MediaPlayerConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Lcom/youku/player/config/MediaPlayerConfiguration;->useP2P()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 162
    invoke-virtual {p0}, Lcom/youku/player/p2p/P2pManager;->canUseAcc()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 163
    iget v3, p0, Lcom/youku/player/p2p/P2pManager;->mRetryTimes:I

    invoke-static {}, Lcom/youku/player/config/MediaPlayerConfiguration;->getInstance()Lcom/youku/player/config/MediaPlayerConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Lcom/youku/player/config/MediaPlayerConfiguration;->getP2PRetryTimes()I

    move-result v4

    if-gt v3, v4, :cond_0

    .line 165
    invoke-virtual {p0, v1}, Lcom/youku/player/p2p/P2pManager;->setUsingP2P(Z)V

    .line 166
    invoke-static {v1}, Lcom/youku/player/Track;->setP2P(Z)V

    .line 182
    :goto_0
    return v1

    .line 169
    :cond_0
    const-string v0, "1-\u91cd\u8bd5\u6b21\u6570\u8d85\u8fc7\u9650\u5b9a"

    .line 180
    :goto_1
    invoke-virtual {p0, v2}, Lcom/youku/player/p2p/P2pManager;->setUsingP2P(Z)V

    .line 181
    invoke-static {p1, v0}, Lcom/youku/player/Track;->trackP2PError(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 182
    goto :goto_0

    .line 172
    :cond_1
    iget-object v1, p0, Lcom/youku/player/p2p/P2pManager;->acceleraterManager:Lcom/youku/service/acc/AcceleraterManager;

    invoke-virtual {v1}, Lcom/youku/service/acc/AcceleraterManager;->getPlaySwitch()Z

    move-result v1

    if-nez v1, :cond_2

    .line 173
    const-string v0, "4-P2P\u64ad\u653e\u5f00\u5173\u5173\u95ed"

    goto :goto_1

    .line 175
    :cond_2
    const-string v0, "2-\u672a\u542f\u52a8"

    goto :goto_1

    .line 178
    :cond_3
    const-string v0, "0-\u4f18\u5148\u65b9\u5f0f\u4e3acdn"

    goto :goto_1
.end method

.method public getAccPort()Ljava/lang/String;
    .locals 3

    .prologue
    .line 54
    iget-object v1, p0, Lcom/youku/player/p2p/P2pManager;->acceleraterManager:Lcom/youku/service/acc/AcceleraterManager;

    invoke-virtual {v1}, Lcom/youku/service/acc/AcceleraterManager;->getHttpProxyPort()I

    move-result v0

    .line 55
    .local v0, "port":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 56
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 58
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public getP2PUrls(Ljava/util/ArrayList;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 13
    .param p3, "token"    # Ljava/lang/String;
    .param p4, "oip"    # Ljava/lang/String;
    .param p5, "sid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/player/goplay/ItemSeg;",
            ">;",
            "Ljava/util/HashMap",
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
    .line 102
    .local p1, "vSeg":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/player/goplay/ItemSeg;>;"
    .local p2, "p2pUrls":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 122
    :cond_0
    :goto_0
    return-void

    .line 104
    :cond_1
    new-instance v3, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x0

    invoke-direct {v3, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 105
    .local v3, "atomicInteger":Ljava/util/concurrent/atomic/AtomicInteger;
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 106
    .local v2, "countDownLatch":Ljava/util/concurrent/CountDownLatch;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x8

    if-le v0, v1, :cond_2

    const/16 v11, 0x8

    .line 107
    .local v11, "size":I
    :goto_1
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_2
    if-ge v10, v11, :cond_3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 108
    iget-object v12, p0, Lcom/youku/player/p2p/P2pManager;->service:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/youku/player/p2p/P2pManager$1;

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/youku/player/p2p/P2pManager$1;-><init>(Lcom/youku/player/p2p/P2pManager;Ljava/util/concurrent/CountDownLatch;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/ArrayList;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v12, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 107
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 106
    .end local v10    # "i":I
    .end local v11    # "size":I
    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v11

    goto :goto_1

    .line 118
    .restart local v10    # "i":I
    .restart local v11    # "size":I
    :cond_3
    :try_start_0
    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 119
    :catch_0
    move-exception v9

    .line 120
    .local v9, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v9}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public getP2PVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 186
    invoke-static {}, Lcom/youku/service/acc/AcceleraterServiceManager;->getAccVersionName()Ljava/lang/String;

    move-result-object v0

    .line 187
    .local v0, "versionName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 188
    const-string v0, "0.0.0.0"

    .line 190
    :cond_0
    return-object v0
.end method

.method public isUsingP2P()Z
    .locals 1

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/youku/player/p2p/P2pManager;->isUsingP2P:Z

    return v0
.end method

.method public reset(Ljava/lang/String;)V
    .locals 2
    .param p1, "vid"    # Ljava/lang/String;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/youku/player/p2p/P2pManager;->mLastPlayVid:Ljava/lang/String;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/youku/player/p2p/P2pManager;->mLastPlayVid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 76
    :cond_0
    sget-object v0, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    const-string v1, "p2pmanager reset"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    iput-object p1, p0, Lcom/youku/player/p2p/P2pManager;->mLastPlayVid:Ljava/lang/String;

    .line 78
    const/4 v0, 0x0

    iput v0, p0, Lcom/youku/player/p2p/P2pManager;->mRetryTimes:I

    .line 80
    :cond_1
    return-void
.end method

.method public setUsingP2P(Z)V
    .locals 0
    .param p1, "useP2P"    # Z

    .prologue
    .line 87
    iput-boolean p1, p0, Lcom/youku/player/p2p/P2pManager;->isUsingP2P:Z

    .line 88
    return-void
.end method
