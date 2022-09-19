.class public Lcom/youku/LaifengSDKApplication;
.super Landroid/app/Application;
.source "LaifengSDKApplication.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LaifengSDKApplication"

.field private static mAppInstance:Landroid/app/Application;

.field private static mDownloadManager:Lcom/youku/laifeng/sdk/download/DefaultDownloadManager;

.field private static mInstance:Lcom/youku/LaifengSDKApplication;

.field private static mOpenSilentDownload:Z

.field private static switchOpen:Z


# instance fields
.field private final RESTAPI_CALLB:I

.field private listener:Lcom/youku/laifeng/libcuteroom/model/listener/OnDataLoaderListener;

.field private mConnection:Landroid/content/ServiceConnection;

.field private mEnterRoomApi:Lcom/youku/api/EventDoApi;

.field private mHandler:Landroid/os/Handler;

.field private mIDataService:Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerService;

.field private rectoptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

.field private roundoptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 48
    sput-object v0, Lcom/youku/LaifengSDKApplication;->mAppInstance:Landroid/app/Application;

    .line 49
    sput-object v0, Lcom/youku/LaifengSDKApplication;->mInstance:Lcom/youku/LaifengSDKApplication;

    .line 62
    sput-object v0, Lcom/youku/LaifengSDKApplication;->mDownloadManager:Lcom/youku/laifeng/sdk/download/DefaultDownloadManager;

    .line 63
    const/4 v0, 0x0

    sput-boolean v0, Lcom/youku/LaifengSDKApplication;->switchOpen:Z

    .line 64
    const/4 v0, 0x1

    sput-boolean v0, Lcom/youku/LaifengSDKApplication;->mOpenSilentDownload:Z

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;Z)V
    .locals 2
    .param p1, "application"    # Landroid/app/Application;
    .param p2, "forbiddenLFSDKImageLoader"    # Z

    .prologue
    .line 66
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/youku/LaifengSDKApplication;->mIDataService:Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerService;

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lcom/youku/LaifengSDKApplication;->RESTAPI_CALLB:I

    .line 46
    new-instance v0, Lcom/youku/api/EventDoApi;

    invoke-direct {v0}, Lcom/youku/api/EventDoApi;-><init>()V

    iput-object v0, p0, Lcom/youku/LaifengSDKApplication;->mEnterRoomApi:Lcom/youku/api/EventDoApi;

    .line 104
    new-instance v0, Lcom/youku/LaifengSDKApplication$1;

    invoke-direct {v0, p0}, Lcom/youku/LaifengSDKApplication$1;-><init>(Lcom/youku/LaifengSDKApplication;)V

    iput-object v0, p0, Lcom/youku/LaifengSDKApplication;->mHandler:Landroid/os/Handler;

    .line 144
    new-instance v0, Lcom/youku/LaifengSDKApplication$2;

    invoke-direct {v0, p0}, Lcom/youku/LaifengSDKApplication$2;-><init>(Lcom/youku/LaifengSDKApplication;)V

    iput-object v0, p0, Lcom/youku/LaifengSDKApplication;->mConnection:Landroid/content/ServiceConnection;

    .line 250
    new-instance v0, Lcom/youku/LaifengSDKApplication$3;

    invoke-direct {v0, p0}, Lcom/youku/LaifengSDKApplication$3;-><init>(Lcom/youku/LaifengSDKApplication;)V

    iput-object v0, p0, Lcom/youku/LaifengSDKApplication;->listener:Lcom/youku/laifeng/libcuteroom/model/listener/OnDataLoaderListener;

    .line 68
    sput-object p1, Lcom/youku/LaifengSDKApplication;->mAppInstance:Landroid/app/Application;

    .line 69
    sput-object p0, Lcom/youku/LaifengSDKApplication;->mInstance:Lcom/youku/LaifengSDKApplication;

    .line 71
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/utils/FileUtils;->getInstance()Lcom/youku/laifeng/libcuteroom/utils/FileUtils;

    move-result-object v0

    const-string v1, "Crazy Together"

    invoke-virtual {v0, v1}, Lcom/youku/laifeng/libcuteroom/utils/FileUtils;->setCustomMainDirName(Ljava/lang/String;)V

    .line 72
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/utils/FileUtils;->getInstance()Lcom/youku/laifeng/libcuteroom/utils/FileUtils;

    move-result-object v0

    const-string v1, "Image"

    invoke-virtual {v0, v1}, Lcom/youku/laifeng/libcuteroom/utils/FileUtils;->setCustomImageDirName(Ljava/lang/String;)V

    .line 73
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/utils/FileUtils;->getInstance()Lcom/youku/laifeng/libcuteroom/utils/FileUtils;

    move-result-object v0

    const-string v1, "Update"

    invoke-virtual {v0, v1}, Lcom/youku/laifeng/libcuteroom/utils/FileUtils;->setCustomUpdateDirName(Ljava/lang/String;)V

    .line 74
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/utils/FileUtils;->getInstance()Lcom/youku/laifeng/libcuteroom/utils/FileUtils;

    move-result-object v0

    const-string v1, "Head"

    invoke-virtual {v0, v1}, Lcom/youku/laifeng/libcuteroom/utils/FileUtils;->setCustomHeadDirName(Ljava/lang/String;)V

    .line 75
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/utils/FileUtils;->getInstance()Lcom/youku/laifeng/libcuteroom/utils/FileUtils;

    move-result-object v0

    const-string v1, "Gifts"

    invoke-virtual {v0, v1}, Lcom/youku/laifeng/libcuteroom/utils/FileUtils;->setCustomGiftsDirName(Ljava/lang/String;)V

    .line 76
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/utils/FileUtils;->getInstance()Lcom/youku/laifeng/libcuteroom/utils/FileUtils;

    move-result-object v0

    const-string v1, "Splash"

    invoke-virtual {v0, v1}, Lcom/youku/laifeng/libcuteroom/utils/FileUtils;->setCustomSplashDirName(Ljava/lang/String;)V

    .line 77
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/utils/FileUtils;->getInstance()Lcom/youku/laifeng/libcuteroom/utils/FileUtils;

    move-result-object v0

    const-string v1, "Level"

    invoke-virtual {v0, v1}, Lcom/youku/laifeng/libcuteroom/utils/FileUtils;->setCustomLevelResourcesDirName(Ljava/lang/String;)V

    .line 79
    invoke-direct {p0}, Lcom/youku/LaifengSDKApplication;->startService()V

    .line 81
    iget-object v0, p0, Lcom/youku/LaifengSDKApplication;->mEnterRoomApi:Lcom/youku/api/EventDoApi;

    sget-object v1, Lcom/youku/LaifengSDKApplication;->mAppInstance:Landroid/app/Application;

    invoke-virtual {v0, v1}, Lcom/youku/api/EventDoApi;->init(Landroid/content/Context;)V

    .line 84
    new-instance v0, Lcom/youku/laifeng/sdk/download/DefaultDownloadManager;

    invoke-direct {v0}, Lcom/youku/laifeng/sdk/download/DefaultDownloadManager;-><init>()V

    sput-object v0, Lcom/youku/LaifengSDKApplication;->mDownloadManager:Lcom/youku/laifeng/sdk/download/DefaultDownloadManager;

    .line 86
    new-instance v0, Lcom/youku/laifeng/libcuteroom/LibAppApplication;

    sget-object v1, Lcom/youku/LaifengSDKApplication;->mAppInstance:Landroid/app/Application;

    invoke-direct {v0, v1}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;-><init>(Landroid/app/Application;)V

    .line 88
    if-nez p2, :cond_0

    .line 89
    sget-object v0, Lcom/youku/LaifengSDKApplication;->mAppInstance:Landroid/app/Application;

    invoke-static {v0}, Lcom/youku/LaifengSDKApplication;->initImageLoader(Landroid/content/Context;)V

    .line 93
    :cond_0
    const-string v0, "54f924b5fd98c5faf3000067"

    invoke-static {v0}, Lcom/umeng/analytics/AnalyticsConfig;->setAppkey(Ljava/lang/String;)V

    .line 95
    const-string v0, "TUDOU-2.1.0"

    invoke-static {v0}, Lcom/umeng/analytics/AnalyticsConfig;->setChannel(Ljava/lang/String;)V

    .line 97
    invoke-direct {p0}, Lcom/youku/LaifengSDKApplication;->getSwitchStatus()V

    .line 98
    return-void
.end method

.method static synthetic access$002(Lcom/youku/LaifengSDKApplication;Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerService;)Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerService;
    .locals 0
    .param p0, "x0"    # Lcom/youku/LaifengSDKApplication;
    .param p1, "x1"    # Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerService;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/youku/LaifengSDKApplication;->mIDataService:Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerService;

    return-object p1
.end method

.method static synthetic access$100(Lcom/youku/LaifengSDKApplication;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/youku/LaifengSDKApplication;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/youku/LaifengSDKApplication;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/youku/LaifengSDKApplication;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/LaifengSDKApplication;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/youku/LaifengSDKApplication;->startService()V

    return-void
.end method

.method static synthetic access$300()Z
    .locals 1

    .prologue
    .line 40
    sget-boolean v0, Lcom/youku/LaifengSDKApplication;->switchOpen:Z

    return v0
.end method

.method static synthetic access$302(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 40
    sput-boolean p0, Lcom/youku/LaifengSDKApplication;->switchOpen:Z

    return p0
.end method

.method public static getAppInstance()Lcom/youku/LaifengSDKApplication;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/youku/LaifengSDKApplication;->mInstance:Lcom/youku/LaifengSDKApplication;

    return-object v0
.end method

.method public static getApplication()Landroid/app/Application;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/youku/LaifengSDKApplication;->mAppInstance:Landroid/app/Application;

    return-object v0
.end method

.method public static getDownloadManager()Lcom/youku/laifeng/sdk/download/DefaultDownloadManager;
    .locals 1

    .prologue
    .line 166
    sget-object v0, Lcom/youku/LaifengSDKApplication;->mDownloadManager:Lcom/youku/laifeng/sdk/download/DefaultDownloadManager;

    return-object v0
.end method

.method public static getSwitchOpenStatus()Z
    .locals 1

    .prologue
    .line 174
    sget-boolean v0, Lcom/youku/LaifengSDKApplication;->switchOpen:Z

    return v0
.end method

.method private getSwitchStatus()V
    .locals 5

    .prologue
    .line 247
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;->getLoader()Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/LaifengSDKApplication;->listener:Lcom/youku/laifeng/libcuteroom/model/listener/OnDataLoaderListener;

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/utils/RestAPI;->getInstance()Lcom/youku/laifeng/libcuteroom/utils/RestAPI;

    move-result-object v2

    iget-object v2, v2, Lcom/youku/laifeng/libcuteroom/utils/RestAPI;->SDK_SWITCH_ENTER_LIVE_ROOM:Ljava/lang/String;

    const/4 v3, 0x0

    const/16 v4, 0x10

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;->insertTask(Lcom/youku/laifeng/libcuteroom/model/listener/OnDataLoaderListener;Ljava/lang/String;Ljava/lang/String;I)V

    .line 248
    return-void
.end method

.method public static initImageLoader(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 192
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v4

    long-to-int v2, v4

    .line 193
    .local v2, "maxMemory":I
    div-int/lit8 v1, v2, 0x10

    .line 195
    .local v1, "mCacheSize":I
    new-instance v3, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    invoke-direct {v3, p0}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->threadPriority(I)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object v3

    .line 196
    invoke-virtual {v3}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->denyCacheImageMultipleSizesInMemory()Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object v3

    new-instance v4, Lcom/nostra13/universalimageloader/cache/disc/naming/Md5FileNameGenerator;

    invoke-direct {v4}, Lcom/nostra13/universalimageloader/cache/disc/naming/Md5FileNameGenerator;-><init>()V

    invoke-virtual {v3, v4}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->diskCacheFileNameGenerator(Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object v3

    const/high16 v4, 0x1400000

    .line 197
    invoke-virtual {v3, v4}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->diskCacheSize(I)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object v3

    new-instance v4, Lcom/nostra13/universalimageloader/cache/memory/impl/UsingFreqLimitedMemoryCache;

    invoke-direct {v4, v1}, Lcom/nostra13/universalimageloader/cache/memory/impl/UsingFreqLimitedMemoryCache;-><init>(I)V

    .line 198
    invoke-virtual {v3, v4}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->memoryCache(Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object v3

    sget-object v4, Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;->LIFO:Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;

    .line 199
    invoke-virtual {v3, v4}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->tasksProcessingOrder(Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object v3

    .line 203
    invoke-virtual {v3}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->build()Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    move-result-object v0

    .line 204
    .local v0, "config":Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->init(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;)V

    .line 205
    return-void
.end method

.method public static isOpenSilentDownload()Z
    .locals 1

    .prologue
    .line 178
    sget-boolean v0, Lcom/youku/LaifengSDKApplication;->mOpenSilentDownload:Z

    return v0
.end method

.method private startService()V
    .locals 7

    .prologue
    .line 115
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.youku.laifeng.service.REMOTE_CORE_SERVICE"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 116
    .local v1, "intent1":Landroid/content/Intent;
    sget-object v3, Lcom/youku/LaifengSDKApplication;->mAppInstance:Landroid/app/Application;

    sget-object v4, Lcom/youku/LaifengSDKApplication;->mAppInstance:Landroid/app/Application;

    invoke-static {v4, v1}, Lcom/youku/laifeng/libcuteroom/utils/Utils;->createExplicitFromImplicitIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Application;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    .end local v1    # "intent1":Landroid/content/Intent;
    :goto_0
    :try_start_1
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerService;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 125
    .local v2, "intent2":Landroid/content/Intent;
    sget-object v3, Lcom/youku/LaifengSDKApplication;->mAppInstance:Landroid/app/Application;

    sget-object v4, Lcom/youku/LaifengSDKApplication;->mAppInstance:Landroid/app/Application;

    invoke-static {v4, v2}, Lcom/youku/laifeng/libcuteroom/utils/Utils;->createExplicitFromImplicitIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v4

    iget-object v5, p0, Lcom/youku/LaifengSDKApplication;->mConnection:Landroid/content/ServiceConnection;

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v6}, Landroid/app/Application;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 131
    .end local v2    # "intent2":Landroid/content/Intent;
    :goto_1
    return-void

    .line 118
    :catch_0
    move-exception v0

    .line 119
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "LaifengSDKApplication"

    const-string/jumbo v4, "special Exception catch start"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 127
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 128
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v3, "LaifengSDKApplication"

    const-string/jumbo v4, "special Exception catch bind"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private stopService()V
    .locals 4

    .prologue
    .line 136
    :try_start_0
    sget-object v1, Lcom/youku/LaifengSDKApplication;->mAppInstance:Landroid/app/Application;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.youku.laifeng.service.REMOTE_CORE_SERVICE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/app/Application;->stopService(Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    :goto_0
    return-void

    .line 138
    :catch_0
    move-exception v0

    .line 139
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "LaifengSDKApplication"

    const-string/jumbo v2, "special Exception catch stop"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public getEnterRoomApi()Lcom/youku/api/EventDoApi;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/youku/LaifengSDKApplication;->mEnterRoomApi:Lcom/youku/api/EventDoApi;

    return-object v0
.end method

.method public getRectOption()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
    .locals 3

    .prologue
    .line 208
    iget-object v0, p0, Lcom/youku/LaifengSDKApplication;->rectoptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    if-nez v0, :cond_1

    .line 209
    const-class v1, Lcom/youku/LaifengSDKApplication;

    monitor-enter v1

    .line 210
    :try_start_0
    iget-object v0, p0, Lcom/youku/LaifengSDKApplication;->rectoptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    if-nez v0, :cond_0

    .line 211
    new-instance v0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-direct {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheInMemory(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheOnDisk(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->considerExifParams(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    sget-object v2, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    .line 212
    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->bitmapConfig(Landroid/graphics/Bitmap$Config;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/LaifengSDKApplication;->rectoptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 214
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    :cond_1
    iget-object v0, p0, Lcom/youku/LaifengSDKApplication;->rectoptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    return-object v0

    .line 214
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getRoundOption()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
    .locals 4

    .prologue
    .line 220
    iget-object v0, p0, Lcom/youku/LaifengSDKApplication;->roundoptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    if-nez v0, :cond_1

    .line 221
    const-class v1, Lcom/youku/LaifengSDKApplication;

    monitor-enter v1

    .line 222
    :try_start_0
    iget-object v0, p0, Lcom/youku/LaifengSDKApplication;->roundoptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    if-nez v0, :cond_0

    .line 223
    new-instance v0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-direct {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheInMemory(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheOnDisk(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->considerExifParams(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    new-instance v2, Lcom/nostra13/universalimageloader/core/display/FadeInBitmapDisplayer;

    const/16 v3, 0x1f4

    invoke-direct {v2, v3}, Lcom/nostra13/universalimageloader/core/display/FadeInBitmapDisplayer;-><init>(I)V

    .line 224
    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->displayer(Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    new-instance v2, Lcom/nostra13/universalimageloader/core/display/RoundedBitmapDisplayer;

    const/16 v3, 0x96

    invoke-direct {v2, v3}, Lcom/nostra13/universalimageloader/core/display/RoundedBitmapDisplayer;-><init>(I)V

    .line 225
    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->displayer(Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    sget-object v2, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->bitmapConfig(Landroid/graphics/Bitmap$Config;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/LaifengSDKApplication;->roundoptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 227
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 229
    :cond_1
    iget-object v0, p0, Lcom/youku/LaifengSDKApplication;->roundoptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    return-object v0

    .line 227
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 162
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 163
    return-void
.end method

.method public onTerminate()V
    .locals 1

    .prologue
    .line 183
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    .line 184
    iget-object v0, p0, Lcom/youku/LaifengSDKApplication;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/youku/LaifengSDKApplication;->unbindService(Landroid/content/ServiceConnection;)V

    .line 185
    invoke-direct {p0}, Lcom/youku/LaifengSDKApplication;->stopService()V

    .line 186
    iget-object v0, p0, Lcom/youku/LaifengSDKApplication;->mEnterRoomApi:Lcom/youku/api/EventDoApi;

    invoke-virtual {v0}, Lcom/youku/api/EventDoApi;->stop()V

    .line 187
    sget-object v0, Lcom/youku/LaifengSDKApplication;->mDownloadManager:Lcom/youku/laifeng/sdk/download/DefaultDownloadManager;

    invoke-virtual {v0}, Lcom/youku/laifeng/sdk/download/DefaultDownloadManager;->release()V

    .line 188
    return-void
.end method

.method public setOpenSilentDownload(Z)V
    .locals 0
    .param p1, "isOpen"    # Z

    .prologue
    .line 101
    sput-boolean p1, Lcom/youku/LaifengSDKApplication;->mOpenSilentDownload:Z

    .line 102
    return-void
.end method
