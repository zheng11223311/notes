.class public Lcom/youku/libmanager/SoUpgradeService;
.super Landroid/app/Service;
.source "SoUpgradeService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/libmanager/SoUpgradeService$DownloadSate;,
        Lcom/youku/libmanager/SoUpgradeService$SingleSoDownloadTask;
    }
.end annotation


# static fields
.field public static final ALL_VERSION_UPGRADE_TYPE:I = 0x1

.field public static final CHECK_TIME:Ljava/lang/String; = "check_time"

.field public static final FLAG_START_SERVICE_FROM_MANAGER:I = 0x1

.field public static final INTERVAL_CHECK_TIME:I = 0x18

.field public static final LIB_ACCSTUB_SO_NAME:Ljava/lang/String; = "libaccstub.so"

.field public static final LIB_DRM_SO_NAME:Ljava/lang/String; = "libWasabiJni.so"

.field public static final LIB_FFMPEG_SO_NAME:Ljava/lang/String; = "libuffmpeg.so"

.field public static final LIB_UPLAYER_22_SO_NAME:Ljava/lang/String; = "libuplayer22.so"

.field public static final LIB_UPLAYER_23_SO_NAME:Ljava/lang/String; = "libuplayer23.so"

.field public static final PREFS_NAME:Ljava/lang/String; = "library_manager"

.field public static final SECRET:Ljava/lang/String; = "secret"

.field public static final SMART_TV_PACKAGE_NAME:Ljava/lang/String; = "com.youku.tv"

.field public static final SO_VERSION:Ljava/lang/String; = "so_version_"

.field public static final SPECIFY_VERSION_UPGRADE_TYPE:I = 0x0

.field public static final TAG:Ljava/lang/String; = "SoUpgradeService"

.field public static final TEMP_SO_SUFFIX:Ljava/lang/String; = ".tmp"

.field public static final TIME_STAMP:Ljava/lang/String; = "time_stamp"

.field public static final TUDOU_PAD_PACKAGE_NAME:Ljava/lang/String; = "com.tudou.xoom.android"

.field public static final TUDOU_PHONE_PACKAGE_NAME:Ljava/lang/String; = "com.tudou.android"

.field public static final UPGRADE_FLAG:Ljava/lang/String; = "upgrade_flag"

.field public static final VERSION_CODE:Ljava/lang/String; = "version_code"

.field public static final VERSION_NAME:Ljava/lang/String; = "version_name"

.field public static final WIRELESS_PID:Ljava/lang/String; = "wireless_pid"

.field public static final YOUKU_PHONE_PACKAGE_NAME:Ljava/lang/String; = "com.youku.phone"

.field public static mDownloadPath:Ljava/lang/String;

.field private static mIndependentDownloadPath:Ljava/lang/String;

.field public static pid:Ljava/lang/String;

.field public static secret:Ljava/lang/String;

.field public static timestamp:J


# instance fields
.field private SINGLE_TASK_TRY_TIMES:I

.field private arch:Ljava/lang/String;

.field private archPlatform:Ljava/lang/String;

.field private enableDownload:Z

.field private guid:Ljava/lang/String;

.field private isFirstReceive:Z

.field private isNetworkReceiverRegist:Z

.field private mBinder:Lcom/youku/libmanager/ISoUpgradeService$Stub;

.field private mDownloadThread:Ljava/lang/Thread;

.field private mDownloadedSoInfos:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/youku/libmanager/SoInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field mLocalSoInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/libmanager/SoInfo;",
            ">;"
        }
    .end annotation
.end field

.field mOnlineSoInfos:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/libmanager/SoInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field mPackageName:Ljava/lang/String;

.field private mRequestUrl:Ljava/lang/String;

.field private mSingleSoDownloadTasks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/youku/libmanager/SoUpgradeService$SingleSoDownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field private mSoUpgradeCallback:Lcom/youku/libmanager/ISoUpgradeCallback;

.field private mTryTimes:I

.field private mUpgradeSoInfos:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/youku/libmanager/SoInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mdownloadRunnable:Ljava/lang/Runnable;

.field private networkReceiver:Landroid/content/BroadcastReceiver;

.field private os:Ljava/lang/String;

.field public product:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 122
    sput-object v0, Lcom/youku/libmanager/SoUpgradeService;->mDownloadPath:Ljava/lang/String;

    .line 124
    sput-object v0, Lcom/youku/libmanager/SoUpgradeService;->mIndependentDownloadPath:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 49
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 100
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/youku/libmanager/SoUpgradeService;->mPackageName:Ljava/lang/String;

    .line 102
    const/4 v0, 0x3

    iput v0, p0, Lcom/youku/libmanager/SoUpgradeService;->mTryTimes:I

    .line 104
    const/4 v0, 0x5

    iput v0, p0, Lcom/youku/libmanager/SoUpgradeService;->SINGLE_TASK_TRY_TIMES:I

    .line 106
    const-string v0, "android"

    iput-object v0, p0, Lcom/youku/libmanager/SoUpgradeService;->os:Ljava/lang/String;

    .line 108
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/libmanager/SoUpgradeService;->product:Ljava/lang/String;

    .line 128
    iput-boolean v1, p0, Lcom/youku/libmanager/SoUpgradeService;->isFirstReceive:Z

    .line 130
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youku/libmanager/SoUpgradeService;->isNetworkReceiverRegist:Z

    .line 132
    iput-boolean v1, p0, Lcom/youku/libmanager/SoUpgradeService;->enableDownload:Z

    .line 134
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/youku/libmanager/SoUpgradeService;->mSingleSoDownloadTasks:Ljava/util/Map;

    .line 138
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/youku/libmanager/SoUpgradeService;->mHandler:Landroid/os/Handler;

    .line 142
    new-instance v0, Lcom/youku/libmanager/SoUpgradeService$1;

    invoke-direct {v0, p0}, Lcom/youku/libmanager/SoUpgradeService$1;-><init>(Lcom/youku/libmanager/SoUpgradeService;)V

    iput-object v0, p0, Lcom/youku/libmanager/SoUpgradeService;->mBinder:Lcom/youku/libmanager/ISoUpgradeService$Stub;

    .line 239
    new-instance v0, Lcom/youku/libmanager/SoUpgradeService$2;

    invoke-direct {v0, p0}, Lcom/youku/libmanager/SoUpgradeService$2;-><init>(Lcom/youku/libmanager/SoUpgradeService;)V

    iput-object v0, p0, Lcom/youku/libmanager/SoUpgradeService;->networkReceiver:Landroid/content/BroadcastReceiver;

    .line 690
    new-instance v0, Lcom/youku/libmanager/SoUpgradeService$3;

    invoke-direct {v0, p0}, Lcom/youku/libmanager/SoUpgradeService$3;-><init>(Lcom/youku/libmanager/SoUpgradeService;)V

    iput-object v0, p0, Lcom/youku/libmanager/SoUpgradeService;->mdownloadRunnable:Ljava/lang/Runnable;

    .line 789
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/youku/libmanager/SoUpgradeService;->mUpgradeSoInfos:Ljava/util/Map;

    .line 792
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/youku/libmanager/SoUpgradeService;->mDownloadedSoInfos:Ljava/util/Map;

    .line 795
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/youku/libmanager/SoUpgradeService;->mLocalSoInfos:Ljava/util/ArrayList;

    .line 798
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/youku/libmanager/SoUpgradeService;->mOnlineSoInfos:Ljava/util/Map;

    .line 1174
    return-void
.end method

.method static synthetic access$000(Lcom/youku/libmanager/SoUpgradeService;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/youku/libmanager/SoUpgradeService;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/youku/libmanager/SoUpgradeService;->mSingleSoDownloadTasks:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/youku/libmanager/SoUpgradeService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/youku/libmanager/SoUpgradeService;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/youku/libmanager/SoUpgradeService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/youku/libmanager/SoUpgradeService;Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Lcom/youku/libmanager/SoUpgradeService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/youku/libmanager/SoUpgradeService;->getSingleDownloadSoVersion(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/youku/libmanager/SoUpgradeService;->mIndependentDownloadPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/youku/libmanager/SoUpgradeService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/youku/libmanager/SoUpgradeService;

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/youku/libmanager/SoUpgradeService;->isFirstReceive:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/youku/libmanager/SoUpgradeService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/youku/libmanager/SoUpgradeService;
    .param p1, "x1"    # Z

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/youku/libmanager/SoUpgradeService;->isFirstReceive:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/youku/libmanager/SoUpgradeService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/youku/libmanager/SoUpgradeService;

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/youku/libmanager/SoUpgradeService;->enableDownload:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/youku/libmanager/SoUpgradeService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/youku/libmanager/SoUpgradeService;
    .param p1, "x1"    # Z

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/youku/libmanager/SoUpgradeService;->enableDownload:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/youku/libmanager/SoUpgradeService;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/libmanager/SoUpgradeService;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/youku/libmanager/SoUpgradeService;->stopService()V

    return-void
.end method

.method static synthetic access$1600(Lcom/youku/libmanager/SoUpgradeService;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/youku/libmanager/SoUpgradeService;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/youku/libmanager/SoUpgradeService;->mUpgradeSoInfos:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/youku/libmanager/SoUpgradeService;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/libmanager/SoUpgradeService;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/youku/libmanager/SoUpgradeService;->setUpgradeFlag()V

    return-void
.end method

.method static synthetic access$1800(Lcom/youku/libmanager/SoUpgradeService;)I
    .locals 1
    .param p0, "x0"    # Lcom/youku/libmanager/SoUpgradeService;

    .prologue
    .line 49
    iget v0, p0, Lcom/youku/libmanager/SoUpgradeService;->mTryTimes:I

    return v0
.end method

.method static synthetic access$1900(Lcom/youku/libmanager/SoUpgradeService;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/youku/libmanager/SoUpgradeService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/youku/libmanager/SoUpgradeService;->checkMD5(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/youku/libmanager/SoUpgradeService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/youku/libmanager/SoUpgradeService;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/youku/libmanager/SoUpgradeService;->initRequestUrl()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/youku/libmanager/SoUpgradeService;Lcom/youku/libmanager/SoInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/libmanager/SoUpgradeService;
    .param p1, "x1"    # Lcom/youku/libmanager/SoInfo;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/youku/libmanager/SoUpgradeService;->processDownloadFail(Lcom/youku/libmanager/SoInfo;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/youku/libmanager/SoUpgradeService;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/youku/libmanager/SoUpgradeService;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/youku/libmanager/SoUpgradeService;->mDownloadedSoInfos:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/youku/libmanager/SoUpgradeService;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/libmanager/SoUpgradeService;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/youku/libmanager/SoUpgradeService;->replaceSo()V

    return-void
.end method

.method static synthetic access$2300(Lcom/youku/libmanager/SoUpgradeService;Ljava/lang/Boolean;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/libmanager/SoUpgradeService;
    .param p1, "x1"    # Ljava/lang/Boolean;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/youku/libmanager/SoUpgradeService;->saveUpgradeFlag(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/youku/libmanager/SoUpgradeService;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "x0"    # Lcom/youku/libmanager/SoUpgradeService;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/youku/libmanager/SoUpgradeService;->isNeedUpgrade()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2600(Lcom/youku/libmanager/SoUpgradeService;)I
    .locals 1
    .param p0, "x0"    # Lcom/youku/libmanager/SoUpgradeService;

    .prologue
    .line 49
    iget v0, p0, Lcom/youku/libmanager/SoUpgradeService;->SINGLE_TASK_TRY_TIMES:I

    return v0
.end method

.method static synthetic access$2700(Lcom/youku/libmanager/SoUpgradeService;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/libmanager/SoUpgradeService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/youku/libmanager/SoUpgradeService;->saveSingleDownloadSoVersion(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$300(Lcom/youku/libmanager/SoUpgradeService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/youku/libmanager/SoUpgradeService;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/youku/libmanager/SoUpgradeService;->mRequestUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/youku/libmanager/SoUpgradeService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/youku/libmanager/SoUpgradeService;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/youku/libmanager/SoUpgradeService;->os:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/youku/libmanager/SoUpgradeService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/youku/libmanager/SoUpgradeService;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/youku/libmanager/SoUpgradeService;->arch:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/youku/libmanager/SoUpgradeService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/youku/libmanager/SoUpgradeService;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/youku/libmanager/SoUpgradeService;->guid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/youku/libmanager/SoUpgradeService;)Lcom/youku/libmanager/ISoUpgradeCallback;
    .locals 1
    .param p0, "x0"    # Lcom/youku/libmanager/SoUpgradeService;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/youku/libmanager/SoUpgradeService;->mSoUpgradeCallback:Lcom/youku/libmanager/ISoUpgradeCallback;

    return-object v0
.end method

.method static synthetic access$702(Lcom/youku/libmanager/SoUpgradeService;Lcom/youku/libmanager/ISoUpgradeCallback;)Lcom/youku/libmanager/ISoUpgradeCallback;
    .locals 0
    .param p0, "x0"    # Lcom/youku/libmanager/SoUpgradeService;
    .param p1, "x1"    # Lcom/youku/libmanager/ISoUpgradeCallback;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/youku/libmanager/SoUpgradeService;->mSoUpgradeCallback:Lcom/youku/libmanager/ISoUpgradeCallback;

    return-object p1
.end method

.method static synthetic access$800(Lcom/youku/libmanager/SoUpgradeService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/libmanager/SoUpgradeService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/youku/libmanager/SoUpgradeService;->parseJson(Ljava/lang/String;)V

    return-void
.end method

.method private checkMD5(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "md5"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 640
    const-string v3, "SoUpgradeService"

    const-string v4, "checkMD5"

    invoke-static {v3, v4}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    const-string v3, "SoUpgradeService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "path = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", md5 = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 644
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 645
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz p2, :cond_0

    const-string v3, ""

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 655
    :cond_0
    :goto_0
    return v2

    .line 649
    :cond_1
    invoke-static {v0}, Lcom/youku/libmanager/MD5;->getMD5(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    .line 650
    .local v1, "fileMD5":Ljava/lang/String;
    const-string v3, "SoUpgradeService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fileMD5 = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 652
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private compareArch(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 4
    .param p1, "local"    # Ljava/lang/String;
    .param p2, "online"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 984
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 985
    :cond_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 996
    :goto_0
    return-object v2

    .line 988
    :cond_1
    const-string v2, ";"

    invoke-virtual {p2, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 989
    .local v0, "archs":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_3

    .line 990
    aget-object v2, v0, v1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 991
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_0

    .line 989
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 996
    :cond_3
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_0
.end method

.method private compareSo(Lcom/youku/libmanager/SoInfo;Lcom/youku/libmanager/SoInfo;)Ljava/lang/Boolean;
    .locals 3
    .param p1, "local"    # Lcom/youku/libmanager/SoInfo;
    .param p2, "online"    # Lcom/youku/libmanager/SoInfo;

    .prologue
    const/4 v2, 0x0

    .line 1000
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 1001
    :cond_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1014
    :goto_0
    return-object v0

    .line 1004
    :cond_1
    iget-object v0, p1, Lcom/youku/libmanager/SoInfo;->name:Ljava/lang/String;

    iget-object v1, p2, Lcom/youku/libmanager/SoInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/youku/libmanager/SoInfo;->versionName:Ljava/lang/String;

    iget-object v1, p2, Lcom/youku/libmanager/SoInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p1, Lcom/youku/libmanager/SoInfo;->versionCode:I

    iget v1, p2, Lcom/youku/libmanager/SoInfo;->versionCode:I

    if-eq v0, v1, :cond_3

    .line 1011
    :cond_2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 1014
    :cond_3
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method private getLastCheckTime()J
    .locals 6

    .prologue
    .line 494
    const-string v3, "library_manager"

    const/4 v4, 0x4

    invoke-virtual {p0, v3, v4}, Lcom/youku/libmanager/SoUpgradeService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 495
    .local v2, "savedata":Landroid/content/SharedPreferences;
    const-string v3, "check_time"

    const-wide/16 v4, 0x0

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 497
    .local v0, "checkTime":J
    return-wide v0
.end method

.method private getLocalSo()V
    .locals 10

    .prologue
    .line 864
    invoke-static {}, Lcom/youku/uplayer/MediaPlayerProxy;->isUplayerSupported()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 870
    invoke-static {}, Lcom/youku/uplayer/UMediaPlayer;->getFFmpegVersionName()Ljava/lang/String;

    move-result-object v1

    .line 871
    .local v1, "ffmpegVersionName":Ljava/lang/String;
    invoke-static {}, Lcom/youku/uplayer/UMediaPlayer;->getFFmpegVersionCode()I

    move-result v0

    .line 872
    .local v0, "ffmpegVersionCode":I
    new-instance v3, Lcom/youku/libmanager/SoInfo;

    invoke-direct {v3}, Lcom/youku/libmanager/SoInfo;-><init>()V

    .line 873
    .local v3, "so":Lcom/youku/libmanager/SoInfo;
    iput-object v1, v3, Lcom/youku/libmanager/SoInfo;->versionName:Ljava/lang/String;

    .line 874
    iput v0, v3, Lcom/youku/libmanager/SoInfo;->versionCode:I

    .line 875
    const-string v7, "libuffmpeg.so"

    iput-object v7, v3, Lcom/youku/libmanager/SoInfo;->name:Ljava/lang/String;

    .line 876
    iget-object v7, p0, Lcom/youku/libmanager/SoUpgradeService;->os:Ljava/lang/String;

    iput-object v7, v3, Lcom/youku/libmanager/SoInfo;->os:Ljava/lang/String;

    .line 877
    iget-object v7, p0, Lcom/youku/libmanager/SoUpgradeService;->arch:Ljava/lang/String;

    iput-object v7, v3, Lcom/youku/libmanager/SoInfo;->arch:Ljava/lang/String;

    .line 878
    iget-object v7, p0, Lcom/youku/libmanager/SoUpgradeService;->product:Ljava/lang/String;

    iput-object v7, v3, Lcom/youku/libmanager/SoInfo;->product:Ljava/lang/String;

    .line 879
    iget-object v7, p0, Lcom/youku/libmanager/SoUpgradeService;->mLocalSoInfos:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 881
    invoke-static {}, Lcom/youku/uplayer/UMediaPlayer;->getUplayerVersionName()Ljava/lang/String;

    move-result-object v6

    .line 882
    .local v6, "uplayerVersionName":Ljava/lang/String;
    invoke-static {}, Lcom/youku/uplayer/UMediaPlayer;->getUplayerVersionCode()I

    move-result v5

    .line 883
    .local v5, "uplayerVersionCode":I
    new-instance v3, Lcom/youku/libmanager/SoInfo;

    .end local v3    # "so":Lcom/youku/libmanager/SoInfo;
    invoke-direct {v3}, Lcom/youku/libmanager/SoInfo;-><init>()V

    .line 884
    .restart local v3    # "so":Lcom/youku/libmanager/SoInfo;
    iput-object v6, v3, Lcom/youku/libmanager/SoInfo;->versionName:Ljava/lang/String;

    .line 885
    iput v5, v3, Lcom/youku/libmanager/SoInfo;->versionCode:I

    .line 886
    const-string v7, "libuplayer22.so"

    iput-object v7, v3, Lcom/youku/libmanager/SoInfo;->name:Ljava/lang/String;

    .line 887
    iget-object v7, p0, Lcom/youku/libmanager/SoUpgradeService;->os:Ljava/lang/String;

    iput-object v7, v3, Lcom/youku/libmanager/SoInfo;->os:Ljava/lang/String;

    .line 888
    iget-object v7, p0, Lcom/youku/libmanager/SoUpgradeService;->arch:Ljava/lang/String;

    iput-object v7, v3, Lcom/youku/libmanager/SoInfo;->arch:Ljava/lang/String;

    .line 889
    iget-object v7, p0, Lcom/youku/libmanager/SoUpgradeService;->product:Ljava/lang/String;

    iput-object v7, v3, Lcom/youku/libmanager/SoInfo;->product:Ljava/lang/String;

    .line 890
    iget-object v7, p0, Lcom/youku/libmanager/SoUpgradeService;->mLocalSoInfos:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 892
    new-instance v3, Lcom/youku/libmanager/SoInfo;

    .end local v3    # "so":Lcom/youku/libmanager/SoInfo;
    invoke-direct {v3}, Lcom/youku/libmanager/SoInfo;-><init>()V

    .line 893
    .restart local v3    # "so":Lcom/youku/libmanager/SoInfo;
    iput-object v6, v3, Lcom/youku/libmanager/SoInfo;->versionName:Ljava/lang/String;

    .line 894
    iput v5, v3, Lcom/youku/libmanager/SoInfo;->versionCode:I

    .line 895
    const-string v7, "libuplayer23.so"

    iput-object v7, v3, Lcom/youku/libmanager/SoInfo;->name:Ljava/lang/String;

    .line 896
    iget-object v7, p0, Lcom/youku/libmanager/SoUpgradeService;->os:Ljava/lang/String;

    iput-object v7, v3, Lcom/youku/libmanager/SoInfo;->os:Ljava/lang/String;

    .line 897
    iget-object v7, p0, Lcom/youku/libmanager/SoUpgradeService;->arch:Ljava/lang/String;

    iput-object v7, v3, Lcom/youku/libmanager/SoInfo;->arch:Ljava/lang/String;

    .line 898
    iget-object v7, p0, Lcom/youku/libmanager/SoUpgradeService;->product:Ljava/lang/String;

    iput-object v7, v3, Lcom/youku/libmanager/SoInfo;->product:Ljava/lang/String;

    .line 899
    iget-object v7, p0, Lcom/youku/libmanager/SoUpgradeService;->mLocalSoInfos:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 901
    .end local v0    # "ffmpegVersionCode":I
    .end local v1    # "ffmpegVersionName":Ljava/lang/String;
    .end local v3    # "so":Lcom/youku/libmanager/SoInfo;
    .end local v5    # "uplayerVersionCode":I
    .end local v6    # "uplayerVersionName":Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/youku/service/acc/AcceleraterServiceManager;->isACCEnable()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 902
    new-instance v3, Lcom/youku/libmanager/SoInfo;

    invoke-direct {v3}, Lcom/youku/libmanager/SoInfo;-><init>()V

    .line 903
    .restart local v3    # "so":Lcom/youku/libmanager/SoInfo;
    invoke-static {}, Lcom/youku/service/acc/AcceleraterServiceManager;->getAccVersionName()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Lcom/youku/libmanager/SoInfo;->versionName:Ljava/lang/String;

    .line 904
    invoke-static {}, Lcom/youku/service/acc/AcceleraterServiceManager;->getAccVersionCode()I

    move-result v7

    iput v7, v3, Lcom/youku/libmanager/SoInfo;->versionCode:I

    .line 905
    const-string v7, "libaccstub.so"

    iput-object v7, v3, Lcom/youku/libmanager/SoInfo;->name:Ljava/lang/String;

    .line 906
    iget-object v7, p0, Lcom/youku/libmanager/SoUpgradeService;->os:Ljava/lang/String;

    iput-object v7, v3, Lcom/youku/libmanager/SoInfo;->os:Ljava/lang/String;

    .line 907
    iget-object v7, p0, Lcom/youku/libmanager/SoUpgradeService;->arch:Ljava/lang/String;

    iput-object v7, v3, Lcom/youku/libmanager/SoInfo;->arch:Ljava/lang/String;

    .line 908
    iget-object v7, p0, Lcom/youku/libmanager/SoUpgradeService;->product:Ljava/lang/String;

    iput-object v7, v3, Lcom/youku/libmanager/SoInfo;->product:Ljava/lang/String;

    .line 909
    iget-object v7, p0, Lcom/youku/libmanager/SoUpgradeService;->mLocalSoInfos:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 912
    .end local v3    # "so":Lcom/youku/libmanager/SoInfo;
    :cond_1
    const-string v7, "SoUpgradeService"

    const-string v8, "============= local libs ==============="

    invoke-static {v7, v8}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 913
    iget-object v7, p0, Lcom/youku/libmanager/SoUpgradeService;->mLocalSoInfos:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/youku/libmanager/SoInfo;

    .line 914
    .local v4, "soInfo":Lcom/youku/libmanager/SoInfo;
    const-string v7, "SoUpgradeService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "name = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v4, Lcom/youku/libmanager/SoInfo;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", versionName = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v4, Lcom/youku/libmanager/SoInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", versionCode = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v4, Lcom/youku/libmanager/SoInfo;->versionCode:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", os = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v4, Lcom/youku/libmanager/SoInfo;->os:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", arch = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v4, Lcom/youku/libmanager/SoInfo;->arch:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", product = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v4, Lcom/youku/libmanager/SoInfo;->product:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 921
    .end local v4    # "soInfo":Lcom/youku/libmanager/SoInfo;
    :cond_2
    const-string v7, "SoUpgradeService"

    const-string v8, "============= local libs ==============="

    invoke-static {v7, v8}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 922
    return-void
.end method

.method public static getPid(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 456
    const-string v1, "library_manager"

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 457
    .local v0, "savedata":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "wireless_pid"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getSecret(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 482
    const-string v1, "library_manager"

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 483
    .local v0, "savedata":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "secret"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getSingleDownloadSoVersion(Ljava/lang/String;)I
    .locals 4
    .param p1, "soName"    # Ljava/lang/String;

    .prologue
    .line 507
    const-string v2, "library_manager"

    const/4 v3, 0x4

    invoke-virtual {p0, v2, v3}, Lcom/youku/libmanager/SoUpgradeService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 508
    .local v0, "saveDate":Landroid/content/SharedPreferences;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "so_version_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 509
    .local v1, "version":I
    return v1
.end method

.method public static getTimeStamp(Landroid/content/Context;)J
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 468
    const-string v1, "library_manager"

    const/4 v4, 0x4

    invoke-virtual {p0, v1, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 469
    .local v0, "savedata":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "time_stamp"

    const-wide/16 v4, 0x0

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 470
    .local v2, "timeStamp":J
    const-string v1, "SoUpgradeService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getTimeStamp:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    return-wide v2
.end method

.method private getUpgradeFlag()Ljava/lang/Boolean;
    .locals 4

    .prologue
    .line 379
    const-string v2, "library_manager"

    const/4 v3, 0x4

    invoke-virtual {p0, v2, v3}, Lcom/youku/libmanager/SoUpgradeService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 380
    .local v1, "savedata":Landroid/content/SharedPreferences;
    const-string/jumbo v2, "upgrade_flag"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 382
    .local v0, "flag":Ljava/lang/Boolean;
    return-object v0
.end method

.method public static getVersionCode(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 443
    const-string v1, "library_manager"

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 445
    .local v0, "savedata":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "version_code"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public static getVersionName(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 430
    const-string v1, "library_manager"

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 432
    .local v0, "savedata":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "version_name"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private initData()Z
    .locals 3

    .prologue
    .line 281
    sget-object v0, Lcom/youku/analytics/data/Device;->pid:Ljava/lang/String;

    sput-object v0, Lcom/youku/libmanager/SoUpgradeService;->pid:Ljava/lang/String;

    .line 283
    sget-object v0, Lcom/youku/analytics/data/Device;->guid:Ljava/lang/String;

    iput-object v0, p0, Lcom/youku/libmanager/SoUpgradeService;->guid:Ljava/lang/String;

    .line 285
    invoke-static {p0}, Lcom/youku/libmanager/SoUpgradeService;->getTimeStamp(Landroid/content/Context;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/baseproject/utils/Util;->TIME_STAMP:Ljava/lang/Long;

    .line 287
    invoke-static {p0}, Lcom/youku/libmanager/SoUpgradeService;->getSecret(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baseproject/utils/Util;->SECRET:Ljava/lang/String;

    .line 289
    const-string v0, "SoUpgradeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/youku/libmanager/SoUpgradeService;->pid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", guid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/youku/libmanager/SoUpgradeService;->guid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", timestamp = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/baseproject/utils/Util;->TIME_STAMP:Ljava/lang/Long;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", secret = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/baseproject/utils/Util;->SECRET:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    invoke-virtual {p0}, Lcom/youku/libmanager/SoUpgradeService;->initProduct()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/youku/libmanager/SoUpgradeService;->initRequestUrl()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/youku/libmanager/SoUpgradeService;->initDownloadPath()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/youku/libmanager/SoUpgradeService;->initArch()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 292
    const/4 v0, 0x1

    .line 295
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initRequestUrl()Z
    .locals 2

    .prologue
    .line 348
    iget-object v0, p0, Lcom/youku/libmanager/SoUpgradeService;->product:Ljava/lang/String;

    const-string/jumbo v1, "youku"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 349
    invoke-static {}, Lcom/youku/libmanager/UrlUtils;->getYoukuRequestUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/libmanager/SoUpgradeService;->mRequestUrl:Ljava/lang/String;

    .line 356
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 350
    :cond_0
    iget-object v0, p0, Lcom/youku/libmanager/SoUpgradeService;->product:Ljava/lang/String;

    const-string/jumbo v1, "tudou"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 351
    invoke-static {}, Lcom/youku/libmanager/UrlUtils;->getTudouRequestUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/libmanager/SoUpgradeService;->mRequestUrl:Ljava/lang/String;

    goto :goto_0

    .line 353
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private isNeedUpgrade()Ljava/lang/Boolean;
    .locals 13

    .prologue
    .line 1018
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 1020
    .local v10, "upgradeSoInfos":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/youku/libmanager/SoInfo;>;"
    iget-object v11, p0, Lcom/youku/libmanager/SoUpgradeService;->mLocalSoInfos:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/youku/libmanager/SoInfo;

    .line 1021
    .local v4, "local":Lcom/youku/libmanager/SoInfo;
    iget-object v11, p0, Lcom/youku/libmanager/SoUpgradeService;->mOnlineSoInfos:Ljava/util/Map;

    iget-object v12, v4, Lcom/youku/libmanager/SoInfo;->name:Ljava/lang/String;

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 1022
    .local v6, "onlineSo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/libmanager/SoInfo;>;"
    if-eqz v6, :cond_0

    .line 1023
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/youku/libmanager/SoInfo;

    .line 1024
    .local v5, "online":Lcom/youku/libmanager/SoInfo;
    invoke-direct {p0, v4, v5}, Lcom/youku/libmanager/SoUpgradeService;->compareSo(Lcom/youku/libmanager/SoInfo;Lcom/youku/libmanager/SoInfo;)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 1025
    iget-object v11, v4, Lcom/youku/libmanager/SoInfo;->name:Ljava/lang/String;

    invoke-interface {v10, v11, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1031
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "local":Lcom/youku/libmanager/SoInfo;
    .end local v5    # "online":Lcom/youku/libmanager/SoInfo;
    .end local v6    # "onlineSo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/libmanager/SoInfo;>;"
    :cond_2
    const-string v11, "SoUpgradeService"

    const-string v12, "====upgrade so initially===="

    invoke-static {v11, v12}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1032
    invoke-interface {v10}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1033
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/youku/libmanager/SoInfo;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/youku/libmanager/SoInfo;

    .line 1034
    .local v9, "so":Lcom/youku/libmanager/SoInfo;
    const-string v11, "SoUpgradeService"

    iget-object v12, v9, Lcom/youku/libmanager/SoInfo;->name:Ljava/lang/String;

    invoke-static {v11, v12}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1036
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/youku/libmanager/SoInfo;>;"
    .end local v9    # "so":Lcom/youku/libmanager/SoInfo;
    :cond_3
    const-string v11, "SoUpgradeService"

    const-string v12, "====upgrade so initially===="

    invoke-static {v11, v12}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1037
    const-string v11, "SoUpgradeService"

    const-string v12, "====upgrade so finally===="

    invoke-static {v11, v12}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1038
    invoke-interface {v10}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1039
    .restart local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/youku/libmanager/SoInfo;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/youku/libmanager/SoInfo;

    .line 1040
    .restart local v9    # "so":Lcom/youku/libmanager/SoInfo;
    iget-object v8, v9, Lcom/youku/libmanager/SoInfo;->relativeSo:Ljava/lang/String;

    .line 1042
    .local v8, "relativeSo":Ljava/lang/String;
    if-eqz v8, :cond_5

    if-eqz v8, :cond_6

    const-string v11, ""

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 1043
    :cond_5
    const-string v11, "SoUpgradeService"

    iget-object v12, v9, Lcom/youku/libmanager/SoInfo;->name:Ljava/lang/String;

    invoke-static {v11, v12}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1044
    iget-object v11, p0, Lcom/youku/libmanager/SoUpgradeService;->mUpgradeSoInfos:Ljava/util/Map;

    iget-object v12, v9, Lcom/youku/libmanager/SoInfo;->name:Ljava/lang/String;

    invoke-interface {v11, v12, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 1047
    :cond_6
    const-string v11, ","

    invoke-virtual {v8, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 1048
    .local v7, "relativeArray":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    array-length v11, v7

    if-ge v1, v11, :cond_7

    .line 1049
    aget-object v11, v7, v1

    invoke-interface {v10, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_8

    .line 1054
    :cond_7
    array-length v11, v7

    if-ne v1, v11, :cond_4

    .line 1055
    iget-object v11, p0, Lcom/youku/libmanager/SoUpgradeService;->mUpgradeSoInfos:Ljava/util/Map;

    iget-object v12, v9, Lcom/youku/libmanager/SoInfo;->name:Ljava/lang/String;

    invoke-interface {v11, v12, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1056
    const-string v11, "SoUpgradeService"

    iget-object v12, v9, Lcom/youku/libmanager/SoInfo;->name:Ljava/lang/String;

    invoke-static {v11, v12}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1048
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1060
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/youku/libmanager/SoInfo;>;"
    .end local v1    # "i":I
    .end local v7    # "relativeArray":[Ljava/lang/String;
    .end local v8    # "relativeSo":Ljava/lang/String;
    .end local v9    # "so":Lcom/youku/libmanager/SoInfo;
    :cond_9
    const-string v11, "SoUpgradeService"

    const-string v12, "====upgrade so finally===="

    invoke-static {v11, v12}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1062
    iget-object v11, p0, Lcom/youku/libmanager/SoUpgradeService;->mUpgradeSoInfos:Ljava/util/Map;

    invoke-interface {v11}, Ljava/util/Map;->size()I

    move-result v11

    if-lez v11, :cond_a

    const/4 v11, 0x1

    :goto_4
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    return-object v11

    :cond_a
    const/4 v11, 0x0

    goto :goto_4
.end method

.method private parseJson(Ljava/lang/String;)V
    .locals 10
    .param p1, "json"    # Ljava/lang/String;

    .prologue
    .line 925
    const-string v7, "SoUpgradeService"

    const-string v8, "parseJson"

    invoke-static {v7, v8}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 926
    const-string v7, "SoUpgradeService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "json = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 929
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 931
    .local v2, "object":Lorg/json/JSONObject;
    const-string/jumbo v7, "result"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 932
    const-string v7, "SoUpgradeService"

    const-string v8, "has result"

    invoke-static {v7, v8}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 933
    const-string/jumbo v7, "result"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 934
    .local v4, "segsArray":Lorg/json/JSONArray;
    if-eqz v4, :cond_2

    .line 935
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v1, v7, :cond_2

    .line 936
    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 937
    .local v3, "segObject":Lorg/json/JSONObject;
    if-eqz v3, :cond_0

    .line 938
    new-instance v5, Lcom/youku/libmanager/SoInfo;

    invoke-direct {v5}, Lcom/youku/libmanager/SoInfo;-><init>()V

    .line 939
    .local v5, "soInfo":Lcom/youku/libmanager/SoInfo;
    const-string v7, "name"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/youku/libmanager/SoInfo;->name:Ljava/lang/String;

    .line 940
    const-string/jumbo v7, "versionName"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/youku/libmanager/SoInfo;->versionName:Ljava/lang/String;

    .line 941
    const-string/jumbo v7, "versionCode"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v5, Lcom/youku/libmanager/SoInfo;->versionCode:I

    .line 942
    const-string v7, "arch"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/youku/libmanager/SoInfo;->arch:Ljava/lang/String;

    .line 943
    const-string v7, "os"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/youku/libmanager/SoInfo;->os:Ljava/lang/String;

    .line 944
    const-string v7, "product"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/youku/libmanager/SoInfo;->product:Ljava/lang/String;

    .line 945
    const-string v7, "download_url"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/youku/libmanager/SoInfo;->download_url:Ljava/lang/String;

    .line 946
    const-string v7, "md5"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/youku/libmanager/SoInfo;->md5:Ljava/lang/String;

    .line 947
    const-string/jumbo v7, "relativeSo"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/youku/libmanager/SoInfo;->relativeSo:Ljava/lang/String;

    .line 949
    const-string v7, "is_forced_upgrade"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "1"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 950
    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iput-object v7, v5, Lcom/youku/libmanager/SoInfo;->is_forced_upgrade:Ljava/lang/Boolean;

    .line 955
    :goto_1
    const-string v7, "SoUpgradeService"

    const-string v8, "================================="

    invoke-static {v7, v8}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 956
    const-string v7, "SoUpgradeService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "name = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v5, Lcom/youku/libmanager/SoInfo;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 957
    const-string v7, "SoUpgradeService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "versionName = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v5, Lcom/youku/libmanager/SoInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 958
    const-string v7, "SoUpgradeService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "versionCode = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v5, Lcom/youku/libmanager/SoInfo;->versionCode:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 959
    const-string v7, "SoUpgradeService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "arch = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v5, Lcom/youku/libmanager/SoInfo;->arch:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 960
    const-string v7, "SoUpgradeService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "os = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v5, Lcom/youku/libmanager/SoInfo;->os:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 961
    const-string v7, "SoUpgradeService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "product = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v5, Lcom/youku/libmanager/SoInfo;->product:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 962
    const-string v7, "SoUpgradeService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "download_url = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v5, Lcom/youku/libmanager/SoInfo;->download_url:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 963
    const-string v7, "SoUpgradeService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "relativeSo = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v5, Lcom/youku/libmanager/SoInfo;->relativeSo:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 964
    const-string v7, "SoUpgradeService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "is_forced_upgrade = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v5, Lcom/youku/libmanager/SoInfo;->is_forced_upgrade:Ljava/lang/Boolean;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 966
    iget-object v7, p0, Lcom/youku/libmanager/SoUpgradeService;->mOnlineSoInfos:Ljava/util/Map;

    iget-object v8, v5, Lcom/youku/libmanager/SoInfo;->name:Ljava/lang/String;

    invoke-interface {v7, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 967
    iget-object v7, p0, Lcom/youku/libmanager/SoUpgradeService;->mOnlineSoInfos:Ljava/util/Map;

    iget-object v8, v5, Lcom/youku/libmanager/SoInfo;->name:Ljava/lang/String;

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 968
    .local v6, "value":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/libmanager/SoInfo;>;"
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 935
    .end local v5    # "soInfo":Lcom/youku/libmanager/SoInfo;
    .end local v6    # "value":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/libmanager/SoInfo;>;"
    :cond_0
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 952
    .restart local v5    # "soInfo":Lcom/youku/libmanager/SoInfo;
    :cond_1
    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iput-object v7, v5, Lcom/youku/libmanager/SoInfo;->is_forced_upgrade:Ljava/lang/Boolean;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 978
    .end local v1    # "i":I
    .end local v2    # "object":Lorg/json/JSONObject;
    .end local v3    # "segObject":Lorg/json/JSONObject;
    .end local v4    # "segsArray":Lorg/json/JSONArray;
    .end local v5    # "soInfo":Lcom/youku/libmanager/SoInfo;
    :catch_0
    move-exception v0

    .line 979
    .local v0, "e":Lorg/json/JSONException;
    const-string v7, "SoUpgradeService"

    invoke-static {v7, v0}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 981
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_2
    return-void

    .line 970
    .restart local v1    # "i":I
    .restart local v2    # "object":Lorg/json/JSONObject;
    .restart local v3    # "segObject":Lorg/json/JSONObject;
    .restart local v4    # "segsArray":Lorg/json/JSONArray;
    .restart local v5    # "soInfo":Lcom/youku/libmanager/SoInfo;
    :cond_3
    :try_start_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 971
    .restart local v6    # "value":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/libmanager/SoInfo;>;"
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 972
    iget-object v7, p0, Lcom/youku/libmanager/SoUpgradeService;->mOnlineSoInfos:Ljava/util/Map;

    iget-object v8, v5, Lcom/youku/libmanager/SoInfo;->name:Ljava/lang/String;

    invoke-interface {v7, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method private processDownloadFail(Lcom/youku/libmanager/SoInfo;)V
    .locals 7
    .param p1, "so"    # Lcom/youku/libmanager/SoInfo;

    .prologue
    .line 659
    const-string v4, "SoUpgradeService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "processDownloadFail : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/youku/libmanager/SoInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    iget-object v2, p1, Lcom/youku/libmanager/SoInfo;->relativeSo:Ljava/lang/String;

    .line 664
    .local v2, "relativeSo":Ljava/lang/String;
    if-eqz v2, :cond_0

    if-eqz v2, :cond_1

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 685
    :cond_0
    return-void

    .line 668
    :cond_1
    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 671
    .local v1, "relativeArray":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v1

    if-ge v0, v4, :cond_0

    .line 672
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/youku/libmanager/SoUpgradeService;->mDownloadPath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v1, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".tmp"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/youku/libmanager/FileUtils;->deleteFile(Ljava/lang/String;)Z

    .line 673
    iget-object v4, p0, Lcom/youku/libmanager/SoUpgradeService;->mUpgradeSoInfos:Ljava/util/Map;

    aget-object v5, v1, v0

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 674
    iget-object v4, p0, Lcom/youku/libmanager/SoUpgradeService;->mUpgradeSoInfos:Ljava/util/Map;

    aget-object v5, v1, v0

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/youku/libmanager/SoInfo;

    .line 675
    .local v3, "soInfo":Lcom/youku/libmanager/SoInfo;
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, v3, Lcom/youku/libmanager/SoInfo;->needDownload:Ljava/lang/Boolean;

    .line 677
    iget-object v4, p0, Lcom/youku/libmanager/SoUpgradeService;->mDownloadedSoInfos:Ljava/util/Map;

    aget-object v5, v1, v0

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 678
    iget-object v4, p0, Lcom/youku/libmanager/SoUpgradeService;->mDownloadedSoInfos:Ljava/util/Map;

    aget-object v5, v1, v0

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 682
    .end local v3    # "soInfo":Lcom/youku/libmanager/SoInfo;
    :cond_2
    const-string v4, "SoUpgradeService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p1, Lcom/youku/libmanager/SoInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " relative so : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v1, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " does not need download!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 671
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private replaceSo()V
    .locals 6

    .prologue
    .line 746
    const-string v3, "SoUpgradeService"

    const-string/jumbo v4, "replaceSo()"

    invoke-static {v3, v4}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 750
    iget-object v3, p0, Lcom/youku/libmanager/SoUpgradeService;->mDownloadedSoInfos:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 751
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/youku/libmanager/SoInfo;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/libmanager/SoInfo;

    .line 753
    .local v0, "downloadedSo":Lcom/youku/libmanager/SoInfo;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/youku/libmanager/SoUpgradeService;->mDownloadPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/youku/libmanager/SoInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/youku/libmanager/FileUtils;->deleteFile(Ljava/lang/String;)Z

    .line 756
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/youku/libmanager/SoUpgradeService;->mDownloadPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/youku/libmanager/SoInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".tmp"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/youku/libmanager/SoUpgradeService;->mDownloadPath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/youku/libmanager/SoInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/youku/libmanager/FileUtils;->renameFile(Ljava/lang/String;Ljava/lang/String;)Z

    .line 757
    const-string v3, "SoUpgradeService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "rename "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/youku/libmanager/SoInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".tmp"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ---> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/youku/libmanager/SoInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 759
    iget-object v3, v0, Lcom/youku/libmanager/SoInfo;->name:Ljava/lang/String;

    const-string v4, "libaccstub.so"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 760
    invoke-virtual {p0}, Lcom/youku/libmanager/SoUpgradeService;->killAcceleraterProcess()V

    goto/16 :goto_0

    .line 764
    .end local v0    # "downloadedSo":Lcom/youku/libmanager/SoInfo;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/youku/libmanager/SoInfo;>;"
    :cond_1
    return-void
.end method

.method public static savePid(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pid"    # Ljava/lang/String;

    .prologue
    .line 449
    const-string v1, "library_manager"

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 450
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "wireless_pid"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 452
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 453
    return-void
.end method

.method public static saveSecret(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "secret"    # Ljava/lang/String;

    .prologue
    .line 475
    const-string v1, "library_manager"

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 476
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "secret"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 478
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 479
    return-void
.end method

.method private saveSingleDownloadSoVersion(Ljava/lang/String;I)V
    .locals 3
    .param p1, "soName"    # Ljava/lang/String;
    .param p2, "version"    # I

    .prologue
    .line 501
    const-string v1, "library_manager"

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v2}, Lcom/youku/libmanager/SoUpgradeService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 502
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "so_version_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 503
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 504
    return-void
.end method

.method public static saveTimeStamp(Landroid/content/Context;J)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "timeStamp"    # J

    .prologue
    .line 461
    const-string v1, "library_manager"

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 462
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "time_stamp"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 464
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 465
    return-void
.end method

.method private saveUpgradeFlag(Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "flag"    # Ljava/lang/Boolean;

    .prologue
    .line 372
    const-string v1, "library_manager"

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v2}, Lcom/youku/libmanager/SoUpgradeService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 373
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "upgrade_flag"

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 375
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 376
    return-void
.end method

.method public static saveVersionCode(Landroid/content/Context;I)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "versionCode"    # I

    .prologue
    .line 436
    const-string v1, "library_manager"

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 437
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "version_code"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 439
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 440
    return-void
.end method

.method public static saveVersionName(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "versionName"    # Ljava/lang/String;

    .prologue
    .line 423
    const-string v1, "library_manager"

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 424
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "version_name"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 426
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 427
    return-void
.end method

.method private setCheckTime(J)V
    .locals 3
    .param p1, "time"    # J

    .prologue
    .line 487
    const-string v1, "library_manager"

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v2}, Lcom/youku/libmanager/SoUpgradeService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 488
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "check_time"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 490
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 491
    return-void
.end method

.method private setUpgradeFlag()V
    .locals 2

    .prologue
    .line 361
    iget-object v0, p0, Lcom/youku/libmanager/SoUpgradeService;->mUpgradeSoInfos:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iget-object v1, p0, Lcom/youku/libmanager/SoUpgradeService;->mDownloadedSoInfos:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 362
    const-string v0, "SoUpgradeService"

    const-string/jumbo v1, "so upgrade success"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/youku/libmanager/SoUpgradeService;->saveUpgradeFlag(Ljava/lang/Boolean;)V

    .line 368
    :goto_0
    return-void

    .line 365
    :cond_0
    const-string v0, "SoUpgradeService"

    const-string/jumbo v1, "so upgrade fail"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/youku/libmanager/SoUpgradeService;->saveUpgradeFlag(Ljava/lang/Boolean;)V

    goto :goto_0
.end method

.method private stopService()V
    .locals 1

    .prologue
    .line 1179
    iget-object v0, p0, Lcom/youku/libmanager/SoUpgradeService;->mSingleSoDownloadTasks:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1182
    :goto_0
    return-void

    .line 1181
    :cond_0
    invoke-virtual {p0}, Lcom/youku/libmanager/SoUpgradeService;->stopSelf()V

    goto :goto_0
.end method


# virtual methods
.method public checkLibrary()V
    .locals 9

    .prologue
    .line 812
    iget-object v0, p0, Lcom/youku/libmanager/SoUpgradeService;->mUpgradeSoInfos:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 859
    :goto_0
    return-void

    .line 815
    :cond_0
    invoke-virtual {p0}, Lcom/youku/libmanager/SoUpgradeService;->clear()V

    .line 817
    invoke-direct {p0}, Lcom/youku/libmanager/SoUpgradeService;->getLocalSo()V

    .line 819
    iget-object v0, p0, Lcom/youku/libmanager/SoUpgradeService;->mLocalSoInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 820
    const-string v0, "SoUpgradeService"

    const-string v1, "no local libs to upgrade!"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 821
    invoke-direct {p0}, Lcom/youku/libmanager/SoUpgradeService;->stopService()V

    .line 823
    :cond_1
    invoke-virtual {p0}, Lcom/youku/libmanager/SoUpgradeService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/youku/libmanager/SoUpgradeService;->getTimeStamp(Landroid/content/Context;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/baseproject/utils/Util;->TIME_STAMP:Ljava/lang/Long;

    .line 824
    invoke-direct {p0}, Lcom/youku/libmanager/SoUpgradeService;->initRequestUrl()Z

    .line 825
    const-class v0, Lcom/youku/player/network/IHttpRequest;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/youku/player/network/YoukuService;->getService(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/youku/player/network/IHttpRequest;

    .line 827
    .local v7, "httpRequest":Lcom/youku/player/network/IHttpRequest;
    iget-object v0, p0, Lcom/youku/libmanager/SoUpgradeService;->mRequestUrl:Ljava/lang/String;

    iget-object v1, p0, Lcom/youku/libmanager/SoUpgradeService;->product:Ljava/lang/String;

    iget-object v2, p0, Lcom/youku/libmanager/SoUpgradeService;->os:Ljava/lang/String;

    iget-object v3, p0, Lcom/youku/libmanager/SoUpgradeService;->arch:Ljava/lang/String;

    sget-object v4, Lcom/youku/libmanager/SoUpgradeService;->pid:Ljava/lang/String;

    iget-object v5, p0, Lcom/youku/libmanager/SoUpgradeService;->guid:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/youku/libmanager/UrlUtils;->getRequestUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 828
    .local v8, "url":Ljava/lang/String;
    const-string v0, "SoUpgradeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "url = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 829
    new-instance v6, Lcom/youku/player/network/HttpIntent;

    invoke-direct {v6, v8}, Lcom/youku/player/network/HttpIntent;-><init>(Ljava/lang/String;)V

    .line 831
    .local v6, "httpIntent":Lcom/youku/player/network/HttpIntent;
    new-instance v0, Lcom/youku/libmanager/SoUpgradeService$4;

    invoke-direct {v0, p0}, Lcom/youku/libmanager/SoUpgradeService$4;-><init>(Lcom/youku/libmanager/SoUpgradeService;)V

    invoke-interface {v7, v6, v0}, Lcom/youku/player/network/IHttpRequest;->request(Lcom/youku/player/network/HttpIntent;Lcom/youku/player/network/IHttpRequest$IHttpRequestCallBack;)V

    goto :goto_0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 802
    iget-object v0, p0, Lcom/youku/libmanager/SoUpgradeService;->mUpgradeSoInfos:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 804
    iget-object v0, p0, Lcom/youku/libmanager/SoUpgradeService;->mDownloadedSoInfos:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 806
    iget-object v0, p0, Lcom/youku/libmanager/SoUpgradeService;->mLocalSoInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 808
    iget-object v0, p0, Lcom/youku/libmanager/SoUpgradeService;->mOnlineSoInfos:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 809
    return-void
.end method

.method public convertSecondToHour(J)Ljava/lang/String;
    .locals 11
    .param p1, "second"    # J

    .prologue
    const-wide/16 v8, 0xe10

    const-wide/16 v6, 0x3c

    .line 515
    div-long v0, p1, v8

    .line 516
    .local v0, "hour":J
    rem-long/2addr p1, v8

    .line 517
    div-long v2, p1, v6

    .line 518
    .local v2, "min":J
    rem-long v4, p1, v6

    .line 520
    .local v4, "sec":J
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public downloadLibs()V
    .locals 2

    .prologue
    .line 1067
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/youku/libmanager/SoUpgradeService;->mdownloadRunnable:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/youku/libmanager/SoUpgradeService;->mDownloadThread:Ljava/lang/Thread;

    .line 1068
    iget-object v0, p0, Lcom/youku/libmanager/SoUpgradeService;->mDownloadThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1069
    return-void
.end method

.method public initArch()Z
    .locals 10

    .prologue
    const/4 v6, 0x0

    const/4 v9, -0x1

    const/4 v5, 0x1

    .line 597
    const-string v7, "SoUpgradeService"

    const-string v8, "initArch()"

    invoke-static {v7, v8}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    const/4 v4, 0x0

    .line 600
    .local v4, "strLine":Ljava/lang/String;
    const/4 v2, 0x0

    .line 602
    .local v2, "hasNeon":Z
    sget-object v7, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/youku/libmanager/SoUpgradeService;->arch:Ljava/lang/String;

    .line 604
    iget-object v7, p0, Lcom/youku/libmanager/SoUpgradeService;->arch:Ljava/lang/String;

    const-string/jumbo v8, "x86"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 605
    const-string/jumbo v6, "x86"

    iput-object v6, p0, Lcom/youku/libmanager/SoUpgradeService;->archPlatform:Ljava/lang/String;

    .line 636
    :goto_0
    return v5

    .line 607
    :cond_0
    iget-object v7, p0, Lcom/youku/libmanager/SoUpgradeService;->arch:Ljava/lang/String;

    const-string v8, "arm"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 608
    const-string v7, "arm"

    iput-object v7, p0, Lcom/youku/libmanager/SoUpgradeService;->archPlatform:Ljava/lang/String;

    .line 612
    :cond_1
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/FileReader;

    const-string v8, "/proc/cpuinfo"

    invoke-direct {v7, v8}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 614
    .local v0, "cpuinfoReader":Ljava/io/BufferedReader;
    :cond_2
    :goto_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 615
    const-string v7, "Features"

    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 616
    const/16 v7, 0x3a

    invoke-virtual {v4, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 617
    .local v3, "idx":I
    if-eq v3, v9, :cond_2

    .line 618
    add-int/lit8 v7, v3, 0x1

    invoke-virtual {v4, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 619
    const-string v7, "neon"

    invoke-virtual {v4, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-eq v7, v9, :cond_3

    move v2, v5

    :goto_2
    goto :goto_1

    :cond_3
    move v2, v6

    goto :goto_2

    .line 623
    .end local v3    # "idx":I
    :cond_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 630
    if-eqz v2, :cond_5

    .line 631
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/youku/libmanager/SoUpgradeService;->arch:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "-neon"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/youku/libmanager/SoUpgradeService;->arch:Ljava/lang/String;

    .line 634
    :cond_5
    const-string v6, "SoUpgradeService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "arch = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/youku/libmanager/SoUpgradeService;->arch:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 625
    .end local v0    # "cpuinfoReader":Ljava/io/BufferedReader;
    :catch_0
    move-exception v1

    .line 626
    .local v1, "e":Ljava/io/IOException;
    const-string v5, "SoUpgradeService"

    invoke-static {v5, v1}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    move v5, v6

    .line 627
    goto/16 :goto_0
.end method

.method public initDownloadPath()Z
    .locals 2

    .prologue
    .line 767
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/data/data/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/libmanager/SoUpgradeService;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/app_libs/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/youku/libmanager/SoUpgradeService;->mDownloadPath:Ljava/lang/String;

    .line 768
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/data/data/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/libmanager/SoUpgradeService;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/independent_libs/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/youku/libmanager/SoUpgradeService;->mIndependentDownloadPath:Ljava/lang/String;

    .line 769
    sget-object v0, Lcom/youku/libmanager/SoUpgradeService;->mIndependentDownloadPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/youku/libmanager/FileUtils;->creatDir(Ljava/lang/String;)Ljava/io/File;

    .line 770
    invoke-virtual {p0, p0}, Lcom/youku/libmanager/SoUpgradeService;->isApkUpgraded(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 771
    const-string v0, "SoUpgradeService"

    const-string v1, "apk upgraded!"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 772
    sget-object v0, Lcom/youku/libmanager/SoUpgradeService;->mDownloadPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/youku/libmanager/FileUtils;->deleteDirectory(Ljava/lang/String;)Z

    .line 775
    :cond_0
    sget-object v0, Lcom/youku/libmanager/SoUpgradeService;->mDownloadPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/youku/libmanager/FileUtils;->creatDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_1

    .line 776
    const/4 v0, 0x0

    .line 781
    :goto_0
    return v0

    .line 779
    :cond_1
    sget-object v0, Lcom/youku/libmanager/SoUpgradeService;->mDownloadPath:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/youku/libmanager/SoUpgradeStatics;->saveDownloadPath(Landroid/content/Context;Ljava/lang/String;)V

    .line 781
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public initProduct()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 555
    const-string v3, "SoUpgradeService"

    const-string v4, "getProduct()"

    invoke-static {v3, v4}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    :try_start_0
    invoke-virtual {p0}, Lcom/youku/libmanager/SoUpgradeService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p0}, Lcom/youku/libmanager/SoUpgradeService;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 561
    .local v1, "info":Landroid/content/pm/PackageInfo;
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iput-object v3, p0, Lcom/youku/libmanager/SoUpgradeService;->mPackageName:Ljava/lang/String;

    .line 562
    const-string v3, "SoUpgradeService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "packageNames = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/youku/libmanager/SoUpgradeService;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 567
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    :goto_0
    iget-object v3, p0, Lcom/youku/libmanager/SoUpgradeService;->mPackageName:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 593
    :cond_0
    :goto_1
    return v2

    .line 563
    :catch_0
    move-exception v0

    .line 564
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "SoUpgradeService"

    invoke-static {v3, v0}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 571
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    iget-object v3, p0, Lcom/youku/libmanager/SoUpgradeService;->mPackageName:Ljava/lang/String;

    const-string v4, "com.youku.phone"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/youku/libmanager/SoUpgradeService;->mPackageName:Ljava/lang/String;

    const-string v4, "com.youku.phone"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 572
    :cond_2
    invoke-static {p0}, Lcom/baseproject/utils/UIUtils;->isTablet(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 573
    const-string/jumbo v2, "youku%20pad"

    iput-object v2, p0, Lcom/youku/libmanager/SoUpgradeService;->product:Ljava/lang/String;

    .line 591
    :goto_2
    const-string v2, "SoUpgradeService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "product = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/youku/libmanager/SoUpgradeService;->product:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    const/4 v2, 0x1

    goto :goto_1

    .line 575
    :cond_3
    const-string/jumbo v2, "youku%20phone"

    iput-object v2, p0, Lcom/youku/libmanager/SoUpgradeService;->product:Ljava/lang/String;

    goto :goto_2

    .line 577
    :cond_4
    iget-object v3, p0, Lcom/youku/libmanager/SoUpgradeService;->mPackageName:Ljava/lang/String;

    const-string v4, "com.tudou.android"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/youku/libmanager/SoUpgradeService;->mPackageName:Ljava/lang/String;

    const-string v4, "com.tudou.android"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 579
    :cond_5
    const-string/jumbo v2, "tudou%20phone"

    iput-object v2, p0, Lcom/youku/libmanager/SoUpgradeService;->product:Ljava/lang/String;

    goto :goto_2

    .line 581
    :cond_6
    iget-object v3, p0, Lcom/youku/libmanager/SoUpgradeService;->mPackageName:Ljava/lang/String;

    const-string v4, "com.tudou.xoom.android"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 583
    const-string/jumbo v2, "tudou%20pad"

    iput-object v2, p0, Lcom/youku/libmanager/SoUpgradeService;->product:Ljava/lang/String;

    goto :goto_2

    .line 585
    :cond_7
    iget-object v3, p0, Lcom/youku/libmanager/SoUpgradeService;->mPackageName:Ljava/lang/String;

    const-string v4, "com.youku.tv"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 586
    const-string/jumbo v2, "youku%20tv"

    iput-object v2, p0, Lcom/youku/libmanager/SoUpgradeService;->product:Ljava/lang/String;

    goto :goto_2
.end method

.method public isApkUpgraded(Landroid/content/Context;)Ljava/lang/Boolean;
    .locals 12
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x0

    .line 386
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 387
    .local v7, "upgrade":Ljava/lang/Boolean;
    const-string v1, ""

    .line 389
    .local v1, "curVersionName":Ljava/lang/String;
    const/4 v0, 0x0

    .line 392
    .local v0, "curVersionCode":I
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 396
    .local v4, "manager":Landroid/content/pm/PackageManager;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v4, v9, v10}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 397
    .local v3, "info":Landroid/content/pm/PackageInfo;
    iget-object v1, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 398
    iget v0, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 400
    invoke-static {p1}, Lcom/youku/libmanager/SoUpgradeService;->getVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 401
    .local v6, "savedVersionName":Ljava/lang/String;
    invoke-static {p1}, Lcom/youku/libmanager/SoUpgradeService;->getVersionCode(Landroid/content/Context;)I

    move-result v5

    .line 403
    .local v5, "savedVersionCode":I
    const-string v9, "SoUpgradeService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "savedVersionName = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", savedVersionCode = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", curVersionName = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", curVersionCode= "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    if-ne v5, v0, :cond_0

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 407
    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    :goto_0
    move-object v8, v7

    .line 419
    .end local v3    # "info":Landroid/content/pm/PackageInfo;
    .end local v5    # "savedVersionCode":I
    .end local v6    # "savedVersionName":Ljava/lang/String;
    .end local v7    # "upgrade":Ljava/lang/Boolean;
    .local v8, "upgrade":Ljava/lang/Boolean;
    :goto_1
    return-object v8

    .line 409
    .end local v8    # "upgrade":Ljava/lang/Boolean;
    .restart local v3    # "info":Landroid/content/pm/PackageInfo;
    .restart local v5    # "savedVersionCode":I
    .restart local v6    # "savedVersionName":Ljava/lang/String;
    .restart local v7    # "upgrade":Ljava/lang/Boolean;
    :cond_0
    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 410
    invoke-static {p1, v1}, Lcom/youku/libmanager/SoUpgradeService;->saveVersionName(Landroid/content/Context;Ljava/lang/String;)V

    .line 411
    invoke-static {p1, v0}, Lcom/youku/libmanager/SoUpgradeService;->saveVersionCode(Landroid/content/Context;I)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 414
    .end local v3    # "info":Landroid/content/pm/PackageInfo;
    .end local v5    # "savedVersionCode":I
    .end local v6    # "savedVersionName":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 415
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v9, "SoUpgradeService"

    invoke-static {v9, v2}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v8, v7

    .line 416
    .end local v7    # "upgrade":Ljava/lang/Boolean;
    .restart local v8    # "upgrade":Ljava/lang/Boolean;
    goto :goto_1
.end method

.method public killAcceleraterProcess()V
    .locals 7

    .prologue
    .line 1075
    const-string v4, "SoUpgradeService"

    const-string v5, "killAcceleraterProcess"

    invoke-static {v4, v5}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1076
    const-string v4, "activity"

    invoke-virtual {p0, v4}, Lcom/youku/libmanager/SoUpgradeService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    .line 1078
    .local v3, "myActivityManager":Landroid/app/ActivityManager;
    invoke-virtual {v3}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    .line 1080
    .local v2, "mRunningPros":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 1082
    .local v0, "amPro":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v4, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const-string v5, ":accelerater"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1083
    const-string v4, "SoUpgradeService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is running!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1084
    iget v4, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {v4}, Landroid/os/Process;->killProcess(I)V

    .line 1089
    .end local v0    # "amPro":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_1
    return-void
.end method

.method public makeRequestUrl()V
    .locals 2

    .prologue
    .line 785
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/youku/libmanager/SoUpgradeService;->mRequestUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "os="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/libmanager/SoUpgradeService;->os:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&product="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/libmanager/SoUpgradeService;->product:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/libmanager/SoUpgradeService;->mRequestUrl:Ljava/lang/String;

    .line 786
    return-void
.end method

.method public needStartService()Ljava/lang/Boolean;
    .locals 14

    .prologue
    const-wide/16 v12, 0x3e8

    const-wide/16 v10, 0x3c

    const/4 v8, 0x1

    .line 524
    const-string v4, "SoUpgradeService"

    const-string v5, "needStartService"

    invoke-static {v4, v5}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 527
    .local v0, "currentTime":J
    invoke-direct {p0}, Lcom/youku/libmanager/SoUpgradeService;->getLastCheckTime()J

    move-result-wide v2

    .line 529
    .local v2, "lastCheckTime":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_0

    .line 530
    const-string v4, "SoUpgradeService"

    const-string v5, "need start service"

    invoke-static {v4, v5}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    invoke-direct {p0, v0, v1}, Lcom/youku/libmanager/SoUpgradeService;->setCheckTime(J)V

    .line 532
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 550
    :goto_0
    return-object v4

    .line 535
    :cond_0
    const-string v4, "SoUpgradeService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "intervalTime = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sub-long v6, v0, v2

    div-long/2addr v6, v12

    invoke-virtual {p0, v6, v7}, Lcom/youku/libmanager/SoUpgradeService;->convertSecondToHour(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    invoke-direct {p0}, Lcom/youku/libmanager/SoUpgradeService;->getUpgradeFlag()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1

    cmp-long v4, v0, v2

    if-lez v4, :cond_2

    sub-long v4, v0, v2

    div-long/2addr v4, v12

    div-long/2addr v4, v10

    div-long/2addr v4, v10

    const-wide/16 v6, 0x18

    cmp-long v4, v4, v6

    if-lez v4, :cond_2

    .line 544
    :cond_1
    const-string v4, "SoUpgradeService"

    const-string v5, "need start service"

    invoke-static {v4, v5}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    invoke-direct {p0, v0, v1}, Lcom/youku/libmanager/SoUpgradeService;->setCheckTime(J)V

    .line 546
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto :goto_0

    .line 549
    :cond_2
    const-string v4, "SoUpgradeService"

    const-string v5, "do not need start service"

    invoke-static {v4, v5}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "arg0"    # Landroid/content/Intent;

    .prologue
    .line 269
    const-string v0, "SoUpgradeService"

    const-string v1, "onBind"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    iget-object v0, p0, Lcom/youku/libmanager/SoUpgradeService;->mBinder:Lcom/youku/libmanager/ISoUpgradeService$Stub;

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 300
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 301
    const-string v1, "SoUpgradeService"

    const-string v2, "onCreate soupgrade service"

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    invoke-direct {p0}, Lcom/youku/libmanager/SoUpgradeService;->initData()Z

    move-result v1

    if-nez v1, :cond_0

    .line 303
    invoke-direct {p0}, Lcom/youku/libmanager/SoUpgradeService;->stopService()V

    .line 310
    :goto_0
    return-void

    .line 306
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 307
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 308
    iget-object v1, p0, Lcom/youku/libmanager/SoUpgradeService;->networkReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/youku/libmanager/SoUpgradeService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 309
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/youku/libmanager/SoUpgradeService;->isNetworkReceiverRegist:Z

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 336
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 338
    iget-boolean v0, p0, Lcom/youku/libmanager/SoUpgradeService;->isNetworkReceiverRegist:Z

    if-eqz v0, :cond_0

    .line 339
    iget-object v0, p0, Lcom/youku/libmanager/SoUpgradeService;->networkReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/youku/libmanager/SoUpgradeService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 342
    :cond_0
    const-string v0, "SoUpgradeService"

    const-string v1, "onDestroy soupgrade service"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    const/4 v3, 0x1

    .line 314
    const-string v0, "SoUpgradeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStartCommand:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    if-eqz p1, :cond_0

    const-string v0, "flag"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 331
    :goto_0
    return v3

    .line 319
    :cond_0
    invoke-static {}, Lcom/baseproject/utils/Util;->hasInternet()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/baseproject/utils/Util;->hasInternet()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/baseproject/utils/Util;->isWifi()Z

    move-result v0

    if-nez v0, :cond_2

    .line 320
    :cond_1
    invoke-direct {p0}, Lcom/youku/libmanager/SoUpgradeService;->stopService()V

    goto :goto_0

    .line 325
    :cond_2
    invoke-virtual {p0}, Lcom/youku/libmanager/SoUpgradeService;->needStartService()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    .line 326
    invoke-direct {p0}, Lcom/youku/libmanager/SoUpgradeService;->stopService()V

    goto :goto_0

    .line 330
    :cond_3
    invoke-virtual {p0}, Lcom/youku/libmanager/SoUpgradeService;->checkLibrary()V

    goto :goto_0
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 275
    const-string v0, "SoUpgradeService"

    const-string v1, "onUnbind"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method
