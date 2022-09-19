.class public Lcom/tudou/upload/UploadProcessor;
.super Lcom/tudou/upload/UploadBase;
.source "UploadProcessor.java"


# static fields
.field public static final NOTIFY_ID:I = 0x1ae8

.field private static ON_SESSION_ERROR:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String; = "UploadProcessor"

.field public static mUploadProcessor:Lcom/tudou/upload/UploadProcessor;


# instance fields
.field private volatile context:Landroid/content/Context;

.field private file:Ljava/io/File;

.field public volatile mInfo:Lcom/tudou/upload/UploadInfo;

.field private volatile mManager:Landroid/app/NotificationManager;

.field private volatile n:Landroid/app/Notification;

.field private volatile wakeLock:Landroid/os/PowerManager$WakeLock;

.field private volatile wifiLock:Landroid/net/wifi/WifiManager$WifiLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/tudou/upload/UploadProcessor;->ON_SESSION_ERROR:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/tudou/upload/UploadInfo;)V
    .locals 3
    .param p1, "info"    # Lcom/tudou/upload/UploadInfo;

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/tudou/upload/UploadBase;-><init>()V

    .line 82
    sput-object p0, Lcom/tudou/upload/UploadProcessor;->mUploadProcessor:Lcom/tudou/upload/UploadProcessor;

    .line 83
    if-eqz p1, :cond_0

    .line 85
    invoke-virtual {p1}, Lcom/tudou/upload/UploadInfo;->clone()Lcom/tudou/upload/UploadInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/upload/UploadProcessor;->mInfo:Lcom/tudou/upload/UploadInfo;

    .line 86
    const-string v0, "TAG_TUDOU"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u65b0\u4efb\u52a1->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/tudou/upload/UploadInfo;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    :cond_0
    invoke-static {}, Lcom/tudou/upload/UploadConfig;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/upload/UploadProcessor;->context:Landroid/content/Context;

    .line 90
    return-void
.end method

.method public constructor <init>(Lcom/tudou/upload/UploadInfo;J)V
    .locals 2
    .param p1, "info"    # Lcom/tudou/upload/UploadInfo;
    .param p2, "session"    # J

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/tudou/upload/UploadBase;-><init>()V

    .line 102
    if-eqz p1, :cond_0

    .line 103
    invoke-virtual {p1}, Lcom/tudou/upload/UploadInfo;->clone()Lcom/tudou/upload/UploadInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/upload/UploadProcessor;->mInfo:Lcom/tudou/upload/UploadInfo;

    .line 104
    :cond_0
    invoke-static {}, Lcom/tudou/upload/UploadConfig;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/upload/UploadProcessor;->context:Landroid/content/Context;

    .line 105
    iput-wide p2, p0, Lcom/tudou/upload/UploadProcessor;->session:J

    .line 106
    return-void
.end method

.method static synthetic access$000(Lcom/tudou/upload/UploadProcessor;)Landroid/app/NotificationManager;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/upload/UploadProcessor;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/tudou/upload/UploadProcessor;->mManager:Landroid/app/NotificationManager;

    return-object v0
.end method

.method static synthetic access$002(Lcom/tudou/upload/UploadProcessor;Landroid/app/NotificationManager;)Landroid/app/NotificationManager;
    .locals 0
    .param p0, "x0"    # Lcom/tudou/upload/UploadProcessor;
    .param p1, "x1"    # Landroid/app/NotificationManager;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/tudou/upload/UploadProcessor;->mManager:Landroid/app/NotificationManager;

    return-object p1
.end method

.method static synthetic access$100(Lcom/tudou/upload/UploadProcessor;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/upload/UploadProcessor;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/tudou/upload/UploadProcessor;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/tudou/upload/UploadProcessor;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/upload/UploadProcessor;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/tudou/upload/UploadProcessor;->updateFinish(Ljava/lang/String;)V

    return-void
.end method

.method private buildFinupUrl(Lcom/tudou/upload/UploadInfo;)Ljava/lang/String;
    .locals 4
    .param p1, "aInfo"    # Lcom/tudou/upload/UploadInfo;

    .prologue
    .line 887
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/tudou/upload/UploadInfo;->getFinupurlV4()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/tudou/upload/UploadProcessor;->genUploadPraram(Lcom/tudou/upload/UploadInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&fs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tudou/upload/UploadInfo;->getSize()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&md5="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tudou/upload/UploadInfo;->getMd5()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private buildProUrl(Lcom/tudou/upload/UploadInfo;)Ljava/lang/String;
    .locals 4
    .param p1, "aInfo"    # Lcom/tudou/upload/UploadInfo;

    .prologue
    .line 877
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/tudou/upload/UploadInfo;->getProgurlV4()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/tudou/upload/UploadProcessor;->genUploadPraram(Lcom/tudou/upload/UploadInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&fs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tudou/upload/UploadInfo;->getSize()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private buildProUrl(Lcom/tudou/upload/UploadInfo;I)Ljava/lang/String;
    .locals 4
    .param p1, "aInfo"    # Lcom/tudou/upload/UploadInfo;
    .param p2, "bid"    # I

    .prologue
    .line 882
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/tudou/upload/UploadInfo;->getProgurlV4()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/tudou/upload/UploadProcessor;->genUploadPraram(Lcom/tudou/upload/UploadInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&fs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tudou/upload/UploadInfo;->getSize()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&bid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private buildUploadUrl(Lcom/tudou/upload/UploadInfo;I)Ljava/lang/String;
    .locals 4
    .param p1, "aInfo"    # Lcom/tudou/upload/UploadInfo;
    .param p2, "sliceIndex"    # I

    .prologue
    .line 872
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/tudou/upload/UploadInfo;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/tudou/upload/UploadProcessor;->genUploadPraram(Lcom/tudou/upload/UploadInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&bid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p1, Lcom/tudou/upload/UploadInfo;->mSliceInfos:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tudou/upload/SliceInfo;

    iget v0, v0, Lcom/tudou/upload/SliceInfo;->slice_task_id:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&fs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tudou/upload/UploadProcessor;->mInfo:Lcom/tudou/upload/UploadInfo;

    invoke-virtual {v1}, Lcom/tudou/upload/UploadInfo;->getSize()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static createNotification(Lcom/tudou/upload/UploadInfo;)Landroid/app/Notification;
    .locals 5
    .param p0, "aInfo"    # Lcom/tudou/upload/UploadInfo;

    .prologue
    .line 420
    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    .line 421
    .local v1, "n":Landroid/app/Notification;
    new-instance v0, Landroid/content/Intent;

    sget-object v2, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    const-class v3, Lcom/tudou/ui/activity/UploadManagerActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 422
    .local v0, "i":Landroid/content/Intent;
    const-string/jumbo v2, "taskID"

    invoke-virtual {p0}, Lcom/tudou/upload/UploadInfo;->getTaskId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 423
    const-string/jumbo v2, "upload"

    const-string/jumbo v3, "upload"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 424
    const-string/jumbo v2, "tag_notify"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 425
    sget-object v2, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    const/16 v3, 0x1ae9

    const/high16 v4, 0x8000000

    invoke-static {v2, v3, v0, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, v1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 428
    new-instance v2, Landroid/widget/RemoteViews;

    sget-object v3, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f030249

    invoke-direct {v2, v3, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object v2, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 429
    return-object v1
.end method

.method private genUploadPraram(Lcom/tudou/upload/UploadInfo;)Ljava/lang/String;
    .locals 4
    .param p1, "aInfo"    # Lcom/tudou/upload/UploadInfo;

    .prologue
    .line 855
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 856
    .local v1, "sBuilder":Ljava/lang/StringBuilder;
    const-string v2, "?tk="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/tudou/upload/UploadInfo;->getTokenV4()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 857
    const-string v2, "&iid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/tudou/upload/UploadInfo;->getItemidV4()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 858
    const-string v2, "&si="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 859
    const-string v2, "&ver="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/youku/config/Profile;->VER:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 860
    const-string v2, "&ft=json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 861
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 862
    .local v0, "sBuString":Ljava/lang/String;
    return-object v0
.end method

.method private getProInfo()Ljava/lang/String;
    .locals 6

    .prologue
    .line 740
    :try_start_0
    iget-object v3, p0, Lcom/tudou/upload/UploadProcessor;->mInfo:Lcom/tudou/upload/UploadInfo;

    invoke-direct {p0, v3}, Lcom/tudou/upload/UploadProcessor;->buildProUrl(Lcom/tudou/upload/UploadInfo;)Ljava/lang/String;

    move-result-object v1

    .line 741
    .local v1, "proUrl":Ljava/lang/String;
    const-string v3, "TAG_TUDOU"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "pro  url======="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 742
    const-string v3, "GET"

    const/4 v4, 0x1

    invoke-static {v1, v3, v4}, Lcom/youku/util/NetUtils;->downloadUri(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 749
    .local v2, "result2":Ljava/lang/String;
    const-string v3, "TAG_TUDOU"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "\u83b7\u53d6\u5206\u6bb5\u4fe1\u606f===="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 753
    .end local v1    # "proUrl":Ljava/lang/String;
    .end local v2    # "result2":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 751
    :catch_0
    move-exception v0

    .line 752
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "TAG_TUDOU"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "\u65b0\u4efb\u52a1\u670d\u52a1\u5668\u8fd4\u56de\u5f02\u5e38===="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez v0, :cond_0

    const-string v3, "null"

    :goto_1
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 753
    const/4 v2, 0x0

    goto :goto_0

    .line 752
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method

.method public static getUploadedVideoStatus(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 621
    invoke-static {p0}, Lcom/youku/util/NetUtils;->downloadString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 623
    .local v0, "continueResult":Ljava/lang/String;
    invoke-static {v0}, Lcom/youku/util/JsonUtils;->loadJson(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 624
    .local v1, "jObject":Lorg/json/JSONObject;
    const-string/jumbo v3, "status"

    invoke-static {v1, v3}, Lcom/youku/util/JsonUtils;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 625
    .local v2, "status":Ljava/lang/String;
    const-string v3, "TAG_TUDOU"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "server return status==="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    return-object v2
.end method

.method private isFinupSucess()Z
    .locals 10

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 784
    :try_start_0
    iget-object v7, p0, Lcom/tudou/upload/UploadProcessor;->mInfo:Lcom/tudou/upload/UploadInfo;

    invoke-direct {p0, v7}, Lcom/tudou/upload/UploadProcessor;->buildFinupUrl(Lcom/tudou/upload/UploadInfo;)Ljava/lang/String;

    move-result-object v2

    .line 785
    .local v2, "finupUrl":Ljava/lang/String;
    const-string v7, "TAG_TUDOU"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "pro  url======="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 786
    const-string v7, "GET"

    const/4 v8, 0x1

    invoke-static {v2, v7, v8}, Lcom/youku/util/NetUtils;->downloadUri(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    .line 795
    .local v4, "result2":Ljava/lang/String;
    const-string v7, "TAG_TUDOU"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "\u6700\u7ec8\u4e0a\u4f20\u4fe1\u606f===="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 796
    invoke-static {v4}, Lcom/youku/util/JsonUtils;->loadJson(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 797
    .local v1, "fJson":Lorg/json/JSONObject;
    const-string/jumbo v7, "result"

    invoke-static {v1, v7}, Lcom/youku/util/JsonUtils;->getJsonBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 798
    .local v3, "result":Z
    if-eqz v3, :cond_0

    .line 805
    .end local v1    # "fJson":Lorg/json/JSONObject;
    .end local v2    # "finupUrl":Ljava/lang/String;
    .end local v3    # "result":Z
    .end local v4    # "result2":Ljava/lang/String;
    :goto_0
    return v5

    .restart local v1    # "fJson":Lorg/json/JSONObject;
    .restart local v2    # "finupUrl":Ljava/lang/String;
    .restart local v3    # "result":Z
    .restart local v4    # "result2":Ljava/lang/String;
    :cond_0
    move v5, v6

    .line 802
    goto :goto_0

    .line 803
    .end local v1    # "fJson":Lorg/json/JSONObject;
    .end local v2    # "finupUrl":Ljava/lang/String;
    .end local v3    # "result":Z
    .end local v4    # "result2":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 804
    .local v0, "e":Ljava/lang/Exception;
    const-string v7, "TAG_TUDOU"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "\u65b0\u4efb\u52a1\u670d\u52a1\u5668\u8fd4\u56de\u5f02\u5e38===="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-nez v0, :cond_1

    const-string v5, "null"

    :goto_1
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v6

    .line 805
    goto :goto_0

    .line 804
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    goto :goto_1
.end method

.method private parseServerInfo42(Ljava/lang/String;)Z
    .locals 10
    .param p1, "jString"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 825
    invoke-static {p1}, Lcom/youku/util/JsonUtils;->loadJson(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 826
    .local v2, "jsonObject":Lorg/json/JSONObject;
    if-nez v2, :cond_1

    .line 827
    const-string v8, "TAG_TUDOU"

    const-string v9, "42\u4e3a\u7a7a"

    invoke-static {v8, v9}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 850
    :cond_0
    :goto_0
    return v7

    .line 830
    :cond_1
    const-string/jumbo v8, "uploadingurl"

    invoke-static {v2, v8}, Lcom/youku/util/JsonUtils;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 831
    .local v6, "uploadUrl":Ljava/lang/String;
    const-string v8, "progurl"

    invoke-static {v2, v8}, Lcom/youku/util/JsonUtils;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 832
    .local v3, "progurl":Ljava/lang/String;
    const-string v8, "finupurl"

    invoke-static {v2, v8}, Lcom/youku/util/JsonUtils;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 833
    .local v0, "finupurl":Ljava/lang/String;
    const-string/jumbo v8, "token"

    invoke-static {v2, v8}, Lcom/youku/util/JsonUtils;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 834
    .local v5, "token":Ljava/lang/String;
    const-string v8, "itemid"

    invoke-static {v2, v8}, Lcom/youku/util/JsonUtils;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 836
    .local v1, "itemid":Ljava/lang/String;
    const-string/jumbo v8, "result"

    invoke-static {v2, v8}, Lcom/youku/util/JsonUtils;->getJsonBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v4

    .line 837
    .local v4, "result":Z
    if-eqz v4, :cond_0

    .line 840
    iget-object v7, p0, Lcom/tudou/upload/UploadProcessor;->mInfo:Lcom/tudou/upload/UploadInfo;

    invoke-virtual {v7, v6}, Lcom/tudou/upload/UploadInfo;->setUrl(Ljava/lang/String;)V

    .line 841
    iget-object v7, p0, Lcom/tudou/upload/UploadProcessor;->mInfo:Lcom/tudou/upload/UploadInfo;

    invoke-virtual {v7, v6}, Lcom/tudou/upload/UploadInfo;->setTargetHost(Ljava/lang/String;)V

    .line 842
    iget-object v7, p0, Lcom/tudou/upload/UploadProcessor;->mInfo:Lcom/tudou/upload/UploadInfo;

    const-wide/16 v8, 0x0

    invoke-virtual {v7, v8, v9}, Lcom/tudou/upload/UploadInfo;->setUploadedSize(J)V

    .line 844
    iget-object v7, p0, Lcom/tudou/upload/UploadProcessor;->mInfo:Lcom/tudou/upload/UploadInfo;

    invoke-virtual {v7, v3}, Lcom/tudou/upload/UploadInfo;->setProgurlV4(Ljava/lang/String;)V

    .line 845
    iget-object v7, p0, Lcom/tudou/upload/UploadProcessor;->mInfo:Lcom/tudou/upload/UploadInfo;

    invoke-virtual {v7, v0}, Lcom/tudou/upload/UploadInfo;->setFinupurlV4(Ljava/lang/String;)V

    .line 846
    iget-object v7, p0, Lcom/tudou/upload/UploadProcessor;->mInfo:Lcom/tudou/upload/UploadInfo;

    invoke-virtual {v7, v5}, Lcom/tudou/upload/UploadInfo;->setTokenV4(Ljava/lang/String;)V

    .line 847
    iget-object v7, p0, Lcom/tudou/upload/UploadProcessor;->mInfo:Lcom/tudou/upload/UploadInfo;

    invoke-virtual {v7, v1}, Lcom/tudou/upload/UploadInfo;->setItemidV4(Ljava/lang/String;)V

    .line 849
    iget-object v7, p0, Lcom/tudou/upload/UploadProcessor;->mInfo:Lcom/tudou/upload/UploadInfo;

    invoke-virtual {v7}, Lcom/tudou/upload/UploadInfo;->genJsonV4()V

    .line 850
    const/4 v7, 0x1

    goto :goto_0
.end method

.method public static resetChecking()V
    .locals 1

    .prologue
    .line 530
    const/4 v0, 0x1

    sput-boolean v0, Lcom/tudou/upload/UploadProcessor;->CHECKING:Z

    .line 532
    return-void
.end method

.method private slices()Ljava/util/List;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/tudou/upload/SliceInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1003
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 1004
    .local v10, "results":Ljava/util/List;, "Ljava/util/List<Lcom/tudou/upload/SliceInfo;>;"
    invoke-direct/range {p0 .. p0}, Lcom/tudou/upload/UploadProcessor;->getProInfo()Ljava/lang/String;

    move-result-object v8

    .line 1006
    .local v8, "proInfo":Ljava/lang/String;
    if-nez v8, :cond_0

    move-object/from16 v16, v10

    .line 1048
    :goto_0
    return-object v16

    .line 1008
    :cond_0
    invoke-static {v8}, Lcom/youku/util/JsonUtils;->loadJson(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 1009
    .local v7, "jObject":Lorg/json/JSONObject;
    const-string/jumbo v16, "result"

    move-object/from16 v0, v16

    invoke-static {v7, v0}, Lcom/youku/util/JsonUtils;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1010
    .local v9, "result":Ljava/lang/String;
    const-string v16, "ok"

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_2

    .line 1011
    const-string v16, "error"

    move-object/from16 v0, v16

    invoke-static {v7, v0}, Lcom/youku/util/JsonUtils;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1012
    .local v4, "error":Ljava/lang/String;
    const-string v16, "error"

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1

    const-string v16, "is finished"

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1

    .line 1013
    const/4 v10, 0x0

    :cond_1
    move-object/from16 v16, v10

    .line 1015
    goto :goto_0

    .line 1017
    .end local v4    # "error":Ljava/lang/String;
    :cond_2
    const-string v16, "content"

    move-object/from16 v0, v16

    invoke-static {v7, v0}, Lcom/youku/util/JsonUtils;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1018
    .local v2, "content":Ljava/lang/String;
    const-string v16, ","

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1019
    .local v3, "contents":[Ljava/lang/String;
    array-length v0, v3

    move/from16 v16, v0

    const/16 v17, 0x3

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_3

    move-object/from16 v16, v10

    .line 1020
    goto :goto_0

    .line 1022
    :cond_3
    const/16 v16, 0x2

    aget-object v16, v3, v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v16

    if-lez v16, :cond_4

    const/16 v16, 0x2

    aget-object v16, v3, v16

    const-string v17, "0"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_4

    .line 1023
    const/16 v16, 0x0

    goto :goto_0

    .line 1025
    :cond_4
    const/16 v16, 0x0

    aget-object v16, v3, v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 1026
    .local v12, "sliceSize":J
    const/16 v16, 0x1

    aget-object v16, v3, v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 1027
    .local v15, "sliceSum":I
    new-array v14, v15, [I

    .line 1028
    .local v14, "sliceStaus":[I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    array-length v0, v14

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v5, v0, :cond_7

    .line 1029
    const/16 v16, 0x2

    aget-object v16, v3, v16

    add-int/lit8 v17, v5, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 1030
    .local v11, "sStatus":Ljava/lang/String;
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v16

    aput v16, v14, v5

    .line 1031
    new-instance v6, Lcom/tudou/upload/SliceInfo;

    invoke-direct {v6}, Lcom/tudou/upload/SliceInfo;-><init>()V

    .line 1032
    .local v6, "info":Lcom/tudou/upload/SliceInfo;
    iput v5, v6, Lcom/tudou/upload/SliceInfo;->slice_task_id:I

    .line 1033
    aget v16, v14, v5

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_5

    .line 1034
    const/16 v16, 0x1

    move/from16 v0, v16

    iput-boolean v0, v6, Lcom/tudou/upload/SliceInfo;->finished:Z

    .line 1039
    :goto_2
    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    iput-wide v0, v6, Lcom/tudou/upload/SliceInfo;->offset:J

    .line 1040
    iput-wide v12, v6, Lcom/tudou/upload/SliceInfo;->standardLength:J

    .line 1041
    array-length v0, v14

    move/from16 v16, v0

    add-int/lit8 v16, v16, -0x1

    move/from16 v0, v16

    if-ne v5, v0, :cond_6

    .line 1042
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tudou/upload/UploadProcessor;->mInfo:Lcom/tudou/upload/UploadInfo;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/tudou/upload/UploadInfo;->getSize()J

    move-result-wide v16

    int-to-long v0, v5

    move-wide/from16 v18, v0

    mul-long v18, v18, v12

    sub-long v16, v16, v18

    move-wide/from16 v0, v16

    iput-wide v0, v6, Lcom/tudou/upload/SliceInfo;->length:J

    .line 1046
    :goto_3
    invoke-interface {v10, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1028
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1036
    :cond_5
    const/16 v16, 0x0

    move/from16 v0, v16

    iput-boolean v0, v6, Lcom/tudou/upload/SliceInfo;->finished:Z

    goto :goto_2

    .line 1044
    :cond_6
    iput-wide v12, v6, Lcom/tudou/upload/SliceInfo;->length:J

    goto :goto_3

    .end local v6    # "info":Lcom/tudou/upload/SliceInfo;
    .end local v11    # "sStatus":Ljava/lang/String;
    :cond_7
    move-object/from16 v16, v10

    .line 1048
    goto/16 :goto_0
.end method

.method private tudouPrepare()Z
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 127
    invoke-static {}, Lcom/tudou/upload/UploadApi;->reset()V

    .line 128
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/tudou/upload/UploadProcessor;->mInfo:Lcom/tudou/upload/UploadInfo;

    invoke-virtual {v5}, Lcom/tudou/upload/UploadInfo;->getFilePath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/tudou/upload/UploadProcessor;->file:Ljava/io/File;

    .line 129
    iget-object v4, p0, Lcom/tudou/upload/UploadProcessor;->file:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 130
    iget-object v3, p0, Lcom/tudou/upload/UploadProcessor;->mInfo:Lcom/tudou/upload/UploadInfo;

    const/16 v4, 0x67

    invoke-virtual {v3, v4}, Lcom/tudou/upload/UploadInfo;->setExceptionCode(I)V

    .line 133
    const-string v3, "TAG_TUDOU"

    const-string v4, "Pause==========5"

    invoke-static {v3, v4}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    iget-object v3, p0, Lcom/tudou/upload/UploadProcessor;->mInfo:Lcom/tudou/upload/UploadInfo;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Lcom/tudou/upload/UploadInfo;->setStatus(I)V

    .line 136
    const v3, 0x7f0d03dc

    invoke-static {v3}, Lcom/tudou/upload/UploadConfig;->showTips(I)V

    .line 137
    const-string v3, "TAG_TUDOU"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/tudou/upload/UploadProcessor;->mInfo:Lcom/tudou/upload/UploadInfo;

    invoke-virtual {v5}, Lcom/tudou/upload/UploadInfo;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\u51c6\u5907\u4e0a\u4f20\u5931\u8d25\uff0c\u53d1\u751f\u5f02\u5e38===========\u4e0a\u4f20\u6587\u4ef6\u4e0d\u5b58\u5728"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    :cond_0
    :goto_0
    return v2

    .line 140
    :cond_1
    const-string v4, "TAG_TUDOU"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/tudou/upload/UploadProcessor;->mInfo:Lcom/tudou/upload/UploadInfo;

    invoke-virtual {v6}, Lcom/tudou/upload/UploadInfo;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "===========\u4e0a\u4f20\u6587\u4ef6\u5b58\u5728"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    iget-object v4, p0, Lcom/tudou/upload/UploadProcessor;->mInfo:Lcom/tudou/upload/UploadInfo;

    invoke-virtual {v4}, Lcom/tudou/upload/UploadInfo;->getTaskId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tudou/upload/UploadDB;->getItem(Ljava/lang/String;)Lcom/tudou/upload/UploadInfo;

    move-result-object v0

    .line 144
    .local v0, "dbInfo":Lcom/tudou/upload/UploadInfo;
    if-eqz v0, :cond_2

    .line 145
    invoke-virtual {v0}, Lcom/tudou/upload/UploadInfo;->clone()Lcom/tudou/upload/UploadInfo;

    move-result-object v4

    iput-object v4, p0, Lcom/tudou/upload/UploadProcessor;->mInfo:Lcom/tudou/upload/UploadInfo;

    .line 146
    iget-object v4, p0, Lcom/tudou/upload/UploadProcessor;->mInfo:Lcom/tudou/upload/UploadInfo;

    iget-object v5, p0, Lcom/tudou/upload/UploadProcessor;->file:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/tudou/upload/UploadInfo;->setSize(J)V

    .line 147
    iget-object v4, p0, Lcom/tudou/upload/UploadProcessor;->mInfo:Lcom/tudou/upload/UploadInfo;

    sput-object v4, Lcom/tudou/upload/UploadProcessor;->UPLOADING_TASK:Lcom/tudou/upload/UploadInfo;

    .line 156
    iget-object v4, p0, Lcom/tudou/upload/UploadProcessor;->mInfo:Lcom/tudou/upload/UploadInfo;

    invoke-virtual {v4}, Lcom/tudou/upload/UploadInfo;->getUrl()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 157
    const-string v2, "TAG_TUDOU"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/tudou/upload/UploadProcessor;->mInfo:Lcom/tudou/upload/UploadInfo;

    invoke-virtual {v5}, Lcom/tudou/upload/UploadInfo;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "==\u672c\u5730\u5b58\u50a8url\u4e0d\u4e3a\u7a7a=="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/tudou/upload/UploadProcessor;->mInfo:Lcom/tudou/upload/UploadInfo;

    invoke-virtual {v5}, Lcom/tudou/upload/UploadInfo;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "===\u5c1d\u8bd5\u7eed\u4f20"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    iput-boolean v3, p0, Lcom/tudou/upload/UploadProcessor;->isContinueTask:Z

    move v2, v3

    .line 159
    goto :goto_0

    .line 162
    :cond_2
    iget-object v3, p0, Lcom/tudou/upload/UploadProcessor;->mInfo:Lcom/tudou/upload/UploadInfo;

    iget-object v4, p0, Lcom/tudou/upload/UploadProcessor;->file:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/tudou/upload/UploadInfo;->setSize(J)V

    .line 164
    const-string v3, "TAG_TUDOU"

    const-string/jumbo v4, "\u5f00\u542f\u65b0\u7684\u4e0a\u4f20\u4efb\u52a1"

    invoke-static {v3, v4}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    invoke-direct {p0}, Lcom/tudou/upload/UploadProcessor;->uploadGetServerInfoNew()Ljava/lang/String;

    move-result-object v1

    .line 167
    .local v1, "serverInfo":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 168
    invoke-direct {p0, v1}, Lcom/tudou/upload/UploadProcessor;->parseServerInfo42(Ljava/lang/String;)Z

    move-result v2

    goto/16 :goto_0
.end method

.method private updateFinish(Ljava/lang/String;)V
    .locals 2
    .param p1, "notificationText"    # Ljava/lang/String;

    .prologue
    .line 453
    iget-object v0, p0, Lcom/tudou/upload/UploadProcessor;->mInfo:Lcom/tudou/upload/UploadInfo;

    invoke-static {v0}, Lcom/tudou/upload/UploadDB;->update(Lcom/tudou/upload/UploadInfo;)Z

    .line 454
    iget-object v0, p0, Lcom/tudou/upload/UploadProcessor;->mInfo:Lcom/tudou/upload/UploadInfo;

    invoke-virtual {p0, v0}, Lcom/tudou/upload/UploadProcessor;->updateUI(Lcom/tudou/upload/UploadInfo;)V

    .line 455
    iget-object v0, p0, Lcom/tudou/upload/UploadProcessor;->mInfo:Lcom/tudou/upload/UploadInfo;

    invoke-virtual {v0}, Lcom/tudou/upload/UploadInfo;->getStatus()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/tudou/upload/UploadProcessor;->mInfo:Lcom/tudou/upload/UploadInfo;

    invoke-virtual {v0}, Lcom/tudou/upload/UploadInfo;->getStatus()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/tudou/upload/UploadProcessor;->mInfo:Lcom/tudou/upload/UploadInfo;

    invoke-virtual {v0}, Lcom/tudou/upload/UploadInfo;->getStatus()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/tudou/upload/UploadProcessor;->mInfo:Lcom/tudou/upload/UploadInfo;

    invoke-virtual {v0}, Lcom/tudou/upload/UploadInfo;->getStatus()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 459
    :cond_0
    iget-object v0, p0, Lcom/tudou/upload/UploadProcessor;->mManager:Landroid/app/NotificationManager;

    if-nez v0, :cond_1

    .line 460
    iget-object v0, p0, Lcom/tudou/upload/UploadProcessor;->context:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/tudou/upload/UploadProcessor;->mManager:Landroid/app/NotificationManager;

    .line 463
    :cond_1
    iget-object v0, p0, Lcom/tudou/upload/UploadProcessor;->mManager:Landroid/app/NotificationManager;

    const/16 v1, 0x1ae8

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 466
    :goto_0
    return-void

    .line 465
    :cond_2
    invoke-virtual {p0, p1}, Lcom/tudou/upload/UploadProcessor;->updateNotification(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private uploadBegin()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const v4, 0x7f0d0466

    .line 535
    const-string v1, "TAG_TUDOU"

    const-string v2, "UploadProcessor====uploadBegin"

    invoke-static {v1, v2}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    iget-object v1, p0, Lcom/tudou/upload/UploadProcessor;->mInfo:Lcom/tudou/upload/UploadInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tudou/upload/UploadProcessor;->mInfo:Lcom/tudou/upload/UploadInfo;

    invoke-virtual {v1}, Lcom/tudou/upload/UploadInfo;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 605
    :cond_0
    :goto_0
    return-void

    .line 539
    :cond_1
    iget-object v1, p0, Lcom/tudou/upload/UploadProcessor;->mInfo:Lcom/tudou/upload/UploadInfo;

    invoke-virtual {v1}, Lcom/tudou/upload/UploadInfo;->getTaskId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tudou/upload/UploadDB;->getItem(Ljava/lang/String;)Lcom/tudou/upload/UploadInfo;

    move-result-object v0

    .line 540
    .local v0, "tem":Lcom/tudou/upload/UploadInfo;
    if-eqz v0, :cond_0

    .line 543
    invoke-virtual {v0}, Lcom/tudou/upload/UploadInfo;->clone()Lcom/tudou/upload/UploadInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/tudou/upload/UploadProcessor;->mInfo:Lcom/tudou/upload/UploadInfo;

    .line 547
    iget-object v1, p0, Lcom/tudou/upload/UploadProcessor;->mInfo:Lcom/tudou/upload/UploadInfo;

    invoke-virtual {v1}, Lcom/tudou/upload/UploadInfo;->getStatus()I

    move-result v1

    if-ne v1, v6, :cond_2

    .line 548
    const v1, 0x7f0d0463

    invoke-static {v1}, Lcom/tudou/upload/UploadConfig;->showTips(I)V

    .line 549
    iget-object v1, p0, Lcom/tudou/upload/UploadProcessor;->mInfo:Lcom/tudou/upload/UploadInfo;

    invoke-virtual {p0, v1}, Lcom/tudou/upload/UploadProcessor;->updateUI(Lcom/tudou/upload/UploadInfo;)V

    goto :goto_0

    .line 553
    :cond_2
    iget-object v1, p0, Lcom/tudou/upload/UploadProcessor;->mInfo:Lcom/tudou/upload/UploadInfo;

    invoke-static {v1}, Lcom/tudou/upload/UploadProcessor;->isUploadingTask(Lcom/tudou/upload/UploadInfo;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 554
    iget-object v1, p0, Lcom/tudou/upload/UploadProcessor;->mInfo:Lcom/tudou/upload/UploadInfo;

    invoke-virtual {p0, v1}, Lcom/tudou/upload/UploadProcessor;->updateUI(Lcom/tudou/upload/UploadInfo;)V

    goto :goto_0

    .line 558
    :cond_3
    sget-object v1, Lcom/tudou/upload/UploadProcessor;->UPLOADING_TASK:Lcom/tudou/upload/UploadInfo;

    if-eqz v1, :cond_4

    .line 559
    const-string v1, "TAG_TUDOU"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u5f53\u524d\u6b63\u5728\u4e0a\u4f20\u7684\u89c6\u9891\u662f"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/tudou/upload/UploadProcessor;->UPLOADING_TASK:Lcom/tudou/upload/UploadInfo;

    invoke-virtual {v3}, Lcom/tudou/upload/UploadInfo;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "====\u89c6\u9891"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tudou/upload/UploadProcessor;->mInfo:Lcom/tudou/upload/UploadInfo;

    invoke-virtual {v3}, Lcom/tudou/upload/UploadInfo;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\u7f6e\u6210\u7b49\u5f85\u72b6\u6001"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    iget-object v1, p0, Lcom/tudou/upload/UploadProcessor;->mInfo:Lcom/tudou/upload/UploadInfo;

    invoke-virtual {v1, v5}, Lcom/tudou/upload/UploadInfo;->setStatus(I)V

    .line 561
    sget-object v1, Lcom/tudou/upload/UploadProcessor;->SESSION_ERROR_TASKS:Ljava/util/Map;

    iget-object v2, p0, Lcom/tudou/upload/UploadProcessor;->mInfo:Lcom/tudou/upload/UploadInfo;

    invoke-virtual {v2}, Lcom/tudou/upload/UploadInfo;->getTaskId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 562
    iget-object v1, p0, Lcom/tudou/upload/UploadProcessor;->context:Landroid/content/Context;

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/tudou/upload/UploadProcessor;->updateAll(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 567
    :cond_4
    invoke-static {}, Lcom/tudou/upload/UploadConfig;->hasInternet()Z

    move-result v1

    if-nez v1, :cond_5

    .line 568
    const-string v1, "TAG_TUDOU"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u6ca1\u6709\u53ef\u7528\u7684\u7f51\u7edc\uff0c\u89c6\u9891"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tudou/upload/UploadProcessor;->mInfo:Lcom/tudou/upload/UploadInfo;

    invoke-virtual {v3}, Lcom/tudou/upload/UploadInfo;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\u7f6e\u6210\u7b49\u5f85\u72b6\u6001"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    iget-object v1, p0, Lcom/tudou/upload/UploadProcessor;->mInfo:Lcom/tudou/upload/UploadInfo;

    invoke-virtual {v1, v5}, Lcom/tudou/upload/UploadInfo;->setStatus(I)V

    .line 570
    sget-object v1, Lcom/tudou/upload/UploadProcessor;->SESSION_ERROR_TASKS:Ljava/util/Map;

    iget-object v2, p0, Lcom/tudou/upload/UploadProcessor;->mInfo:Lcom/tudou/upload/UploadInfo;

    invoke-virtual {v2}, Lcom/tudou/upload/UploadInfo;->getTaskId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 571
    const v1, 0x7f0d02c3

    invoke-static {v1}, Lcom/youku/util/Util;->showTips(I)V

    .line 572
    iget-object v1, p0, Lcom/tudou/upload/UploadProcessor;->context:Landroid/content/Context;

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/tudou/upload/UploadProcessor;->updateAll(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 576
    :cond_5
    invoke-static {}, Lcom/tudou/upload/UploadConfig;->uploadSettingIsOk()Z

    move-result v1

    if-nez v1, :cond_6

    .line 577
    const-string v1, "TAG_TUDOU"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u5f53\u524d\u662f3G\u7f51\u7edc\uff0c\u7528\u6237\u8bbe\u7f6e\u4e86\u4ec5wifi\u4e0a\u4f20\uff0c\u89c6\u9891"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tudou/upload/UploadProcessor;->mInfo:Lcom/tudou/upload/UploadInfo;

    invoke-virtual {v3}, Lcom/tudou/upload/UploadInfo;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\u7f6e\u6210\u7b49\u5f85\u72b6\u6001"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    const v1, 0x7f0d02c7

    invoke-static {v1}, Lcom/youku/util/Util;->showTips(I)V

    .line 579
    iget-object v1, p0, Lcom/tudou/upload/UploadProcessor;->mInfo:Lcom/tudou/upload/UploadInfo;

    invoke-virtual {v1, v5}, Lcom/tudou/upload/UploadInfo;->setStatus(I)V

    .line 580
    sget-object v1, Lcom/tudou/upload/UploadProcessor;->SESSION_ERROR_TASKS:Ljava/util/Map;

    iget-object v2, p0, Lcom/tudou/upload/UploadProcessor;->mInfo:Lcom/tudou/upload/UploadInfo;

    invoke-virtual {v2}, Lcom/tudou/upload/UploadInfo;->getTaskId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 581
    iget-object v1, p0, Lcom/tudou/upload/UploadProcessor;->context:Landroid/content/Context;

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/tudou/upload/UploadProcessor;->updateAll(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 584
    :cond_6
    invoke-static {}, Lcom/tudou/upload/UploadConfig;->upload3G()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 585
    const v1, 0x7f0d0113

    invoke-static {v1}, Lcom/youku/util/Util;->showTips(I)V

    .line 589
    :cond_7
    iget-object v1, p0, Lcom/tudou/upload/UploadProcessor;->mInfo:Lcom/tudou/upload/UploadInfo;

    sput-object v1, Lcom/tudou/upload/UploadProcessor;->UPLOADING_TASK:Lcom/tudou/upload/UploadInfo;

    .line 591
    invoke-virtual {p0}, Lcom/tudou/upload/UploadProcessor;->prepare()Z

    move-result v1

    if-nez v1, :cond_9

    .line 592
    const/4 v1, 0x0

    sput-object v1, Lcom/tudou/upload/UploadProcessor;->UPLOADING_TASK:Lcom/tudou/upload/UploadInfo;

    .line 593
    const-string v1, "TAG_TUDOU"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/tudou/upload/UploadProcessor;->mInfo:Lcom/tudou/upload/UploadInfo;

    invoke-virtual {v3}, Lcom/tudou/upload/UploadInfo;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\u51c6\u5907\u4e0a\u4f20\u5931\u8d25\uff0c\u53d1\u751f\u5f02\u5e38"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    iget-object v1, p0, Lcom/tudou/upload/UploadProcessor;->mInfo:Lcom/tudou/upload/UploadInfo;

    invoke-virtual {v1}, Lcom/tudou/upload/UploadInfo;->getStatus()I

    move-result v1

    if-eq v1, v6, :cond_8

    iget-object v1, p0, Lcom/tudou/upload/UploadProcessor;->mInfo:Lcom/tudou/upload/UploadInfo;

    invoke-virtual {v1}, Lcom/tudou/upload/UploadInfo;->getStatus()I

    move-result v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_8

    .line 596
    iget-object v1, p0, Lcom/tudou/upload/UploadProcessor;->mInfo:Lcom/tudou/upload/UploadInfo;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/tudou/upload/UploadInfo;->setStatus(I)V

    .line 598
    :cond_8
    iget-object v1, p0, Lcom/tudou/upload/UploadProcessor;->context:Landroid/content/Context;

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/tudou/upload/UploadProcessor;->updateAll(Ljava/lang/String;)V

    .line 599
    const-string v1, "TAG_TUDOU"

    const-string v2, "!prepare()====\u7eed\u4f20"

    invoke-static {v1, v2}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    iget-wide v2, p0, Lcom/tudou/upload/UploadProcessor;->session:J

    iget-object v1, p0, Lcom/tudou/upload/UploadProcessor;->mInfo:Lcom/tudou/upload/UploadInfo;

    invoke-static {v2, v3, v1}, Lcom/tudou/upload/UploadProcessor;->startUploadTask(JLcom/tudou/upload/UploadInfo;)Z

    goto/16 :goto_0

    .line 604
    :cond_9
    invoke-direct {p0}, Lcom/tudou/upload/UploadProcessor;->uploadSliceFile()V

    goto/16 :goto_0
.end method

.method private uploadGetServerInfoNew()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 675
    const-class v4, Lcom/youku/network/IHttpRequest;

    invoke-static {v4, v6}, Lcom/youku/service/YoukuService;->getService(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/network/IHttpRequest;

    .line 677
    .local v1, "httpRequest":Lcom/youku/network/IHttpRequest;
    new-instance v0, Lcom/youku/network/HttpIntent;

    iget-object v4, p0, Lcom/tudou/upload/UploadProcessor;->mInfo:Lcom/tudou/upload/UploadInfo;

    invoke-static {v4}, Lcom/youku/http/TudouURLContainer;->getUploadUrl(Lcom/tudou/upload/UploadInfo;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "GET"

    invoke-direct {v0, v4, v5, v6}, Lcom/youku/network/HttpIntent;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 680
    .local v0, "httpIntent":Lcom/youku/network/HttpIntent;
    new-array v3, v6, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v4, v3, v7

    .line 681
    .local v3, "results":[Ljava/lang/String;
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v2, v6}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 682
    .local v2, "latch":Ljava/util/concurrent/CountDownLatch;
    new-instance v4, Lcom/tudou/upload/UploadProcessor$2;

    invoke-direct {v4, p0, v3, v2}, Lcom/tudou/upload/UploadProcessor$2;-><init>(Lcom/tudou/upload/UploadProcessor;[Ljava/lang/String;Ljava/util/concurrent/CountDownLatch;)V

    invoke-interface {v1, v0, v4}, Lcom/youku/network/IHttpRequest;->request(Lcom/youku/network/HttpIntent;Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;)V

    .line 705
    :try_start_0
    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 709
    :goto_0
    aget-object v4, v3, v7

    return-object v4

    .line 706
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method private uploadSliceCell(I)V
    .locals 13
    .param p1, "index"    # I

    .prologue
    .line 1107
    const/4 v6, 0x0

    .line 1108
    .local v6, "response":Lorg/apache/http/HttpResponse;
    const/4 v4, 0x0

    .line 1109
    .local v4, "httppost":Lorg/apache/http/client/methods/HttpPost;
    const/4 v0, 0x0

    .line 1114
    .local v0, "defaultHttpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    iget-object v10, p0, Lcom/tudou/upload/UploadProcessor;->mInfo:Lcom/tudou/upload/UploadInfo;

    invoke-direct {p0, v10, p1}, Lcom/tudou/upload/UploadProcessor;->buildUploadUrl(Lcom/tudou/upload/UploadInfo;I)Ljava/lang/String;

    move-result-object v8

    .line 1115
    .local v8, "uploadUrl":Ljava/lang/String;
    const-string v10, "TAG_TUDOU"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "upload adress======="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1116
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    .end local v0    # "defaultHttpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 1117
    .restart local v0    # "defaultHttpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    new-instance v4, Lorg/apache/http/client/methods/HttpPost;

    .end local v4    # "httppost":Lorg/apache/http/client/methods/HttpPost;
    invoke-direct {v4, v8}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 1118
    .restart local v4    # "httppost":Lorg/apache/http/client/methods/HttpPost;
    new-instance v9, Ljava/io/File;

    iget-object v10, p0, Lcom/tudou/upload/UploadProcessor;->mInfo:Lcom/tudou/upload/UploadInfo;

    invoke-virtual {v10}, Lcom/tudou/upload/UploadInfo;->getFilePath()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1127
    .local v9, "videoFile":Ljava/io/File;
    sget-object v10, Lcom/tudou/upload/UploadApi;->requests:Ljava/util/List;

    invoke-interface {v10, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1140
    :try_start_0
    new-instance v3, Lcom/tudou/upload/SliceFileEntity;

    const-string v10, "application/java-achive"

    iget-object v11, p0, Lcom/tudou/upload/UploadProcessor;->mInfo:Lcom/tudou/upload/UploadInfo;

    invoke-direct {v3, v9, v10, v11, p1}, Lcom/tudou/upload/SliceFileEntity;-><init>(Ljava/io/File;Ljava/lang/String;Lcom/tudou/upload/UploadInfo;I)V

    .line 1141
    .local v3, "fileEntity":Lorg/apache/http/HttpEntity;
    invoke-virtual {v4, v3}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 1145
    invoke-virtual {v0, v4}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v6

    .line 1146
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v7

    .line 1148
    .local v7, "statusCode":I
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    .line 1149
    .local v2, "entity":Lorg/apache/http/HttpEntity;
    if-eqz v2, :cond_0

    .line 1150
    invoke-static {v2}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v5

    .line 1151
    .local v5, "reStr":Ljava/lang/String;
    const-string v10, "TAG_TUDOU"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "\u5206\u7247==="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "===="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1154
    .end local v5    # "reStr":Ljava/lang/String;
    :cond_0
    const/16 v10, 0xc8

    if-ne v7, v10, :cond_1

    .line 1155
    iget-object v10, p0, Lcom/tudou/upload/UploadProcessor;->mInfo:Lcom/tudou/upload/UploadInfo;

    iget-object v10, v10, Lcom/tudou/upload/UploadInfo;->mSliceInfos:Ljava/util/List;

    invoke-interface {v10, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/tudou/upload/SliceInfo;

    const/4 v11, 0x1

    iput-boolean v11, v10, Lcom/tudou/upload/SliceInfo;->finished:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1174
    :goto_0
    invoke-virtual {p0, v4}, Lcom/tudou/upload/UploadProcessor;->closeRequest(Lorg/apache/http/client/methods/HttpUriRequest;)V

    .line 1181
    .end local v2    # "entity":Lorg/apache/http/HttpEntity;
    .end local v3    # "fileEntity":Lorg/apache/http/HttpEntity;
    .end local v7    # "statusCode":I
    :goto_1
    return-void

    .line 1159
    .restart local v2    # "entity":Lorg/apache/http/HttpEntity;
    .restart local v3    # "fileEntity":Lorg/apache/http/HttpEntity;
    .restart local v7    # "statusCode":I
    :cond_1
    :try_start_1
    iget-object v10, p0, Lcom/tudou/upload/UploadProcessor;->mInfo:Lcom/tudou/upload/UploadInfo;

    iget-object v10, v10, Lcom/tudou/upload/UploadInfo;->mSliceInfos:Ljava/util/List;

    invoke-interface {v10, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/tudou/upload/SliceInfo;

    const/4 v11, 0x0

    iput-boolean v11, v10, Lcom/tudou/upload/SliceInfo;->finished:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1164
    .end local v2    # "entity":Lorg/apache/http/HttpEntity;
    .end local v3    # "fileEntity":Lorg/apache/http/HttpEntity;
    .end local v7    # "statusCode":I
    :catch_0
    move-exception v1

    .line 1166
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v11, "TAG_TUDOU"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "\u4e0a\u4f20\u53d1\u751f\u5f02\u5e38======"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    if-nez v1, :cond_3

    const-string v10, "null"

    :goto_2
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, "====\u5f53\u524d\u72b6\u6001\u662f==="

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v12, p0, Lcom/tudou/upload/UploadProcessor;->mInfo:Lcom/tudou/upload/UploadInfo;

    invoke-virtual {v12}, Lcom/tudou/upload/UploadInfo;->getStatus()I

    move-result v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v11, v10}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1167
    iget-object v10, p0, Lcom/tudou/upload/UploadProcessor;->mInfo:Lcom/tudou/upload/UploadInfo;

    invoke-virtual {v10}, Lcom/tudou/upload/UploadInfo;->getStatus()I

    move-result v10

    const/4 v11, 0x5

    if-eq v10, v11, :cond_2

    iget-object v10, p0, Lcom/tudou/upload/UploadProcessor;->mInfo:Lcom/tudou/upload/UploadInfo;

    invoke-virtual {v10}, Lcom/tudou/upload/UploadInfo;->getStatus()I

    move-result v10

    const/4 v11, 0x4

    if-eq v10, v11, :cond_2

    iget-object v10, p0, Lcom/tudou/upload/UploadProcessor;->mInfo:Lcom/tudou/upload/UploadInfo;

    invoke-virtual {v10}, Lcom/tudou/upload/UploadInfo;->getStatus()I

    move-result v10

    const/4 v11, 0x6

    if-eq v10, v11, :cond_2

    .line 1170
    const-string/jumbo v10, "\u4e0a\u4f20\u9875\u89c6\u9891\u4e0a\u4f20\u5931\u8d25"

    const-string/jumbo v11, "\u4e0a\u4f20\u9875\u89c6\u9891\u4e0a\u4f20\u5931\u8d25"

    invoke-static {v10, v11}, Lcom/tudou/ui/activity/UploadManagerActivity;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 1171
    iget-object v10, p0, Lcom/tudou/upload/UploadProcessor;->mInfo:Lcom/tudou/upload/UploadInfo;

    const/4 v11, 0x3

    invoke-virtual {v10, v11}, Lcom/tudou/upload/UploadInfo;->setStatus(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1174
    :cond_2
    invoke-virtual {p0, v4}, Lcom/tudou/upload/UploadProcessor;->closeRequest(Lorg/apache/http/client/methods/HttpUriRequest;)V

    goto :goto_1

    .line 1166
    :cond_3
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v10

    goto :goto_2

    .line 1174
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v10

    invoke-virtual {p0, v4}, Lcom/tudou/upload/UploadProcessor;->closeRequest(Lorg/apache/http/client/methods/HttpUriRequest;)V

    throw v10
.end method

.method private uploadSliceFile()V
    .locals 6

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x1

    .line 1057
    invoke-virtual {p0}, Lcom/tudou/upload/UploadProcessor;->initListener()V

    .line 1062
    invoke-virtual {p0}, Lcom/tudou/upload/UploadProcessor;->keepNetConnecting()V

    .line 1065
    iget-object v1, p0, Lcom/tudou/upload/UploadProcessor;->mInfo:Lcom/tudou/upload/UploadInfo;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/tudou/upload/UploadInfo;->setStatus(I)V

    .line 1066
    iget-object v1, p0, Lcom/tudou/upload/UploadProcessor;->mInfo:Lcom/tudou/upload/UploadInfo;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/tudou/upload/UploadInfo;->setStatus(I)V

    .line 1067
    iget-object v1, p0, Lcom/tudou/upload/UploadProcessor;->mInfo:Lcom/tudou/upload/UploadInfo;

    invoke-direct {p0}, Lcom/tudou/upload/UploadProcessor;->slices()Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Lcom/tudou/upload/UploadInfo;->mSliceInfos:Ljava/util/List;

    .line 1068
    iget-object v1, p0, Lcom/tudou/upload/UploadProcessor;->mInfo:Lcom/tudou/upload/UploadInfo;

    iget-object v1, v1, Lcom/tudou/upload/UploadInfo;->mSliceInfos:Ljava/util/List;

    if-nez v1, :cond_1

    .line 1069
    iget-object v1, p0, Lcom/tudou/upload/UploadProcessor;->mInfo:Lcom/tudou/upload/UploadInfo;

    invoke-virtual {v1, v4}, Lcom/tudou/upload/UploadInfo;->setStatus(I)V

    .line 1103
    :cond_0
    :goto_0
    return-void

    .line 1071
    :cond_1
    iget-object v1, p0, Lcom/tudou/upload/UploadProcessor;->mInfo:Lcom/tudou/upload/UploadInfo;

    iget-object v1, v1, Lcom/tudou/upload/UploadInfo;->mSliceInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 1072
    iget-object v1, p0, Lcom/tudou/upload/UploadProcessor;->mInfo:Lcom/tudou/upload/UploadInfo;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/tudou/upload/UploadInfo;->setStatus(I)V

    goto :goto_0

    .line 1077
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/tudou/upload/UploadProcessor;->mInfo:Lcom/tudou/upload/UploadInfo;

    iget-object v1, v1, Lcom/tudou/upload/UploadInfo;->mSliceInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 1078
    sget-object v1, Lcom/tudou/upload/UploadProcessor;->UPLOADING_TASK:Lcom/tudou/upload/UploadInfo;

    if-eqz v1, :cond_3

    sget-object v1, Lcom/tudou/upload/UploadProcessor;->UPLOADING_TASK:Lcom/tudou/upload/UploadInfo;

    invoke-virtual {v1}, Lcom/tudou/upload/UploadInfo;->getStatus()I

    move-result v1

    if-ne v1, v5, :cond_5

    .line 1079
    :cond_3
    invoke-virtual {p0}, Lcom/tudou/upload/UploadProcessor;->releaseNetLock()V

    .line 1080
    const-string v1, "TAG_TUDOU"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u5206\u7247===="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "==\u505c\u6b62\u4e0a\u4f20"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1090
    :cond_4
    sget-object v1, Lcom/tudou/upload/UploadProcessor;->UPLOADING_TASK:Lcom/tudou/upload/UploadInfo;

    if-eqz v1, :cond_0

    .line 1091
    iget-object v1, p0, Lcom/tudou/upload/UploadProcessor;->mInfo:Lcom/tudou/upload/UploadInfo;

    invoke-virtual {v1}, Lcom/tudou/upload/UploadInfo;->getProgress()I

    move-result v1

    const/16 v2, 0x64

    if-ne v1, v2, :cond_0

    .line 1092
    invoke-direct {p0}, Lcom/tudou/upload/UploadProcessor;->isFinupSucess()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1093
    iget-object v1, p0, Lcom/tudou/upload/UploadProcessor;->mInfo:Lcom/tudou/upload/UploadInfo;

    invoke-virtual {v1, v4}, Lcom/tudou/upload/UploadInfo;->setStatus(I)V

    goto :goto_0

    .line 1083
    :cond_5
    iget-object v1, p0, Lcom/tudou/upload/UploadProcessor;->mInfo:Lcom/tudou/upload/UploadInfo;

    iget-object v1, v1, Lcom/tudou/upload/UploadInfo;->mSliceInfos:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tudou/upload/SliceInfo;

    iget-boolean v1, v1, Lcom/tudou/upload/SliceInfo;->finished:Z

    if-nez v1, :cond_6

    .line 1087
    invoke-direct {p0, v0}, Lcom/tudou/upload/UploadProcessor;->uploadSliceCell(I)V

    .line 1077
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1095
    :cond_7
    sget-object v1, Lcom/tudou/upload/UploadProcessor;->UPLOADING_TASK:Lcom/tudou/upload/UploadInfo;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/tudou/upload/UploadProcessor;->UPLOADING_TASK:Lcom/tudou/upload/UploadInfo;

    invoke-virtual {v1}, Lcom/tudou/upload/UploadInfo;->getStatus()I

    move-result v1

    if-eq v1, v5, :cond_0

    .line 1096
    iget-object v1, p0, Lcom/tudou/upload/UploadProcessor;->mInfo:Lcom/tudou/upload/UploadInfo;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/tudou/upload/UploadInfo;->setStatus(I)V

    goto/16 :goto_0
.end method


# virtual methods
.method public bridge synthetic closeRequest(Lorg/apache/http/client/methods/HttpUriRequest;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/http/client/methods/HttpUriRequest;

    .prologue
    .line 44
    invoke-super {p0, p1}, Lcom/tudou/upload/UploadBase;->closeRequest(Lorg/apache/http/client/methods/HttpUriRequest;)V

    return-void
.end method

.method protected finish(Z)Z
    .locals 1
    .param p1, "needCheck"    # Z

    .prologue
    .line 999
    const/4 v0, 0x0

    return v0
.end method

.method protected getUploadServerIp()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 470
    iget-object v3, p0, Lcom/tudou/upload/UploadProcessor;->mInfo:Lcom/tudou/upload/UploadInfo;

    invoke-virtual {v3}, Lcom/tudou/upload/UploadInfo;->getTargetIpAddr()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 471
    iget-object v3, p0, Lcom/tudou/upload/UploadProcessor;->mInfo:Lcom/tudou/upload/UploadInfo;

    invoke-virtual {v3}, Lcom/tudou/upload/UploadInfo;->getTargetIpAddr()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/tudou/upload/UploadApi;->upload_server_uri:Ljava/lang/String;

    .line 488
    :goto_0
    return v2

    .line 475
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/tudou/upload/UploadProcessor;->mInfo:Lcom/tudou/upload/UploadInfo;

    invoke-virtual {v3}, Lcom/tudou/upload/UploadInfo;->getTargetHost()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    .line 476
    .local v1, "ip":Ljava/lang/String;
    iget-object v3, p0, Lcom/tudou/upload/UploadProcessor;->mInfo:Lcom/tudou/upload/UploadInfo;

    invoke-virtual {v3, v1}, Lcom/tudou/upload/UploadInfo;->setTargetIpAddr(Ljava/lang/String;)V

    .line 478
    iget-object v3, p0, Lcom/tudou/upload/UploadProcessor;->mInfo:Lcom/tudou/upload/UploadInfo;

    invoke-virtual {v3}, Lcom/tudou/upload/UploadInfo;->getTargetIpAddr()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/tudou/upload/UploadApi;->upload_server_uri:Ljava/lang/String;

    .line 479
    iget-object v3, p0, Lcom/tudou/upload/UploadProcessor;->mInfo:Lcom/tudou/upload/UploadInfo;

    invoke-static {v3}, Lcom/tudou/upload/UploadDB;->update(Lcom/tudou/upload/UploadInfo;)Z
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 483
    .end local v1    # "ip":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 485
    .local v0, "e":Ljava/net/UnknownHostException;
    invoke-virtual {v0}, Ljava/net/UnknownHostException;->printStackTrace()V

    .line 487
    iget-object v2, p0, Lcom/tudou/upload/UploadProcessor;->mInfo:Lcom/tudou/upload/UploadInfo;

    const/16 v3, 0x66

    invoke-virtual {v2, v3}, Lcom/tudou/upload/UploadInfo;->setExceptionCode(I)V

    .line 488
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected initListener()V
    .locals 2

    .prologue
    .line 271
    iget-object v0, p0, Lcom/tudou/upload/UploadProcessor;->mInfo:Lcom/tudou/upload/UploadInfo;

    new-instance v1, Lcom/tudou/upload/UploadProcessor$1;

    invoke-direct {v1, p0}, Lcom/tudou/upload/UploadProcessor$1;-><init>(Lcom/tudou/upload/UploadProcessor;)V

    invoke-virtual {v0, v1}, Lcom/tudou/upload/UploadInfo;->setUploadListener(Lcom/tudou/upload/UploadListener;)V

    .line 381
    return-void
.end method

.method protected keepNetConnecting()V
    .locals 4

    .prologue
    .line 494
    iget-object v0, p0, Lcom/tudou/upload/UploadProcessor;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_0

    .line 495
    iget-object v0, p0, Lcom/tudou/upload/UploadProcessor;->context:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/4 v1, 0x6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Paike_Upload_Lock_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tudou/upload/UploadProcessor;->mInfo:Lcom/tudou/upload/UploadInfo;

    invoke-virtual {v3}, Lcom/tudou/upload/UploadInfo;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/upload/UploadProcessor;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 498
    :cond_0
    iget-object v0, p0, Lcom/tudou/upload/UploadProcessor;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    if-nez v0, :cond_1

    .line 499
    iget-object v0, p0, Lcom/tudou/upload/UploadProcessor;->context:Landroid/content/Context;

    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Paike_Upload_Lock_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tudou/upload/UploadProcessor;->mInfo:Lcom/tudou/upload/UploadInfo;

    invoke-virtual {v2}, Lcom/tudou/upload/UploadInfo;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->createWifiLock(Ljava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/upload/UploadProcessor;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    .line 502
    :cond_1
    iget-object v0, p0, Lcom/tudou/upload/UploadProcessor;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 503
    iget-object v0, p0, Lcom/tudou/upload/UploadProcessor;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    .line 504
    return-void
.end method

.method protected prepare()Z
    .locals 1

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/tudou/upload/UploadProcessor;->tudouPrepare()Z

    move-result v0

    return v0
.end method

.method protected declared-synchronized releaseNetLock()V
    .locals 4

    .prologue
    .line 509
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/tudou/upload/UploadProcessor;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tudou/upload/UploadProcessor;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    .line 511
    :try_start_1
    iget-object v1, p0, Lcom/tudou/upload/UploadProcessor;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 517
    :cond_0
    :goto_0
    :try_start_2
    iget-object v1, p0, Lcom/tudou/upload/UploadProcessor;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/tudou/upload/UploadProcessor;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    .line 519
    :try_start_3
    iget-object v1, p0, Lcom/tudou/upload/UploadProcessor;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager$WifiLock;->release()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 525
    :cond_1
    :goto_1
    const/4 v1, 0x0

    :try_start_4
    iput-object v1, p0, Lcom/tudou/upload/UploadProcessor;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 526
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/tudou/upload/UploadProcessor;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 527
    monitor-exit p0

    return-void

    .line 512
    :catch_0
    move-exception v0

    .line 513
    .local v0, "e":Ljava/lang/Exception;
    :try_start_5
    const-string v2, "TAG_TUDOU"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cpu release==="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    const-string v1, "cpu release error"

    :goto_2
    invoke-static {v2, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 509
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 513
    .restart local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 520
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 521
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v2, "TAG_TUDOU"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "wify release==="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "wify release error"

    :goto_3
    invoke-static {v2, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v1

    goto :goto_3
.end method

.method public run()V
    .locals 0

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/tudou/upload/UploadProcessor;->uploadBegin()V

    .line 116
    return-void
.end method

.method public updateAll(Ljava/lang/String;)V
    .locals 2
    .param p1, "notificationText"    # Ljava/lang/String;

    .prologue
    .line 435
    iget-object v0, p0, Lcom/tudou/upload/UploadProcessor;->mInfo:Lcom/tudou/upload/UploadInfo;

    invoke-virtual {p0, v0}, Lcom/tudou/upload/UploadProcessor;->updateUI(Lcom/tudou/upload/UploadInfo;)V

    .line 436
    iget-object v0, p0, Lcom/tudou/upload/UploadProcessor;->mInfo:Lcom/tudou/upload/UploadInfo;

    invoke-static {v0}, Lcom/tudou/upload/UploadDB;->update(Lcom/tudou/upload/UploadInfo;)Z

    .line 437
    iget-object v0, p0, Lcom/tudou/upload/UploadProcessor;->mInfo:Lcom/tudou/upload/UploadInfo;

    invoke-virtual {v0}, Lcom/tudou/upload/UploadInfo;->getStatus()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/tudou/upload/UploadProcessor;->mInfo:Lcom/tudou/upload/UploadInfo;

    invoke-virtual {v0}, Lcom/tudou/upload/UploadInfo;->getStatus()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/tudou/upload/UploadProcessor;->mInfo:Lcom/tudou/upload/UploadInfo;

    invoke-virtual {v0}, Lcom/tudou/upload/UploadInfo;->getStatus()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/tudou/upload/UploadProcessor;->mInfo:Lcom/tudou/upload/UploadInfo;

    invoke-virtual {v0}, Lcom/tudou/upload/UploadInfo;->getStatus()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 441
    :cond_0
    iget-object v0, p0, Lcom/tudou/upload/UploadProcessor;->mManager:Landroid/app/NotificationManager;

    if-nez v0, :cond_1

    .line 442
    iget-object v0, p0, Lcom/tudou/upload/UploadProcessor;->context:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/tudou/upload/UploadProcessor;->mManager:Landroid/app/NotificationManager;

    .line 445
    :cond_1
    iget-object v0, p0, Lcom/tudou/upload/UploadProcessor;->mManager:Landroid/app/NotificationManager;

    const/16 v1, 0x1ae8

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 448
    :goto_0
    return-void

    .line 447
    :cond_2
    invoke-virtual {p0, p1}, Lcom/tudou/upload/UploadProcessor;->updateNotification(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected updateNotification(Ljava/lang/String;)V
    .locals 6
    .param p1, "notificationText"    # Ljava/lang/String;

    .prologue
    const/16 v5, 0x1ae8

    const/16 v1, 0x64

    const/4 v4, 0x1

    .line 387
    iget-object v0, p0, Lcom/tudou/upload/UploadProcessor;->n:Landroid/app/Notification;

    if-nez v0, :cond_0

    .line 388
    iget-object v0, p0, Lcom/tudou/upload/UploadProcessor;->context:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/tudou/upload/UploadProcessor;->mManager:Landroid/app/NotificationManager;

    .line 389
    iget-object v0, p0, Lcom/tudou/upload/UploadProcessor;->mInfo:Lcom/tudou/upload/UploadInfo;

    invoke-static {v0}, Lcom/tudou/upload/UploadProcessor;->createNotification(Lcom/tudou/upload/UploadInfo;)Landroid/app/Notification;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/upload/UploadProcessor;->n:Landroid/app/Notification;

    .line 392
    :cond_0
    iget-object v0, p0, Lcom/tudou/upload/UploadProcessor;->n:Landroid/app/Notification;

    const v2, 0x1080089

    iput v2, v0, Landroid/app/Notification;->icon:I

    .line 393
    iget-object v2, p0, Lcom/tudou/upload/UploadProcessor;->n:Landroid/app/Notification;

    iget-object v0, p0, Lcom/tudou/upload/UploadProcessor;->mInfo:Lcom/tudou/upload/UploadInfo;

    invoke-virtual {v0}, Lcom/tudou/upload/UploadInfo;->stateMaybeChange()Z

    move-result v0

    if-nez v0, :cond_3

    const/16 v0, 0x10

    :goto_0
    iput v0, v2, Landroid/app/Notification;->flags:I

    .line 395
    iget-object v0, p0, Lcom/tudou/upload/UploadProcessor;->n:Landroid/app/Notification;

    const/4 v2, 0x0

    iput-object v2, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 396
    iget-object v0, p0, Lcom/tudou/upload/UploadProcessor;->mInfo:Lcom/tudou/upload/UploadInfo;

    invoke-virtual {v0}, Lcom/tudou/upload/UploadInfo;->getStatus()I

    move-result v0

    if-ne v0, v4, :cond_1

    invoke-static {}, Lcom/tudou/upload/UploadProcessor;->getUploadTasks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 397
    iget-object v0, p0, Lcom/tudou/upload/UploadProcessor;->n:Landroid/app/Notification;

    iput v4, v0, Landroid/app/Notification;->defaults:I

    .line 398
    :cond_1
    iget-object v0, p0, Lcom/tudou/upload/UploadProcessor;->n:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v2, 0x7f0c0b12

    iget-object v3, p0, Lcom/tudou/upload/UploadProcessor;->mInfo:Lcom/tudou/upload/UploadInfo;

    invoke-virtual {v3}, Lcom/tudou/upload/UploadInfo;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 399
    iget-object v0, p0, Lcom/tudou/upload/UploadProcessor;->n:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v2, 0x7f0c0b14

    invoke-virtual {v0, v2, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 404
    iget-object v0, p0, Lcom/tudou/upload/UploadProcessor;->n:Landroid/app/Notification;

    iget-object v2, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v3, 0x7f0c0b16

    iget-object v0, p0, Lcom/tudou/upload/UploadProcessor;->mInfo:Lcom/tudou/upload/UploadInfo;

    invoke-virtual {v0}, Lcom/tudou/upload/UploadInfo;->getStatus()I

    move-result v0

    if-ne v0, v4, :cond_4

    move v0, v1

    :goto_1
    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v0, v4}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 407
    iget-object v0, p0, Lcom/tudou/upload/UploadProcessor;->mManager:Landroid/app/NotificationManager;

    iget-object v1, p0, Lcom/tudou/upload/UploadProcessor;->n:Landroid/app/Notification;

    invoke-virtual {v0, v5, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 409
    iget-object v0, p0, Lcom/tudou/upload/UploadProcessor;->mInfo:Lcom/tudou/upload/UploadInfo;

    invoke-virtual {v0}, Lcom/tudou/upload/UploadInfo;->getStatus()I

    move-result v0

    if-nez v0, :cond_2

    .line 410
    iget-object v0, p0, Lcom/tudou/upload/UploadProcessor;->n:Landroid/app/Notification;

    const v1, 0x1080088

    iput v1, v0, Landroid/app/Notification;->icon:I

    .line 412
    iget-object v0, p0, Lcom/tudou/upload/UploadProcessor;->mManager:Landroid/app/NotificationManager;

    iget-object v1, p0, Lcom/tudou/upload/UploadProcessor;->n:Landroid/app/Notification;

    invoke-virtual {v0, v5, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 414
    :cond_2
    return-void

    .line 393
    :cond_3
    const/16 v0, 0x20

    goto :goto_0

    .line 404
    :cond_4
    iget-object v0, p0, Lcom/tudou/upload/UploadProcessor;->mInfo:Lcom/tudou/upload/UploadInfo;

    invoke-virtual {v0}, Lcom/tudou/upload/UploadInfo;->getProgress()I

    move-result v0

    goto :goto_1
.end method

.method protected updateUI(Lcom/tudou/upload/UploadInfo;)V
    .locals 3
    .param p1, "info"    # Lcom/tudou/upload/UploadInfo;

    .prologue
    .line 177
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.youku.paike.broadcast_upload_event_fragment"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 178
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 179
    .local v1, "mBundle":Landroid/os/Bundle;
    const-class v2, Lcom/tudou/upload/UploadInfo;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 180
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 181
    iget-object v2, p0, Lcom/tudou/upload/UploadProcessor;->context:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 182
    return-void
.end method

.method protected upload()V
    .locals 0

    .prologue
    .line 994
    return-void
.end method
