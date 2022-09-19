.class public Lcom/youku/gamecenter/download/DownloadManager;
.super Ljava/lang/Object;
.source "DownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/gamecenter/download/DownloadManager$IServiceConnected;,
        Lcom/youku/gamecenter/download/DownloadManager$ManagerHandler;,
        Lcom/youku/gamecenter/download/DownloadManager$ManagerConnnection;,
        Lcom/youku/gamecenter/download/DownloadManager$SingletonHolder;
    }
.end annotation


# static fields
.field public static final GAME_SILENT_DOWNLOAD_MAX_VALUE:I = 0x3

.field public static SH_PUSH_GAME_SILENT_INSTALL_TOAST:Ljava/lang/String; = null

.field private static SILENT_TEMP_FILE_EXPIREDTIME:J = 0x0L

.field private static final TAG:Ljava/lang/String; = "DownloadManager"

.field private static mContext:Landroid/content/Context;


# instance fields
.field private isNeedSendContinue:Z

.field private mAllowedDownloadToast:Z

.field private mDownloadMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/youku/gamecenter/download/DownloadInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mGameSilentMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/youku/gamecenter/download/DownloadInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mIDownloadUpdate:Lcom/youku/gamecenter/download/IDownloadUpdate;

.field private mIServiceConnected:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/youku/gamecenter/download/DownloadManager$IServiceConnected;",
            ">;"
        }
    .end annotation
.end field

.field private mMessenger:Landroid/os/Messenger;

.field private mServiceConnection:Landroid/content/ServiceConnection;

.field private mSilentMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/youku/gamecenter/download/DownloadInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mUpSilentMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/youku/gamecenter/download/DownloadInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 59
    const-wide/32 v0, 0xa4cb800

    sput-wide v0, Lcom/youku/gamecenter/download/DownloadManager;->SILENT_TEMP_FILE_EXPIREDTIME:J

    .line 62
    const-string v0, "push_game_silent_install_toast"

    sput-object v0, Lcom/youku/gamecenter/download/DownloadManager;->SH_PUSH_GAME_SILENT_INSTALL_TOAST:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/youku/gamecenter/download/DownloadManager;->mIServiceConnected:Ljava/util/List;

    .line 68
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/youku/gamecenter/download/DownloadManager;->mAllowedDownloadToast:Z

    .line 474
    new-instance v4, Lcom/youku/gamecenter/download/DownloadManager$ManagerConnnection;

    invoke-direct {v4, p0}, Lcom/youku/gamecenter/download/DownloadManager$ManagerConnnection;-><init>(Lcom/youku/gamecenter/download/DownloadManager;)V

    iput-object v4, p0, Lcom/youku/gamecenter/download/DownloadManager;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 73
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    sput-object v4, Lcom/youku/gamecenter/download/DownloadManager;->mContext:Landroid/content/Context;

    .line 74
    new-instance v4, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v4, p0, Lcom/youku/gamecenter/download/DownloadManager;->mHandler:Landroid/os/Handler;

    .line 75
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/youku/gamecenter/download/DownloadManager;->mDownloadMap:Ljava/util/Map;

    .line 76
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/youku/gamecenter/download/DownloadManager;->mSilentMap:Ljava/util/Map;

    .line 77
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/youku/gamecenter/download/DownloadManager;->mGameSilentMap:Ljava/util/Map;

    .line 78
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/youku/gamecenter/download/DownloadManager;->mUpSilentMap:Ljava/util/Map;

    .line 80
    :try_start_0
    invoke-static {p1}, Lcom/youku/gamecenter/download/SQLManager;->getSQLManager(Landroid/content/Context;)Lcom/youku/gamecenter/download/SQLManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/youku/gamecenter/download/SQLManager;->getAll()Ljava/util/List;

    move-result-object v1

    .line 82
    .local v1, "downloadingList":Ljava/util/List;, "Ljava/util/List<Lcom/youku/gamecenter/download/DownloadInfo;>;"
    if-eqz v1, :cond_0

    .line 83
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/gamecenter/download/DownloadInfo;

    .line 84
    .local v0, "downloadInfo":Lcom/youku/gamecenter/download/DownloadInfo;
    iget v4, v0, Lcom/youku/gamecenter/download/DownloadInfo;->mType:I

    packed-switch v4, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 86
    :pswitch_1
    iget-object v4, p0, Lcom/youku/gamecenter/download/DownloadManager;->mDownloadMap:Ljava/util/Map;

    iget-object v5, v0, Lcom/youku/gamecenter/download/DownloadInfo;->mDownloadUrl:Ljava/lang/String;

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 107
    .end local v0    # "downloadInfo":Lcom/youku/gamecenter/download/DownloadInfo;
    .end local v1    # "downloadingList":Ljava/util/List;, "Ljava/util/List<Lcom/youku/gamecenter/download/DownloadInfo;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v2

    .line 108
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 110
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    invoke-direct {p0}, Lcom/youku/gamecenter/download/DownloadManager;->getFromService()V

    .line 111
    return-void

    .line 90
    .restart local v0    # "downloadInfo":Lcom/youku/gamecenter/download/DownloadInfo;
    .restart local v1    # "downloadingList":Ljava/util/List;, "Ljava/util/List<Lcom/youku/gamecenter/download/DownloadInfo;>;"
    .restart local v3    # "i$":Ljava/util/Iterator;
    :pswitch_2
    :try_start_1
    iget-object v4, p0, Lcom/youku/gamecenter/download/DownloadManager;->mDownloadMap:Ljava/util/Map;

    iget-object v5, v0, Lcom/youku/gamecenter/download/DownloadInfo;->mDownloadUrl:Ljava/lang/String;

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 94
    :pswitch_3
    iget-object v4, p0, Lcom/youku/gamecenter/download/DownloadManager;->mSilentMap:Ljava/util/Map;

    iget-object v5, v0, Lcom/youku/gamecenter/download/DownloadInfo;->mDownloadUrl:Ljava/lang/String;

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 97
    :pswitch_4
    iget-object v4, p0, Lcom/youku/gamecenter/download/DownloadManager;->mGameSilentMap:Ljava/util/Map;

    iget-object v5, v0, Lcom/youku/gamecenter/download/DownloadInfo;->mDownloadUrl:Ljava/lang/String;

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 101
    :pswitch_5
    iget-object v4, p0, Lcom/youku/gamecenter/download/DownloadManager;->mUpSilentMap:Ljava/util/Map;

    iget-object v5, v0, Lcom/youku/gamecenter/download/DownloadInfo;->mDownloadUrl:Ljava/lang/String;

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 84
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_2
    .end packed-switch
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/youku/gamecenter/download/DownloadManager$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Context;
    .param p2, "x1"    # Lcom/youku/gamecenter/download/DownloadManager$1;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/youku/gamecenter/download/DownloadManager;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000()Landroid/content/Context;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/youku/gamecenter/download/DownloadManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/youku/gamecenter/download/DownloadManager;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/youku/gamecenter/download/DownloadManager;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/youku/gamecenter/download/DownloadManager;->mUpSilentMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/youku/gamecenter/download/DownloadManager;Lcom/youku/gamecenter/download/DownloadInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/gamecenter/download/DownloadManager;
    .param p1, "x1"    # Lcom/youku/gamecenter/download/DownloadInfo;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/youku/gamecenter/download/DownloadManager;->sendTrackStart(Lcom/youku/gamecenter/download/DownloadInfo;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/youku/gamecenter/download/DownloadManager;Ljava/util/Map;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/gamecenter/download/DownloadManager;
    .param p1, "x1"    # Ljava/util/Map;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/youku/gamecenter/download/DownloadManager;->toastStartDownloadMessage(Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/youku/gamecenter/download/DownloadManager;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/gamecenter/download/DownloadManager;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/youku/gamecenter/download/DownloadManager;->processStateUpdate(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/youku/gamecenter/download/DownloadManager;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/gamecenter/download/DownloadManager;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/youku/gamecenter/download/DownloadManager;->processStatePending(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$1502(Lcom/youku/gamecenter/download/DownloadManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/youku/gamecenter/download/DownloadManager;
    .param p1, "x1"    # Z

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/youku/gamecenter/download/DownloadManager;->mAllowedDownloadToast:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/youku/gamecenter/download/DownloadManager;Lcom/youku/gamecenter/download/DownloadInfo;I)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/gamecenter/download/DownloadManager;
    .param p1, "x1"    # Lcom/youku/gamecenter/download/DownloadInfo;
    .param p2, "x2"    # I

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/youku/gamecenter/download/DownloadManager;->sendMessage(Lcom/youku/gamecenter/download/DownloadInfo;I)V

    return-void
.end method

.method static synthetic access$200(Lcom/youku/gamecenter/download/DownloadManager;)Landroid/os/Messenger;
    .locals 1
    .param p0, "x0"    # Lcom/youku/gamecenter/download/DownloadManager;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/youku/gamecenter/download/DownloadManager;->mMessenger:Landroid/os/Messenger;

    return-object v0
.end method

.method static synthetic access$300(Lcom/youku/gamecenter/download/DownloadManager;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/youku/gamecenter/download/DownloadManager;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/youku/gamecenter/download/DownloadManager;->mIServiceConnected:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400(Lcom/youku/gamecenter/download/DownloadManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/youku/gamecenter/download/DownloadManager;

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/youku/gamecenter/download/DownloadManager;->isNeedSendContinue:Z

    return v0
.end method

.method static synthetic access$500(Lcom/youku/gamecenter/download/DownloadManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/gamecenter/download/DownloadManager;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/youku/gamecenter/download/DownloadManager;->sendAdvContinue()V

    return-void
.end method

.method static synthetic access$600(Lcom/youku/gamecenter/download/DownloadManager;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/youku/gamecenter/download/DownloadManager;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/youku/gamecenter/download/DownloadManager;->mDownloadMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$700(Lcom/youku/gamecenter/download/DownloadManager;)Lcom/youku/gamecenter/download/IDownloadUpdate;
    .locals 1
    .param p0, "x0"    # Lcom/youku/gamecenter/download/DownloadManager;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/youku/gamecenter/download/DownloadManager;->mIDownloadUpdate:Lcom/youku/gamecenter/download/IDownloadUpdate;

    return-object v0
.end method

.method static synthetic access$800(Lcom/youku/gamecenter/download/DownloadManager;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/youku/gamecenter/download/DownloadManager;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/youku/gamecenter/download/DownloadManager;->mSilentMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$900(Lcom/youku/gamecenter/download/DownloadManager;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/youku/gamecenter/download/DownloadManager;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/youku/gamecenter/download/DownloadManager;->mGameSilentMap:Ljava/util/Map;

    return-object v0
.end method

.method private checkGameSilentMap()V
    .locals 6

    .prologue
    .line 1168
    iget-object v3, p0, Lcom/youku/gamecenter/download/DownloadManager;->mGameSilentMap:Ljava/util/Map;

    if-nez v3, :cond_0

    .line 1169
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/youku/gamecenter/download/DownloadManager;->mGameSilentMap:Ljava/util/Map;

    .line 1172
    :cond_0
    iget-object v3, p0, Lcom/youku/gamecenter/download/DownloadManager;->mGameSilentMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 1174
    const/4 v3, 0x3

    const/4 v4, 0x1

    :try_start_0
    invoke-virtual {p0, v3, v4}, Lcom/youku/gamecenter/download/DownloadManager;->getSilentInfosFromSQL(IZ)Ljava/util/List;

    move-result-object v2

    .line 1176
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/youku/gamecenter/download/DownloadInfo;>;"
    if-eqz v2, :cond_1

    .line 1177
    const-string v3, "DownloadManager"

    const-string v4, "get mGameSilentMap from SQL"

    invoke-static {v3, v4}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1178
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 1179
    iget-object v4, p0, Lcom/youku/gamecenter/download/DownloadManager;->mGameSilentMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/youku/gamecenter/download/DownloadInfo;

    iget-object v3, v3, Lcom/youku/gamecenter/download/DownloadInfo;->mDownloadUrl:Ljava/lang/String;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1178
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1184
    .end local v1    # "i":I
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/youku/gamecenter/download/DownloadInfo;>;"
    :catch_0
    move-exception v0

    .line 1185
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1190
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    return-void
.end method

.method private checkUpSilentMap()V
    .locals 6

    .prologue
    .line 1195
    iget-object v3, p0, Lcom/youku/gamecenter/download/DownloadManager;->mUpSilentMap:Ljava/util/Map;

    if-nez v3, :cond_0

    .line 1196
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/youku/gamecenter/download/DownloadManager;->mUpSilentMap:Ljava/util/Map;

    .line 1199
    :cond_0
    iget-object v3, p0, Lcom/youku/gamecenter/download/DownloadManager;->mUpSilentMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 1201
    const/4 v3, 0x4

    const/4 v4, 0x1

    :try_start_0
    invoke-virtual {p0, v3, v4}, Lcom/youku/gamecenter/download/DownloadManager;->getSilentInfosFromSQL(IZ)Ljava/util/List;

    move-result-object v2

    .line 1203
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/youku/gamecenter/download/DownloadInfo;>;"
    if-eqz v2, :cond_1

    .line 1204
    const-string v3, "DownloadManager"

    const-string v4, "get mUpSilentMap from SQL"

    invoke-static {v3, v4}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1205
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 1206
    iget-object v4, p0, Lcom/youku/gamecenter/download/DownloadManager;->mUpSilentMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/youku/gamecenter/download/DownloadInfo;

    iget-object v3, v3, Lcom/youku/gamecenter/download/DownloadInfo;->mDownloadUrl:Ljava/lang/String;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1205
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1210
    .end local v1    # "i":I
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/youku/gamecenter/download/DownloadInfo;>;"
    :catch_0
    move-exception v0

    .line 1211
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1216
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    return-void
.end method

.method private delete(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "needCallback"    # Z

    .prologue
    .line 917
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/youku/gamecenter/download/DownloadManager;->delete(Ljava/lang/String;ZZ)V

    .line 918
    return-void
.end method

.method private delete(Ljava/lang/String;ZZ)V
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "needCallback"    # Z
    .param p3, "removeDB"    # Z

    .prologue
    .line 928
    iget-object v3, p0, Lcom/youku/gamecenter/download/DownloadManager;->mDownloadMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/youku/gamecenter/download/DownloadManager;->mGameSilentMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/youku/gamecenter/download/DownloadManager;->mUpSilentMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 930
    :cond_0
    const/4 v0, 0x0

    .line 931
    .local v0, "downloadInfo":Lcom/youku/gamecenter/download/DownloadInfo;
    iget-object v3, p0, Lcom/youku/gamecenter/download/DownloadManager;->mDownloadMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 932
    iget-object v3, p0, Lcom/youku/gamecenter/download/DownloadManager;->mDownloadMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "downloadInfo":Lcom/youku/gamecenter/download/DownloadInfo;
    check-cast v0, Lcom/youku/gamecenter/download/DownloadInfo;

    .line 933
    .restart local v0    # "downloadInfo":Lcom/youku/gamecenter/download/DownloadInfo;
    iget-object v3, p0, Lcom/youku/gamecenter/download/DownloadManager;->mDownloadMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 942
    :cond_1
    :goto_0
    if-eqz v0, :cond_6

    .line 943
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 944
    .local v2, "msg":Landroid/os/Message;
    const/4 v3, 0x6

    iput v3, v2, Landroid/os/Message;->what:I

    .line 945
    invoke-static {v2, v0}, Lcom/youku/gamecenter/download/DownloadServiceMessage;->putDownloadInfoToMsg(Landroid/os/Message;Lcom/youku/gamecenter/download/DownloadInfo;)V

    .line 947
    :try_start_0
    iget-object v3, p0, Lcom/youku/gamecenter/download/DownloadManager;->mMessenger:Landroid/os/Messenger;

    if-eqz v3, :cond_2

    .line 948
    iget-object v3, p0, Lcom/youku/gamecenter/download/DownloadManager;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {v3, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 953
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/youku/gamecenter/download/DownloadManager;->mIDownloadUpdate:Lcom/youku/gamecenter/download/IDownloadUpdate;

    if-eqz v3, :cond_3

    if-eqz p2, :cond_3

    .line 954
    iget-object v3, p0, Lcom/youku/gamecenter/download/DownloadManager;->mIDownloadUpdate:Lcom/youku/gamecenter/download/IDownloadUpdate;

    iget-object v4, v0, Lcom/youku/gamecenter/download/DownloadInfo;->mPackageName:Ljava/lang/String;

    invoke-interface {v3, v4}, Lcom/youku/gamecenter/download/IDownloadUpdate;->onDelete(Ljava/lang/String;)V

    .line 962
    .end local v0    # "downloadInfo":Lcom/youku/gamecenter/download/DownloadInfo;
    .end local v2    # "msg":Landroid/os/Message;
    :cond_3
    :goto_2
    return-void

    .line 934
    .restart local v0    # "downloadInfo":Lcom/youku/gamecenter/download/DownloadInfo;
    :cond_4
    iget-object v3, p0, Lcom/youku/gamecenter/download/DownloadManager;->mGameSilentMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 935
    iget-object v3, p0, Lcom/youku/gamecenter/download/DownloadManager;->mGameSilentMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "downloadInfo":Lcom/youku/gamecenter/download/DownloadInfo;
    check-cast v0, Lcom/youku/gamecenter/download/DownloadInfo;

    .line 936
    .restart local v0    # "downloadInfo":Lcom/youku/gamecenter/download/DownloadInfo;
    iget-object v3, p0, Lcom/youku/gamecenter/download/DownloadManager;->mGameSilentMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 937
    :cond_5
    iget-object v3, p0, Lcom/youku/gamecenter/download/DownloadManager;->mUpSilentMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 938
    iget-object v3, p0, Lcom/youku/gamecenter/download/DownloadManager;->mUpSilentMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "downloadInfo":Lcom/youku/gamecenter/download/DownloadInfo;
    check-cast v0, Lcom/youku/gamecenter/download/DownloadInfo;

    .line 939
    .restart local v0    # "downloadInfo":Lcom/youku/gamecenter/download/DownloadInfo;
    iget-object v3, p0, Lcom/youku/gamecenter/download/DownloadManager;->mUpSilentMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 949
    .restart local v2    # "msg":Landroid/os/Message;
    :catch_0
    move-exception v1

    .line 950
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "DownloadManager"

    const-string/jumbo v4, "service dead when delete"

    invoke-static {v3, v4}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 951
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 958
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "msg":Landroid/os/Message;
    :cond_6
    const-string v3, "DownloadManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "delete without a url:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 961
    .end local v0    # "downloadInfo":Lcom/youku/gamecenter/download/DownloadInfo;
    :cond_7
    const-string v3, "DownloadManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "delete without a url:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private deleteOlderApkDownload(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "versionName"    # Ljava/lang/String;

    .prologue
    .line 1316
    iget-object v0, p0, Lcom/youku/gamecenter/download/DownloadManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/youku/gamecenter/download/DownloadManager$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/youku/gamecenter/download/DownloadManager$5;-><init>(Lcom/youku/gamecenter/download/DownloadManager;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1335
    return-void
.end method

.method private deleteOldestGameDownload()V
    .locals 2

    .prologue
    .line 1251
    iget-object v0, p0, Lcom/youku/gamecenter/download/DownloadManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/youku/gamecenter/download/DownloadManager$3;

    invoke-direct {v1, p0}, Lcom/youku/gamecenter/download/DownloadManager$3;-><init>(Lcom/youku/gamecenter/download/DownloadManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1284
    return-void
.end method

.method private deleteSilentDownloadInfo(Ljava/lang/String;)V
    .locals 5
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 223
    const-string v1, "GameCenter"

    const-string v2, "WIRELESS-31820: deleteSilentDownloadInfo"

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    invoke-direct {p0}, Lcom/youku/gamecenter/download/DownloadManager;->checkGameSilentMap()V

    .line 225
    invoke-direct {p0}, Lcom/youku/gamecenter/download/DownloadManager;->checkUpSilentMap()V

    .line 226
    const/4 v0, 0x0

    .line 227
    .local v0, "info":Lcom/youku/gamecenter/download/DownloadInfo;
    iget-object v1, p0, Lcom/youku/gamecenter/download/DownloadManager;->mGameSilentMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 228
    iget-object v1, p0, Lcom/youku/gamecenter/download/DownloadManager;->mGameSilentMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "info":Lcom/youku/gamecenter/download/DownloadInfo;
    check-cast v0, Lcom/youku/gamecenter/download/DownloadInfo;

    .line 229
    .restart local v0    # "info":Lcom/youku/gamecenter/download/DownloadInfo;
    iget-object v1, p0, Lcom/youku/gamecenter/download/DownloadManager;->mGameSilentMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    :cond_0
    iget-object v1, p0, Lcom/youku/gamecenter/download/DownloadManager;->mUpSilentMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 232
    iget-object v1, p0, Lcom/youku/gamecenter/download/DownloadManager;->mUpSilentMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "info":Lcom/youku/gamecenter/download/DownloadInfo;
    check-cast v0, Lcom/youku/gamecenter/download/DownloadInfo;

    .line 233
    .restart local v0    # "info":Lcom/youku/gamecenter/download/DownloadInfo;
    iget-object v1, p0, Lcom/youku/gamecenter/download/DownloadManager;->mUpSilentMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    :cond_1
    if-eqz v0, :cond_4

    .line 236
    iget v1, v0, Lcom/youku/gamecenter/download/DownloadInfo;->mState:I

    if-eq v1, v4, :cond_2

    .line 237
    iput v3, v0, Lcom/youku/gamecenter/download/DownloadInfo;->mState:I

    .line 238
    iput v3, v0, Lcom/youku/gamecenter/download/DownloadInfo;->mDownloadWay:I

    .line 239
    sget-object v1, Lcom/youku/gamecenter/download/DownloadManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/youku/gamecenter/download/SQLManager;->getSQLManager(Landroid/content/Context;)Lcom/youku/gamecenter/download/SQLManager;

    move-result-object v1

    invoke-virtual {v1, p1, v3}, Lcom/youku/gamecenter/download/SQLManager;->updateDownloadWay(Ljava/lang/String;I)V

    .line 241
    iput v3, v0, Lcom/youku/gamecenter/download/DownloadInfo;->mType:I

    .line 242
    invoke-virtual {p0, v0, v3}, Lcom/youku/gamecenter/download/DownloadManager;->changeDownloadTypeFromSQL(Lcom/youku/gamecenter/download/DownloadInfo;I)V

    .line 245
    :cond_2
    iget v1, v0, Lcom/youku/gamecenter/download/DownloadInfo;->mType:I

    if-ne v1, v4, :cond_3

    .line 246
    invoke-virtual {p0, v0, v3}, Lcom/youku/gamecenter/download/DownloadManager;->changeDownloadTypeFromSQL(Lcom/youku/gamecenter/download/DownloadInfo;I)V

    .line 248
    iput v3, v0, Lcom/youku/gamecenter/download/DownloadInfo;->mType:I

    .line 250
    :cond_3
    iget-object v1, p0, Lcom/youku/gamecenter/download/DownloadManager;->mDownloadMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    :cond_4
    return-void
.end method

.method private deleteTaskFromMap(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 890
    iget-object v0, p0, Lcom/youku/gamecenter/download/DownloadManager;->mDownloadMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 891
    iget-object v0, p0, Lcom/youku/gamecenter/download/DownloadManager;->mDownloadMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 905
    :cond_0
    :goto_0
    return-void

    .line 895
    :cond_1
    iget-object v0, p0, Lcom/youku/gamecenter/download/DownloadManager;->mGameSilentMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 896
    iget-object v0, p0, Lcom/youku/gamecenter/download/DownloadManager;->mGameSilentMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 900
    :cond_2
    iget-object v0, p0, Lcom/youku/gamecenter/download/DownloadManager;->mUpSilentMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 901
    iget-object v0, p0, Lcom/youku/gamecenter/download/DownloadManager;->mUpSilentMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private getDownloadInfoFromList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/youku/gamecenter/download/DownloadInfo;
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "icon"    # Ljava/lang/String;
    .param p5, "version"    # I
    .param p6, "source"    # Ljava/lang/String;
    .param p7, "gameId"    # Ljava/lang/String;
    .param p8, "statistics"    # Ljava/lang/String;
    .param p9, "is_app"    # I

    .prologue
    const/4 v4, 0x0

    .line 203
    iget-object v2, p0, Lcom/youku/gamecenter/download/DownloadManager;->mDownloadMap:Ljava/util/Map;

    invoke-interface {v2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 204
    iget-object v2, p0, Lcom/youku/gamecenter/download/DownloadManager;->mDownloadMap:Ljava/util/Map;

    invoke-interface {v2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/gamecenter/download/DownloadInfo;

    .line 216
    :goto_0
    return-object v2

    .line 206
    :cond_0
    new-instance v2, Lcom/youku/gamecenter/download/DownloadInfo$Builder;

    invoke-direct {v2}, Lcom/youku/gamecenter/download/DownloadInfo$Builder;-><init>()V

    invoke-virtual {v2, p1}, Lcom/youku/gamecenter/download/DownloadInfo$Builder;->setPackageName(Ljava/lang/String;)Lcom/youku/gamecenter/download/DownloadInfo$Builder;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/youku/gamecenter/download/DownloadInfo$Builder;->setTitle(Ljava/lang/String;)Lcom/youku/gamecenter/download/DownloadInfo$Builder;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/youku/gamecenter/download/DownloadInfo$Builder;->setUrl(Ljava/lang/String;)Lcom/youku/gamecenter/download/DownloadInfo$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/youku/gamecenter/download/DownloadInfo$Builder;->setProgress(I)Lcom/youku/gamecenter/download/DownloadInfo$Builder;

    move-result-object v2

    invoke-virtual {v2, p5}, Lcom/youku/gamecenter/download/DownloadInfo$Builder;->setVersion(I)Lcom/youku/gamecenter/download/DownloadInfo$Builder;

    move-result-object v2

    invoke-virtual {v2, p4}, Lcom/youku/gamecenter/download/DownloadInfo$Builder;->setIcon(Ljava/lang/String;)Lcom/youku/gamecenter/download/DownloadInfo$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/youku/gamecenter/download/DownloadInfo$Builder;->setDownloadDuration(I)Lcom/youku/gamecenter/download/DownloadInfo$Builder;

    move-result-object v2

    invoke-virtual {v2, p6}, Lcom/youku/gamecenter/download/DownloadInfo$Builder;->setSource(Ljava/lang/String;)Lcom/youku/gamecenter/download/DownloadInfo$Builder;

    move-result-object v2

    invoke-virtual {v2, p7}, Lcom/youku/gamecenter/download/DownloadInfo$Builder;->setId(Ljava/lang/String;)Lcom/youku/gamecenter/download/DownloadInfo$Builder;

    move-result-object v2

    invoke-virtual {v2, p8}, Lcom/youku/gamecenter/download/DownloadInfo$Builder;->setStatistic(Ljava/lang/String;)Lcom/youku/gamecenter/download/DownloadInfo$Builder;

    move-result-object v2

    invoke-static {}, Lcom/youku/gamecenter/util/CommonUtils;->getCurrentTime()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/youku/gamecenter/download/DownloadInfo$Builder;->setLastModified(Ljava/lang/String;)Lcom/youku/gamecenter/download/DownloadInfo$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/youku/gamecenter/download/DownloadInfo$Builder;->setDownloadWay(I)Lcom/youku/gamecenter/download/DownloadInfo$Builder;

    move-result-object v0

    .line 213
    .local v0, "bl":Lcom/youku/gamecenter/download/DownloadInfo$Builder;
    const/4 v2, 0x1

    if-ne p9, v2, :cond_1

    .line 214
    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Lcom/youku/gamecenter/download/DownloadInfo$Builder;->setType(I)Lcom/youku/gamecenter/download/DownloadInfo$Builder;

    .line 215
    :cond_1
    invoke-virtual {v0}, Lcom/youku/gamecenter/download/DownloadInfo$Builder;->build()Lcom/youku/gamecenter/download/DownloadInfo;

    move-result-object v1

    .local v1, "downloadInfo":Lcom/youku/gamecenter/download/DownloadInfo;
    move-object v2, v1

    .line 216
    goto :goto_0
.end method

.method private getFromService()V
    .locals 4

    .prologue
    .line 428
    const-string v1, "DownloadManager"

    const-string v2, "bindService"

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/youku/gamecenter/download/DownloadManager;->mContext:Landroid/content/Context;

    const-class v2, Lcom/youku/gamecenter/download/DownloadingService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 430
    .local v0, "intent":Landroid/content/Intent;
    sget-object v1, Lcom/youku/gamecenter/download/DownloadManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/youku/gamecenter/download/DownloadManager;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 432
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/youku/gamecenter/download/DownloadManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 119
    sget-object v0, Lcom/youku/gamecenter/download/DownloadManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 120
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/youku/gamecenter/download/DownloadManager;->mContext:Landroid/content/Context;

    .line 121
    :cond_0
    sget-object v0, Lcom/youku/gamecenter/download/DownloadManager$SingletonHolder;->INSTANCE:Lcom/youku/gamecenter/download/DownloadManager;

    return-object v0
.end method

.method private isDownloaded(Ljava/lang/String;)Z
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 792
    iget-object v0, p0, Lcom/youku/gamecenter/download/DownloadManager;->mDownloadMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/gamecenter/download/DownloadManager;->mDownloadMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/gamecenter/download/DownloadInfo;

    iget v0, v0, Lcom/youku/gamecenter/download/DownloadInfo;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 794
    const/4 v0, 0x1

    .line 796
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isExistDownList(Lcom/youku/gamecenter/download/DownloadInfo;)Z
    .locals 7
    .param p1, "info"    # Lcom/youku/gamecenter/download/DownloadInfo;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1223
    iget-object v5, p0, Lcom/youku/gamecenter/download/DownloadManager;->mDownloadMap:Ljava/util/Map;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/youku/gamecenter/download/DownloadManager;->mDownloadMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 1224
    iget-object v5, p0, Lcom/youku/gamecenter/download/DownloadManager;->mDownloadMap:Ljava/util/Map;

    iget-object v6, p1, Lcom/youku/gamecenter/download/DownloadInfo;->mDownloadUrl:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1246
    :cond_0
    :goto_0
    return v3

    .line 1228
    :cond_1
    sget-object v5, Lcom/youku/gamecenter/download/DownloadManager;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/youku/gamecenter/download/SQLManager;->getSQLManager(Landroid/content/Context;)Lcom/youku/gamecenter/download/SQLManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/youku/gamecenter/download/SQLManager;->getAll()Ljava/util/List;

    move-result-object v1

    .line 1230
    .local v1, "downloadList":Ljava/util/List;, "Ljava/util/List<Lcom/youku/gamecenter/download/DownloadInfo;>;"
    if-eqz v1, :cond_4

    .line 1231
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/gamecenter/download/DownloadInfo;

    .line 1232
    .local v0, "downloadInfo":Lcom/youku/gamecenter/download/DownloadInfo;
    iget v5, v0, Lcom/youku/gamecenter/download/DownloadInfo;->mType:I

    if-nez v5, :cond_2

    .line 1233
    iget v5, p1, Lcom/youku/gamecenter/download/DownloadInfo;->mType:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_3

    iget-object v5, v0, Lcom/youku/gamecenter/download/DownloadInfo;->mPackageName:Ljava/lang/String;

    iget-object v6, p1, Lcom/youku/gamecenter/download/DownloadInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1237
    :cond_3
    iget-object v5, v0, Lcom/youku/gamecenter/download/DownloadInfo;->mDownloadUrl:Ljava/lang/String;

    iget-object v6, p1, Lcom/youku/gamecenter/download/DownloadInfo;->mDownloadUrl:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_0

    .end local v0    # "downloadInfo":Lcom/youku/gamecenter/download/DownloadInfo;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_4
    move v3, v4

    .line 1243
    goto :goto_0

    .end local v1    # "downloadList":Ljava/util/List;, "Ljava/util/List<Lcom/youku/gamecenter/download/DownloadInfo;>;"
    :cond_5
    move v3, v4

    .line 1246
    goto :goto_0
.end method

.method private isPendingStatus(Lcom/youku/gamecenter/download/DownloadInfo;)Z
    .locals 3
    .param p1, "downloadInfo"    # Lcom/youku/gamecenter/download/DownloadInfo;

    .prologue
    const/4 v0, 0x0

    .line 781
    if-nez p1, :cond_1

    .line 787
    :cond_0
    :goto_0
    return v0

    .line 784
    :cond_1
    iget v1, p1, Lcom/youku/gamecenter/download/DownloadInfo;->mState:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    .line 785
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private processStatePending(Landroid/os/Message;)V
    .locals 5
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 643
    invoke-static {p1}, Lcom/youku/gamecenter/download/DownloadServiceMessage;->getDownloadInfoFromMsg(Landroid/os/Message;)Lcom/youku/gamecenter/download/DownloadInfo;

    move-result-object v0

    .line 646
    .local v0, "downloadedInfo":Lcom/youku/gamecenter/download/DownloadInfo;
    if-nez v0, :cond_1

    .line 674
    :cond_0
    :goto_0
    return-void

    .line 650
    :cond_1
    iget v2, v0, Lcom/youku/gamecenter/download/DownloadInfo;->mType:I

    if-nez v2, :cond_0

    .line 654
    iget v2, v0, Lcom/youku/gamecenter/download/DownloadInfo;->mProgress:I

    if-nez v2, :cond_2

    .line 655
    sget-object v2, Lcom/youku/gamecenter/download/DownloadManager;->mContext:Landroid/content/Context;

    sget v3, Lcom/youku/gamecenter/R$string;->game_center_tip_download_start:I

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 659
    :cond_2
    iget-object v2, p0, Lcom/youku/gamecenter/download/DownloadManager;->mDownloadMap:Ljava/util/Map;

    iget-object v3, v0, Lcom/youku/gamecenter/download/DownloadInfo;->mDownloadUrl:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 660
    iget-object v2, p0, Lcom/youku/gamecenter/download/DownloadManager;->mDownloadMap:Ljava/util/Map;

    iget-object v3, v0, Lcom/youku/gamecenter/download/DownloadInfo;->mDownloadUrl:Ljava/lang/String;

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 663
    :cond_3
    iget-object v2, p0, Lcom/youku/gamecenter/download/DownloadManager;->mDownloadMap:Ljava/util/Map;

    iget-object v3, v0, Lcom/youku/gamecenter/download/DownloadInfo;->mDownloadUrl:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/gamecenter/download/DownloadInfo;

    .line 665
    .local v1, "mapInfo":Lcom/youku/gamecenter/download/DownloadInfo;
    if-eqz v1, :cond_4

    .line 666
    iget v2, v0, Lcom/youku/gamecenter/download/DownloadInfo;->mState:I

    iput v2, v1, Lcom/youku/gamecenter/download/DownloadInfo;->mState:I

    .line 667
    iget v2, v0, Lcom/youku/gamecenter/download/DownloadInfo;->mNotificationID:I

    iput v2, v1, Lcom/youku/gamecenter/download/DownloadInfo;->mNotificationID:I

    .line 670
    :cond_4
    iget-object v2, p0, Lcom/youku/gamecenter/download/DownloadManager;->mIDownloadUpdate:Lcom/youku/gamecenter/download/IDownloadUpdate;

    if-eqz v2, :cond_0

    .line 671
    iget-object v2, p0, Lcom/youku/gamecenter/download/DownloadManager;->mIDownloadUpdate:Lcom/youku/gamecenter/download/IDownloadUpdate;

    invoke-interface {v2, v0}, Lcom/youku/gamecenter/download/IDownloadUpdate;->onPending(Lcom/youku/gamecenter/download/DownloadInfo;)V

    goto :goto_0
.end method

.method private processStateUpdate(Landroid/os/Message;)V
    .locals 11
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 703
    invoke-static {p1}, Lcom/youku/gamecenter/download/DownloadServiceMessage;->getDownloadInfoFromMsg(Landroid/os/Message;)Lcom/youku/gamecenter/download/DownloadInfo;

    move-result-object v9

    .line 705
    .local v9, "info":Lcom/youku/gamecenter/download/DownloadInfo;
    iget-object v0, p0, Lcom/youku/gamecenter/download/DownloadManager;->mDownloadMap:Ljava/util/Map;

    iget-object v1, v9, Lcom/youku/gamecenter/download/DownloadInfo;->mDownloadUrl:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/youku/gamecenter/download/DownloadInfo;

    .line 706
    .local v10, "mapInfo":Lcom/youku/gamecenter/download/DownloadInfo;
    if-nez v10, :cond_1

    .line 717
    :cond_0
    :goto_0
    return-void

    .line 708
    :cond_1
    iget v0, v9, Lcom/youku/gamecenter/download/DownloadInfo;->mProgress:I

    iput v0, v10, Lcom/youku/gamecenter/download/DownloadInfo;->mProgress:I

    .line 709
    iget v0, v9, Lcom/youku/gamecenter/download/DownloadInfo;->mState:I

    iput v0, v10, Lcom/youku/gamecenter/download/DownloadInfo;->mState:I

    .line 710
    iget-wide v0, v9, Lcom/youku/gamecenter/download/DownloadInfo;->mSize:J

    iput-wide v0, v10, Lcom/youku/gamecenter/download/DownloadInfo;->mSize:J

    .line 711
    iget v0, v9, Lcom/youku/gamecenter/download/DownloadInfo;->mDownloadVelocity:I

    iput v0, v10, Lcom/youku/gamecenter/download/DownloadInfo;->mDownloadVelocity:I

    .line 712
    iget-wide v0, v9, Lcom/youku/gamecenter/download/DownloadInfo;->mCurrentLength:J

    iput-wide v0, v10, Lcom/youku/gamecenter/download/DownloadInfo;->mCurrentLength:J

    .line 713
    iget-object v0, p0, Lcom/youku/gamecenter/download/DownloadManager;->mIDownloadUpdate:Lcom/youku/gamecenter/download/IDownloadUpdate;

    if-eqz v0, :cond_0

    .line 714
    iget-object v0, p0, Lcom/youku/gamecenter/download/DownloadManager;->mIDownloadUpdate:Lcom/youku/gamecenter/download/IDownloadUpdate;

    iget-object v1, v10, Lcom/youku/gamecenter/download/DownloadInfo;->mPackageName:Ljava/lang/String;

    iget v2, v10, Lcom/youku/gamecenter/download/DownloadInfo;->mProgress:I

    iget v3, v10, Lcom/youku/gamecenter/download/DownloadInfo;->mState:I

    iget-wide v4, v10, Lcom/youku/gamecenter/download/DownloadInfo;->mSize:J

    iget v6, v10, Lcom/youku/gamecenter/download/DownloadInfo;->mDownloadVelocity:I

    iget-wide v7, v10, Lcom/youku/gamecenter/download/DownloadInfo;->mCurrentLength:J

    invoke-interface/range {v0 .. v8}, Lcom/youku/gamecenter/download/IDownloadUpdate;->onUpdate(Ljava/lang/String;IIJIJ)V

    goto :goto_0
.end method

.method private promptApkFileDeleted(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "gamename"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 908
    if-nez p1, :cond_0

    .line 914
    :goto_0
    return-void

    .line 911
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/youku/gamecenter/R$string;->game_apk_file_deleted:I

    new-array v3, v5, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 913
    .local v0, "prompt":Ljava/lang/String;
    invoke-static {p1, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private sendAdvContinue()V
    .locals 4

    .prologue
    .line 1003
    sget-object v2, Lcom/youku/gamecenter/download/DownloadManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/youku/gamecenter/util/SystemUtils;->isWifi(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1016
    :cond_0
    :goto_0
    return-void

    .line 1006
    :cond_1
    const/4 v2, 0x0

    const/4 v3, 0x7

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 1009
    .local v1, "msg":Landroid/os/Message;
    :try_start_0
    iget-object v2, p0, Lcom/youku/gamecenter/download/DownloadManager;->mMessenger:Landroid/os/Messenger;

    if-eqz v2, :cond_0

    .line 1010
    iget-object v2, p0, Lcom/youku/gamecenter/download/DownloadManager;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {v2, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    .line 1011
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/youku/gamecenter/download/DownloadManager;->isNeedSendContinue:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1013
    :catch_0
    move-exception v0

    .line 1014
    .local v0, "e1":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private sendMessage(Lcom/youku/gamecenter/download/DownloadInfo;I)V
    .locals 4
    .param p1, "downloadInfo"    # Lcom/youku/gamecenter/download/DownloadInfo;
    .param p2, "msg"    # I

    .prologue
    .line 1338
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 1339
    .local v1, "startMsg":Landroid/os/Message;
    iput p2, v1, Landroid/os/Message;->what:I

    .line 1340
    invoke-static {v1, p1}, Lcom/youku/gamecenter/download/DownloadServiceMessage;->putDownloadInfoToMsg(Landroid/os/Message;Lcom/youku/gamecenter/download/DownloadInfo;)V

    .line 1341
    iget-object v2, p0, Lcom/youku/gamecenter/download/DownloadManager;->mMessenger:Landroid/os/Messenger;

    if-eqz v2, :cond_0

    .line 1343
    :try_start_0
    iget-object v2, p0, Lcom/youku/gamecenter/download/DownloadManager;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {v2, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1357
    :goto_0
    return-void

    .line 1344
    :catch_0
    move-exception v0

    .line 1345
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1348
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    iget-object v2, p0, Lcom/youku/gamecenter/download/DownloadManager;->mIServiceConnected:Ljava/util/List;

    new-instance v3, Lcom/youku/gamecenter/download/DownloadManager$6;

    invoke-direct {v3, p0, p1, p2}, Lcom/youku/gamecenter/download/DownloadManager$6;-><init>(Lcom/youku/gamecenter/download/DownloadManager;Lcom/youku/gamecenter/download/DownloadInfo;I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1355
    const-string v2, "DownloadManager"

    const-string v3, "mMessenger = null !!!"

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private sendTrackStart(Lcom/youku/gamecenter/download/DownloadInfo;)V
    .locals 5
    .param p1, "info"    # Lcom/youku/gamecenter/download/DownloadInfo;

    .prologue
    .line 413
    sget-object v2, Lcom/youku/gamecenter/download/DownloadManager;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/youku/gamecenter/services/URLContainer;->DOWNLOAD_STATISTICS:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/youku/gamecenter/statistics/GameTrack;->setBaseParam(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 415
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

    .line 416
    iget-object v2, p1, Lcom/youku/gamecenter/download/DownloadInfo;->mSource:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 417
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

    .line 419
    :cond_0
    iget-object v2, p1, Lcom/youku/gamecenter/download/DownloadInfo;->mStatistic:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 420
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/youku/gamecenter/download/DownloadInfo;->mStatistic:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 421
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

    .line 422
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

    .line 423
    new-instance v0, Lcom/youku/gamecenter/statistics/GameStatisticsTask;

    sget-object v2, Lcom/youku/gamecenter/download/DownloadManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/youku/gamecenter/statistics/GameStatisticsTask;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    .line 424
    .local v0, "statistics":Lcom/youku/gamecenter/statistics/GameStatisticsTask;
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v2}, Lcom/youku/gamecenter/statistics/GameStatisticsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 425
    return-void
.end method

.method private startDownload(Lcom/youku/gamecenter/download/DownloadInfo;Z)V
    .locals 9
    .param p1, "downInfo"    # Lcom/youku/gamecenter/download/DownloadInfo;
    .param p2, "dialogShow"    # Z

    .prologue
    const/4 v8, 0x0

    .line 277
    move-object v7, p1

    .line 278
    .local v7, "downloadInfoForNotFree":Lcom/youku/gamecenter/download/DownloadInfo;
    iget v0, p1, Lcom/youku/gamecenter/download/DownloadInfo;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 279
    const-string v0, "GameCenter"

    const-string v1, "WIRELESS-31820: downInfo.mState == DownloadInfo.STATE_DOWNLOADED"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    sget-object v0, Lcom/youku/gamecenter/download/DownloadManager;->mContext:Landroid/content/Context;

    iget-object v1, p1, Lcom/youku/gamecenter/download/DownloadInfo;->mPackageName:Ljava/lang/String;

    iget v2, p1, Lcom/youku/gamecenter/download/DownloadInfo;->mVersion:I

    iget-object v3, p1, Lcom/youku/gamecenter/download/DownloadInfo;->mDownloadTitle:Ljava/lang/String;

    const/4 v4, 0x1

    iget-object v5, p1, Lcom/youku/gamecenter/download/DownloadInfo;->mDownloadUrl:Ljava/lang/String;

    iget-object v6, p1, Lcom/youku/gamecenter/download/DownloadInfo;->mId:Ljava/lang/String;

    invoke-static/range {v0 .. v6}, Lcom/youku/gamecenter/util/AppClickActionUtils;->handleOpenOrInstallApp(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    const-string v0, "GameCenter"

    const-string v1, "WIRELESS-31820: handleOpenOrInstallApp"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    :goto_0
    return-void

    .line 289
    :cond_0
    sget-object v0, Lcom/youku/gamecenter/download/DownloadManager;->mContext:Landroid/content/Context;

    sget v1, Lcom/youku/gamecenter/R$string;->game_center_no_sdcard:I

    invoke-static {v0, v1, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 294
    :cond_1
    invoke-static {}, Lcom/youku/gamecenter/util/SystemUtils;->isMounted()Z

    move-result v0

    if-nez v0, :cond_2

    .line 295
    sget-object v0, Lcom/youku/gamecenter/download/DownloadManager;->mContext:Landroid/content/Context;

    sget v1, Lcom/youku/gamecenter/R$string;->game_center_no_sdcard:I

    invoke-static {v0, v1, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 299
    :cond_2
    invoke-direct {p0, p1}, Lcom/youku/gamecenter/download/DownloadManager;->isPendingStatus(Lcom/youku/gamecenter/download/DownloadInfo;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 300
    sget-object v0, Lcom/youku/gamecenter/download/DownloadManager;->mContext:Landroid/content/Context;

    sget v1, Lcom/youku/gamecenter/R$string;->game_center_tip_download_start:I

    invoke-static {v0, v1, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 306
    :cond_3
    sget-object v0, Lcom/youku/gamecenter/download/DownloadManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/youku/gamecenter/util/SystemUtils;->isNetWorkAvaliable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 307
    invoke-virtual {p0, p1}, Lcom/youku/gamecenter/download/DownloadManager;->start(Lcom/youku/gamecenter/download/DownloadInfo;)V

    goto :goto_0

    .line 311
    :cond_4
    sget-object v0, Lcom/youku/gamecenter/download/DownloadManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/youku/gamecenter/util/SystemUtils;->isWifi(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_5

    if-eqz p2, :cond_6

    .line 312
    :cond_5
    invoke-virtual {p0, p1}, Lcom/youku/gamecenter/download/DownloadManager;->start(Lcom/youku/gamecenter/download/DownloadInfo;)V

    goto :goto_0

    .line 314
    :cond_6
    sget-object v0, Lcom/youku/gamecenter/download/DownloadManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/youku/gamecenter/util/AppClickActionUtils;->launchGameCenterDialogActivity(Landroid/content/Context;Lcom/youku/gamecenter/download/DownloadInfo;)V

    goto :goto_0
.end method

.method private toastStartDownloadMessage(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/youku/gamecenter/download/DownloadInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "downloadMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/youku/gamecenter/download/DownloadInfo;>;"
    const/4 v2, 0x0

    .line 679
    iget-boolean v0, p0, Lcom/youku/gamecenter/download/DownloadManager;->mAllowedDownloadToast:Z

    if-nez v0, :cond_0

    .line 700
    :goto_0
    return-void

    .line 683
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 684
    sget-object v0, Lcom/youku/gamecenter/download/DownloadManager;->mContext:Landroid/content/Context;

    sget v1, Lcom/youku/gamecenter/R$string;->game_center_first_download:I

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 690
    :goto_1
    iput-boolean v2, p0, Lcom/youku/gamecenter/download/DownloadManager;->mAllowedDownloadToast:Z

    .line 692
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/youku/gamecenter/download/DownloadManager$2;

    invoke-direct {v1, p0}, Lcom/youku/gamecenter/download/DownloadManager$2;-><init>(Lcom/youku/gamecenter/download/DownloadManager;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 687
    :cond_1
    sget-object v0, Lcom/youku/gamecenter/download/DownloadManager;->mContext:Landroid/content/Context;

    sget v1, Lcom/youku/gamecenter/R$string;->game_center_tip_download_start:I

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method


# virtual methods
.method public cancelDownload(Ljava/lang/String;)V
    .locals 7
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 807
    const-string v4, "DownloadManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cancel url:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 808
    sget-object v4, Lcom/youku/gamecenter/download/DownloadManager;->mContext:Landroid/content/Context;

    const-string v5, "notification"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 810
    .local v3, "notificationManager":Landroid/app/NotificationManager;
    iget-object v4, p0, Lcom/youku/gamecenter/download/DownloadManager;->mDownloadMap:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 811
    iget-object v4, p0, Lcom/youku/gamecenter/download/DownloadManager;->mDownloadMap:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/gamecenter/download/DownloadInfo;

    .line 812
    .local v0, "downloadInfo":Lcom/youku/gamecenter/download/DownloadInfo;
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 813
    .local v2, "msg":Landroid/os/Message;
    const/4 v4, 0x5

    iput v4, v2, Landroid/os/Message;->what:I

    .line 814
    invoke-static {v2, v0}, Lcom/youku/gamecenter/download/DownloadServiceMessage;->putDownloadInfoToMsg(Landroid/os/Message;Lcom/youku/gamecenter/download/DownloadInfo;)V

    .line 815
    iget v4, v0, Lcom/youku/gamecenter/download/DownloadInfo;->mNotificationID:I

    if-nez v4, :cond_2

    iget-object v4, v0, Lcom/youku/gamecenter/download/DownloadInfo;->mDownloadUrl:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    :goto_0
    invoke-virtual {v3, v4}, Landroid/app/NotificationManager;->cancel(I)V

    .line 819
    :try_start_0
    iget-object v4, p0, Lcom/youku/gamecenter/download/DownloadManager;->mMessenger:Landroid/os/Messenger;

    if-eqz v4, :cond_0

    .line 820
    iget-object v4, p0, Lcom/youku/gamecenter/download/DownloadManager;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {v4, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 825
    :cond_0
    :goto_1
    iget-object v4, p0, Lcom/youku/gamecenter/download/DownloadManager;->mDownloadMap:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 826
    iget-object v4, p0, Lcom/youku/gamecenter/download/DownloadManager;->mIDownloadUpdate:Lcom/youku/gamecenter/download/IDownloadUpdate;

    if-eqz v4, :cond_1

    .line 827
    iget-object v4, p0, Lcom/youku/gamecenter/download/DownloadManager;->mIDownloadUpdate:Lcom/youku/gamecenter/download/IDownloadUpdate;

    iget-object v5, v0, Lcom/youku/gamecenter/download/DownloadInfo;->mPackageName:Ljava/lang/String;

    invoke-interface {v4, v5}, Lcom/youku/gamecenter/download/IDownloadUpdate;->onCancel(Ljava/lang/String;)V

    .line 833
    .end local v0    # "downloadInfo":Lcom/youku/gamecenter/download/DownloadInfo;
    .end local v2    # "msg":Landroid/os/Message;
    :cond_1
    :goto_2
    return-void

    .line 815
    .restart local v0    # "downloadInfo":Lcom/youku/gamecenter/download/DownloadInfo;
    .restart local v2    # "msg":Landroid/os/Message;
    :cond_2
    iget v4, v0, Lcom/youku/gamecenter/download/DownloadInfo;->mNotificationID:I

    goto :goto_0

    .line 821
    :catch_0
    move-exception v1

    .line 822
    .local v1, "e":Landroid/os/RemoteException;
    const-string v4, "DownloadManager"

    const-string/jumbo v5, "service dead when cancel"

    invoke-static {v4, v5}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 823
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 830
    .end local v0    # "downloadInfo":Lcom/youku/gamecenter/download/DownloadInfo;
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "msg":Landroid/os/Message;
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/app/NotificationManager;->cancel(I)V

    .line 831
    const-string v4, "DownloadManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cancel without a url:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public changeDownloadTypeFromSQL(Lcom/youku/gamecenter/download/DownloadInfo;I)V
    .locals 4
    .param p1, "downloadInfo"    # Lcom/youku/gamecenter/download/DownloadInfo;
    .param p2, "type"    # I

    .prologue
    .line 1502
    :try_start_0
    sget-object v1, Lcom/youku/gamecenter/download/DownloadManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/youku/gamecenter/download/SQLManager;->getSQLManager(Landroid/content/Context;)Lcom/youku/gamecenter/download/SQLManager;

    move-result-object v1

    iget-object v2, p1, Lcom/youku/gamecenter/download/DownloadInfo;->mDownloadUrl:Ljava/lang/String;

    invoke-virtual {v1, v2, p2}, Lcom/youku/gamecenter/download/SQLManager;->updateType(Ljava/lang/String;I)V

    .line 1504
    if-nez p2, :cond_0

    .line 1505
    iget-object v1, p0, Lcom/youku/gamecenter/download/DownloadManager;->mGameSilentMap:Ljava/util/Map;

    iget-object v2, p1, Lcom/youku/gamecenter/download/DownloadInfo;->mDownloadUrl:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1506
    iget-object v1, p0, Lcom/youku/gamecenter/download/DownloadManager;->mUpSilentMap:Ljava/util/Map;

    iget-object v2, p1, Lcom/youku/gamecenter/download/DownloadInfo;->mDownloadUrl:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1507
    iget-object v1, p0, Lcom/youku/gamecenter/download/DownloadManager;->mDownloadMap:Ljava/util/Map;

    iget-object v2, p1, Lcom/youku/gamecenter/download/DownloadInfo;->mDownloadUrl:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1514
    :cond_0
    :goto_0
    return-void

    .line 1509
    :catch_0
    move-exception v0

    .line 1510
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "DownloadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lcom/youku/gamecenter/download/DownloadInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "change type to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " error!!!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1512
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public continuAdvDownload()V
    .locals 1

    .prologue
    .line 995
    sget-object v0, Lcom/youku/gamecenter/download/DownloadManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/youku/gamecenter/util/SystemUtils;->isWifi(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1000
    :goto_0
    return-void

    .line 998
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youku/gamecenter/download/DownloadManager;->isNeedSendContinue:Z

    .line 999
    invoke-direct {p0}, Lcom/youku/gamecenter/download/DownloadManager;->sendAdvContinue()V

    goto :goto_0
.end method

.method public deleteApkDownload(Ljava/lang/String;I)V
    .locals 7
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "version"    # I

    .prologue
    .line 1476
    iget-object v4, p0, Lcom/youku/gamecenter/download/DownloadManager;->mSilentMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1477
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/youku/gamecenter/download/DownloadInfo;>;>;"
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1478
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/gamecenter/download/DownloadInfo;

    .line 1479
    .local v1, "info":Lcom/youku/gamecenter/download/DownloadInfo;
    iget-object v4, v1, Lcom/youku/gamecenter/download/DownloadInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, v1, Lcom/youku/gamecenter/download/DownloadInfo;->mVersion:I

    if-ne v4, p2, :cond_0

    .line 1481
    const-string v4, "DownloadManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "deleteApkDownload:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1482
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    .line 1483
    .local v3, "msg":Landroid/os/Message;
    const/4 v4, 0x6

    iput v4, v3, Landroid/os/Message;->what:I

    .line 1484
    invoke-static {v3, v1}, Lcom/youku/gamecenter/download/DownloadServiceMessage;->putDownloadInfoToMsg(Landroid/os/Message;Lcom/youku/gamecenter/download/DownloadInfo;)V

    .line 1486
    :try_start_0
    iget-object v4, p0, Lcom/youku/gamecenter/download/DownloadManager;->mMessenger:Landroid/os/Messenger;

    if-eqz v4, :cond_1

    .line 1487
    iget-object v4, p0, Lcom/youku/gamecenter/download/DownloadManager;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {v4, v3}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1492
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 1497
    .end local v1    # "info":Lcom/youku/gamecenter/download/DownloadInfo;
    .end local v3    # "msg":Landroid/os/Message;
    :cond_2
    return-void

    .line 1488
    .restart local v1    # "info":Lcom/youku/gamecenter/download/DownloadInfo;
    .restart local v3    # "msg":Landroid/os/Message;
    :catch_0
    move-exception v0

    .line 1489
    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "DownloadManager"

    const-string/jumbo v5, "service dead when delete"

    invoke-static {v4, v5}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1490
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public deleteApkFile(Landroid/content/Context;Lcom/youku/gamecenter/download/DownloadInfo;Z)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "downloadInfo"    # Lcom/youku/gamecenter/download/DownloadInfo;
    .param p3, "needCallBack"    # Z

    .prologue
    .line 854
    if-nez p2, :cond_1

    .line 885
    :cond_0
    :goto_0
    return-void

    .line 858
    :cond_1
    invoke-static {}, Lcom/youku/gamecenter/util/SystemUtils;->isMounted()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 862
    iget-object v1, p2, Lcom/youku/gamecenter/download/DownloadInfo;->mPath:Ljava/lang/String;

    .line 863
    .local v1, "path":Ljava/lang/String;
    iget v2, p2, Lcom/youku/gamecenter/download/DownloadInfo;->mProgress:I

    const/16 v3, 0x64

    if-eq v2, v3, :cond_2

    .line 864
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".tmp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 867
    :cond_2
    const/4 v2, 0x5

    iput v2, p2, Lcom/youku/gamecenter/download/DownloadInfo;->mState:I

    .line 868
    const/4 v2, 0x0

    iput v2, p2, Lcom/youku/gamecenter/download/DownloadInfo;->mProgress:I

    .line 870
    iget-object v2, p2, Lcom/youku/gamecenter/download/DownloadInfo;->mDownloadUrl:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/youku/gamecenter/download/DownloadManager;->deleteTaskFromMap(Ljava/lang/String;)V

    .line 872
    iget-object v2, p2, Lcom/youku/gamecenter/download/DownloadInfo;->mDownloadTitle:Ljava/lang/String;

    invoke-direct {p0, p1, v2}, Lcom/youku/gamecenter/download/DownloadManager;->promptApkFileDeleted(Landroid/content/Context;Ljava/lang/String;)V

    .line 874
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 875
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 879
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 881
    if-eqz p3, :cond_0

    .line 882
    iget-object v2, p0, Lcom/youku/gamecenter/download/DownloadManager;->mIDownloadUpdate:Lcom/youku/gamecenter/download/IDownloadUpdate;

    iget-object v3, p2, Lcom/youku/gamecenter/download/DownloadInfo;->mPackageName:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/youku/gamecenter/download/IDownloadUpdate;->onDelete(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public deleteDownloaded(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 836
    const-string v0, "DownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteDownloaded url:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 837
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/youku/gamecenter/download/DownloadManager;->delete(Ljava/lang/String;Z)V

    .line 838
    return-void
.end method

.method public deleteDownloaded(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "removeDB"    # Z

    .prologue
    .line 841
    const-string v0, "DownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteDownloaded url:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 842
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/youku/gamecenter/download/DownloadManager;->delete(Ljava/lang/String;ZZ)V

    .line 843
    return-void
.end method

.method public deleteDownloadedWithoutCallback(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 846
    const-string v0, "DownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteDownloadedWithoutCallback url:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 847
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/youku/gamecenter/download/DownloadManager;->delete(Ljava/lang/String;Z)V

    .line 848
    return-void
.end method

.method public deleteOlderGameDownload(Ljava/lang/String;I)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "versionCode"    # I

    .prologue
    .line 1289
    iget-object v0, p0, Lcom/youku/gamecenter/download/DownloadManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/youku/gamecenter/download/DownloadManager$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/youku/gamecenter/download/DownloadManager$4;-><init>(Lcom/youku/gamecenter/download/DownloadManager;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1312
    return-void
.end method

.method public getAllDownloadInfo()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/youku/gamecenter/download/DownloadInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 125
    sget-object v0, Lcom/youku/gamecenter/download/DownloadManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/youku/gamecenter/download/SQLManager;->getSQLManager(Landroid/content/Context;)Lcom/youku/gamecenter/download/SQLManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/gamecenter/download/SQLManager;->getAll()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getApkDownloadInfo(Ljava/lang/String;)Lcom/youku/gamecenter/download/DownloadInfo;
    .locals 6
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 1422
    const/4 v2, 0x0

    .line 1423
    .local v2, "result":Lcom/youku/gamecenter/download/DownloadInfo;
    iget-object v3, p0, Lcom/youku/gamecenter/download/DownloadManager;->mSilentMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1424
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/youku/gamecenter/download/DownloadInfo;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1425
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/gamecenter/download/DownloadInfo;

    .line 1426
    .local v0, "info":Lcom/youku/gamecenter/download/DownloadInfo;
    iget-object v3, v0, Lcom/youku/gamecenter/download/DownloadInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1427
    iget v3, v0, Lcom/youku/gamecenter/download/DownloadInfo;->mState:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    invoke-static {v0}, Lcom/youku/gamecenter/util/FileUtils;->isDownloadFileExsist(Lcom/youku/gamecenter/download/DownloadInfo;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz v2, :cond_1

    iget v3, v0, Lcom/youku/gamecenter/download/DownloadInfo;->mVersion:I

    iget v4, v2, Lcom/youku/gamecenter/download/DownloadInfo;->mVersion:I

    if-le v3, v4, :cond_2

    .line 1430
    :cond_1
    move-object v2, v0

    .line 1431
    :cond_2
    const-string v3, "DownloadManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getApkDownloadInfo:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1434
    .end local v0    # "info":Lcom/youku/gamecenter/download/DownloadInfo;
    :cond_3
    return-object v2
.end method

.method public getApkDownloadInfo(Ljava/lang/String;I)Lcom/youku/gamecenter/download/DownloadInfo;
    .locals 5
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "version"    # I

    .prologue
    .line 1364
    iget-object v2, p0, Lcom/youku/gamecenter/download/DownloadManager;->mSilentMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1365
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/youku/gamecenter/download/DownloadInfo;>;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1366
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/gamecenter/download/DownloadInfo;

    .line 1367
    .local v0, "info":Lcom/youku/gamecenter/download/DownloadInfo;
    iget-object v2, v0, Lcom/youku/gamecenter/download/DownloadInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, v0, Lcom/youku/gamecenter/download/DownloadInfo;->mVersion:I

    if-ne v2, p2, :cond_0

    .line 1369
    const-string v2, "DownloadManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getApkDownloadInfo:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1373
    .end local v0    # "info":Lcom/youku/gamecenter/download/DownloadInfo;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDownloadInfoFromSilentList(Landroid/content/Context;Ljava/lang/String;)Lcom/youku/gamecenter/download/DownloadInfo;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 1519
    const/4 v3, 0x3

    invoke-virtual {p0, v3, v4}, Lcom/youku/gamecenter/download/DownloadManager;->getSilentInfosFromSQL(IZ)Ljava/util/List;

    move-result-object v1

    .line 1521
    .local v1, "silentList":Ljava/util/List;, "Ljava/util/List<Lcom/youku/gamecenter/download/DownloadInfo;>;"
    if-eqz v1, :cond_1

    .line 1522
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 1523
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/youku/gamecenter/download/DownloadInfo;

    iget-object v3, v3, Lcom/youku/gamecenter/download/DownloadInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1525
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/youku/gamecenter/download/DownloadInfo;

    .line 1541
    .end local v0    # "i":I
    :goto_1
    return-object v3

    .line 1522
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1530
    .end local v0    # "i":I
    :cond_1
    const/4 v3, 0x4

    invoke-virtual {p0, v3, v4}, Lcom/youku/gamecenter/download/DownloadManager;->getSilentInfosFromSQL(IZ)Ljava/util/List;

    move-result-object v2

    .line 1532
    .local v2, "upSilentList":Ljava/util/List;, "Ljava/util/List<Lcom/youku/gamecenter/download/DownloadInfo;>;"
    if-eqz v2, :cond_3

    .line 1533
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 1534
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/youku/gamecenter/download/DownloadInfo;

    iget-object v3, v3, Lcom/youku/gamecenter/download/DownloadInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1536
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/youku/gamecenter/download/DownloadInfo;

    goto :goto_1

    .line 1533
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1541
    .end local v0    # "i":I
    :cond_3
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public getGameSilentDownloadInfo(Ljava/lang/String;I)Lcom/youku/gamecenter/download/DownloadInfo;
    .locals 6
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "version"    # I

    .prologue
    .line 1378
    const/4 v3, 0x3

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Lcom/youku/gamecenter/download/DownloadManager;->getSilentInfosFromSQL(IZ)Ljava/util/List;

    move-result-object v2

    .line 1381
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/youku/gamecenter/download/DownloadInfo;>;"
    if-eqz v2, :cond_1

    .line 1382
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/gamecenter/download/DownloadInfo;

    .line 1383
    .local v1, "info":Lcom/youku/gamecenter/download/DownloadInfo;
    iget-object v3, v1, Lcom/youku/gamecenter/download/DownloadInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, v1, Lcom/youku/gamecenter/download/DownloadInfo;->mVersion:I

    if-ne v3, p2, :cond_0

    iget v3, v1, Lcom/youku/gamecenter/download/DownloadInfo;->mProgress:I

    const/16 v4, 0x64

    if-ne v3, v4, :cond_0

    .line 1385
    const-string v3, "DownloadManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getGameSilentDownloadInfo:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1390
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "info":Lcom/youku/gamecenter/download/DownloadInfo;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getGameSilentDownloadInfo(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/youku/gamecenter/download/DownloadInfo;
    .locals 7
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "version"    # I
    .param p3, "icon"    # Ljava/lang/String;
    .param p4, "game_id"    # Ljava/lang/String;
    .param p5, "toast_img"    # Ljava/lang/String;
    .param p6, "toast_msg"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 1396
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    if-nez p2, :cond_1

    .line 1397
    :cond_0
    const-string v4, "DownloadManager"

    const-string v5, "pkg_name or vercode is error"

    invoke-static {v4, v5}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1398
    const/4 v4, 0x0

    .line 1418
    :goto_0
    return-object v4

    .line 1400
    :cond_1
    sget-object v4, Lcom/youku/gamecenter/download/DownloadManager;->mContext:Landroid/content/Context;

    sget-object v5, Lcom/youku/gamecenter/download/DownloadManager;->SH_PUSH_GAME_SILENT_INSTALL_TOAST:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 1402
    .local v3, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1403
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v4, "packagename"

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1404
    .local v1, "oldPkgName":Ljava/lang/String;
    const-string/jumbo v4, "version"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 1405
    .local v2, "oldVersion":I
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    if-le p2, v2, :cond_3

    .line 1406
    :cond_2
    const-string/jumbo v4, "show_times"

    invoke-interface {v0, v4, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1407
    const-string/jumbo v4, "show_date"

    const-string v5, ""

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1410
    :cond_3
    const-string v4, "packagename"

    invoke-interface {v0, v4, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1411
    const-string/jumbo v4, "version"

    invoke-interface {v0, v4, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1412
    const-string v4, "icon"

    invoke-interface {v0, v4, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1413
    const-string v4, "game_id"

    invoke-interface {v0, v4, p4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1414
    const-string/jumbo v4, "toast_img"

    invoke-interface {v0, v4, p5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1415
    const-string/jumbo v4, "toast_msg"

    invoke-interface {v0, v4, p6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1416
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1418
    invoke-virtual {p0, p1, p2}, Lcom/youku/gamecenter/download/DownloadManager;->getGameSilentDownloadInfo(Ljava/lang/String;I)Lcom/youku/gamecenter/download/DownloadInfo;

    move-result-object v4

    goto :goto_0
.end method

.method public getSilentInfosFromSQL(IZ)Ljava/util/List;
    .locals 1
    .param p1, "type"    # I
    .param p2, "isGetAll"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/List",
            "<",
            "Lcom/youku/gamecenter/download/DownloadInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1555
    sget-object v0, Lcom/youku/gamecenter/download/DownloadManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/youku/gamecenter/download/SQLManager;->getSQLManager(Landroid/content/Context;)Lcom/youku/gamecenter/download/SQLManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/youku/gamecenter/download/SQLManager;->getSilentDownload(IZ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public isApkValid(Lcom/youku/gamecenter/download/DownloadInfo;)Z
    .locals 13
    .param p1, "info"    # Lcom/youku/gamecenter/download/DownloadInfo;

    .prologue
    const/4 v12, 0x4

    const/4 v10, 0x0

    .line 1438
    iget v11, p1, Lcom/youku/gamecenter/download/DownloadInfo;->mState:I

    if-eq v11, v12, :cond_1

    move v6, v10

    .line 1472
    :cond_0
    :goto_0
    return v6

    .line 1440
    :cond_1
    iget v11, p1, Lcom/youku/gamecenter/download/DownloadInfo;->mState:I

    if-ne v11, v12, :cond_3

    invoke-static {p1}, Lcom/youku/gamecenter/util/FileUtils;->isDownloadFileExsist(Lcom/youku/gamecenter/download/DownloadInfo;)Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-static {}, Lcom/youku/gamecenter/util/SystemUtils;->isMounted()Z

    move-result v11

    if-nez v11, :cond_3

    :cond_2
    move v6, v10

    .line 1443
    goto :goto_0

    .line 1446
    :cond_3
    const/4 v6, 0x1

    .line 1447
    .local v6, "latest":Z
    sget-object v11, Lcom/youku/gamecenter/download/DownloadManager;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/youku/gamecenter/util/FileUtils;->getPublicDownloadFiles(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v3

    .line 1448
    .local v3, "files":[Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p1, Lcom/youku/gamecenter/download/DownloadInfo;->mDownloadTitle:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1449
    .local v8, "title":Ljava/lang/String;
    const-string v5, ""

    .line 1450
    .local v5, "lastedVersion":Ljava/lang/String;
    if-nez v3, :cond_4

    move v6, v10

    .line 1451
    goto :goto_0

    .line 1453
    :cond_4
    move-object v0, v3

    .local v0, "arr$":[Ljava/lang/String;
    array-length v7, v0

    .local v7, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1
    if-ge v4, v7, :cond_5

    aget-object v2, v0, v4

    .line 1454
    .local v2, "file":Ljava/lang/String;
    invoke-virtual {v2, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    if-nez v10, :cond_6

    .line 1455
    const-string v9, ""

    .line 1457
    .local v9, "versionStr":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    const-string v11, ".apk"

    invoke-virtual {v2, v11}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v2, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 1462
    :goto_2
    iget-object v10, p1, Lcom/youku/gamecenter/download/DownloadInfo;->mVersionName:Ljava/lang/String;

    invoke-static {v9, v10}, Lcom/youku/gamecenter/util/CommonUtils;->compareVersionName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    if-lez v10, :cond_6

    .line 1464
    move-object v5, v9

    .line 1465
    const/4 v6, 0x0

    .line 1470
    .end local v2    # "file":Ljava/lang/String;
    .end local v9    # "versionStr":Ljava/lang/String;
    :cond_5
    if-nez v6, :cond_0

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 1471
    iget-object v10, p1, Lcom/youku/gamecenter/download/DownloadInfo;->mPackageName:Ljava/lang/String;

    invoke-direct {p0, v10, v5}, Lcom/youku/gamecenter/download/DownloadManager;->deleteOlderApkDownload(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1459
    .restart local v2    # "file":Ljava/lang/String;
    .restart local v9    # "versionStr":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1460
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 1453
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v9    # "versionStr":Ljava/lang/String;
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method public isDownloading(Ljava/lang/String;)Z
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 720
    iget-object v0, p0, Lcom/youku/gamecenter/download/DownloadManager;->mDownloadMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 721
    iget-object v0, p0, Lcom/youku/gamecenter/download/DownloadManager;->mDownloadMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/gamecenter/download/DownloadInfo;

    iget v0, v0, Lcom/youku/gamecenter/download/DownloadInfo;->mState:I

    if-ne v0, v1, :cond_0

    move v0, v1

    .line 723
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 721
    goto :goto_0

    :cond_1
    move v0, v2

    .line 723
    goto :goto_0
.end method

.method public isExistSilentDoneList(Ljava/lang/String;)Z
    .locals 5
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 258
    const/4 v0, 0x0

    .line 260
    .local v0, "info":Lcom/youku/gamecenter/download/DownloadInfo;
    iget-object v3, p0, Lcom/youku/gamecenter/download/DownloadManager;->mUpSilentMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 261
    iget-object v3, p0, Lcom/youku/gamecenter/download/DownloadManager;->mUpSilentMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "info":Lcom/youku/gamecenter/download/DownloadInfo;
    check-cast v0, Lcom/youku/gamecenter/download/DownloadInfo;

    .line 264
    .restart local v0    # "info":Lcom/youku/gamecenter/download/DownloadInfo;
    :cond_0
    iget-object v3, p0, Lcom/youku/gamecenter/download/DownloadManager;->mDownloadMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 265
    iget-object v3, p0, Lcom/youku/gamecenter/download/DownloadManager;->mDownloadMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "info":Lcom/youku/gamecenter/download/DownloadInfo;
    check-cast v0, Lcom/youku/gamecenter/download/DownloadInfo;

    .line 266
    .restart local v0    # "info":Lcom/youku/gamecenter/download/DownloadInfo;
    iget v3, v0, Lcom/youku/gamecenter/download/DownloadInfo;->mDownloadWay:I

    if-ne v3, v4, :cond_2

    .line 273
    :cond_1
    :goto_0
    return v1

    :cond_2
    move v1, v2

    .line 268
    goto :goto_0

    .line 271
    :cond_3
    if-eqz v0, :cond_4

    iget v3, v0, Lcom/youku/gamecenter/download/DownloadInfo;->mState:I

    if-eq v3, v4, :cond_1

    :cond_4
    move v1, v2

    .line 273
    goto :goto_0
.end method

.method public openGameCenter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "icon"    # Ljava/lang/String;
    .param p5, "version"    # I
    .param p6, "source"    # Ljava/lang/String;
    .param p7, "gameId"    # Ljava/lang/String;
    .param p8, "openType"    # Ljava/lang/String;

    .prologue
    .line 802
    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-virtual/range {v0 .. v9}, Lcom/youku/gamecenter/download/DownloadManager;->openGameCenter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 804
    return-void
.end method

.method public openGameCenter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 14
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "icon"    # Ljava/lang/String;
    .param p5, "version"    # I
    .param p6, "source"    # Ljava/lang/String;
    .param p7, "gameId"    # Ljava/lang/String;
    .param p8, "openType"    # Ljava/lang/String;
    .param p9, "statistics"    # Ljava/lang/String;

    .prologue
    .line 748
    sget-object v3, Lcom/youku/gamecenter/download/DownloadManager;->mContext:Landroid/content/Context;

    move-object/from16 v0, p3

    invoke-direct {p0, v0}, Lcom/youku/gamecenter/download/DownloadManager;->isDownloaded(Ljava/lang/String;)Z

    move-result v7

    move-object v4, p1

    move/from16 v5, p5

    move-object/from16 v6, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p7

    invoke-static/range {v3 .. v9}, Lcom/youku/gamecenter/util/AppClickActionUtils;->handleOpenOrInstallApp(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 778
    :cond_0
    :goto_0
    return-void

    .line 752
    :cond_1
    invoke-static {}, Lcom/youku/gamecenter/util/SystemUtils;->isMounted()Z

    move-result v3

    if-eqz v3, :cond_3

    move-object/from16 v0, p3

    invoke-direct {p0, v0}, Lcom/youku/gamecenter/download/DownloadManager;->isDownloaded(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 753
    sget-object v3, Lcom/youku/gamecenter/download/DownloadManager;->mContext:Landroid/content/Context;

    move-object/from16 v0, p3

    invoke-static {v3, v0}, Lcom/youku/gamecenter/util/FileUtils;->getDownloadFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v13

    .line 754
    .local v13, "file":Ljava/io/File;
    if-eqz v13, :cond_2

    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_3

    .line 755
    :cond_2
    move-object/from16 v0, p3

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/download/DownloadManager;->deleteDownloaded(Ljava/lang/String;)V

    .line 758
    .end local v13    # "file":Ljava/io/File;
    :cond_3
    invoke-static/range {p8 .. p8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 759
    const-string v3, "DownloadManager"

    const-string v4, "empty openType!!!"

    invoke-static {v3, v4}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 762
    :cond_4
    const-string v3, "download_game"

    move-object/from16 v0, p8

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 763
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/youku/gamecenter/download/DownloadManager;->mDownloadMap:Ljava/util/Map;

    move-object/from16 v0, p3

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/youku/gamecenter/download/DownloadManager;->mDownloadMap:Ljava/util/Map;

    move-object/from16 v0, p3

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/youku/gamecenter/download/DownloadInfo;

    iget v3, v3, Lcom/youku/gamecenter/download/DownloadInfo;->mState:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_5

    .line 766
    sget-object v3, Lcom/youku/gamecenter/download/DownloadManager;->mContext:Landroid/content/Context;

    sget v4, Lcom/youku/gamecenter/R$string;->game_center_action_info_exist:I

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 770
    :cond_5
    const/4 v12, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p9

    invoke-virtual/range {v3 .. v12}, Lcom/youku/gamecenter/download/DownloadManager;->startDownload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 772
    :cond_6
    const-string/jumbo v3, "show_details"

    move-object/from16 v0, p8

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 773
    sget-object v3, Lcom/youku/gamecenter/download/DownloadManager;->mContext:Landroid/content/Context;

    move-object/from16 v0, p7

    move-object/from16 v1, p6

    move-object/from16 v2, p9

    invoke-static {v3, v0, v1, v2}, Lcom/youku/gamecenter/util/AppClickActionUtils;->launchGameDetailsActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 775
    :cond_7
    const-string/jumbo v3, "show_list"

    move-object/from16 v0, p8

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 776
    sget-object v3, Lcom/youku/gamecenter/download/DownloadManager;->mContext:Landroid/content/Context;

    move-object/from16 v0, p6

    invoke-static {v3, v0}, Lcom/youku/gamecenter/util/AppClickActionUtils;->launchGameCenterHomeActivity(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public pause(Ljava/lang/String;)V
    .locals 6
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 390
    const-string v3, "DownloadManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "pause url:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    iget-object v3, p0, Lcom/youku/gamecenter/download/DownloadManager;->mDownloadMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 392
    iget-object v3, p0, Lcom/youku/gamecenter/download/DownloadManager;->mDownloadMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/gamecenter/download/DownloadInfo;

    .line 393
    .local v0, "downloadInfo":Lcom/youku/gamecenter/download/DownloadInfo;
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 394
    .local v2, "msg":Landroid/os/Message;
    const/4 v3, 0x2

    iput v3, v2, Landroid/os/Message;->what:I

    .line 395
    invoke-static {v2, v0}, Lcom/youku/gamecenter/download/DownloadServiceMessage;->putDownloadInfoToMsg(Landroid/os/Message;Lcom/youku/gamecenter/download/DownloadInfo;)V

    .line 397
    :try_start_0
    iget-object v3, p0, Lcom/youku/gamecenter/download/DownloadManager;->mMessenger:Landroid/os/Messenger;

    if-eqz v3, :cond_0

    .line 398
    iget-object v3, p0, Lcom/youku/gamecenter/download/DownloadManager;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {v3, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 406
    .end local v0    # "downloadInfo":Lcom/youku/gamecenter/download/DownloadInfo;
    .end local v2    # "msg":Landroid/os/Message;
    :cond_0
    :goto_0
    return-void

    .line 399
    .restart local v0    # "downloadInfo":Lcom/youku/gamecenter/download/DownloadInfo;
    .restart local v2    # "msg":Landroid/os/Message;
    :catch_0
    move-exception v1

    .line 400
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "DownloadManager"

    const-string/jumbo v4, "service dead when pause"

    invoke-static {v3, v4}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 404
    .end local v0    # "downloadInfo":Lcom/youku/gamecenter/download/DownloadInfo;
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "msg":Landroid/os/Message;
    :cond_1
    const-string v3, "DownloadManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "pause without a url:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setIDownloadUpdate(Lcom/youku/gamecenter/download/IDownloadUpdate;)V
    .locals 0
    .param p1, "update"    # Lcom/youku/gamecenter/download/IDownloadUpdate;

    .prologue
    .line 409
    iput-object p1, p0, Lcom/youku/gamecenter/download/DownloadManager;->mIDownloadUpdate:Lcom/youku/gamecenter/download/IDownloadUpdate;

    .line 410
    return-void
.end method

.method setMessenger(Landroid/os/Messenger;)V
    .locals 0
    .param p1, "messenger"    # Landroid/os/Messenger;

    .prologue
    .line 469
    iput-object p1, p0, Lcom/youku/gamecenter/download/DownloadManager;->mMessenger:Landroid/os/Messenger;

    .line 470
    return-void
.end method

.method public start(Lcom/youku/gamecenter/download/DownloadInfo;)V
    .locals 12
    .param p1, "downInfo"    # Lcom/youku/gamecenter/download/DownloadInfo;

    .prologue
    const/4 v4, 0x1

    .line 321
    const-string v0, "DownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "download state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/youku/gamecenter/download/DownloadInfo;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  title:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/youku/gamecenter/download/DownloadInfo;->mDownloadTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    const-string v0, "GameCenter"

    const-string v1, "WIRELESS-31820: start"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    iget v0, p1, Lcom/youku/gamecenter/download/DownloadInfo;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 387
    :cond_0
    :goto_0
    return-void

    .line 328
    :pswitch_0
    const-string v0, "DownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startDownload:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/youku/gamecenter/download/DownloadInfo;->mDownloadTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v11

    .line 330
    .local v11, "startMsg":Landroid/os/Message;
    iput v4, v11, Landroid/os/Message;->what:I

    .line 331
    invoke-static {v11, p1}, Lcom/youku/gamecenter/download/DownloadServiceMessage;->putDownloadInfoToMsg(Landroid/os/Message;Lcom/youku/gamecenter/download/DownloadInfo;)V

    .line 333
    :try_start_0
    iget-object v0, p0, Lcom/youku/gamecenter/download/DownloadManager;->mMessenger:Landroid/os/Messenger;

    if-eqz v0, :cond_1

    .line 334
    iget-object v0, p0, Lcom/youku/gamecenter/download/DownloadManager;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {v0, v11}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 352
    :catch_0
    move-exception v9

    .line 353
    .local v9, "e1":Landroid/os/RemoteException;
    invoke-virtual {v9}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 336
    .end local v9    # "e1":Landroid/os/RemoteException;
    :cond_1
    :try_start_1
    const-string v0, "GameCenter"

    const-string v1, "WIRELESS-31820: mMessenger == null"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/youku/gamecenter/download/DownloadManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/youku/gamecenter/download/DownloadManager$1;

    invoke-direct {v1, p0, v11}, Lcom/youku/gamecenter/download/DownloadManager$1;-><init>(Lcom/youku/gamecenter/download/DownloadManager;Landroid/os/Message;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 357
    .end local v11    # "startMsg":Landroid/os/Message;
    :pswitch_1
    const-string v0, "DownloadManager"

    const-string/jumbo v1, "request pause"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v10

    .line 359
    .local v10, "pauseMsg":Landroid/os/Message;
    const/4 v0, 0x2

    iput v0, v10, Landroid/os/Message;->what:I

    .line 360
    invoke-static {v10, p1}, Lcom/youku/gamecenter/download/DownloadServiceMessage;->putDownloadInfoToMsg(Landroid/os/Message;Lcom/youku/gamecenter/download/DownloadInfo;)V

    .line 362
    :try_start_2
    iget-object v0, p0, Lcom/youku/gamecenter/download/DownloadManager;->mMessenger:Landroid/os/Messenger;

    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p0, Lcom/youku/gamecenter/download/DownloadManager;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {v0, v10}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 364
    :catch_1
    move-exception v8

    .line 365
    .local v8, "e":Landroid/os/RemoteException;
    invoke-virtual {v8}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 369
    .end local v8    # "e":Landroid/os/RemoteException;
    .end local v10    # "pauseMsg":Landroid/os/Message;
    :pswitch_2
    const-string v0, "DownloadManager"

    const-string/jumbo v1, "request continue"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v7

    .line 371
    .local v7, "continueMsg":Landroid/os/Message;
    const/4 v0, 0x3

    iput v0, v7, Landroid/os/Message;->what:I

    .line 372
    invoke-static {v7, p1}, Lcom/youku/gamecenter/download/DownloadServiceMessage;->putDownloadInfoToMsg(Landroid/os/Message;Lcom/youku/gamecenter/download/DownloadInfo;)V

    .line 374
    :try_start_3
    iget-object v0, p0, Lcom/youku/gamecenter/download/DownloadManager;->mMessenger:Landroid/os/Messenger;

    if-eqz v0, :cond_0

    .line 375
    iget-object v0, p0, Lcom/youku/gamecenter/download/DownloadManager;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {v0, v7}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    .line 376
    :catch_2
    move-exception v8

    .line 377
    .restart local v8    # "e":Landroid/os/RemoteException;
    invoke-virtual {v8}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 381
    .end local v7    # "continueMsg":Landroid/os/Message;
    .end local v8    # "e":Landroid/os/RemoteException;
    :pswitch_3
    sget-object v0, Lcom/youku/gamecenter/download/DownloadManager;->mContext:Landroid/content/Context;

    iget-object v1, p1, Lcom/youku/gamecenter/download/DownloadInfo;->mPackageName:Ljava/lang/String;

    iget v2, p1, Lcom/youku/gamecenter/download/DownloadInfo;->mVersion:I

    iget-object v3, p1, Lcom/youku/gamecenter/download/DownloadInfo;->mDownloadTitle:Ljava/lang/String;

    iget-object v5, p1, Lcom/youku/gamecenter/download/DownloadInfo;->mDownloadUrl:Ljava/lang/String;

    iget-object v6, p1, Lcom/youku/gamecenter/download/DownloadInfo;->mId:Ljava/lang/String;

    invoke-static/range {v0 .. v6}, Lcom/youku/gamecenter/util/AppClickActionUtils;->handleOpenOrInstallApp(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 324
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method public startAdvDownload(Lcom/youku/gamecenter/download/DownloadInfo;)V
    .locals 6
    .param p1, "info"    # Lcom/youku/gamecenter/download/DownloadInfo;

    .prologue
    const/4 v5, 0x1

    .line 980
    const-string v2, "DownloadManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "adv startDownload:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 981
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 982
    .local v1, "startMsg":Landroid/os/Message;
    iput v5, v1, Landroid/os/Message;->what:I

    .line 983
    iget-object v2, p1, Lcom/youku/gamecenter/download/DownloadInfo;->mDownloadUrl:Ljava/lang/String;

    invoke-static {v2}, Lcom/youku/gamecenter/util/CommonUtils;->getFileNameFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/youku/gamecenter/download/DownloadInfo;->mDownloadTitle:Ljava/lang/String;

    .line 984
    iput v5, p1, Lcom/youku/gamecenter/download/DownloadInfo;->mType:I

    .line 985
    invoke-static {v1, p1}, Lcom/youku/gamecenter/download/DownloadServiceMessage;->putDownloadInfoToMsg(Landroid/os/Message;Lcom/youku/gamecenter/download/DownloadInfo;)V

    .line 987
    :try_start_0
    iget-object v2, p0, Lcom/youku/gamecenter/download/DownloadManager;->mMessenger:Landroid/os/Messenger;

    if-eqz v2, :cond_0

    .line 988
    iget-object v2, p0, Lcom/youku/gamecenter/download/DownloadManager;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {v2, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 992
    :cond_0
    :goto_0
    return-void

    .line 989
    :catch_0
    move-exception v0

    .line 990
    .local v0, "e1":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public startApkDownload(Lcom/youku/gamecenter/download/DownloadInfo;)V
    .locals 18
    .param p1, "downloadInfo"    # Lcom/youku/gamecenter/download/DownloadInfo;

    .prologue
    .line 1019
    const-string v15, "DownloadManager"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "startApkDownload:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1020
    const/4 v4, 0x1

    .line 1021
    .local v4, "download":Z
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/youku/gamecenter/download/DownloadInfo;->mVersionName:Ljava/lang/String;

    .line 1022
    .local v11, "lastestVersion":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/youku/gamecenter/download/DownloadInfo;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget v0, v0, Lcom/youku/gamecenter/download/DownloadInfo;->mVersion:I

    move/from16 v16, v0

    sget-object v17, Lcom/youku/gamecenter/download/DownloadManager;->mContext:Landroid/content/Context;

    invoke-static/range {v15 .. v17}, Lcom/youku/gamecenter/util/SystemUtils;->isLatestInstalled(Ljava/lang/String;ILandroid/content/Context;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 1024
    const-string v15, "DownloadManager"

    const-string v16, "Not the latest version"

    invoke-static/range {v15 .. v16}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1078
    :cond_0
    :goto_0
    return-void

    .line 1027
    :cond_1
    sget-object v15, Lcom/youku/gamecenter/download/DownloadManager;->mContext:Landroid/content/Context;

    invoke-static {v15}, Lcom/youku/gamecenter/util/FileUtils;->getPublicDownloadFiles(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v9

    .line 1028
    .local v9, "files":[Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/youku/gamecenter/download/DownloadInfo;->mDownloadTitle:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "_"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 1029
    .local v13, "title":Ljava/lang/String;
    if-eqz v9, :cond_3

    .line 1030
    move-object v2, v9

    .local v2, "arr$":[Ljava/lang/String;
    array-length v12, v2

    .local v12, "len$":I
    const/4 v10, 0x0

    .local v10, "i$":I
    :goto_1
    if-ge v10, v12, :cond_3

    aget-object v7, v2, v10

    .line 1031
    .local v7, "file":Ljava/lang/String;
    invoke-virtual {v7, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v15

    if-nez v15, :cond_2

    .line 1032
    const-string v14, ""

    .line 1034
    .local v14, "versionStr":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v15

    const-string v16, ".apk"

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v7, v15, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v14

    .line 1039
    :goto_2
    invoke-static {v14, v11}, Lcom/youku/gamecenter/util/CommonUtils;->compareVersionName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v15

    if-ltz v15, :cond_2

    .line 1041
    move-object v11, v14

    .line 1042
    const/4 v4, 0x0

    .line 1030
    .end local v14    # "versionStr":Ljava/lang/String;
    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 1036
    .restart local v14    # "versionStr":Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 1037
    .local v6, "e1":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 1048
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v6    # "e1":Ljava/lang/Exception;
    .end local v7    # "file":Ljava/lang/String;
    .end local v10    # "i$":I
    .end local v12    # "len$":I
    .end local v14    # "versionStr":Ljava/lang/String;
    :cond_3
    if-nez v4, :cond_4

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/youku/gamecenter/download/DownloadManager;->mSilentMap:Ljava/util/Map;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/youku/gamecenter/download/DownloadInfo;->mDownloadUrl:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-interface/range {v15 .. v16}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    if-eqz v15, :cond_6

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/youku/gamecenter/download/DownloadManager;->mSilentMap:Ljava/util/Map;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/youku/gamecenter/download/DownloadInfo;->mDownloadUrl:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-interface/range {v15 .. v16}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/youku/gamecenter/download/DownloadInfo;

    iget v15, v15, Lcom/youku/gamecenter/download/DownloadInfo;->mVersion:I

    move-object/from16 v0, p1

    iget v0, v0, Lcom/youku/gamecenter/download/DownloadInfo;->mVersion:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ne v15, v0, :cond_6

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/youku/gamecenter/download/DownloadManager;->mSilentMap:Ljava/util/Map;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/youku/gamecenter/download/DownloadInfo;->mDownloadUrl:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-interface/range {v15 .. v16}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/youku/gamecenter/download/DownloadInfo;

    iget v15, v15, Lcom/youku/gamecenter/download/DownloadInfo;->mState:I

    const/16 v16, 0x4

    move/from16 v0, v16

    if-eq v15, v0, :cond_6

    .line 1052
    :cond_4
    const/4 v15, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v15}, Lcom/youku/gamecenter/download/DownloadManager;->sendMessage(Lcom/youku/gamecenter/download/DownloadInfo;I)V

    .line 1075
    :cond_5
    :goto_3
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_0

    .line 1076
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/youku/gamecenter/download/DownloadInfo;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v11}, Lcom/youku/gamecenter/download/DownloadManager;->deleteOlderApkDownload(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1054
    :cond_6
    if-nez v4, :cond_5

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/youku/gamecenter/download/DownloadManager;->mSilentMap:Ljava/util/Map;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/youku/gamecenter/download/DownloadInfo;->mDownloadUrl:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-interface/range {v15 .. v16}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    if-nez v15, :cond_5

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_5

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/youku/gamecenter/download/DownloadInfo;->mVersionName:Ljava/lang/String;

    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 1058
    const-string v15, "DownloadManager"

    const-string v16, "directory has latest version."

    invoke-static/range {v15 .. v16}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1060
    :try_start_1
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v16, Lcom/youku/gamecenter/download/DownloadManager;->mContext:Landroid/content/Context;

    const/16 v17, 0x2

    invoke-static/range {v16 .. v17}, Lcom/youku/gamecenter/util/FileUtils;->getDownloadDir(Landroid/content/Context;I)Ljava/io/File;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget-object v16, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/youku/gamecenter/download/DownloadInfo;->mDownloadTitle:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "_"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/youku/gamecenter/download/DownloadInfo;->mVersionName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ".apk.jar.tmp"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1066
    .local v8, "filename":Ljava/lang/String;
    sget-wide v16, Lcom/youku/gamecenter/download/DownloadManager;->SILENT_TEMP_FILE_EXPIREDTIME:J

    move-wide/from16 v0, v16

    invoke-static {v8, v0, v1}, Lcom/youku/gamecenter/util/FileUtils;->deleteExpiredFile(Ljava/lang/String;J)Z

    move-result v3

    .line 1068
    .local v3, "delete":Z
    if-eqz v3, :cond_5

    .line 1069
    const/4 v15, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v15}, Lcom/youku/gamecenter/download/DownloadManager;->sendMessage(Lcom/youku/gamecenter/download/DownloadInfo;I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_3

    .line 1071
    .end local v3    # "delete":Z
    .end local v8    # "filename":Ljava/lang/String;
    :catch_1
    move-exception v5

    .line 1072
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3
.end method

.method public startDownload(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 970
    const-string v0, "DownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adv startDownload:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 971
    new-instance v0, Lcom/youku/gamecenter/download/DownloadInfo$Builder;

    invoke-direct {v0}, Lcom/youku/gamecenter/download/DownloadInfo$Builder;-><init>()V

    invoke-virtual {v0, p1}, Lcom/youku/gamecenter/download/DownloadInfo$Builder;->setUrl(Ljava/lang/String;)Lcom/youku/gamecenter/download/DownloadInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/gamecenter/download/DownloadInfo$Builder;->build()Lcom/youku/gamecenter/download/DownloadInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/download/DownloadManager;->startAdvDownload(Lcom/youku/gamecenter/download/DownloadInfo;)V

    .line 972
    return-void
.end method

.method public startDownload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "icon"    # Ljava/lang/String;
    .param p5, "version"    # I
    .param p6, "source"    # Ljava/lang/String;
    .param p7, "gameId"    # Ljava/lang/String;
    .param p8, "statistics"    # Ljava/lang/String;

    .prologue
    .line 131
    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-virtual/range {v0 .. v9}, Lcom/youku/gamecenter/download/DownloadManager;->startDownload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 134
    return-void
.end method

.method public startDownload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "icon"    # Ljava/lang/String;
    .param p5, "version"    # I
    .param p6, "source"    # Ljava/lang/String;
    .param p7, "gameId"    # Ljava/lang/String;
    .param p8, "statistics"    # Ljava/lang/String;
    .param p9, "dialogShow"    # Z

    .prologue
    .line 196
    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    invoke-virtual/range {v0 .. v11}, Lcom/youku/gamecenter/download/DownloadManager;->startDownload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[Ljava/lang/String;[Ljava/lang/String;)V

    .line 198
    return-void
.end method

.method public startDownload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 13
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "icon"    # Ljava/lang/String;
    .param p5, "version"    # I
    .param p6, "source"    # Ljava/lang/String;
    .param p7, "gameId"    # Ljava/lang/String;
    .param p8, "statistics"    # Ljava/lang/String;
    .param p9, "dialogShow"    # Z
    .param p10, "advStartTrack"    # [Ljava/lang/String;
    .param p11, "advEndTrack"    # [Ljava/lang/String;

    .prologue
    .line 163
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    invoke-virtual/range {v0 .. v12}, Lcom/youku/gamecenter/download/DownloadManager;->startDownload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[Ljava/lang/String;[Ljava/lang/String;I)V

    .line 165
    return-void
.end method

.method public startDownload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[Ljava/lang/String;[Ljava/lang/String;I)V
    .locals 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "icon"    # Ljava/lang/String;
    .param p5, "version"    # I
    .param p6, "source"    # Ljava/lang/String;
    .param p7, "gameId"    # Ljava/lang/String;
    .param p8, "statistics"    # Ljava/lang/String;
    .param p9, "dialogShow"    # Z
    .param p10, "advStartTrack"    # [Ljava/lang/String;
    .param p11, "advEndTrack"    # [Ljava/lang/String;
    .param p12, "is_app"    # I

    .prologue
    .line 172
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 173
    const-string v1, "DownloadManager"

    const-string v2, "null url!!!"

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    const-string v1, "GameCenter"

    const-string v2, "WIRELESS-31820: null url"

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    :goto_0
    return-void

    :cond_0
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p12

    .line 178
    invoke-direct/range {v1 .. v10}, Lcom/youku/gamecenter/download/DownloadManager;->getDownloadInfoFromList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/youku/gamecenter/download/DownloadInfo;

    move-result-object v11

    .line 181
    .local v11, "downloadInfo":Lcom/youku/gamecenter/download/DownloadInfo;
    invoke-direct {p0, p3}, Lcom/youku/gamecenter/download/DownloadManager;->deleteSilentDownloadInfo(Ljava/lang/String;)V

    .line 183
    if-eqz p10, :cond_1

    if-eqz p11, :cond_1

    .line 184
    const-string v1, "array+_#_+divider"

    move-object/from16 v0, p10

    invoke-static {v1, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v11, Lcom/youku/gamecenter/download/DownloadInfo;->mStartTrack:Ljava/lang/String;

    .line 186
    const-string v1, "array+_#_+divider"

    move-object/from16 v0, p11

    invoke-static {v1, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v11, Lcom/youku/gamecenter/download/DownloadInfo;->mEndTrack:Ljava/lang/String;

    .line 190
    :cond_1
    move/from16 v0, p9

    invoke-direct {p0, v11, v0}, Lcom/youku/gamecenter/download/DownloadManager;->startDownload(Lcom/youku/gamecenter/download/DownloadInfo;Z)V

    goto :goto_0
.end method

.method public startGameSilentDownload(Lcom/youku/gamecenter/download/DownloadInfo;)V
    .locals 5
    .param p1, "downloadInfo"    # Lcom/youku/gamecenter/download/DownloadInfo;

    .prologue
    const/4 v4, 0x1

    .line 1082
    const-string v1, "DownloadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startGameSilentDownload: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/youku/gamecenter/download/DownloadInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1084
    iget-object v1, p1, Lcom/youku/gamecenter/download/DownloadInfo;->mPackageName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p1, Lcom/youku/gamecenter/download/DownloadInfo;->mDownloadUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p1, Lcom/youku/gamecenter/download/DownloadInfo;->mId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p1, Lcom/youku/gamecenter/download/DownloadInfo;->mIcon:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1120
    :cond_0
    :goto_0
    return-void

    .line 1090
    :cond_1
    sget-object v1, Lcom/youku/gamecenter/download/DownloadManager;->mContext:Landroid/content/Context;

    iget-object v2, p1, Lcom/youku/gamecenter/download/DownloadInfo;->mPackageName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/youku/gamecenter/util/SystemUtils;->isInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1093
    invoke-direct {p0, p1}, Lcom/youku/gamecenter/download/DownloadManager;->isExistDownList(Lcom/youku/gamecenter/download/DownloadInfo;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1096
    iget v1, p1, Lcom/youku/gamecenter/download/DownloadInfo;->mType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 1099
    invoke-direct {p0}, Lcom/youku/gamecenter/download/DownloadManager;->checkGameSilentMap()V

    .line 1101
    const-string v1, "43"

    iput-object v1, p1, Lcom/youku/gamecenter/download/DownloadInfo;->mSource:Ljava/lang/String;

    .line 1103
    invoke-direct {p0}, Lcom/youku/gamecenter/download/DownloadManager;->deleteOldestGameDownload()V

    .line 1105
    iget-object v1, p0, Lcom/youku/gamecenter/download/DownloadManager;->mGameSilentMap:Ljava/util/Map;

    iget-object v2, p1, Lcom/youku/gamecenter/download/DownloadInfo;->mDownloadUrl:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/gamecenter/download/DownloadInfo;

    .line 1107
    .local v0, "info":Lcom/youku/gamecenter/download/DownloadInfo;
    if-nez v0, :cond_2

    .line 1108
    invoke-direct {p0, p1, v4}, Lcom/youku/gamecenter/download/DownloadManager;->sendMessage(Lcom/youku/gamecenter/download/DownloadInfo;I)V

    goto :goto_0

    .line 1113
    :cond_2
    if-eqz v0, :cond_0

    iget v1, v0, Lcom/youku/gamecenter/download/DownloadInfo;->mVersion:I

    iget v2, p1, Lcom/youku/gamecenter/download/DownloadInfo;->mVersion:I

    if-ne v1, v2, :cond_0

    iget v1, v0, Lcom/youku/gamecenter/download/DownloadInfo;->mState:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    .line 1115
    invoke-direct {p0, p1, v4}, Lcom/youku/gamecenter/download/DownloadManager;->sendMessage(Lcom/youku/gamecenter/download/DownloadInfo;I)V

    goto :goto_0
.end method

.method public startGameSilentUpdate(Lcom/youku/gamecenter/download/DownloadInfo;)Z
    .locals 7
    .param p1, "downloadInfo"    # Lcom/youku/gamecenter/download/DownloadInfo;

    .prologue
    const/4 v6, 0x4

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1126
    const-string v3, "DownloadManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "startGameSilentUpdate: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/youku/gamecenter/download/DownloadInfo;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1128
    iget-object v3, p1, Lcom/youku/gamecenter/download/DownloadInfo;->mPackageName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p1, Lcom/youku/gamecenter/download/DownloadInfo;->mDownloadUrl:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p1, Lcom/youku/gamecenter/download/DownloadInfo;->mId:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p1, Lcom/youku/gamecenter/download/DownloadInfo;->mIcon:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1161
    :cond_0
    :goto_0
    return v1

    .line 1134
    :cond_1
    iget-object v3, p1, Lcom/youku/gamecenter/download/DownloadInfo;->mPackageName:Ljava/lang/String;

    iget v4, p1, Lcom/youku/gamecenter/download/DownloadInfo;->mVersion:I

    sget-object v5, Lcom/youku/gamecenter/download/DownloadManager;->mContext:Landroid/content/Context;

    invoke-static {v3, v4, v5}, Lcom/youku/gamecenter/util/SystemUtils;->isLatestInstalled(Ljava/lang/String;ILandroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1138
    invoke-direct {p0, p1}, Lcom/youku/gamecenter/download/DownloadManager;->isExistDownList(Lcom/youku/gamecenter/download/DownloadInfo;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1141
    invoke-direct {p0}, Lcom/youku/gamecenter/download/DownloadManager;->checkUpSilentMap()V

    .line 1143
    const-string v3, "43"

    iput-object v3, p1, Lcom/youku/gamecenter/download/DownloadInfo;->mSource:Ljava/lang/String;

    .line 1145
    iget-object v3, p0, Lcom/youku/gamecenter/download/DownloadManager;->mUpSilentMap:Ljava/util/Map;

    iget-object v4, p1, Lcom/youku/gamecenter/download/DownloadInfo;->mDownloadUrl:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/gamecenter/download/DownloadInfo;

    .line 1147
    .local v0, "info":Lcom/youku/gamecenter/download/DownloadInfo;
    if-nez v0, :cond_2

    .line 1148
    iput v6, p1, Lcom/youku/gamecenter/download/DownloadInfo;->mDownloadWay:I

    .line 1149
    invoke-direct {p0, p1, v2}, Lcom/youku/gamecenter/download/DownloadManager;->sendMessage(Lcom/youku/gamecenter/download/DownloadInfo;I)V

    move v1, v2

    .line 1151
    goto :goto_0

    .line 1154
    :cond_2
    if-eqz v0, :cond_0

    iget v3, v0, Lcom/youku/gamecenter/download/DownloadInfo;->mVersion:I

    iget v4, p1, Lcom/youku/gamecenter/download/DownloadInfo;->mVersion:I

    if-ne v3, v4, :cond_0

    iget v3, v0, Lcom/youku/gamecenter/download/DownloadInfo;->mState:I

    if-eq v3, v6, :cond_0

    .line 1156
    iput v6, v0, Lcom/youku/gamecenter/download/DownloadInfo;->mDownloadWay:I

    .line 1157
    invoke-direct {p0, v0, v2}, Lcom/youku/gamecenter/download/DownloadManager;->sendMessage(Lcom/youku/gamecenter/download/DownloadInfo;I)V

    move v1, v2

    .line 1158
    goto :goto_0
.end method
