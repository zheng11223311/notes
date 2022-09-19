.class public Lcom/youku/gamecenter/download/DownloadingService;
.super Landroid/app/Service;
.source "DownloadingService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/gamecenter/download/DownloadingService$IServiceDownloadListener;,
        Lcom/youku/gamecenter/download/DownloadingService$DownloadingListener;,
        Lcom/youku/gamecenter/download/DownloadingService$DownloadThread;,
        Lcom/youku/gamecenter/download/DownloadingService$DownloadTask;,
        Lcom/youku/gamecenter/download/DownloadingService$DownloadingHandler;,
        Lcom/youku/gamecenter/download/DownloadingService$ServiceHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static isShowToast:Ljava/lang/Boolean;

.field private static mClientMessenger:Landroid/os/Messenger;

.field private static mDownloadMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/youku/gamecenter/download/DownloadingService$DownloadTask;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private isFirstReceive:Z

.field private isNeedDelayStart:Z

.field private isTablet:Z

.field private mDownloadListener:Lcom/youku/gamecenter/download/DownloadingService$IServiceDownloadListener;

.field private mDownloadNotification:Lcom/youku/gamecenter/download/DownloadNotification;

.field private mHandler:Landroid/os/Handler;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field final mMessenger:Landroid/os/Messenger;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private networkReceiver:Landroid/content/BroadcastReceiver;

.field private uid:Ljava/lang/String;

.field private ytidAndUsernameAndVip:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const-class v0, Lcom/youku/gamecenter/download/DownloadingService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/youku/gamecenter/download/DownloadingService;->TAG:Ljava/lang/String;

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/youku/gamecenter/download/DownloadingService;->mDownloadMap:Ljava/util/Map;

    .line 68
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/youku/gamecenter/download/DownloadingService;->isShowToast:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 59
    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lcom/youku/gamecenter/download/DownloadingService$ServiceHandler;

    invoke-direct {v1, p0}, Lcom/youku/gamecenter/download/DownloadingService$ServiceHandler;-><init>(Lcom/youku/gamecenter/download/DownloadingService;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/youku/gamecenter/download/DownloadingService;->mMessenger:Landroid/os/Messenger;

    .line 65
    new-instance v0, Lcom/youku/gamecenter/download/DownloadNotification;

    invoke-direct {v0}, Lcom/youku/gamecenter/download/DownloadNotification;-><init>()V

    iput-object v0, p0, Lcom/youku/gamecenter/download/DownloadingService;->mDownloadNotification:Lcom/youku/gamecenter/download/DownloadNotification;

    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youku/gamecenter/download/DownloadingService;->isFirstReceive:Z

    .line 76
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/gamecenter/download/DownloadingService;->uid:Ljava/lang/String;

    .line 78
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/gamecenter/download/DownloadingService;->ytidAndUsernameAndVip:Ljava/lang/String;

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youku/gamecenter/download/DownloadingService;->isNeedDelayStart:Z

    .line 110
    new-instance v0, Lcom/youku/gamecenter/download/DownloadingService$1;

    invoke-direct {v0, p0}, Lcom/youku/gamecenter/download/DownloadingService$1;-><init>(Lcom/youku/gamecenter/download/DownloadingService;)V

    iput-object v0, p0, Lcom/youku/gamecenter/download/DownloadingService;->networkReceiver:Landroid/content/BroadcastReceiver;

    .line 1318
    return-void
.end method

.method static synthetic access$000(Lcom/youku/gamecenter/download/DownloadingService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/youku/gamecenter/download/DownloadingService;

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/youku/gamecenter/download/DownloadingService;->isFirstReceive:Z

    return v0
.end method

.method static synthetic access$002(Lcom/youku/gamecenter/download/DownloadingService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/youku/gamecenter/download/DownloadingService;
    .param p1, "x1"    # Z

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/youku/gamecenter/download/DownloadingService;->isFirstReceive:Z

    return p1
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/youku/gamecenter/download/DownloadingService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/youku/gamecenter/download/DownloadingService;Lcom/youku/gamecenter/download/DownloadInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/gamecenter/download/DownloadingService;
    .param p1, "x1"    # Lcom/youku/gamecenter/download/DownloadInfo;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/youku/gamecenter/download/DownloadingService;->setDownloadPath(Lcom/youku/gamecenter/download/DownloadInfo;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/youku/gamecenter/download/DownloadingService;Lcom/youku/gamecenter/download/DownloadInfo;)Lcom/youku/gamecenter/download/DownloadingService$DownloadTask;
    .locals 1
    .param p0, "x0"    # Lcom/youku/gamecenter/download/DownloadingService;
    .param p1, "x1"    # Lcom/youku/gamecenter/download/DownloadInfo;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/youku/gamecenter/download/DownloadingService;->getTaskFromCache(Lcom/youku/gamecenter/download/DownloadInfo;)Lcom/youku/gamecenter/download/DownloadingService$DownloadTask;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/youku/gamecenter/download/DownloadingService;)Lcom/youku/gamecenter/download/DownloadingService$IServiceDownloadListener;
    .locals 1
    .param p0, "x0"    # Lcom/youku/gamecenter/download/DownloadingService;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/youku/gamecenter/download/DownloadingService;->mDownloadListener:Lcom/youku/gamecenter/download/DownloadingService$IServiceDownloadListener;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/youku/gamecenter/download/DownloadingService;Lcom/youku/gamecenter/download/DownloadInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/gamecenter/download/DownloadingService;
    .param p1, "x1"    # Lcom/youku/gamecenter/download/DownloadInfo;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/youku/gamecenter/download/DownloadingService;->delete(Lcom/youku/gamecenter/download/DownloadInfo;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/youku/gamecenter/download/DownloadingService;Lcom/youku/gamecenter/download/DownloadInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/gamecenter/download/DownloadingService;
    .param p1, "x1"    # Lcom/youku/gamecenter/download/DownloadInfo;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/youku/gamecenter/download/DownloadingService;->processCancel(Lcom/youku/gamecenter/download/DownloadInfo;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/youku/gamecenter/download/DownloadingService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/youku/gamecenter/download/DownloadingService;

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/youku/gamecenter/download/DownloadingService;->isNeedDelayStart:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/youku/gamecenter/download/DownloadingService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/youku/gamecenter/download/DownloadingService;
    .param p1, "x1"    # Z

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/youku/gamecenter/download/DownloadingService;->isNeedDelayStart:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/youku/gamecenter/download/DownloadingService;Lcom/youku/gamecenter/download/DownloadInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/gamecenter/download/DownloadingService;
    .param p1, "x1"    # Lcom/youku/gamecenter/download/DownloadInfo;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/youku/gamecenter/download/DownloadingService;->startDownload(Lcom/youku/gamecenter/download/DownloadInfo;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/youku/gamecenter/download/DownloadingService;Ljava/lang/String;Lcom/youku/gamecenter/download/DownloadInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/gamecenter/download/DownloadingService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/youku/gamecenter/download/DownloadInfo;

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lcom/youku/gamecenter/download/DownloadingService;->processPause(Ljava/lang/String;Lcom/youku/gamecenter/download/DownloadInfo;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/youku/gamecenter/download/DownloadingService;Lcom/youku/gamecenter/download/DownloadInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/gamecenter/download/DownloadingService;
    .param p1, "x1"    # Lcom/youku/gamecenter/download/DownloadInfo;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/youku/gamecenter/download/DownloadingService;->processDelete(Lcom/youku/gamecenter/download/DownloadInfo;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/youku/gamecenter/download/DownloadingService;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/gamecenter/download/DownloadingService;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/youku/gamecenter/download/DownloadingService;->processContinueCustom(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$200()Ljava/util/Map;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/youku/gamecenter/download/DownloadingService;->mDownloadMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/youku/gamecenter/download/DownloadingService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/gamecenter/download/DownloadingService;
    .param p1, "x1"    # I

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/youku/gamecenter/download/DownloadingService;->continueSilentDownload(I)V

    return-void
.end method

.method static synthetic access$2100(Lcom/youku/gamecenter/download/DownloadingService;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/gamecenter/download/DownloadingService;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/youku/gamecenter/download/DownloadingService;->continueNormalDownload()V

    return-void
.end method

.method static synthetic access$2200(Lcom/youku/gamecenter/download/DownloadingService;Lcom/youku/gamecenter/download/DownloadInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/gamecenter/download/DownloadingService;
    .param p1, "x1"    # Lcom/youku/gamecenter/download/DownloadInfo;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/youku/gamecenter/download/DownloadingService;->sendTrackEnd(Lcom/youku/gamecenter/download/DownloadInfo;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/youku/gamecenter/download/DownloadingService;Ljava/io/File;)Z
    .locals 1
    .param p0, "x0"    # Lcom/youku/gamecenter/download/DownloadingService;
    .param p1, "x1"    # Ljava/io/File;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/youku/gamecenter/download/DownloadingService;->createDownloadFile(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2400(Lcom/youku/gamecenter/download/DownloadingService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/gamecenter/download/DownloadingService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/youku/gamecenter/download/DownloadingService;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/youku/gamecenter/download/DownloadingService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/gamecenter/download/DownloadingService;
    .param p1, "x1"    # I

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/youku/gamecenter/download/DownloadingService;->cancelNotifacation(I)V

    return-void
.end method

.method static synthetic access$2600(Lcom/youku/gamecenter/download/DownloadingService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/gamecenter/download/DownloadingService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/youku/gamecenter/download/DownloadingService;->sendAdvTrack(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/youku/gamecenter/download/DownloadingService;)Lcom/youku/gamecenter/download/DownloadNotification;
    .locals 1
    .param p0, "x0"    # Lcom/youku/gamecenter/download/DownloadingService;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/youku/gamecenter/download/DownloadingService;->mDownloadNotification:Lcom/youku/gamecenter/download/DownloadNotification;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/youku/gamecenter/download/DownloadingService;Lcom/youku/gamecenter/download/DownloadInfo;Lcom/youku/gamecenter/download/DownloadingService$DownloadTask;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/gamecenter/download/DownloadingService;
    .param p1, "x1"    # Lcom/youku/gamecenter/download/DownloadInfo;
    .param p2, "x2"    # Lcom/youku/gamecenter/download/DownloadingService$DownloadTask;

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lcom/youku/gamecenter/download/DownloadingService;->updateNotificationId(Lcom/youku/gamecenter/download/DownloadInfo;Lcom/youku/gamecenter/download/DownloadingService$DownloadTask;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/youku/gamecenter/download/DownloadingService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/youku/gamecenter/download/DownloadingService;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/youku/gamecenter/download/DownloadingService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/youku/gamecenter/download/DownloadingService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/gamecenter/download/DownloadingService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/youku/gamecenter/download/DownloadingService;->processContinue(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3002(Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .param p0, "x0"    # Ljava/lang/Boolean;

    .prologue
    .line 56
    sput-object p0, Lcom/youku/gamecenter/download/DownloadingService;->isShowToast:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic access$400(Lcom/youku/gamecenter/download/DownloadingService;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/gamecenter/download/DownloadingService;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/youku/gamecenter/download/DownloadingService;->notifyPendingItemsStartDownload()V

    return-void
.end method

.method static synthetic access$500()Landroid/os/Messenger;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/youku/gamecenter/download/DownloadingService;->mClientMessenger:Landroid/os/Messenger;

    return-object v0
.end method

.method static synthetic access$502(Landroid/os/Messenger;)Landroid/os/Messenger;
    .locals 0
    .param p0, "x0"    # Landroid/os/Messenger;

    .prologue
    .line 56
    sput-object p0, Lcom/youku/gamecenter/download/DownloadingService;->mClientMessenger:Landroid/os/Messenger;

    return-object p0
.end method

.method static synthetic access$600(Lcom/youku/gamecenter/download/DownloadingService;)Landroid/app/NotificationManager;
    .locals 1
    .param p0, "x0"    # Lcom/youku/gamecenter/download/DownloadingService;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/youku/gamecenter/download/DownloadingService;->mNotificationManager:Landroid/app/NotificationManager;

    return-object v0
.end method

.method static synthetic access$700(Lcom/youku/gamecenter/download/DownloadingService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/youku/gamecenter/download/DownloadingService;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/youku/gamecenter/download/DownloadingService;->uid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$702(Lcom/youku/gamecenter/download/DownloadingService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/youku/gamecenter/download/DownloadingService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/youku/gamecenter/download/DownloadingService;->uid:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Lcom/youku/gamecenter/download/DownloadingService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/youku/gamecenter/download/DownloadingService;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/youku/gamecenter/download/DownloadingService;->ytidAndUsernameAndVip:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$802(Lcom/youku/gamecenter/download/DownloadingService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/youku/gamecenter/download/DownloadingService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/youku/gamecenter/download/DownloadingService;->ytidAndUsernameAndVip:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$900(Lcom/youku/gamecenter/download/DownloadingService;Lcom/youku/gamecenter/download/DownloadInfo;)Z
    .locals 1
    .param p0, "x0"    # Lcom/youku/gamecenter/download/DownloadingService;
    .param p1, "x1"    # Lcom/youku/gamecenter/download/DownloadInfo;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/youku/gamecenter/download/DownloadingService;->checkExeedSize(Lcom/youku/gamecenter/download/DownloadInfo;)Z

    move-result v0

    return v0
.end method

.method private cancelNotifacation(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 1025
    iget-object v0, p0, Lcom/youku/gamecenter/download/DownloadingService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/youku/gamecenter/download/DownloadingService$3;

    invoke-direct {v1, p0, p1}, Lcom/youku/gamecenter/download/DownloadingService$3;-><init>(Lcom/youku/gamecenter/download/DownloadingService;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1032
    return-void
.end method

.method private checkDownloadCondition(Z)Z
    .locals 4
    .param p1, "showToast"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 590
    invoke-virtual {p0}, Lcom/youku/gamecenter/download/DownloadingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/youku/gamecenter/util/SystemUtils;->isNetWorkAvaliable(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 591
    if-eqz p1, :cond_0

    .line 592
    invoke-direct {p0}, Lcom/youku/gamecenter/download/DownloadingService;->prepareSafeLooper()V

    .line 593
    invoke-virtual {p0}, Lcom/youku/gamecenter/download/DownloadingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/youku/gamecenter/R$string;->game_center_network_break_alert:I

    invoke-static {v2, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 609
    :cond_0
    :goto_0
    return v0

    .line 600
    :cond_1
    invoke-static {}, Lcom/youku/gamecenter/util/SystemUtils;->isMounted()Z

    move-result v2

    if-nez v2, :cond_2

    .line 601
    if-eqz p1, :cond_0

    .line 602
    invoke-direct {p0}, Lcom/youku/gamecenter/download/DownloadingService;->prepareSafeLooper()V

    .line 603
    invoke-virtual {p0}, Lcom/youku/gamecenter/download/DownloadingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/youku/gamecenter/R$string;->game_center_no_sdcard:I

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 609
    goto :goto_0
.end method

.method private checkExeedSize(Lcom/youku/gamecenter/download/DownloadInfo;)Z
    .locals 6
    .param p1, "info"    # Lcom/youku/gamecenter/download/DownloadInfo;

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 330
    iget v3, p1, Lcom/youku/gamecenter/download/DownloadInfo;->mType:I

    invoke-static {v3}, Lcom/youku/gamecenter/download/DownloadingService;->isSilentDownload(I)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v4

    .line 359
    :goto_0
    return v3

    .line 334
    :cond_0
    const/4 v0, 0x0

    .line 336
    .local v0, "downloading":I
    sget-object v3, Lcom/youku/gamecenter/download/DownloadingService;->mDownloadMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 337
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/youku/gamecenter/download/DownloadingService$DownloadTask;>;>;"
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 339
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/gamecenter/download/DownloadingService$DownloadTask;

    .line 341
    .local v2, "task":Lcom/youku/gamecenter/download/DownloadingService$DownloadTask;
    iget-object v3, v2, Lcom/youku/gamecenter/download/DownloadingService$DownloadTask;->mDownloadInfo:Lcom/youku/gamecenter/download/DownloadInfo;

    iget v3, v3, Lcom/youku/gamecenter/download/DownloadInfo;->mType:I

    if-eq v3, v5, :cond_1

    .line 345
    iget-object v3, v2, Lcom/youku/gamecenter/download/DownloadingService$DownloadTask;->mDownloadInfo:Lcom/youku/gamecenter/download/DownloadInfo;

    iget v3, v3, Lcom/youku/gamecenter/download/DownloadInfo;->mType:I

    invoke-static {v3}, Lcom/youku/gamecenter/download/DownloadingService;->isSilentDownload(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 349
    iget-object v3, v2, Lcom/youku/gamecenter/download/DownloadingService$DownloadTask;->mDownloadInfo:Lcom/youku/gamecenter/download/DownloadInfo;

    iget v3, v3, Lcom/youku/gamecenter/download/DownloadInfo;->mState:I

    if-ne v3, v5, :cond_1

    .line 350
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 355
    .end local v2    # "task":Lcom/youku/gamecenter/download/DownloadingService$DownloadTask;
    :cond_2
    const/4 v3, 0x3

    if-lt v0, v3, :cond_3

    move v3, v5

    .line 356
    goto :goto_0

    :cond_3
    move v3, v4

    .line 359
    goto :goto_0
.end method

.method private continueNormalDownload()V
    .locals 7

    .prologue
    .line 1453
    invoke-virtual {p0}, Lcom/youku/gamecenter/download/DownloadingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/youku/gamecenter/download/SQLManager;->getSQLManager(Landroid/content/Context;)Lcom/youku/gamecenter/download/SQLManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/youku/gamecenter/download/SQLManager;->getAll()Ljava/util/List;

    move-result-object v0

    .line 1455
    .local v0, "allList":Ljava/util/List;, "Ljava/util/List<Lcom/youku/gamecenter/download/DownloadInfo;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1456
    .local v3, "normalList":Ljava/util/List;, "Ljava/util/List<Lcom/youku/gamecenter/download/DownloadInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/gamecenter/download/DownloadInfo;

    .line 1457
    .local v1, "downloadInfo":Lcom/youku/gamecenter/download/DownloadInfo;
    iget v4, v1, Lcom/youku/gamecenter/download/DownloadInfo;->mType:I

    if-nez v4, :cond_0

    iget v4, v1, Lcom/youku/gamecenter/download/DownloadInfo;->mProgress:I

    const/16 v5, 0x64

    if-eq v4, v5, :cond_0

    invoke-virtual {v1}, Lcom/youku/gamecenter/download/DownloadInfo;->isCLickPause()Z

    move-result v4

    if-nez v4, :cond_0

    iget v4, v1, Lcom/youku/gamecenter/download/DownloadInfo;->mState:I

    const/4 v5, 0x5

    if-eq v4, v5, :cond_0

    .line 1460
    sget-object v4, Lcom/youku/gamecenter/download/DownloadingService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v1, Lcom/youku/gamecenter/download/DownloadInfo;->mDownloadTitle:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",pause="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v1, Lcom/youku/gamecenter/download/DownloadInfo;->mClickState:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1462
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1466
    .end local v1    # "downloadInfo":Lcom/youku/gamecenter/download/DownloadInfo;
    :cond_1
    new-instance v4, Lcom/youku/gamecenter/download/DownloadingService$7;

    invoke-direct {v4, p0}, Lcom/youku/gamecenter/download/DownloadingService$7;-><init>(Lcom/youku/gamecenter/download/DownloadingService;)V

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1474
    invoke-direct {p0, v3}, Lcom/youku/gamecenter/download/DownloadingService;->processContinueCustom(Ljava/util/List;)V

    .line 1475
    return-void
.end method

.method private continueSilentDownload(I)V
    .locals 3
    .param p1, "type"    # I

    .prologue
    .line 1478
    invoke-virtual {p0}, Lcom/youku/gamecenter/download/DownloadingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/youku/gamecenter/download/SQLManager;->getSQLManager(Landroid/content/Context;)Lcom/youku/gamecenter/download/SQLManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/youku/gamecenter/download/SQLManager;->getSilentDownload(IZ)Ljava/util/List;

    move-result-object v0

    .line 1480
    .local v0, "silentList":Ljava/util/List;, "Ljava/util/List<Lcom/youku/gamecenter/download/DownloadInfo;>;"
    invoke-direct {p0, v0}, Lcom/youku/gamecenter/download/DownloadingService;->processContinueCustom(Ljava/util/List;)V

    .line 1481
    return-void
.end method

.method private createDownloadFile(Ljava/io/File;)Z
    .locals 6
    .param p1, "file"    # Ljava/io/File;

    .prologue
    const/4 v2, 0x0

    .line 735
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 736
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-result v1

    .line 737
    .local v1, "result":Z
    sget-object v3, Lcom/youku/gamecenter/download/DownloadingService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mkdirs:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 739
    .end local v1    # "result":Z
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 741
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 747
    :cond_1
    :goto_0
    return v2

    .line 742
    :catch_0
    move-exception v0

    .line 743
    .local v0, "e1":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private delete(Lcom/youku/gamecenter/download/DownloadInfo;)V
    .locals 6
    .param p1, "info"    # Lcom/youku/gamecenter/download/DownloadInfo;

    .prologue
    .line 526
    iget-object v2, p1, Lcom/youku/gamecenter/download/DownloadInfo;->mPath:Ljava/lang/String;

    .line 527
    .local v2, "path":Ljava/lang/String;
    iget v3, p1, Lcom/youku/gamecenter/download/DownloadInfo;->mProgress:I

    const/16 v4, 0x64

    if-eq v3, v4, :cond_0

    .line 528
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".tmp"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 530
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 531
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_1

    .line 532
    sget-object v3, Lcom/youku/gamecenter/download/DownloadingService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "delete failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/youku/gamecenter/download/DownloadInfo;->mDownloadTitle:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    :cond_1
    iget-object v3, p1, Lcom/youku/gamecenter/download/DownloadInfo;->mIcon:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 535
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lcom/youku/gamecenter/download/DownloadingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p1, Lcom/youku/gamecenter/download/DownloadInfo;->mIcon:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/youku/gamecenter/util/FileUtils;->getIconFilePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 537
    .local v1, "iconFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 538
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 540
    .end local v1    # "iconFile":Ljava/io/File;
    :cond_2
    invoke-virtual {p0}, Lcom/youku/gamecenter/download/DownloadingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/youku/gamecenter/download/SQLManager;->getSQLManager(Landroid/content/Context;)Lcom/youku/gamecenter/download/SQLManager;

    move-result-object v3

    iget-object v4, p1, Lcom/youku/gamecenter/download/DownloadInfo;->mPackageName:Ljava/lang/String;

    iget-object v5, p1, Lcom/youku/gamecenter/download/DownloadInfo;->mDownloadUrl:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/youku/gamecenter/download/SQLManager;->delete(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    sget-object v3, Lcom/youku/gamecenter/download/DownloadingService;->mDownloadMap:Ljava/util/Map;

    iget-object v4, p1, Lcom/youku/gamecenter/download/DownloadInfo;->mDownloadUrl:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 543
    return-void
.end method

.method private downloadIcon(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1353
    new-instance v0, Lcom/youku/gamecenter/download/DownloadingService$6;

    invoke-direct {v0, p0, p1, p2}, Lcom/youku/gamecenter/download/DownloadingService$6;-><init>(Lcom/youku/gamecenter/download/DownloadingService;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/youku/gamecenter/download/DownloadingService$6;->execute([Ljava/lang/Object;)Lcom/youku/gamecenter/services/YoukuAsyncTask;

    .line 1429
    return-void
.end method

.method private getTaskFromCache(Lcom/youku/gamecenter/download/DownloadInfo;)Lcom/youku/gamecenter/download/DownloadingService$DownloadTask;
    .locals 4
    .param p1, "downloadInfo"    # Lcom/youku/gamecenter/download/DownloadInfo;

    .prologue
    .line 364
    iget-object v0, p1, Lcom/youku/gamecenter/download/DownloadInfo;->mDownloadUrl:Ljava/lang/String;

    .line 366
    .local v0, "key":Ljava/lang/String;
    sget-object v2, Lcom/youku/gamecenter/download/DownloadingService;->mDownloadMap:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 367
    new-instance v1, Lcom/youku/gamecenter/download/DownloadingService$DownloadTask;

    invoke-direct {v1, p1}, Lcom/youku/gamecenter/download/DownloadingService$DownloadTask;-><init>(Lcom/youku/gamecenter/download/DownloadInfo;)V

    .line 368
    .local v1, "task":Lcom/youku/gamecenter/download/DownloadingService$DownloadTask;
    sget-object v2, Lcom/youku/gamecenter/download/DownloadingService;->mDownloadMap:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    .end local v1    # "task":Lcom/youku/gamecenter/download/DownloadingService$DownloadTask;
    :cond_0
    sget-object v2, Lcom/youku/gamecenter/download/DownloadingService;->mDownloadMap:Ljava/util/Map;

    iget-object v3, p1, Lcom/youku/gamecenter/download/DownloadInfo;->mDownloadUrl:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/gamecenter/download/DownloadingService$DownloadTask;

    .line 371
    .restart local v1    # "task":Lcom/youku/gamecenter/download/DownloadingService$DownloadTask;
    iget-object v2, v1, Lcom/youku/gamecenter/download/DownloadingService$DownloadTask;->mDownloadInfo:Lcom/youku/gamecenter/download/DownloadInfo;

    iget v3, p1, Lcom/youku/gamecenter/download/DownloadInfo;->mState:I

    iput v3, v2, Lcom/youku/gamecenter/download/DownloadInfo;->mState:I

    .line 372
    iget-object v2, v1, Lcom/youku/gamecenter/download/DownloadingService$DownloadTask;->mDownloadInfo:Lcom/youku/gamecenter/download/DownloadInfo;

    iget v3, p1, Lcom/youku/gamecenter/download/DownloadInfo;->mClickState:I

    iput v3, v2, Lcom/youku/gamecenter/download/DownloadInfo;->mClickState:I

    .line 374
    return-object v1
.end method

.method private isNeedSendTrack(Lcom/youku/gamecenter/download/DownloadInfo;)Z
    .locals 3
    .param p1, "downloadInfo"    # Lcom/youku/gamecenter/download/DownloadInfo;

    .prologue
    const/4 v0, 0x0

    .line 622
    if-nez p1, :cond_1

    .line 631
    :cond_0
    :goto_0
    return v0

    .line 625
    :cond_1
    iget v1, p1, Lcom/youku/gamecenter/download/DownloadInfo;->mState:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    .line 628
    iget v1, p1, Lcom/youku/gamecenter/download/DownloadInfo;->mProgress:I

    if-nez v1, :cond_0

    .line 631
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isSilentDownload(I)Z
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 1487
    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 v0, 0x4

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private notifyPendingItemsStartDownload()V
    .locals 4

    .prologue
    .line 1243
    sget-object v2, Lcom/youku/gamecenter/download/DownloadingService;->mDownloadMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1244
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/youku/gamecenter/download/DownloadingService$DownloadTask;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1246
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/gamecenter/download/DownloadingService$DownloadTask;

    .line 1248
    .local v1, "task":Lcom/youku/gamecenter/download/DownloadingService$DownloadTask;
    iget-object v2, v1, Lcom/youku/gamecenter/download/DownloadingService$DownloadTask;->mDownloadInfo:Lcom/youku/gamecenter/download/DownloadInfo;

    iget v2, v2, Lcom/youku/gamecenter/download/DownloadInfo;->mType:I

    if-nez v2, :cond_0

    .line 1252
    iget-object v2, v1, Lcom/youku/gamecenter/download/DownloadingService$DownloadTask;->mDownloadInfo:Lcom/youku/gamecenter/download/DownloadInfo;

    iget v2, v2, Lcom/youku/gamecenter/download/DownloadInfo;->mState:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_0

    .line 1256
    iget-object v2, v1, Lcom/youku/gamecenter/download/DownloadingService$DownloadTask;->mDownloadInfo:Lcom/youku/gamecenter/download/DownloadInfo;

    invoke-direct {p0, v2}, Lcom/youku/gamecenter/download/DownloadingService;->checkExeedSize(Lcom/youku/gamecenter/download/DownloadInfo;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1264
    .end local v1    # "task":Lcom/youku/gamecenter/download/DownloadingService$DownloadTask;
    :cond_1
    return-void

    .line 1260
    .restart local v1    # "task":Lcom/youku/gamecenter/download/DownloadingService$DownloadTask;
    :cond_2
    iget-object v2, v1, Lcom/youku/gamecenter/download/DownloadingService$DownloadTask;->mDownloadInfo:Lcom/youku/gamecenter/download/DownloadInfo;

    iget-object v2, v2, Lcom/youku/gamecenter/download/DownloadInfo;->mDownloadUrl:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/youku/gamecenter/download/DownloadingService;->processContinue(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private prepareSafeLooper()V
    .locals 1

    .prologue
    .line 615
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->prepare()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 619
    :goto_0
    return-void

    .line 616
    :catch_0
    move-exception v0

    .line 617
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private processCancel(Lcom/youku/gamecenter/download/DownloadInfo;)V
    .locals 5
    .param p1, "info"    # Lcom/youku/gamecenter/download/DownloadInfo;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x5

    .line 498
    sget-object v1, Lcom/youku/gamecenter/download/DownloadingService;->TAG:Ljava/lang/String;

    const-string v2, "processCancel"

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    sget-object v1, Lcom/youku/gamecenter/download/DownloadingService;->mDownloadMap:Ljava/util/Map;

    iget-object v2, p1, Lcom/youku/gamecenter/download/DownloadInfo;->mDownloadUrl:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/gamecenter/download/DownloadingService$DownloadTask;

    .line 500
    .local v0, "task":Lcom/youku/gamecenter/download/DownloadingService$DownloadTask;
    if-eqz v0, :cond_3

    .line 501
    iget-object v1, v0, Lcom/youku/gamecenter/download/DownloadingService$DownloadTask;->mDownloadThread:Lcom/youku/gamecenter/download/DownloadingService$DownloadThread;

    if-eqz v1, :cond_0

    .line 502
    iget-object v1, v0, Lcom/youku/gamecenter/download/DownloadingService$DownloadTask;->mDownloadThread:Lcom/youku/gamecenter/download/DownloadingService$DownloadThread;

    invoke-virtual {v1, v3}, Lcom/youku/gamecenter/download/DownloadingService$DownloadThread;->setErrorCode(I)V

    .line 504
    iput-object v4, v0, Lcom/youku/gamecenter/download/DownloadingService$DownloadTask;->mDownloadThread:Lcom/youku/gamecenter/download/DownloadingService$DownloadThread;

    .line 506
    :cond_0
    iput-object v4, v0, Lcom/youku/gamecenter/download/DownloadingService$DownloadTask;->mNotification:Landroid/app/Notification;

    .line 510
    :goto_0
    iget v1, p1, Lcom/youku/gamecenter/download/DownloadInfo;->mType:I

    if-eqz v1, :cond_1

    iget v1, p1, Lcom/youku/gamecenter/download/DownloadInfo;->mType:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    iget v1, p1, Lcom/youku/gamecenter/download/DownloadInfo;->mType:I

    if-ne v1, v3, :cond_2

    .line 511
    :cond_1
    iget-object v2, p0, Lcom/youku/gamecenter/download/DownloadingService;->mNotificationManager:Landroid/app/NotificationManager;

    iget v1, p1, Lcom/youku/gamecenter/download/DownloadInfo;->mNotificationID:I

    if-nez v1, :cond_4

    iget-object v1, p1, Lcom/youku/gamecenter/download/DownloadInfo;->mDownloadUrl:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    invoke-virtual {v2, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 515
    :cond_2
    invoke-direct {p0, p1}, Lcom/youku/gamecenter/download/DownloadingService;->delete(Lcom/youku/gamecenter/download/DownloadInfo;)V

    .line 517
    invoke-direct {p0}, Lcom/youku/gamecenter/download/DownloadingService;->notifyPendingItemsStartDownload()V

    .line 518
    return-void

    .line 508
    :cond_3
    sget-object v1, Lcom/youku/gamecenter/download/DownloadingService;->TAG:Ljava/lang/String;

    const-string v2, "cancel without a DownloadTask"

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 511
    :cond_4
    iget v1, p1, Lcom/youku/gamecenter/download/DownloadInfo;->mNotificationID:I

    goto :goto_1
.end method

.method private processContinue(Ljava/lang/String;)V
    .locals 8
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    .line 635
    sget-object v5, Lcom/youku/gamecenter/download/DownloadingService;->TAG:Ljava/lang/String;

    const-string v7, "processContinue"

    invoke-static {v5, v7}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    sget-object v5, Lcom/youku/gamecenter/download/DownloadingService;->mDownloadMap:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/youku/gamecenter/download/DownloadingService$DownloadTask;

    .line 637
    .local v4, "task":Lcom/youku/gamecenter/download/DownloadingService$DownloadTask;
    if-nez v4, :cond_1

    .line 686
    :cond_0
    :goto_0
    return-void

    .line 639
    :cond_1
    iget-object v5, v4, Lcom/youku/gamecenter/download/DownloadingService$DownloadTask;->mDownloadThread:Lcom/youku/gamecenter/download/DownloadingService$DownloadThread;

    if-nez v5, :cond_7

    .line 640
    iget-object v5, v4, Lcom/youku/gamecenter/download/DownloadingService$DownloadTask;->mDownloadInfo:Lcom/youku/gamecenter/download/DownloadInfo;

    iget v5, v5, Lcom/youku/gamecenter/download/DownloadInfo;->mType:I

    invoke-static {v5}, Lcom/youku/gamecenter/download/DownloadingService;->isSilentDownload(I)Z

    move-result v5

    if-nez v5, :cond_2

    move v5, v6

    :goto_1
    invoke-direct {p0, v5}, Lcom/youku/gamecenter/download/DownloadingService;->checkDownloadCondition(Z)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 643
    iget-object v5, v4, Lcom/youku/gamecenter/download/DownloadingService$DownloadTask;->mDownloadInfo:Lcom/youku/gamecenter/download/DownloadInfo;

    iget v5, v5, Lcom/youku/gamecenter/download/DownloadInfo;->mType:I

    invoke-static {v5}, Lcom/youku/gamecenter/download/DownloadingService;->isSilentDownload(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 644
    iget-object v5, v4, Lcom/youku/gamecenter/download/DownloadingService$DownloadTask;->mDownloadInfo:Lcom/youku/gamecenter/download/DownloadInfo;

    invoke-static {v5}, Lcom/youku/gamecenter/util/FileUtils;->isDownloadFileExsist(Lcom/youku/gamecenter/download/DownloadInfo;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 645
    iget-object v5, v4, Lcom/youku/gamecenter/download/DownloadingService$DownloadTask;->mDownloadInfo:Lcom/youku/gamecenter/download/DownloadInfo;

    invoke-direct {p0, v5}, Lcom/youku/gamecenter/download/DownloadingService;->delete(Lcom/youku/gamecenter/download/DownloadInfo;)V

    goto :goto_0

    .line 640
    :cond_2
    const/4 v5, 0x0

    goto :goto_1

    .line 648
    :cond_3
    invoke-virtual {p0}, Lcom/youku/gamecenter/download/DownloadingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/youku/gamecenter/util/SystemUtils;->isWifi(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 652
    :cond_4
    iget-object v5, v4, Lcom/youku/gamecenter/download/DownloadingService$DownloadTask;->mDownloadInfo:Lcom/youku/gamecenter/download/DownloadInfo;

    invoke-direct {p0, v5}, Lcom/youku/gamecenter/download/DownloadingService;->checkExeedSize(Lcom/youku/gamecenter/download/DownloadInfo;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 656
    iget-object v5, v4, Lcom/youku/gamecenter/download/DownloadingService$DownloadTask;->mDownloadInfo:Lcom/youku/gamecenter/download/DownloadInfo;

    invoke-direct {p0, v5}, Lcom/youku/gamecenter/download/DownloadingService;->isNeedSendTrack(Lcom/youku/gamecenter/download/DownloadInfo;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 657
    iget-object v5, v4, Lcom/youku/gamecenter/download/DownloadingService$DownloadTask;->mDownloadInfo:Lcom/youku/gamecenter/download/DownloadInfo;

    invoke-direct {p0, v5}, Lcom/youku/gamecenter/download/DownloadingService;->sendTrackStart(Lcom/youku/gamecenter/download/DownloadInfo;)V

    .line 660
    :cond_5
    new-instance v1, Lcom/youku/gamecenter/download/DownloadingService$DownloadThread;

    iget-object v5, v4, Lcom/youku/gamecenter/download/DownloadingService$DownloadTask;->mDownloadInfo:Lcom/youku/gamecenter/download/DownloadInfo;

    invoke-direct {v1, p0, v5}, Lcom/youku/gamecenter/download/DownloadingService$DownloadThread;-><init>(Lcom/youku/gamecenter/download/DownloadingService;Lcom/youku/gamecenter/download/DownloadInfo;)V

    .line 662
    .local v1, "downloadThread":Lcom/youku/gamecenter/download/DownloadingService$DownloadThread;
    iput-object v1, v4, Lcom/youku/gamecenter/download/DownloadingService$DownloadTask;->mDownloadThread:Lcom/youku/gamecenter/download/DownloadingService$DownloadThread;

    .line 663
    iget-object v5, v4, Lcom/youku/gamecenter/download/DownloadingService$DownloadTask;->mDownloadInfo:Lcom/youku/gamecenter/download/DownloadInfo;

    iput v6, v5, Lcom/youku/gamecenter/download/DownloadInfo;->mState:I

    .line 664
    sget-object v5, Lcom/youku/gamecenter/download/DownloadingService;->mClientMessenger:Landroid/os/Messenger;

    if-eqz v5, :cond_6

    .line 665
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 666
    .local v0, "clientMessage":Landroid/os/Message;
    const/16 v5, 0xd

    iput v5, v0, Landroid/os/Message;->what:I

    .line 667
    iget-object v5, v4, Lcom/youku/gamecenter/download/DownloadingService$DownloadTask;->mDownloadInfo:Lcom/youku/gamecenter/download/DownloadInfo;

    invoke-static {v0, v5}, Lcom/youku/gamecenter/download/DownloadServiceMessage;->putDownloadInfoToMsg(Landroid/os/Message;Lcom/youku/gamecenter/download/DownloadInfo;)V

    .line 670
    :try_start_0
    iget-object v5, v4, Lcom/youku/gamecenter/download/DownloadingService$DownloadTask;->mDownloadInfo:Lcom/youku/gamecenter/download/DownloadInfo;

    iget v5, v5, Lcom/youku/gamecenter/download/DownloadInfo;->mType:I

    if-nez v5, :cond_6

    .line 671
    sget-object v5, Lcom/youku/gamecenter/download/DownloadingService;->mClientMessenger:Landroid/os/Messenger;

    invoke-virtual {v5, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 676
    .end local v0    # "clientMessage":Landroid/os/Message;
    :cond_6
    :goto_2
    invoke-virtual {v1}, Lcom/youku/gamecenter/download/DownloadingService$DownloadThread;->start()V

    .line 678
    .end local v1    # "downloadThread":Lcom/youku/gamecenter/download/DownloadingService$DownloadThread;
    :cond_7
    iget-object v5, v4, Lcom/youku/gamecenter/download/DownloadingService$DownloadTask;->mNotification:Landroid/app/Notification;

    if-eqz v5, :cond_0

    .line 679
    const-string v5, "notification"

    invoke-virtual {p0, v5}, Lcom/youku/gamecenter/download/DownloadingService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 680
    .local v3, "notificationManager":Landroid/app/NotificationManager;
    iget-object v5, v4, Lcom/youku/gamecenter/download/DownloadingService$DownloadTask;->mDownloadInfo:Lcom/youku/gamecenter/download/DownloadInfo;

    iget v5, v5, Lcom/youku/gamecenter/download/DownloadInfo;->mType:I

    if-nez v5, :cond_8

    .line 681
    iget-object v5, v4, Lcom/youku/gamecenter/download/DownloadingService$DownloadTask;->mNotification:Landroid/app/Notification;

    const/4 v6, 0x2

    iput v6, v5, Landroid/app/Notification;->flags:I

    .line 682
    iget v5, v4, Lcom/youku/gamecenter/download/DownloadingService$DownloadTask;->mId:I

    iget-object v6, v4, Lcom/youku/gamecenter/download/DownloadingService$DownloadTask;->mNotification:Landroid/app/Notification;

    invoke-virtual {v3, v5, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 684
    :cond_8
    sget-object v5, Lcom/youku/gamecenter/download/DownloadingService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "processContinue notify:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Lcom/youku/gamecenter/download/DownloadingService$DownloadTask;->mId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 672
    .end local v3    # "notificationManager":Landroid/app/NotificationManager;
    .restart local v0    # "clientMessage":Landroid/os/Message;
    .restart local v1    # "downloadThread":Lcom/youku/gamecenter/download/DownloadingService$DownloadThread;
    :catch_0
    move-exception v2

    .line 673
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2
.end method

.method private processContinueCustom(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/youku/gamecenter/download/DownloadInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 467
    .local p1, "infoList":Ljava/util/List;, "Ljava/util/List<Lcom/youku/gamecenter/download/DownloadInfo;>;"
    if-eqz p1, :cond_1

    .line 468
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/gamecenter/download/DownloadInfo;

    .line 469
    .local v1, "info":Lcom/youku/gamecenter/download/DownloadInfo;
    sget-object v4, Lcom/youku/gamecenter/download/DownloadingService;->mDownloadMap:Ljava/util/Map;

    iget-object v5, v1, Lcom/youku/gamecenter/download/DownloadInfo;->mDownloadUrl:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/youku/gamecenter/download/DownloadingService$DownloadTask;

    .line 470
    .local v3, "task":Lcom/youku/gamecenter/download/DownloadingService$DownloadTask;
    sget-object v4, Lcom/youku/gamecenter/download/DownloadingService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "processContinueCustom:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    if-eqz v3, :cond_2

    .line 472
    sget-object v4, Lcom/youku/gamecenter/download/DownloadingService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "processContinueCustom task:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Lcom/youku/gamecenter/download/DownloadingService$DownloadTask;->mDownloadInfo:Lcom/youku/gamecenter/download/DownloadInfo;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    iget-object v4, v3, Lcom/youku/gamecenter/download/DownloadingService$DownloadTask;->mDownloadInfo:Lcom/youku/gamecenter/download/DownloadInfo;

    iget v4, v4, Lcom/youku/gamecenter/download/DownloadInfo;->mState:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_0

    .line 483
    :goto_1
    invoke-virtual {p0}, Lcom/youku/gamecenter/download/DownloadingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/youku/gamecenter/util/SystemUtils;->isNetWorkAvaliable(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {}, Lcom/youku/gamecenter/util/SystemUtils;->isMounted()Z

    move-result v4

    if-nez v4, :cond_3

    .line 495
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "info":Lcom/youku/gamecenter/download/DownloadInfo;
    .end local v3    # "task":Lcom/youku/gamecenter/download/DownloadingService$DownloadTask;
    :cond_1
    return-void

    .line 478
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v1    # "info":Lcom/youku/gamecenter/download/DownloadInfo;
    .restart local v3    # "task":Lcom/youku/gamecenter/download/DownloadingService$DownloadTask;
    :cond_2
    new-instance v2, Lcom/youku/gamecenter/download/DownloadingService$DownloadTask;

    invoke-direct {v2, v1}, Lcom/youku/gamecenter/download/DownloadingService$DownloadTask;-><init>(Lcom/youku/gamecenter/download/DownloadInfo;)V

    .line 479
    .local v2, "newTask":Lcom/youku/gamecenter/download/DownloadingService$DownloadTask;
    sget-object v4, Lcom/youku/gamecenter/download/DownloadingService;->mDownloadMap:Ljava/util/Map;

    iget-object v5, v1, Lcom/youku/gamecenter/download/DownloadInfo;->mDownloadUrl:Ljava/lang/String;

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 480
    sget-object v4, Lcom/youku/gamecenter/download/DownloadingService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "processContinueCustom new DownloadTask:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 487
    .end local v2    # "newTask":Lcom/youku/gamecenter/download/DownloadingService$DownloadTask;
    :cond_3
    if-eqz v3, :cond_4

    iget-object v4, v3, Lcom/youku/gamecenter/download/DownloadingService$DownloadTask;->mDownloadInfo:Lcom/youku/gamecenter/download/DownloadInfo;

    iget v4, v4, Lcom/youku/gamecenter/download/DownloadInfo;->mState:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_6

    .line 489
    :cond_4
    if-nez v3, :cond_5

    .end local v1    # "info":Lcom/youku/gamecenter/download/DownloadInfo;
    :goto_2
    invoke-direct {p0, v1}, Lcom/youku/gamecenter/download/DownloadingService;->startDownload(Lcom/youku/gamecenter/download/DownloadInfo;)V

    goto/16 :goto_0

    .restart local v1    # "info":Lcom/youku/gamecenter/download/DownloadInfo;
    :cond_5
    iget-object v1, v3, Lcom/youku/gamecenter/download/DownloadingService$DownloadTask;->mDownloadInfo:Lcom/youku/gamecenter/download/DownloadInfo;

    goto :goto_2

    .line 491
    :cond_6
    iget-object v4, v3, Lcom/youku/gamecenter/download/DownloadingService$DownloadTask;->mDownloadInfo:Lcom/youku/gamecenter/download/DownloadInfo;

    iget-object v4, v4, Lcom/youku/gamecenter/download/DownloadInfo;->mDownloadUrl:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/youku/gamecenter/download/DownloadingService;->processContinue(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private processDelete(Lcom/youku/gamecenter/download/DownloadInfo;)V
    .locals 2
    .param p1, "info"    # Lcom/youku/gamecenter/download/DownloadInfo;

    .prologue
    .line 521
    sget-object v0, Lcom/youku/gamecenter/download/DownloadingService;->TAG:Ljava/lang/String;

    const-string v1, "procesDelete"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    invoke-direct {p0, p1}, Lcom/youku/gamecenter/download/DownloadingService;->delete(Lcom/youku/gamecenter/download/DownloadInfo;)V

    .line 523
    return-void
.end method

.method private processPause(Ljava/lang/String;Lcom/youku/gamecenter/download/DownloadInfo;)V
    .locals 9
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "info"    # Lcom/youku/gamecenter/download/DownloadInfo;

    .prologue
    const/16 v8, 0x10

    const/4 v7, 0x2

    .line 546
    sget-object v5, Lcom/youku/gamecenter/download/DownloadingService;->TAG:Ljava/lang/String;

    const-string v6, "processPause"

    invoke-static {v5, v6}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    sget-object v5, Lcom/youku/gamecenter/download/DownloadingService;->mDownloadMap:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/youku/gamecenter/download/DownloadingService$DownloadTask;

    .line 548
    .local v4, "task":Lcom/youku/gamecenter/download/DownloadingService$DownloadTask;
    if-eqz v4, :cond_2

    .line 549
    iget-object v5, v4, Lcom/youku/gamecenter/download/DownloadingService$DownloadTask;->mDownloadThread:Lcom/youku/gamecenter/download/DownloadingService$DownloadThread;

    if-eqz v5, :cond_0

    .line 550
    iget-object v5, v4, Lcom/youku/gamecenter/download/DownloadingService$DownloadTask;->mDownloadThread:Lcom/youku/gamecenter/download/DownloadingService$DownloadThread;

    invoke-virtual {v5, v7}, Lcom/youku/gamecenter/download/DownloadingService$DownloadThread;->setErrorCode(I)V

    .line 552
    const/4 v5, 0x0

    iput-object v5, v4, Lcom/youku/gamecenter/download/DownloadingService$DownloadTask;->mDownloadThread:Lcom/youku/gamecenter/download/DownloadingService$DownloadThread;

    .line 553
    iget-object v5, v4, Lcom/youku/gamecenter/download/DownloadingService$DownloadTask;->mDownloadInfo:Lcom/youku/gamecenter/download/DownloadInfo;

    iput v7, v5, Lcom/youku/gamecenter/download/DownloadInfo;->mState:I

    .line 554
    sget-object v5, Lcom/youku/gamecenter/download/DownloadingService;->mClientMessenger:Landroid/os/Messenger;

    if-eqz v5, :cond_0

    .line 555
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 556
    .local v0, "clientMessage":Landroid/os/Message;
    const/16 v5, 0xc

    iput v5, v0, Landroid/os/Message;->what:I

    .line 557
    iget-object v5, v4, Lcom/youku/gamecenter/download/DownloadingService$DownloadTask;->mDownloadInfo:Lcom/youku/gamecenter/download/DownloadInfo;

    invoke-static {v0, v5}, Lcom/youku/gamecenter/download/DownloadServiceMessage;->putDownloadInfoToMsg(Landroid/os/Message;Lcom/youku/gamecenter/download/DownloadInfo;)V

    .line 560
    :try_start_0
    iget v5, p2, Lcom/youku/gamecenter/download/DownloadInfo;->mType:I

    if-nez v5, :cond_0

    .line 561
    sget-object v5, Lcom/youku/gamecenter/download/DownloadingService;->mClientMessenger:Landroid/os/Messenger;

    invoke-virtual {v5, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 567
    .end local v0    # "clientMessage":Landroid/os/Message;
    :cond_0
    :goto_0
    iget-object v5, v4, Lcom/youku/gamecenter/download/DownloadingService$DownloadTask;->mNotification:Landroid/app/Notification;

    if-eqz v5, :cond_1

    .line 568
    const-string v5, "notification"

    invoke-virtual {p0, v5}, Lcom/youku/gamecenter/download/DownloadingService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 569
    .local v2, "noticicationManager":Landroid/app/NotificationManager;
    iget-object v5, v4, Lcom/youku/gamecenter/download/DownloadingService$DownloadTask;->mNotification:Landroid/app/Notification;

    iput v8, v5, Landroid/app/Notification;->flags:I

    .line 570
    sget-object v5, Lcom/youku/gamecenter/download/DownloadingService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "processPause notify:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Lcom/youku/gamecenter/download/DownloadingService$DownloadTask;->mId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    iget-object v5, v4, Lcom/youku/gamecenter/download/DownloadingService$DownloadTask;->mDownloadInfo:Lcom/youku/gamecenter/download/DownloadInfo;

    iget v5, v5, Lcom/youku/gamecenter/download/DownloadInfo;->mType:I

    if-nez v5, :cond_1

    .line 572
    iget-object v5, v4, Lcom/youku/gamecenter/download/DownloadingService$DownloadTask;->mDownloadInfo:Lcom/youku/gamecenter/download/DownloadInfo;

    invoke-direct {p0, v5, v4}, Lcom/youku/gamecenter/download/DownloadingService;->updateNotificationId(Lcom/youku/gamecenter/download/DownloadInfo;Lcom/youku/gamecenter/download/DownloadingService$DownloadTask;)V

    .line 573
    iget v5, v4, Lcom/youku/gamecenter/download/DownloadingService$DownloadTask;->mId:I

    iget-object v6, v4, Lcom/youku/gamecenter/download/DownloadingService$DownloadTask;->mNotification:Landroid/app/Notification;

    invoke-virtual {v2, v5, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 576
    .end local v2    # "noticicationManager":Landroid/app/NotificationManager;
    :cond_1
    invoke-direct {p0}, Lcom/youku/gamecenter/download/DownloadingService;->notifyPendingItemsStartDownload()V

    .line 587
    :goto_1
    return-void

    .line 562
    .restart local v0    # "clientMessage":Landroid/os/Message;
    :catch_0
    move-exception v1

    .line 563
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 578
    .end local v0    # "clientMessage":Landroid/os/Message;
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_2
    sget-object v5, Lcom/youku/gamecenter/download/DownloadingService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "process pause without a task,just create a cancelable notification for:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    const-string v5, "notification"

    invoke-virtual {p0, v5}, Lcom/youku/gamecenter/download/DownloadingService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 582
    .restart local v2    # "noticicationManager":Landroid/app/NotificationManager;
    iget-object v5, p0, Lcom/youku/gamecenter/download/DownloadingService;->mDownloadNotification:Lcom/youku/gamecenter/download/DownloadNotification;

    invoke-virtual {p0}, Lcom/youku/gamecenter/download/DownloadingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v5, v6, p2}, Lcom/youku/gamecenter/download/DownloadNotification;->generateNotification(Landroid/content/Context;Lcom/youku/gamecenter/download/DownloadInfo;)Landroid/app/Notification;

    move-result-object v3

    .line 584
    .local v3, "notification":Landroid/app/Notification;
    iput v8, v3, Landroid/app/Notification;->flags:I

    .line 585
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v5

    invoke-virtual {v2, v5, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_1
.end method

.method private sendAdvTrack(Ljava/lang/String;)V
    .locals 3
    .param p1, "trackUrl"    # Ljava/lang/String;

    .prologue
    .line 453
    sget-object v0, Lcom/youku/gamecenter/download/DownloadingService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendTrack:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 455
    iget-object v0, p0, Lcom/youku/gamecenter/download/DownloadingService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/youku/gamecenter/download/DownloadingService$2;

    invoke-direct {v1, p0, p1}, Lcom/youku/gamecenter/download/DownloadingService$2;-><init>(Lcom/youku/gamecenter/download/DownloadingService;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 463
    :cond_0
    return-void
.end method

.method private sendTrackEnd(Lcom/youku/gamecenter/download/DownloadInfo;)V
    .locals 6
    .param p1, "info"    # Lcom/youku/gamecenter/download/DownloadInfo;

    .prologue
    .line 1288
    invoke-virtual {p0}, Lcom/youku/gamecenter/download/DownloadingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcom/youku/gamecenter/services/URLContainer;->DOWNLOAD_STATISTICS:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/youku/gamecenter/statistics/GameTrack;->setBaseParam(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1290
    .local v2, "url":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    iget-object v3, p1, Lcom/youku/gamecenter/download/DownloadInfo;->mPath:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1291
    .local v0, "file":Ljava/io/File;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&gameid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/youku/gamecenter/download/DownloadInfo;->mId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&times="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/youku/gamecenter/download/DownloadInfo;->mDownloadDuration:I

    div-int/lit16 v4, v4, 0x3e8

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1293
    iget-object v3, p1, Lcom/youku/gamecenter/download/DownloadInfo;->mSource:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1294
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&source="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/youku/gamecenter/download/DownloadInfo;->mSource:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1295
    :cond_0
    iget-object v3, p1, Lcom/youku/gamecenter/download/DownloadInfo;->mStatistic:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1296
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/youku/gamecenter/download/DownloadInfo;->mStatistic:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1297
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&type=1"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1299
    iget-object v3, p0, Lcom/youku/gamecenter/download/DownloadingService;->uid:Ljava/lang/String;

    invoke-static {v3}, Lcom/youku/gamecenter/util/CommonUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1300
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/youku/gamecenter/download/DownloadingService;->uid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1302
    :cond_2
    iget-object v3, p0, Lcom/youku/gamecenter/download/DownloadingService;->ytidAndUsernameAndVip:Ljava/lang/String;

    invoke-static {v3}, Lcom/youku/gamecenter/util/CommonUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1303
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/youku/gamecenter/download/DownloadingService;->ytidAndUsernameAndVip:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1305
    :cond_3
    new-instance v1, Lcom/youku/gamecenter/statistics/GameStatisticsTask;

    invoke-virtual {p0}, Lcom/youku/gamecenter/download/DownloadingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/youku/gamecenter/statistics/GameStatisticsTask;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    .line 1307
    .local v1, "statistics":Lcom/youku/gamecenter/statistics/GameStatisticsTask;
    const-string v3, "Statistics"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "downloadEnd:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1308
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v1, v3}, Lcom/youku/gamecenter/statistics/GameStatisticsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1309
    return-void
.end method

.method private sendTrackStart(Lcom/youku/gamecenter/download/DownloadInfo;)V
    .locals 5
    .param p1, "info"    # Lcom/youku/gamecenter/download/DownloadInfo;

    .prologue
    .line 1267
    invoke-virtual {p0}, Lcom/youku/gamecenter/download/DownloadingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/youku/gamecenter/services/URLContainer;->DOWNLOAD_STATISTICS:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/youku/gamecenter/statistics/GameTrack;->setBaseParam(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1269
    .local v1, "url":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&gameid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/youku/gamecenter/download/DownloadInfo;->mId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1270
    iget-object v2, p1, Lcom/youku/gamecenter/download/DownloadInfo;->mSource:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1271
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&source="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/youku/gamecenter/download/DownloadInfo;->mSource:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1273
    :cond_0
    iget-object v2, p1, Lcom/youku/gamecenter/download/DownloadInfo;->mStatistic:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1274
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/youku/gamecenter/download/DownloadInfo;->mStatistic:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1275
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&type=0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1276
    iget-object v2, p0, Lcom/youku/gamecenter/download/DownloadingService;->uid:Ljava/lang/String;

    invoke-static {v2}, Lcom/youku/gamecenter/util/CommonUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1277
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/youku/gamecenter/download/DownloadingService;->uid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1279
    :cond_2
    iget-object v2, p0, Lcom/youku/gamecenter/download/DownloadingService;->ytidAndUsernameAndVip:Ljava/lang/String;

    invoke-static {v2}, Lcom/youku/gamecenter/util/CommonUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1280
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/youku/gamecenter/download/DownloadingService;->ytidAndUsernameAndVip:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1282
    :cond_3
    const-string v2, "Statistics"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "downloadStart:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1283
    new-instance v0, Lcom/youku/gamecenter/statistics/GameStatisticsTask;

    invoke-virtual {p0}, Lcom/youku/gamecenter/download/DownloadingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/youku/gamecenter/statistics/GameStatisticsTask;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    .line 1284
    .local v0, "statistics":Lcom/youku/gamecenter/statistics/GameStatisticsTask;
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v2}, Lcom/youku/gamecenter/statistics/GameStatisticsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1285
    return-void
.end method

.method private setDownloadPath(Lcom/youku/gamecenter/download/DownloadInfo;)V
    .locals 6
    .param p1, "info"    # Lcom/youku/gamecenter/download/DownloadInfo;

    .prologue
    .line 378
    iget-object v4, p1, Lcom/youku/gamecenter/download/DownloadInfo;->mPath:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 381
    :try_start_0
    invoke-virtual {p0}, Lcom/youku/gamecenter/download/DownloadingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget v5, p1, Lcom/youku/gamecenter/download/DownloadInfo;->mType:I

    invoke-static {v4, v5}, Lcom/youku/gamecenter/util/FileUtils;->getDownloadDir(Landroid/content/Context;I)Ljava/io/File;

    move-result-object v1

    .line 384
    .local v1, "path":Ljava/io/File;
    const-string v3, ""

    .line 385
    .local v3, "str":Ljava/lang/String;
    iget v4, p1, Lcom/youku/gamecenter/download/DownloadInfo;->mType:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_1

    .line 386
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p1, Lcom/youku/gamecenter/download/DownloadInfo;->mDownloadUrl:Ljava/lang/String;

    invoke-static {v5}, Lcom/youku/gamecenter/util/CommonUtils;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".apk"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 390
    :goto_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 391
    .end local v1    # "path":Ljava/io/File;
    .local v2, "path":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/youku/gamecenter/download/DownloadInfo;->mPath:Ljava/lang/String;

    .line 396
    .end local v2    # "path":Ljava/io/File;
    .end local v3    # "str":Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 388
    .restart local v1    # "path":Ljava/io/File;
    .restart local v3    # "str":Ljava/lang/String;
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p1, Lcom/youku/gamecenter/download/DownloadInfo;->mDownloadTitle:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/youku/gamecenter/download/DownloadInfo;->mVersionName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".apk.jar"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 392
    .end local v1    # "path":Ljava/io/File;
    .end local v3    # "str":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 393
    .local v0, "e1":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method private showToast(Ljava/lang/String;)V
    .locals 6
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 1331
    sget-object v1, Lcom/youku/gamecenter/download/DownloadingService;->isShowToast:Ljava/lang/Boolean;

    monitor-enter v1

    .line 1332
    :try_start_0
    sget-object v0, Lcom/youku/gamecenter/download/DownloadingService;->isShowToast:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1333
    sget-object v0, Lcom/youku/gamecenter/download/DownloadingService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "show single toast.["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1334
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/youku/gamecenter/download/DownloadingService;->isShowToast:Ljava/lang/Boolean;

    .line 1335
    iget-object v0, p0, Lcom/youku/gamecenter/download/DownloadingService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/youku/gamecenter/download/DownloadingService$4;

    invoke-direct {v2, p0, p1}, Lcom/youku/gamecenter/download/DownloadingService$4;-><init>(Lcom/youku/gamecenter/download/DownloadingService;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1343
    iget-object v0, p0, Lcom/youku/gamecenter/download/DownloadingService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/youku/gamecenter/download/DownloadingService$5;

    invoke-direct {v2, p0}, Lcom/youku/gamecenter/download/DownloadingService$5;-><init>(Lcom/youku/gamecenter/download/DownloadingService;)V

    const-wide/16 v4, 0x4b0

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1349
    :cond_0
    monitor-exit v1

    .line 1350
    return-void

    .line 1349
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private startDownload(Lcom/youku/gamecenter/download/DownloadInfo;)V
    .locals 11
    .param p1, "info"    # Lcom/youku/gamecenter/download/DownloadInfo;

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v7, 0x1

    .line 399
    iget v6, p1, Lcom/youku/gamecenter/download/DownloadInfo;->mType:I

    invoke-static {v6}, Lcom/youku/gamecenter/download/DownloadingService;->isSilentDownload(I)Z

    move-result v6

    if-nez v6, :cond_1

    move v6, v7

    :goto_0
    invoke-direct {p0, v6}, Lcom/youku/gamecenter/download/DownloadingService;->checkDownloadCondition(Z)Z

    move-result v6

    if-nez v6, :cond_2

    .line 450
    :cond_0
    :goto_1
    return-void

    .line 399
    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    .line 402
    :cond_2
    invoke-direct {p0, p1}, Lcom/youku/gamecenter/download/DownloadingService;->checkExeedSize(Lcom/youku/gamecenter/download/DownloadInfo;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 405
    iput v7, p1, Lcom/youku/gamecenter/download/DownloadInfo;->mState:I

    .line 406
    iget-object v6, p0, Lcom/youku/gamecenter/download/DownloadingService;->mDownloadNotification:Lcom/youku/gamecenter/download/DownloadNotification;

    invoke-virtual {v6, p1}, Lcom/youku/gamecenter/download/DownloadNotification;->generateID(Lcom/youku/gamecenter/download/DownloadInfo;)I

    move-result v6

    iput v6, p1, Lcom/youku/gamecenter/download/DownloadInfo;->mNotificationID:I

    .line 407
    new-instance v5, Lcom/youku/gamecenter/download/DownloadingService$DownloadTask;

    invoke-direct {v5, p1}, Lcom/youku/gamecenter/download/DownloadingService$DownloadTask;-><init>(Lcom/youku/gamecenter/download/DownloadInfo;)V

    .line 408
    .local v5, "task":Lcom/youku/gamecenter/download/DownloadingService$DownloadTask;
    sget-object v6, Lcom/youku/gamecenter/download/DownloadingService;->mDownloadMap:Ljava/util/Map;

    iget-object v7, p1, Lcom/youku/gamecenter/download/DownloadInfo;->mDownloadUrl:Ljava/lang/String;

    invoke-interface {v6, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    invoke-direct {p0, p1}, Lcom/youku/gamecenter/download/DownloadingService;->setDownloadPath(Lcom/youku/gamecenter/download/DownloadInfo;)V

    .line 411
    new-instance v0, Lcom/youku/gamecenter/download/DownloadingService$DownloadThread;

    invoke-direct {v0, p0, p1}, Lcom/youku/gamecenter/download/DownloadingService$DownloadThread;-><init>(Lcom/youku/gamecenter/download/DownloadingService;Lcom/youku/gamecenter/download/DownloadInfo;)V

    .line 412
    .local v0, "downloadThread":Lcom/youku/gamecenter/download/DownloadingService$DownloadThread;
    iput-object v0, v5, Lcom/youku/gamecenter/download/DownloadingService$DownloadTask;->mDownloadThread:Lcom/youku/gamecenter/download/DownloadingService$DownloadThread;

    .line 413
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    .line 414
    .local v3, "msg":Landroid/os/Message;
    const/16 v6, 0xb

    iput v6, v3, Landroid/os/Message;->what:I

    .line 415
    invoke-static {v3, p1}, Lcom/youku/gamecenter/download/DownloadServiceMessage;->putDownloadInfoToMsg(Landroid/os/Message;Lcom/youku/gamecenter/download/DownloadInfo;)V

    .line 417
    :try_start_0
    sget-object v6, Lcom/youku/gamecenter/download/DownloadingService;->mClientMessenger:Landroid/os/Messenger;

    if-eqz v6, :cond_3

    .line 418
    sget-object v6, Lcom/youku/gamecenter/download/DownloadingService;->mClientMessenger:Landroid/os/Messenger;

    invoke-virtual {v6, v3}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 423
    :cond_3
    :goto_2
    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p1, Lcom/youku/gamecenter/download/DownloadInfo;->mPath:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".tmp"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v6}, Lcom/youku/gamecenter/download/DownloadingService;->createDownloadFile(Ljava/io/File;)Z

    move-result v4

    .line 424
    .local v4, "result":Z
    iget v6, p1, Lcom/youku/gamecenter/download/DownloadInfo;->mType:I

    invoke-static {v6}, Lcom/youku/gamecenter/download/DownloadingService;->isSilentDownload(I)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 425
    if-eqz v4, :cond_5

    .line 426
    iget v6, p1, Lcom/youku/gamecenter/download/DownloadInfo;->mType:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_6

    .line 427
    invoke-virtual {p0, p1}, Lcom/youku/gamecenter/download/DownloadingService;->sendSilentTrackStart(Lcom/youku/gamecenter/download/DownloadInfo;)V

    .line 432
    :cond_4
    :goto_3
    invoke-virtual {p0}, Lcom/youku/gamecenter/download/DownloadingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/youku/gamecenter/download/SQLManager;->getSQLManager(Landroid/content/Context;)Lcom/youku/gamecenter/download/SQLManager;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/youku/gamecenter/download/SQLManager;->insertToDB(Lcom/youku/gamecenter/download/DownloadInfo;)Z

    .line 434
    :cond_5
    invoke-virtual {p0}, Lcom/youku/gamecenter/download/DownloadingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/youku/gamecenter/util/SystemUtils;->isWifi(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 435
    iget-object v6, p1, Lcom/youku/gamecenter/download/DownloadInfo;->mDownloadUrl:Ljava/lang/String;

    invoke-direct {p0, v6, p1}, Lcom/youku/gamecenter/download/DownloadingService;->processPause(Ljava/lang/String;Lcom/youku/gamecenter/download/DownloadInfo;)V

    goto/16 :goto_1

    .line 419
    .end local v4    # "result":Z
    :catch_0
    move-exception v1

    .line 420
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2

    .line 428
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local v4    # "result":Z
    :cond_6
    iget v6, p1, Lcom/youku/gamecenter/download/DownloadInfo;->mType:I

    if-eq v6, v9, :cond_7

    iget v6, p1, Lcom/youku/gamecenter/download/DownloadInfo;->mType:I

    if-ne v6, v10, :cond_4

    .line 430
    :cond_7
    invoke-virtual {p0, p1}, Lcom/youku/gamecenter/download/DownloadingService;->sendGameSilentTrackStart(Lcom/youku/gamecenter/download/DownloadInfo;)V

    goto :goto_3

    .line 440
    :cond_8
    sget-object v6, Lcom/youku/gamecenter/download/DownloadingService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "downloadThread.start():"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    invoke-virtual {v0}, Lcom/youku/gamecenter/download/DownloadingService$DownloadThread;->start()V

    .line 442
    iget v6, p1, Lcom/youku/gamecenter/download/DownloadInfo;->mType:I

    if-eqz v6, :cond_9

    iget v6, p1, Lcom/youku/gamecenter/download/DownloadInfo;->mType:I

    const/4 v7, 0x5

    if-eq v6, v7, :cond_9

    iget v6, p1, Lcom/youku/gamecenter/download/DownloadInfo;->mType:I

    if-eq v6, v9, :cond_9

    iget v6, p1, Lcom/youku/gamecenter/download/DownloadInfo;->mType:I

    if-ne v6, v10, :cond_0

    :cond_9
    iget-object v6, p1, Lcom/youku/gamecenter/download/DownloadInfo;->mIcon:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 445
    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Lcom/youku/gamecenter/download/DownloadingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p1, Lcom/youku/gamecenter/download/DownloadInfo;->mIcon:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/youku/gamecenter/util/FileUtils;->getIconFilePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 447
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_0

    .line 448
    :cond_a
    iget-object v6, p1, Lcom/youku/gamecenter/download/DownloadInfo;->mIcon:Ljava/lang/String;

    iget-object v7, p1, Lcom/youku/gamecenter/download/DownloadInfo;->mPackageName:Ljava/lang/String;

    invoke-direct {p0, v6, v7}, Lcom/youku/gamecenter/download/DownloadingService;->downloadIcon(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method private updateNotificationId(Lcom/youku/gamecenter/download/DownloadInfo;Lcom/youku/gamecenter/download/DownloadingService$DownloadTask;)V
    .locals 1
    .param p1, "info"    # Lcom/youku/gamecenter/download/DownloadInfo;
    .param p2, "task"    # Lcom/youku/gamecenter/download/DownloadingService$DownloadTask;

    .prologue
    .line 1231
    iget v0, p1, Lcom/youku/gamecenter/download/DownloadInfo;->mNotificationID:I

    if-eqz v0, :cond_1

    .line 1232
    if-eqz p2, :cond_0

    .line 1233
    iget v0, p1, Lcom/youku/gamecenter/download/DownloadInfo;->mNotificationID:I

    iput v0, p2, Lcom/youku/gamecenter/download/DownloadingService$DownloadTask;->mId:I

    .line 1239
    :cond_0
    :goto_0
    return-void

    .line 1237
    :cond_1
    iget-object v0, p0, Lcom/youku/gamecenter/download/DownloadingService;->mDownloadNotification:Lcom/youku/gamecenter/download/DownloadNotification;

    invoke-virtual {v0, p1}, Lcom/youku/gamecenter/download/DownloadNotification;->generateID(Lcom/youku/gamecenter/download/DownloadInfo;)I

    move-result v0

    iput v0, p1, Lcom/youku/gamecenter/download/DownloadInfo;->mNotificationID:I

    .line 1238
    iget v0, p1, Lcom/youku/gamecenter/download/DownloadInfo;->mNotificationID:I

    iput v0, p2, Lcom/youku/gamecenter/download/DownloadingService$DownloadTask;->mId:I

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 84
    sget-object v0, Lcom/youku/gamecenter/download/DownloadingService;->TAG:Ljava/lang/String;

    const-string v1, "onBind"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/youku/gamecenter/download/DownloadingService;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {v0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .locals 4

    .prologue
    .line 90
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 91
    sget-object v2, Lcom/youku/gamecenter/download/DownloadingService;->TAG:Ljava/lang/String;

    const-string v3, "onCreate "

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-virtual {p0}, Lcom/youku/gamecenter/download/DownloadingService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0xf

    const/4 v3, 0x3

    if-lt v2, v3, :cond_1

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lcom/youku/gamecenter/download/DownloadingService;->isTablet:Z

    .line 93
    iget-boolean v2, p0, Lcom/youku/gamecenter/download/DownloadingService;->isTablet:Z

    if-eqz v2, :cond_2

    const-string v0, "Youku HD Download"

    .line 94
    .local v0, "appName":Ljava/lang/String;
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/youku/analytics/data/Device;->appver:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";Android;"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 97
    .local v1, "userAgent":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/youku/gamecenter/download/DownloadingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/youku/analytics/AnalyticsAgent;->setUserAgent(Landroid/content/Context;Ljava/lang/String;)V

    .line 98
    invoke-static {v0}, Lcom/youku/analytics/AnalyticsAgent;->setAppName(Ljava/lang/String;)V

    .line 99
    const-string v2, "notification"

    invoke-virtual {p0, v2}, Lcom/youku/gamecenter/download/DownloadingService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    iput-object v2, p0, Lcom/youku/gamecenter/download/DownloadingService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 100
    new-instance v2, Lcom/youku/gamecenter/download/DownloadingService$DownloadingHandler;

    invoke-direct {v2, p0}, Lcom/youku/gamecenter/download/DownloadingService$DownloadingHandler;-><init>(Lcom/youku/gamecenter/download/DownloadingService;)V

    iput-object v2, p0, Lcom/youku/gamecenter/download/DownloadingService;->mHandler:Landroid/os/Handler;

    .line 101
    new-instance v2, Lcom/youku/gamecenter/download/DownloadingService$DownloadingListener;

    invoke-direct {v2, p0}, Lcom/youku/gamecenter/download/DownloadingService$DownloadingListener;-><init>(Lcom/youku/gamecenter/download/DownloadingService;)V

    iput-object v2, p0, Lcom/youku/gamecenter/download/DownloadingService;->mDownloadListener:Lcom/youku/gamecenter/download/DownloadingService$IServiceDownloadListener;

    .line 102
    iget-object v2, p0, Lcom/youku/gamecenter/download/DownloadingService;->mIntentFilter:Landroid/content/IntentFilter;

    if-nez v2, :cond_0

    .line 103
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    iput-object v2, p0, Lcom/youku/gamecenter/download/DownloadingService;->mIntentFilter:Landroid/content/IntentFilter;

    .line 104
    iget-object v2, p0, Lcom/youku/gamecenter/download/DownloadingService;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 105
    iget-object v2, p0, Lcom/youku/gamecenter/download/DownloadingService;->networkReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/youku/gamecenter/download/DownloadingService;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v2, v3}, Lcom/youku/gamecenter/download/DownloadingService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 108
    :cond_0
    return-void

    .line 92
    .end local v0    # "appName":Ljava/lang/String;
    .end local v1    # "userAgent":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 93
    :cond_2
    const-string v0, "Youku Download"

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 1433
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 1434
    iget-object v0, p0, Lcom/youku/gamecenter/download/DownloadingService;->networkReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/download/DownloadingService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1435
    sget-object v0, Lcom/youku/gamecenter/download/DownloadingService;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1436
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 1440
    sget-object v0, Lcom/youku/gamecenter/download/DownloadingService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "intent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  onStartCommand:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1441
    if-nez p1, :cond_0

    .line 1443
    invoke-direct {p0}, Lcom/youku/gamecenter/download/DownloadingService;->continueNormalDownload()V

    .line 1445
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/youku/gamecenter/download/DownloadingService;->continueSilentDownload(I)V

    .line 1446
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/youku/gamecenter/download/DownloadingService;->continueSilentDownload(I)V

    .line 1447
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/youku/gamecenter/download/DownloadingService;->continueSilentDownload(I)V

    .line 1449
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method removeNotification(Lcom/youku/gamecenter/download/DownloadInfo;)V
    .locals 3
    .param p1, "info"    # Lcom/youku/gamecenter/download/DownloadInfo;

    .prologue
    .line 1312
    iget-object v1, p0, Lcom/youku/gamecenter/download/DownloadingService;->mNotificationManager:Landroid/app/NotificationManager;

    iget v2, p1, Lcom/youku/gamecenter/download/DownloadInfo;->mNotificationID:I

    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1313
    sget-object v1, Lcom/youku/gamecenter/download/DownloadingService;->mDownloadMap:Ljava/util/Map;

    iget-object v2, p1, Lcom/youku/gamecenter/download/DownloadInfo;->mDownloadUrl:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/gamecenter/download/DownloadingService$DownloadTask;

    .line 1314
    .local v0, "task":Lcom/youku/gamecenter/download/DownloadingService$DownloadTask;
    if-eqz v0, :cond_0

    .line 1315
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/youku/gamecenter/download/DownloadingService$DownloadTask;->mNotification:Landroid/app/Notification;

    .line 1316
    :cond_0
    return-void
.end method

.method public sendGameSilentTrackEnd(Lcom/youku/gamecenter/download/DownloadInfo;)V
    .locals 6
    .param p1, "info"    # Lcom/youku/gamecenter/download/DownloadInfo;

    .prologue
    .line 1053
    invoke-virtual {p0}, Lcom/youku/gamecenter/download/DownloadingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcom/youku/gamecenter/services/URLContainer;->DOWNLOAD_STATISTICS:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/youku/gamecenter/statistics/GameTrack;->setBaseParam(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1055
    .local v2, "url":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    iget-object v3, p1, Lcom/youku/gamecenter/download/DownloadInfo;->mPath:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1056
    .local v0, "file":Ljava/io/File;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&gameid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/youku/gamecenter/download/DownloadInfo;->mId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&times="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/youku/gamecenter/download/DownloadInfo;->mDownloadDuration:I

    div-int/lit16 v4, v4, 0x3e8

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1058
    iget-object v3, p1, Lcom/youku/gamecenter/download/DownloadInfo;->mSource:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1059
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&source="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/youku/gamecenter/download/DownloadInfo;->mSource:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1060
    :cond_0
    iget-object v3, p1, Lcom/youku/gamecenter/download/DownloadInfo;->mStatistic:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1061
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/youku/gamecenter/download/DownloadInfo;->mStatistic:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1062
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&type=1"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1063
    iget-object v3, p0, Lcom/youku/gamecenter/download/DownloadingService;->uid:Ljava/lang/String;

    invoke-static {v3}, Lcom/youku/gamecenter/util/CommonUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1064
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/youku/gamecenter/download/DownloadingService;->uid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1066
    :cond_2
    iget-object v3, p0, Lcom/youku/gamecenter/download/DownloadingService;->ytidAndUsernameAndVip:Ljava/lang/String;

    invoke-static {v3}, Lcom/youku/gamecenter/util/CommonUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1067
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/youku/gamecenter/download/DownloadingService;->ytidAndUsernameAndVip:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1069
    :cond_3
    new-instance v1, Lcom/youku/gamecenter/statistics/GameStatisticsTask;

    invoke-virtual {p0}, Lcom/youku/gamecenter/download/DownloadingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/youku/gamecenter/statistics/GameStatisticsTask;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    .line 1071
    .local v1, "statistics":Lcom/youku/gamecenter/statistics/GameStatisticsTask;
    const-string v3, "Statistics"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "gameSilentDownloadEnd:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1072
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v1, v3}, Lcom/youku/gamecenter/statistics/GameStatisticsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1073
    return-void
.end method

.method public sendGameSilentTrackStart(Lcom/youku/gamecenter/download/DownloadInfo;)V
    .locals 5
    .param p1, "info"    # Lcom/youku/gamecenter/download/DownloadInfo;

    .prologue
    .line 1076
    invoke-virtual {p0}, Lcom/youku/gamecenter/download/DownloadingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/youku/gamecenter/services/URLContainer;->DOWNLOAD_STATISTICS:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/youku/gamecenter/statistics/GameTrack;->setBaseParam(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1078
    .local v1, "url":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&gameid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/youku/gamecenter/download/DownloadInfo;->mId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1079
    iget-object v2, p1, Lcom/youku/gamecenter/download/DownloadInfo;->mSource:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1080
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&source="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/youku/gamecenter/download/DownloadInfo;->mSource:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1081
    :cond_0
    iget-object v2, p1, Lcom/youku/gamecenter/download/DownloadInfo;->mStatistic:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1082
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/youku/gamecenter/download/DownloadInfo;->mStatistic:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1083
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&type=0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1084
    iget-object v2, p0, Lcom/youku/gamecenter/download/DownloadingService;->uid:Ljava/lang/String;

    invoke-static {v2}, Lcom/youku/gamecenter/util/CommonUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1085
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/youku/gamecenter/download/DownloadingService;->uid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1087
    :cond_2
    iget-object v2, p0, Lcom/youku/gamecenter/download/DownloadingService;->ytidAndUsernameAndVip:Ljava/lang/String;

    invoke-static {v2}, Lcom/youku/gamecenter/util/CommonUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1088
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/youku/gamecenter/download/DownloadingService;->ytidAndUsernameAndVip:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1090
    :cond_3
    new-instance v0, Lcom/youku/gamecenter/statistics/GameStatisticsTask;

    invoke-virtual {p0}, Lcom/youku/gamecenter/download/DownloadingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/youku/gamecenter/statistics/GameStatisticsTask;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    .line 1092
    .local v0, "statistics":Lcom/youku/gamecenter/statistics/GameStatisticsTask;
    const-string v2, "Statistics"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "gameSilentDownloadStart:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1093
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v2}, Lcom/youku/gamecenter/statistics/GameStatisticsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1094
    return-void
.end method

.method public sendSilentTrackEnd(Lcom/youku/gamecenter/download/DownloadInfo;)V
    .locals 8
    .param p1, "downloadInfo"    # Lcom/youku/gamecenter/download/DownloadInfo;

    .prologue
    const/4 v3, 0x0

    .line 1035
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 1036
    .local v7, "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "AppName"

    iget-object v1, p1, Lcom/youku/gamecenter/download/DownloadInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v7, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1037
    invoke-virtual {p0}, Lcom/youku/gamecenter/download/DownloadingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "PUSH\u5524\u8d77\u4e0b\u8f7d\u5b8c\u6210"

    const-string v2, "push\u680f"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v4, p0, Lcom/youku/gamecenter/download/DownloadingService;->isTablet:Z

    if-eqz v4, :cond_0

    const-string/jumbo v4, "y19"

    :goto_0
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".pushDownloadBar.pushDownloadApp"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "SILENTDOWNLOAD"

    move-object v5, v3

    invoke-static/range {v0 .. v7}, Lcom/youku/analytics/AnalyticsAgent;->pageClickWithSession(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 1041
    return-void

    .line 1037
    :cond_0
    const-string/jumbo v4, "y16"

    goto :goto_0
.end method

.method public sendSilentTrackStart(Lcom/youku/gamecenter/download/DownloadInfo;)V
    .locals 8
    .param p1, "downloadInfo"    # Lcom/youku/gamecenter/download/DownloadInfo;

    .prologue
    const/4 v3, 0x0

    .line 1044
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 1045
    .local v7, "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "AppName"

    iget-object v1, p1, Lcom/youku/gamecenter/download/DownloadInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v7, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1046
    invoke-virtual {p0}, Lcom/youku/gamecenter/download/DownloadingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "\u9759\u9ed8\u4e0b\u8f7d\u4e0b\u8f7d\u5f00\u59cb"

    const-string v2, "push\u680f"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v4, p0, Lcom/youku/gamecenter/download/DownloadingService;->isTablet:Z

    if-eqz v4, :cond_0

    const-string/jumbo v4, "y19"

    :goto_0
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".pushDownloadBar.DownloadStart"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "SILENTDOWNLOAD"

    move-object v5, v3

    invoke-static/range {v0 .. v7}, Lcom/youku/analytics/AnalyticsAgent;->pageClickWithSession(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 1050
    return-void

    .line 1046
    :cond_0
    const-string/jumbo v4, "y16"

    goto :goto_0
.end method
