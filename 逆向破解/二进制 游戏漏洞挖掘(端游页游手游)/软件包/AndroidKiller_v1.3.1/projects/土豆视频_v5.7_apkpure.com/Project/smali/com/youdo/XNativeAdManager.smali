.class public Lcom/youdo/XNativeAdManager;
.super Lorg/openad/events/XYDEventDispatcher;

# interfaces
.implements Lorg/openad/events/IXYDEventDispatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youdo/XNativeAdManager$AdUpdateIndictor;,
        Lcom/youdo/XNativeAdManager$XNativeAdManagerState;
    }
.end annotation


# static fields
.field public static final DEFAULT_NATIVE_AS_RESPONSE_OK:Ljava/lang/String; = "{\'preroll\': {\'P\': \'7\',\'VAL\': []},\'pauseroll\': {\'P\': \'10\',\'VAL\': []},\'display\': {\'P\': \'12\',\'VAL\': []} }"

.field public static final DEFAULT_RESPONSE_ERR:Ljava/lang/String; = "{\'status\':\'failed\',\'code\':400,\'desc\':\'default native response\'}"

.field public static final MAX_NATIVE_VIDEO_AD_NUM:I = 0xa

.field public static final MIN_FREE_SIZE:I = 0x1f4

.field public static final NATIVE_AD_SERVER_START_FAILED:Ljava/lang/String; = "NATIVE_AD_SERVER_START_FAILED"

.field public static final NATIVE_AD_SERVER_START_SUCCESS:Ljava/lang/String; = "NATIVE_AD_SERVER_START_SUCCESS"

.field public static final SUPPORTED_AD_SLOT_TYPES:[Lorg/openad/constants/IOpenAdContants$AdSlotType;

.field private static final TAG:Ljava/lang/String; = "XNativeAdManager"

.field private static theInstance:Lcom/youdo/XNativeAdManager;


# instance fields
.field private batchAPIProxyASRequestListener:Lorg/openad/events/IXYDEventListener;

.field private batchDownloadEventListener:Lorg/openad/events/IXYDEventListener;

.field public costTime:J

.field private forcePuaseDownloading:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private isStartDownloadingRequestFired:Ljava/lang/Boolean;

.field mAdUpdateIndictor:Lcom/youdo/XNativeAdManager$AdUpdateIndictor;

.field private mAllowNativeAdServing:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mBatchAdCreativeAssetDownloader:Lcom/youdo/download/XBatchAdCreativeAssetDownloader;

.field private mBatchNativeAPIAdServerProxy:Lcom/youdo/proxy/BatchNativeAPIAdServerProxy;

.field private mNativeASData:Lorg/json/JSONObject;

.field private mNativeAdResponsePKG:Lcom/youdo/vo/XNativeAdResponsePackage;

.field private mNetworkController:Lorg/openad/controller/BasicNetworkController;

.field private mState:Lcom/youdo/XNativeAdManager$XNativeAdManagerState;

.field public managerContext:Lcom/youdo/XAdManagerContext;

.field private networkStatusListener:Lorg/openad/events/IXYDEventListener;

.field private startTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lorg/openad/constants/IOpenAdContants$AdSlotType;

    const/4 v1, 0x0

    sget-object v2, Lorg/openad/constants/IOpenAdContants$AdSlotType;->DISPLAY:Lorg/openad/constants/IOpenAdContants$AdSlotType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lorg/openad/constants/IOpenAdContants$AdSlotType;->PREROLL:Lorg/openad/constants/IOpenAdContants$AdSlotType;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lorg/openad/constants/IOpenAdContants$AdSlotType;->PAUSEROLL:Lorg/openad/constants/IOpenAdContants$AdSlotType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/youdo/XNativeAdManager;->SUPPORTED_AD_SLOT_TYPES:[Lorg/openad/constants/IOpenAdContants$AdSlotType;

    const/4 v0, 0x0

    sput-object v0, Lcom/youdo/XNativeAdManager;->theInstance:Lcom/youdo/XNativeAdManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 7

    const/4 v4, 0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Lorg/openad/events/XYDEventDispatcher;-><init>()V

    sget-object v1, Lcom/youdo/XNativeAdManager$XNativeAdManagerState;->UNKNOWN:Lcom/youdo/XNativeAdManager$XNativeAdManagerState;

    iput-object v1, p0, Lcom/youdo/XNativeAdManager;->mState:Lcom/youdo/XNativeAdManager$XNativeAdManagerState;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iput-object v1, p0, Lcom/youdo/XNativeAdManager;->mNativeASData:Lorg/json/JSONObject;

    new-instance v1, Lcom/youdo/XAdManagerContext;

    invoke-direct {v1}, Lcom/youdo/XAdManagerContext;-><init>()V

    iput-object v1, p0, Lcom/youdo/XNativeAdManager;->managerContext:Lcom/youdo/XAdManagerContext;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/youdo/XNativeAdManager;->mAllowNativeAdServing:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v1, Lcom/youdo/XNativeAdManager$1;

    invoke-direct {v1, p0}, Lcom/youdo/XNativeAdManager$1;-><init>(Lcom/youdo/XNativeAdManager;)V

    iput-object v1, p0, Lcom/youdo/XNativeAdManager;->batchDownloadEventListener:Lorg/openad/events/IXYDEventListener;

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/youdo/XNativeAdManager;->startTime:J

    new-instance v1, Lcom/youdo/XNativeAdManager$2;

    invoke-direct {v1, p0}, Lcom/youdo/XNativeAdManager$2;-><init>(Lcom/youdo/XNativeAdManager;)V

    iput-object v1, p0, Lcom/youdo/XNativeAdManager;->networkStatusListener:Lorg/openad/events/IXYDEventListener;

    new-instance v1, Lcom/youdo/XNativeAdManager$3;

    invoke-direct {v1, p0}, Lcom/youdo/XNativeAdManager$3;-><init>(Lcom/youdo/XNativeAdManager;)V

    iput-object v1, p0, Lcom/youdo/XNativeAdManager;->batchAPIProxyASRequestListener:Lorg/openad/events/IXYDEventListener;

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/youdo/XNativeAdManager;->costTime:J

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/youdo/XNativeAdManager;->isStartDownloadingRequestFired:Ljava/lang/Boolean;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v1, p0, Lcom/youdo/XNativeAdManager;->forcePuaseDownloading:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-string v1, "XNativeAdManager"

    const-string v2, "new XNativeAdManager, set mAllowNativeAdServing as true"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/youdo/XNativeAdManager;->mAllowNativeAdServing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :try_start_0
    invoke-static {}, Lorg/openad/constants/IOpenAdContants$AdSlotType;->values()[Lorg/openad/constants/IOpenAdContants$AdSlotType;

    move-result-object v1

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    iget-object v4, p0, Lcom/youdo/XNativeAdManager;->mNativeASData:Lorg/json/JSONObject;

    invoke-virtual {v3}, Lorg/openad/constants/IOpenAdContants$AdSlotType;->getStringCode()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lorg/json/JSONObject;

    const-string/jumbo v6, "{\'status\':\'failed\',\'code\':400,\'desc\':\'default native response\'}"

    invoke-direct {v5, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/youdo/XNativeAdManager;)Lcom/youdo/XNativeAdManager$XNativeAdManagerState;
    .locals 1

    iget-object v0, p0, Lcom/youdo/XNativeAdManager;->mState:Lcom/youdo/XNativeAdManager$XNativeAdManagerState;

    return-object v0
.end method

.method static synthetic access$002(Lcom/youdo/XNativeAdManager;Lcom/youdo/XNativeAdManager$XNativeAdManagerState;)Lcom/youdo/XNativeAdManager$XNativeAdManagerState;
    .locals 0

    iput-object p1, p0, Lcom/youdo/XNativeAdManager;->mState:Lcom/youdo/XNativeAdManager$XNativeAdManagerState;

    return-object p1
.end method

.method static synthetic access$100(Lcom/youdo/XNativeAdManager;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    iget-object v0, p0, Lcom/youdo/XNativeAdManager;->mAllowNativeAdServing:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/youdo/XNativeAdManager;)Lorg/openad/events/IXYDEventListener;
    .locals 1

    iget-object v0, p0, Lcom/youdo/XNativeAdManager;->batchDownloadEventListener:Lorg/openad/events/IXYDEventListener;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/youdo/XNativeAdManager;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    iget-object v0, p0, Lcom/youdo/XNativeAdManager;->forcePuaseDownloading:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/youdo/XNativeAdManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/youdo/XNativeAdManager;->readNativeAdResponse()V

    return-void
.end method

.method static synthetic access$1300(Lcom/youdo/XNativeAdManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/youdo/XNativeAdManager;->clearNativeAds()V

    return-void
.end method

.method static synthetic access$1400(Lcom/youdo/XNativeAdManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/youdo/XNativeAdManager;->startDownloadingRequest()V

    return-void
.end method

.method static synthetic access$200(Lcom/youdo/XNativeAdManager;)Lcom/youdo/vo/XNativeAdResponsePackage;
    .locals 1

    iget-object v0, p0, Lcom/youdo/XNativeAdManager;->mNativeAdResponsePKG:Lcom/youdo/vo/XNativeAdResponsePackage;

    return-object v0
.end method

.method static synthetic access$300(Lcom/youdo/XNativeAdManager;)J
    .locals 2

    iget-wide v0, p0, Lcom/youdo/XNativeAdManager;->startTime:J

    return-wide v0
.end method

.method static synthetic access$302(Lcom/youdo/XNativeAdManager;J)J
    .locals 1

    iput-wide p1, p0, Lcom/youdo/XNativeAdManager;->startTime:J

    return-wide p1
.end method

.method static synthetic access$400(Lcom/youdo/XNativeAdManager;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/youdo/XNativeAdManager;->refreshNativeAdServer(Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$500(Lcom/youdo/XNativeAdManager;)Ljava/lang/Boolean;
    .locals 1

    invoke-direct {p0}, Lcom/youdo/XNativeAdManager;->resumeDownloading()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/youdo/XNativeAdManager;)Ljava/lang/Boolean;
    .locals 1

    invoke-direct {p0}, Lcom/youdo/XNativeAdManager;->pauseDownloading()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/youdo/XNativeAdManager;)Lorg/openad/controller/BasicNetworkController;
    .locals 1

    iget-object v0, p0, Lcom/youdo/XNativeAdManager;->mNetworkController:Lorg/openad/controller/BasicNetworkController;

    return-object v0
.end method

.method static synthetic access$702(Lcom/youdo/XNativeAdManager;Lorg/openad/controller/BasicNetworkController;)Lorg/openad/controller/BasicNetworkController;
    .locals 0

    iput-object p1, p0, Lcom/youdo/XNativeAdManager;->mNetworkController:Lorg/openad/controller/BasicNetworkController;

    return-object p1
.end method

.method static synthetic access$800(Lcom/youdo/XNativeAdManager;)Lorg/openad/events/IXYDEventListener;
    .locals 1

    iget-object v0, p0, Lcom/youdo/XNativeAdManager;->networkStatusListener:Lorg/openad/events/IXYDEventListener;

    return-object v0
.end method

.method static synthetic access$900(Lcom/youdo/XNativeAdManager;)Lcom/youdo/download/XBatchAdCreativeAssetDownloader;
    .locals 1

    iget-object v0, p0, Lcom/youdo/XNativeAdManager;->mBatchAdCreativeAssetDownloader:Lcom/youdo/download/XBatchAdCreativeAssetDownloader;

    return-object v0
.end method

.method static synthetic access$902(Lcom/youdo/XNativeAdManager;Lcom/youdo/download/XBatchAdCreativeAssetDownloader;)Lcom/youdo/download/XBatchAdCreativeAssetDownloader;
    .locals 0

    iput-object p1, p0, Lcom/youdo/XNativeAdManager;->mBatchAdCreativeAssetDownloader:Lcom/youdo/download/XBatchAdCreativeAssetDownloader;

    return-object p1
.end method

.method private clearNativeAds()V
    .locals 6

    const/4 v2, 0x0

    const-string v0, "XNativeAdManager"

    const-string v1, "clearNativeAds"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/youdo/XNativeAdManager;->mNativeAdResponsePKG:Lcom/youdo/vo/XNativeAdResponsePackage;

    invoke-virtual {v0}, Lcom/youdo/vo/XNativeAdResponsePackage;->getCachedAdCreativeAsset()Ljava/util/List;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v1, v2

    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    new-instance v5, Ljava/io/File;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youdo/vo/XAdInstance;

    iget-object v0, v0, Lcom/youdo/vo/XAdInstance;->creativeLocalURL:Ljava/lang/String;

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/youdo/XNativeAdManager;->managerContext:Lcom/youdo/XAdManagerContext;

    iget-object v1, v1, Lcom/youdo/XAdManagerContext;->mNativeASResponsePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/youdo/XNativeAdManager;->managerContext:Lcom/youdo/XAdManagerContext;

    iget-object v1, v1, Lcom/youdo/XAdManagerContext;->mNativeTrackingPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/youdo/XNativeAdManager;->managerContext:Lcom/youdo/XAdManagerContext;

    iget-object v1, v1, Lcom/youdo/XAdManagerContext;->mNativeAdAssetsFolderPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v4}, Lorg/openad/common/util/FileUtils;->deleteAll(Ljava/io/File;Ljava/util/List;)V

    iget-object v0, p0, Lcom/youdo/XNativeAdManager;->mNativeAdResponsePKG:Lcom/youdo/vo/XNativeAdResponsePackage;

    invoke-virtual {v0}, Lcom/youdo/vo/XNativeAdResponsePackage;->removeZombieAds()V

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/youdo/XNativeAdManager;->refreshNativeAdServer(Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    return-void
.end method

.method private generateURLs4NativeTracking(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/youdo/vo/XAdHttpTracking;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youdo/vo/XAdHttpTracking;

    invoke-virtual {v0}, Lcom/youdo/vo/XAdHttpTracking;->getSDK()I

    move-result v4

    const/16 v5, 0x9

    if-ne v4, v5, :cond_0

    invoke-virtual {v0}, Lcom/youdo/vo/XAdHttpTracking;->getUri()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "tm"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v0, v4, v2, v5}, Lorg/openad/common/util/URIUtil;->addParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-object v3
.end method

.method public static getInstance()Lcom/youdo/XNativeAdManager;
    .locals 1

    sget-object v0, Lcom/youdo/XNativeAdManager;->theInstance:Lcom/youdo/XNativeAdManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/youdo/XNativeAdManager;

    invoke-direct {v0}, Lcom/youdo/XNativeAdManager;-><init>()V

    sput-object v0, Lcom/youdo/XNativeAdManager;->theInstance:Lcom/youdo/XNativeAdManager;

    :cond_0
    sget-object v0, Lcom/youdo/XNativeAdManager;->theInstance:Lcom/youdo/XNativeAdManager;

    return-object v0
.end method

.method private pauseDownloading()Ljava/lang/Boolean;
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/youdo/XNativeAdManager;->forcePuaseDownloading:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    sget-object v2, Lcom/youdo/XNativeAdManager$XNativeAdManagerState;->ASSET_DOWNLOAD_PAUSED:Lcom/youdo/XNativeAdManager$XNativeAdManagerState;

    iput-object v2, p0, Lcom/youdo/XNativeAdManager;->mState:Lcom/youdo/XNativeAdManager$XNativeAdManagerState;

    iget-object v2, p0, Lcom/youdo/XNativeAdManager;->mBatchAdCreativeAssetDownloader:Lcom/youdo/download/XBatchAdCreativeAssetDownloader;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/youdo/XNativeAdManager;->mBatchAdCreativeAssetDownloader:Lcom/youdo/download/XBatchAdCreativeAssetDownloader;

    invoke-virtual {v2}, Lcom/youdo/download/XBatchAdCreativeAssetDownloader;->pause()V

    :cond_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/youdo/XNativeAdManager;->refreshNativeAdServer(Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    iget-object v2, p0, Lcom/youdo/XNativeAdManager;->mBatchAdCreativeAssetDownloader:Lcom/youdo/download/XBatchAdCreativeAssetDownloader;

    if-eqz v2, :cond_1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private readNativeAdResponse()V
    .locals 6

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/youdo/XNativeAdManager;->managerContext:Lcom/youdo/XAdManagerContext;

    iget-object v0, v0, Lcom/youdo/XAdManagerContext;->mNativeASResponsePath:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/openad/common/util/FileUtils;->readFile2String(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const-string/jumbo v2, "{\'preroll\': {\'P\': \'7\',\'VAL\': []},\'pauseroll\': {\'P\': \'10\',\'VAL\': []},\'display\': {\'P\': \'12\',\'VAL\': []} }"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gt v1, v2, :cond_0

    const-string/jumbo v0, "{\'preroll\': {\'P\': \'7\',\'VAL\': []},\'pauseroll\': {\'P\': \'10\',\'VAL\': []},\'display\': {\'P\': \'12\',\'VAL\': []} }"

    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/youdo/XNativeAdManager;->mNativeASData:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    :try_start_1
    sget-object v0, Lcom/youdo/XNativeAdManager;->SUPPORTED_AD_SLOT_TYPES:[Lorg/openad/constants/IOpenAdContants$AdSlotType;

    array-length v0, v0

    if-ge v1, v0, :cond_1

    sget-object v0, Lcom/youdo/XNativeAdManager;->SUPPORTED_AD_SLOT_TYPES:[Lorg/openad/constants/IOpenAdContants$AdSlotType;

    aget-object v0, v0, v1

    iget-object v3, p0, Lcom/youdo/XNativeAdManager;->mNativeASData:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/openad/constants/IOpenAdContants$AdSlotType;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    new-instance v3, Lcom/youdo/vo/XNativeAdResponse;

    iget-object v4, p0, Lcom/youdo/XNativeAdManager;->managerContext:Lcom/youdo/XAdManagerContext;

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v3, v4, v0, v5}, Lcom/youdo/vo/XNativeAdResponse;-><init>(Lcom/youdo/XAdManagerContext;Lorg/json/JSONObject;Ljava/lang/Boolean;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "XNativeAdManager"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "XNativeAdManager"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    new-instance v0, Lcom/youdo/vo/XNativeAdResponsePackage;

    invoke-direct {v0, v2}, Lcom/youdo/vo/XNativeAdResponsePackage;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/youdo/XNativeAdManager;->mNativeAdResponsePKG:Lcom/youdo/vo/XNativeAdResponsePackage;

    const-string v0, "XNativeAdManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mNativeAdResponsePKG="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/youdo/XNativeAdManager;->mNativeAdResponsePKG:Lcom/youdo/vo/XNativeAdResponsePackage;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private refreshNativeAdServer(Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 2

    iget-object v0, p0, Lcom/youdo/XNativeAdManager;->mNativeAdResponsePKG:Lcom/youdo/vo/XNativeAdResponsePackage;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/youdo/XNativeAdManager$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/youdo/XNativeAdManager$4;-><init>(Lcom/youdo/XNativeAdManager;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method private resumeDownloading()Ljava/lang/Boolean;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/youdo/XNativeAdManager;->forcePuaseDownloading:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    sget-object v1, Lcom/youdo/XNativeAdManager$XNativeAdManagerState;->ASSET_DOWNLOAD_IN_PROGRESS:Lcom/youdo/XNativeAdManager$XNativeAdManagerState;

    iput-object v1, p0, Lcom/youdo/XNativeAdManager;->mState:Lcom/youdo/XNativeAdManager$XNativeAdManagerState;

    iget-object v1, p0, Lcom/youdo/XNativeAdManager;->mBatchAdCreativeAssetDownloader:Lcom/youdo/download/XBatchAdCreativeAssetDownloader;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/youdo/XNativeAdManager;->mBatchAdCreativeAssetDownloader:Lcom/youdo/download/XBatchAdCreativeAssetDownloader;

    invoke-virtual {v1}, Lcom/youdo/download/XBatchAdCreativeAssetDownloader;->resume()V

    :cond_0
    iget-object v1, p0, Lcom/youdo/XNativeAdManager;->mBatchAdCreativeAssetDownloader:Lcom/youdo/download/XBatchAdCreativeAssetDownloader;

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private startDownloadingRequest()V
    .locals 5

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/youdo/XNativeAdManager;->isStartDownloadingRequestFired:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/youdo/XNativeAdManager;->isStartDownloadingRequestFired:Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/youdo/XNativeAdManager;->managerContext:Lcom/youdo/XAdManagerContext;

    iget-object v2, p0, Lcom/youdo/XNativeAdManager;->managerContext:Lcom/youdo/XAdManagerContext;

    iget-object v2, v2, Lcom/youdo/XAdManagerContext;->mNativeAdAssetsFolderPath:Ljava/lang/String;

    invoke-static {v2}, Lorg/openad/common/util/FileUtils;->calculateSubFiles(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/youdo/XAdManagerContext;->cachedAdNum:I

    iget-object v0, p0, Lcom/youdo/XNativeAdManager;->managerContext:Lcom/youdo/XAdManagerContext;

    iget-object v0, v0, Lcom/youdo/XAdManagerContext;->mNativeAdAssetsFolderPath:Ljava/lang/String;

    invoke-static {v0}, Lorg/openad/common/util/FileSystemUtils;->getSDCardFSDesByPath(Ljava/lang/String;)Lorg/openad/common/util/XFSDescriptor;

    move-result-object v0

    iget-object v2, p0, Lcom/youdo/XNativeAdManager;->managerContext:Lcom/youdo/XAdManagerContext;

    invoke-static {}, Lcom/youdo/ad/cfg/XAdSDKConf;->getInstance()Lcom/youdo/ad/cfg/XAdSDKConf;

    move-result-object v3

    iget v0, v0, Lorg/openad/common/util/XFSDescriptor;->freeSize:I

    invoke-virtual {v3, v0}, Lcom/youdo/ad/cfg/XAdSDKConf;->calculateAcceptableMaxAdNum(I)I

    move-result v0

    iput v0, v2, Lcom/youdo/XAdManagerContext;->ACCEPTABLE_MAX_NATIVE_AD_NUM:I

    iget-object v0, p0, Lcom/youdo/XNativeAdManager;->mAdUpdateIndictor:Lcom/youdo/XNativeAdManager$AdUpdateIndictor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/youdo/XNativeAdManager;->mAdUpdateIndictor:Lcom/youdo/XNativeAdManager$AdUpdateIndictor;

    invoke-virtual {v0}, Lcom/youdo/XNativeAdManager$AdUpdateIndictor;->allowRefreshCaching()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/youdo/proxy/BatchNativeAPIAdServerProxy;

    iget-object v1, p0, Lcom/youdo/XNativeAdManager;->mNativeAdResponsePKG:Lcom/youdo/vo/XNativeAdResponsePackage;

    iget-object v2, p0, Lcom/youdo/XNativeAdManager;->managerContext:Lcom/youdo/XAdManagerContext;

    iget-object v3, p0, Lcom/youdo/XNativeAdManager;->managerContext:Lcom/youdo/XAdManagerContext;

    iget-object v3, v3, Lcom/youdo/XAdManagerContext;->userAgent:Ljava/lang/String;

    iget-object v4, p0, Lcom/youdo/XNativeAdManager;->managerContext:Lcom/youdo/XAdManagerContext;

    iget-object v4, v4, Lcom/youdo/XAdManagerContext;->cookie:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/youdo/proxy/BatchNativeAPIAdServerProxy;-><init>(Lcom/youdo/vo/XNativeAdResponsePackage;Lcom/youdo/XAdManagerContext;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/youdo/XNativeAdManager;->mBatchNativeAPIAdServerProxy:Lcom/youdo/proxy/BatchNativeAPIAdServerProxy;

    iget-object v0, p0, Lcom/youdo/XNativeAdManager;->mBatchNativeAPIAdServerProxy:Lcom/youdo/proxy/BatchNativeAPIAdServerProxy;

    const-string v1, "EVENT_BATCH_REQUEST_START"

    iget-object v2, p0, Lcom/youdo/XNativeAdManager;->batchAPIProxyASRequestListener:Lorg/openad/events/IXYDEventListener;

    invoke-virtual {v0, v1, v2}, Lcom/youdo/proxy/BatchNativeAPIAdServerProxy;->addEventListener(Ljava/lang/String;Lorg/openad/events/IXYDEventListener;)V

    iget-object v0, p0, Lcom/youdo/XNativeAdManager;->mBatchNativeAPIAdServerProxy:Lcom/youdo/proxy/BatchNativeAPIAdServerProxy;

    const-string v1, "EVENT_BATCH_REQUEST_DONE"

    iget-object v2, p0, Lcom/youdo/XNativeAdManager;->batchAPIProxyASRequestListener:Lorg/openad/events/IXYDEventListener;

    invoke-virtual {v0, v1, v2}, Lcom/youdo/proxy/BatchNativeAPIAdServerProxy;->addEventListener(Ljava/lang/String;Lorg/openad/events/IXYDEventListener;)V

    iget-object v0, p0, Lcom/youdo/XNativeAdManager;->mBatchNativeAPIAdServerProxy:Lcom/youdo/proxy/BatchNativeAPIAdServerProxy;

    invoke-virtual {v0}, Lcom/youdo/proxy/BatchNativeAPIAdServerProxy;->request()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    const-string v0, "XNativeAdManager"

    const-string/jumbo v2, "startDownloadingRequest set mAllowNativeAdServing as true"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/youdo/XNativeAdManager;->mAllowNativeAdServing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0
.end method

.method private stopNetworkListener()V
    .locals 1

    iget-object v0, p0, Lcom/youdo/XNativeAdManager;->mNetworkController:Lorg/openad/controller/BasicNetworkController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youdo/XNativeAdManager;->mNetworkController:Lorg/openad/controller/BasicNetworkController;

    invoke-virtual {v0}, Lorg/openad/controller/BasicNetworkController;->removeAllListeners()V

    iget-object v0, p0, Lcom/youdo/XNativeAdManager;->mNetworkController:Lorg/openad/controller/BasicNetworkController;

    invoke-virtual {v0}, Lorg/openad/controller/BasicNetworkController;->stopNetworkListener()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/youdo/XNativeAdManager;->mNetworkController:Lorg/openad/controller/BasicNetworkController;

    :cond_0
    return-void
.end method


# virtual methods
.method public getDisplayAd()Lcom/youdo/vo/XAdInstance;
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v0, "{\'status\':\'failed\',\'code\':400,\'desc\':\'default native response\'}"

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/youdo/XNativeAdManager;->mNativeAdResponsePKG:Lcom/youdo/vo/XNativeAdResponsePackage;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/youdo/XNativeAdManager;->mAllowNativeAdServing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/youdo/XNativeAdManager;->mNativeAdResponsePKG:Lcom/youdo/vo/XNativeAdResponsePackage;

    invoke-virtual {v0}, Lcom/youdo/vo/XNativeAdResponsePackage;->getDisplayXAdResponse()Lcom/youdo/vo/XNativeAdResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youdo/vo/XNativeAdResponse;->retrieveBestXAd()Lcom/youdo/vo/XAdInstance;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/youdo/XNativeAdManager;->refreshNativeAdServer(Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    :cond_0
    return-object v0
.end method

.method public getNativeASResponseRefresingCostTime()J
    .locals 2

    iget-wide v0, p0, Lcom/youdo/XNativeAdManager;->costTime:J

    return-wide v0
.end method

.method public getNativeAdAssetFolderPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/youdo/XNativeAdManager;->managerContext:Lcom/youdo/XAdManagerContext;

    iget-object v0, v0, Lcom/youdo/XAdManagerContext;->mNativeAdAssetsFolderPath:Ljava/lang/String;

    return-object v0
.end method

.method public getPauserollAd()Lcom/youdo/vo/XAdInstance;
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v0, "{\'status\':\'failed\',\'code\':400,\'desc\':\'default native response\'}"

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/youdo/XNativeAdManager;->mNativeAdResponsePKG:Lcom/youdo/vo/XNativeAdResponsePackage;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/youdo/XNativeAdManager;->mAllowNativeAdServing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/youdo/XNativeAdManager;->mNativeAdResponsePKG:Lcom/youdo/vo/XNativeAdResponsePackage;

    invoke-virtual {v0}, Lcom/youdo/vo/XNativeAdResponsePackage;->getPauserollXAdResponse()Lcom/youdo/vo/XNativeAdResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youdo/vo/XNativeAdResponse;->retrieveBestXAd()Lcom/youdo/vo/XAdInstance;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/youdo/XNativeAdManager;->refreshNativeAdServer(Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    :cond_0
    return-object v0
.end method

.method public getPrerollAd()Lcom/youdo/vo/XAdInstance;
    .locals 5

    const/4 v4, 0x0

    const-string v0, "XNativeAdManager"

    const-string v1, "getPrerollAd"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "{\'status\':\'failed\',\'code\':400,\'desc\':\'default native response\'}"

    const/4 v0, 0x0

    const-string v1, "XNativeAdManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPrerollAd can retrieve ad=="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/youdo/XNativeAdManager;->mNativeAdResponsePKG:Lcom/youdo/vo/XNativeAdResponsePackage;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mAllowNativeAdServing="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/youdo/XNativeAdManager;->mAllowNativeAdServing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/youdo/XNativeAdManager;->mNativeAdResponsePKG:Lcom/youdo/vo/XNativeAdResponsePackage;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/youdo/XNativeAdManager;->mAllowNativeAdServing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/youdo/XNativeAdManager;->mNativeAdResponsePKG:Lcom/youdo/vo/XNativeAdResponsePackage;

    invoke-virtual {v0}, Lcom/youdo/vo/XNativeAdResponsePackage;->getPrerollXAdResponse()Lcom/youdo/vo/XNativeAdResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youdo/vo/XNativeAdResponse;->retrieveBestXAd()Lcom/youdo/vo/XAdInstance;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/youdo/XNativeAdManager;->refreshNativeAdServer(Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    :cond_0
    return-object v0
.end method

.method public getState()Lcom/youdo/XNativeAdManager$XNativeAdManagerState;
    .locals 1

    iget-object v0, p0, Lcom/youdo/XNativeAdManager;->mState:Lcom/youdo/XNativeAdManager$XNativeAdManagerState;

    return-object v0
.end method

.method public mockATMPath(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/youdo/XNativeAdManager;->managerContext:Lcom/youdo/XAdManagerContext;

    iput-object p1, v0, Lcom/youdo/XAdManagerContext;->mockFolderName:Ljava/lang/String;

    return-void
.end method

.method public onCreate()V
    .locals 0

    return-void
.end method

.method public onDestory()V
    .locals 0

    invoke-direct {p0}, Lcom/youdo/XNativeAdManager;->stopNetworkListener()V

    return-void
.end method

.method public onPause()V
    .locals 0

    return-void
.end method

.method public onRestart()V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 0

    return-void
.end method

.method public onStart()V
    .locals 0

    return-void
.end method

.method public onStop()V
    .locals 1

    invoke-static {}, Lcom/youdo/tracking/ReportManager;->getInstance()Lcom/youdo/tracking/ReportManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youdo/tracking/ReportManager;->rsyncLocalFile()V

    return-void
.end method

.method public onXAdSlotEnd(Lcom/youdo/vo/XAdInstance;)V
    .locals 3

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p1, Lcom/youdo/vo/XAdInstance;->complete:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/youdo/XNativeAdManager;->generateURLs4NativeTracking(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/youdo/XNativeAdManager$8;

    invoke-direct {v2, p0, v0}, Lcom/youdo/XNativeAdManager$8;-><init>(Lcom/youdo/XNativeAdManager;Ljava/util/List;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    new-instance v0, Lcom/youdo/events/XAdVPAIDAdEvent;

    const-string v1, "AdImpression"

    invoke-direct {v0, v1, p1}, Lcom/youdo/events/XAdVPAIDAdEvent;-><init>(Ljava/lang/String;Lcom/youdo/vo/XAdInstance;)V

    invoke-virtual {p0, v0}, Lcom/youdo/XNativeAdManager;->dispatchEvent(Lorg/openad/events/IXYDEvent;)V

    goto :goto_0
.end method

.method public onXAdSlotPlayingAtCuepoint(Lcom/youdo/vo/XAdInstance;I)V
    .locals 3

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget-object v0, p1, Lcom/youdo/vo/XAdInstance;->cuepoint:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    iget-object v0, p1, Lcom/youdo/vo/XAdInstance;->cuepoint:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youdo/vo/XAdHttpTracking;

    invoke-virtual {v0}, Lcom/youdo/vo/XAdHttpTracking;->getTime()I

    move-result v0

    if-ne p2, v0, :cond_1

    iget-object v0, p1, Lcom/youdo/vo/XAdInstance;->cuepoint:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    invoke-direct {p0, v2}, Lcom/youdo/XNativeAdManager;->generateURLs4NativeTracking(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/youdo/XNativeAdManager$7;

    invoke-direct {v2, p0, v0}, Lcom/youdo/XNativeAdManager$7;-><init>(Lcom/youdo/XNativeAdManager;Ljava/util/List;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    new-instance v0, Lcom/youdo/events/XAdVPAIDAdEvent;

    const-string v1, "AdImpression"

    invoke-direct {v0, v1, p1}, Lcom/youdo/events/XAdVPAIDAdEvent;-><init>(Ljava/lang/String;Lcom/youdo/vo/XAdInstance;)V

    invoke-virtual {p0, v0}, Lcom/youdo/XNativeAdManager;->dispatchEvent(Lorg/openad/events/IXYDEvent;)V

    goto :goto_0
.end method

.method public onXAdSlotStart(Lcom/youdo/vo/XAdInstance;)V
    .locals 3

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p1, Lcom/youdo/vo/XAdInstance;->impression:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/youdo/XNativeAdManager;->generateURLs4NativeTracking(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/youdo/XNativeAdManager$6;

    invoke-direct {v2, p0, v0}, Lcom/youdo/XNativeAdManager$6;-><init>(Lcom/youdo/XNativeAdManager;Ljava/util/List;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    new-instance v0, Lcom/youdo/events/XAdVPAIDAdEvent;

    const-string v1, "AdImpression"

    invoke-direct {v0, v1, p1}, Lcom/youdo/events/XAdVPAIDAdEvent;-><init>(Ljava/lang/String;Lcom/youdo/vo/XAdInstance;)V

    invoke-virtual {p0, v0}, Lcom/youdo/XNativeAdManager;->dispatchEvent(Lorg/openad/events/IXYDEvent;)V

    goto :goto_0
.end method

.method public setAppVersion(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/youdo/XNativeAdManager;->managerContext:Lcom/youdo/XAdManagerContext;

    iput-object p1, v0, Lcom/youdo/XAdManagerContext;->avs:Ljava/lang/String;

    return-void
.end method

.method public setApplicationContext(Landroid/content/Context;)V
    .locals 6

    const/16 v3, 0x7d0

    iget-object v0, p0, Lcom/youdo/XNativeAdManager;->mAdUpdateIndictor:Lcom/youdo/XNativeAdManager$AdUpdateIndictor;

    if-nez v0, :cond_0

    new-instance v0, Lcom/youdo/XNativeAdManager$AdUpdateIndictor;

    invoke-direct {v0, p0, p1}, Lcom/youdo/XNativeAdManager$AdUpdateIndictor;-><init>(Lcom/youdo/XNativeAdManager;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/youdo/XNativeAdManager;->mAdUpdateIndictor:Lcom/youdo/XNativeAdManager$AdUpdateIndictor;

    :cond_0
    iget-object v0, p0, Lcom/youdo/XNativeAdManager;->managerContext:Lcom/youdo/XAdManagerContext;

    iput-object p1, v0, Lcom/youdo/XAdManagerContext;->mApplicationContext:Landroid/content/Context;

    invoke-static {}, Lcom/youdo/tracking/ReportManager;->getInstance()Lcom/youdo/tracking/ReportManager;

    move-result-object v0

    iget-object v1, p0, Lcom/youdo/XNativeAdManager;->managerContext:Lcom/youdo/XAdManagerContext;

    iget-object v2, v1, Lcom/youdo/XAdManagerContext;->mNativeTrackingPath:Ljava/lang/String;

    const/4 v5, 0x1

    move-object v1, p1

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/youdo/tracking/ReportManager;->init(Landroid/content/Context;Ljava/lang/String;III)V

    return-void
.end method

.method public setContentPath(Ljava/lang/String;)V
    .locals 4

    const-string v0, "/"

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lorg/openad/common/util/StringUtils;->n2last(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    :goto_0
    iget-object v1, p0, Lcom/youdo/XNativeAdManager;->managerContext:Lcom/youdo/XAdManagerContext;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/youdo/XAdManagerContext;->mNativeAdAssetsFolderPath:Ljava/lang/String;

    iget-object v1, p0, Lcom/youdo/XNativeAdManager;->managerContext:Lcom/youdo/XAdManagerContext;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "native_adserver.json"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/youdo/XAdManagerContext;->mNativeASResponsePath:Ljava/lang/String;

    iget-object v1, p0, Lcom/youdo/XNativeAdManager;->managerContext:Lcom/youdo/XAdManagerContext;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "native_report.txt"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/youdo/XAdManagerContext;->mNativeTrackingPath:Ljava/lang/String;

    return-void

    :cond_0
    const-string v0, "/"

    goto :goto_0
.end method

.method public setCookie(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/youdo/XNativeAdManager;->managerContext:Lcom/youdo/XAdManagerContext;

    iput-object p1, v0, Lcom/youdo/XAdManagerContext;->cookie:Ljava/lang/String;

    return-void
.end method

.method public setDisplayMockAdServer(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/youdo/XNativeAdManager;->managerContext:Lcom/youdo/XAdManagerContext;

    iput-object p1, v0, Lcom/youdo/XAdManagerContext;->displayMockAdServer:Ljava/lang/String;

    return-void
.end method

.method public setMockAdInterval(J)V
    .locals 1

    iget-object v0, p0, Lcom/youdo/XNativeAdManager;->managerContext:Lcom/youdo/XAdManagerContext;

    iput-wide p1, v0, Lcom/youdo/XAdManagerContext;->mockInterval:J

    return-void
.end method

.method public setMock_FORMAT_NATIVE_RESPONSE(Ljava/lang/Boolean;)V
    .locals 1

    iget-object v0, p0, Lcom/youdo/XNativeAdManager;->managerContext:Lcom/youdo/XAdManagerContext;

    iput-object p1, v0, Lcom/youdo/XAdManagerContext;->mock_FORMAT_NATIVE_RESPONSE:Ljava/lang/Boolean;

    return-void
.end method

.method public setMock_MAX_NATIVE_VIDEO_AD_NUM(I)V
    .locals 1

    iget-object v0, p0, Lcom/youdo/XNativeAdManager;->managerContext:Lcom/youdo/XAdManagerContext;

    iput p1, v0, Lcom/youdo/XAdManagerContext;->mock_MAX_NATIVE_VIDEO_AD_NUM:I

    return-void
.end method

.method public setMock_MIN_FREE_SIZE(I)V
    .locals 1

    iget-object v0, p0, Lcom/youdo/XNativeAdManager;->managerContext:Lcom/youdo/XAdManagerContext;

    iput p1, v0, Lcom/youdo/XAdManagerContext;->mock_MIN_FREE_SIZE:I

    return-void
.end method

.method public setOpenUDID(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/youdo/XNativeAdManager;->managerContext:Lcom/youdo/XAdManagerContext;

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    iput-object p1, v0, Lcom/youdo/XAdManagerContext;->mOpenUDID:Ljava/lang/String;

    return-void
.end method

.method public setPID(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/youdo/XNativeAdManager;->managerContext:Lcom/youdo/XAdManagerContext;

    iput-object p1, v0, Lcom/youdo/XAdManagerContext;->pid:Ljava/lang/String;

    return-void
.end method

.method public setPauserollMockAdServer(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/youdo/XNativeAdManager;->managerContext:Lcom/youdo/XAdManagerContext;

    iput-object p1, v0, Lcom/youdo/XAdManagerContext;->pauserollMockAdServer:Ljava/lang/String;

    return-void
.end method

.method public setPrerollMockAdServer(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/youdo/XNativeAdManager;->managerContext:Lcom/youdo/XAdManagerContext;

    iput-object p1, v0, Lcom/youdo/XAdManagerContext;->prerollMockAdServer:Ljava/lang/String;

    return-void
.end method

.method public setRST(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/youdo/XNativeAdManager;->managerContext:Lcom/youdo/XAdManagerContext;

    const-string v1, "m3u8"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    :cond_0
    iput-object p1, v0, Lcom/youdo/XAdManagerContext;->rst:Ljava/lang/String;

    return-void
.end method

.method public setScreenDensity(I)V
    .locals 1

    iget-object v0, p0, Lcom/youdo/XNativeAdManager;->managerContext:Lcom/youdo/XAdManagerContext;

    iput p1, v0, Lcom/youdo/XAdManagerContext;->mScreenDensity:I

    return-void
.end method

.method public setScreenSize(II)V
    .locals 2

    iget-object v0, p0, Lcom/youdo/XNativeAdManager;->managerContext:Lcom/youdo/XAdManagerContext;

    new-instance v1, Lorg/openad/gemo/CGSize;

    invoke-direct {v1, p1, p2}, Lorg/openad/gemo/CGSize;-><init>(II)V

    iput-object v1, v0, Lcom/youdo/XAdManagerContext;->mScreenSize:Lorg/openad/gemo/CGSize;

    return-void
.end method

.method public setSite(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/youdo/XNativeAdManager;->managerContext:Lcom/youdo/XAdManagerContext;

    iput-object p1, v0, Lcom/youdo/XAdManagerContext;->site:Ljava/lang/String;

    return-void
.end method

.method public setUserAgent(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/youdo/XNativeAdManager;->managerContext:Lcom/youdo/XAdManagerContext;

    iput-object p1, v0, Lcom/youdo/XAdManagerContext;->userAgent:Ljava/lang/String;

    return-void
.end method

.method public setVideoDuration(I)V
    .locals 1

    iget-object v0, p0, Lcom/youdo/XNativeAdManager;->managerContext:Lcom/youdo/XAdManagerContext;

    iput p1, v0, Lcom/youdo/XAdManagerContext;->videoDuration:I

    return-void
.end method

.method public startNativeAdServer()V
    .locals 2

    const-string v0, "XNativeAdManager"

    iget-object v1, p0, Lcom/youdo/XNativeAdManager;->mState:Lcom/youdo/XNativeAdManager$XNativeAdManagerState;

    invoke-virtual {v1}, Lcom/youdo/XNativeAdManager$XNativeAdManagerState;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/youdo/XNativeAdManager;->mState:Lcom/youdo/XNativeAdManager$XNativeAdManagerState;

    sget-object v1, Lcom/youdo/XNativeAdManager$XNativeAdManagerState;->UNKNOWN:Lcom/youdo/XNativeAdManager$XNativeAdManagerState;

    if-eq v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/youdo/XNativeAdManager$XNativeAdManagerState;->AD_SERVER_START:Lcom/youdo/XNativeAdManager$XNativeAdManagerState;

    iput-object v0, p0, Lcom/youdo/XNativeAdManager;->mState:Lcom/youdo/XNativeAdManager$XNativeAdManagerState;

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/youdo/XNativeAdManager$5;

    invoke-direct {v1, p0}, Lcom/youdo/XNativeAdManager$5;-><init>(Lcom/youdo/XNativeAdManager;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const-string v0, "XNativeAdManager"

    const-string/jumbo v1, "startNativeAdServer set mAllowNativeAdServing as false"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/youdo/XNativeAdManager;->mAllowNativeAdServing:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0
.end method
