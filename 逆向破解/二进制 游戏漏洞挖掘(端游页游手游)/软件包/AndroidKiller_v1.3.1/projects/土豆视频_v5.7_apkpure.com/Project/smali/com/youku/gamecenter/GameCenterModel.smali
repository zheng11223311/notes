.class public Lcom/youku/gamecenter/GameCenterModel;
.super Landroid/content/BroadcastReceiver;
.source "GameCenterModel.java"

# interfaces
.implements Lcom/youku/gamecenter/download/IDownloadUpdate;
.implements Lcom/youku/gamecenter/GameBaseActivity$OnActivityLifeCycleChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/gamecenter/GameCenterModel$3;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "GameCenter"

.field private static sDownloadPackages:Ljava/util/Map;
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

.field private static sGameManageData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/youku/gamecenter/data/GameInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static sGamesCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/youku/gamecenter/data/GameInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static sInstalledPackages:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static sSingleton:Lcom/youku/gamecenter/GameCenterModel;


# instance fields
.field private comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/youku/gamecenter/data/GameInfo;",
            ">;"
        }
    .end annotation
.end field

.field private dateComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/youku/gamecenter/data/GameInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mAge:I

.field private mIsInstalledLoaded:Z

.field private mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/youku/gamecenter/OnGameInfoChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mNetworkStateChangeReceiver:Lcom/youku/gamecenter/receivers/NetworkStateChangeReceiver;

.field private mRegisterAge:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/youku/gamecenter/GameCenterModel;->sGamesCache:Ljava/util/Map;

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/youku/gamecenter/GameCenterModel;->sInstalledPackages:Ljava/util/Map;

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/youku/gamecenter/GameCenterModel;->sDownloadPackages:Ljava/util/Map;

    .line 69
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/youku/gamecenter/GameCenterModel;->sGameManageData:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 76
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 50
    iput v0, p0, Lcom/youku/gamecenter/GameCenterModel;->mAge:I

    .line 52
    iput v0, p0, Lcom/youku/gamecenter/GameCenterModel;->mRegisterAge:I

    .line 57
    iput-boolean v0, p0, Lcom/youku/gamecenter/GameCenterModel;->mIsInstalledLoaded:Z

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/youku/gamecenter/GameCenterModel;->mListeners:Ljava/util/List;

    .line 74
    new-instance v0, Lcom/youku/gamecenter/receivers/NetworkStateChangeReceiver;

    invoke-direct {v0}, Lcom/youku/gamecenter/receivers/NetworkStateChangeReceiver;-><init>()V

    iput-object v0, p0, Lcom/youku/gamecenter/GameCenterModel;->mNetworkStateChangeReceiver:Lcom/youku/gamecenter/receivers/NetworkStateChangeReceiver;

    .line 87
    new-instance v0, Lcom/youku/gamecenter/GameCenterModel$1;

    invoke-direct {v0, p0}, Lcom/youku/gamecenter/GameCenterModel$1;-><init>(Lcom/youku/gamecenter/GameCenterModel;)V

    iput-object v0, p0, Lcom/youku/gamecenter/GameCenterModel;->comparator:Ljava/util/Comparator;

    .line 96
    new-instance v0, Lcom/youku/gamecenter/GameCenterModel$2;

    invoke-direct {v0, p0}, Lcom/youku/gamecenter/GameCenterModel$2;-><init>(Lcom/youku/gamecenter/GameCenterModel;)V

    iput-object v0, p0, Lcom/youku/gamecenter/GameCenterModel;->dateComparator:Ljava/util/Comparator;

    .line 77
    return-void
.end method

.method private addGameManagerData(Lcom/youku/gamecenter/download/DownloadInfo;Lcom/youku/gamecenter/data/GameInfoStatus;)V
    .locals 6
    .param p1, "downloadInfo"    # Lcom/youku/gamecenter/download/DownloadInfo;
    .param p2, "status"    # Lcom/youku/gamecenter/data/GameInfoStatus;

    .prologue
    .line 483
    iget v3, p1, Lcom/youku/gamecenter/download/DownloadInfo;->mType:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_0

    .line 510
    :goto_0
    return-void

    .line 486
    :cond_0
    invoke-direct {p0, p1}, Lcom/youku/gamecenter/GameCenterModel;->transformDownloadInfoToGameInfo(Lcom/youku/gamecenter/download/DownloadInfo;)Lcom/youku/gamecenter/data/GameInfo;

    move-result-object v0

    .line 487
    .local v0, "gameInfo":Lcom/youku/gamecenter/data/GameInfo;
    iput-object p2, v0, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    .line 488
    const/4 v3, 0x0

    iput v3, v0, Lcom/youku/gamecenter/data/GameInfo;->sort_state:I

    .line 490
    sget-object v3, Lcom/youku/gamecenter/GameCenterModel;->sGameManageData:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/gamecenter/data/GameInfo;

    .line 491
    .local v2, "info":Lcom/youku/gamecenter/data/GameInfo;
    iget-object v3, v2, Lcom/youku/gamecenter/data/GameInfo;->packagename:Ljava/lang/String;

    iget-object v4, v0, Lcom/youku/gamecenter/data/GameInfo;->packagename:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 492
    const-string/jumbo v3, "songxl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "has "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/youku/gamecenter/data/GameInfo;->appname:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " already!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    iget v3, p1, Lcom/youku/gamecenter/download/DownloadInfo;->mState:I

    invoke-static {v3}, Lcom/youku/gamecenter/GameCenterModel;->transformDownloadStateToGameInfoStatus(I)Lcom/youku/gamecenter/data/GameInfoStatus;

    move-result-object v3

    iput-object v3, v2, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    .line 494
    iget-object v3, v2, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    invoke-direct {p0, v3}, Lcom/youku/gamecenter/GameCenterModel;->transformStatusToState(Lcom/youku/gamecenter/data/GameInfoStatus;)I

    move-result v3

    iput v3, v2, Lcom/youku/gamecenter/data/GameInfo;->sort_state:I

    .line 495
    iget v3, v0, Lcom/youku/gamecenter/data/GameInfo;->ver_code:I

    iput v3, v2, Lcom/youku/gamecenter/data/GameInfo;->ver_code:I

    .line 496
    iget v3, v0, Lcom/youku/gamecenter/data/GameInfo;->ver_code:I

    iput v3, v2, Lcom/youku/gamecenter/data/GameInfo;->download_version_code:I

    .line 498
    iget-object v3, v0, Lcom/youku/gamecenter/data/GameInfo;->download_link:Ljava/lang/String;

    iput-object v3, v2, Lcom/youku/gamecenter/data/GameInfo;->download_link_for_update:Ljava/lang/String;

    .line 499
    iget-wide v4, v0, Lcom/youku/gamecenter/data/GameInfo;->currentLength:J

    iput-wide v4, v2, Lcom/youku/gamecenter/data/GameInfo;->currentLength:J

    goto :goto_0

    .line 505
    .end local v2    # "info":Lcom/youku/gamecenter/data/GameInfo;
    :cond_2
    const-string/jumbo v3, "songxl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v0, Lcom/youku/gamecenter/data/GameInfo;->appname:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is a new one"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    iget-object v3, v0, Lcom/youku/gamecenter/data/GameInfo;->packagename:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/youku/gamecenter/GameCenterModel;->getInstalledVersionName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/youku/gamecenter/data/GameInfo;->current_version_name:Ljava/lang/String;

    .line 507
    iget-object v3, v0, Lcom/youku/gamecenter/data/GameInfo;->packagename:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/youku/gamecenter/GameCenterModel;->getInstalledVersionCode(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/youku/gamecenter/data/GameInfo;->current_version_code:I

    .line 508
    sget-object v3, Lcom/youku/gamecenter/GameCenterModel;->sGameManageData:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method public static cancelDownloadTask(Landroid/content/Context;Lcom/youku/gamecenter/data/GameInfo;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "gameInfo"    # Lcom/youku/gamecenter/data/GameInfo;

    .prologue
    .line 339
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cancelDownloadTask "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/youku/gamecenter/data/GameInfo;->appname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ,   "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/youku/gamecenter/data/GameInfo;->download_link_for_update:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/youku/gamecenter/GameCenterModel;->dumpLogs(Ljava/lang/String;)V

    .line 342
    invoke-static {p0}, Lcom/youku/gamecenter/download/DownloadManager;->getInstance(Landroid/content/Context;)Lcom/youku/gamecenter/download/DownloadManager;

    move-result-object v0

    iget-object v1, p1, Lcom/youku/gamecenter/data/GameInfo;->download_link_for_update:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/youku/gamecenter/download/DownloadManager;->cancelDownload(Ljava/lang/String;)V

    .line 344
    return-void
.end method

.method public static clearDatas(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1323
    const-string v0, "clearDatas,   clear datas !!!!!!!!!!!"

    invoke-static {v0}, Lcom/youku/gamecenter/GameCenterModel;->dumpLogs(Ljava/lang/String;)V

    .line 1325
    sget-object v0, Lcom/youku/gamecenter/GameCenterModel;->sGamesCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1326
    sget-object v0, Lcom/youku/gamecenter/GameCenterModel;->sGameManageData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1328
    sget-object v0, Lcom/youku/gamecenter/GameCenterModel;->sDownloadPackages:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1336
    return-void
.end method

.method public static clearInstalledNotifycation(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1142
    invoke-static {p1}, Lcom/youku/gamecenter/GameCenterModel;->getGameInfoFromCache(Ljava/lang/String;)Lcom/youku/gamecenter/data/GameInfo;

    move-result-object v1

    .line 1144
    .local v1, "game":Lcom/youku/gamecenter/data/GameInfo;
    if-nez v1, :cond_1

    .line 1159
    :cond_0
    :goto_0
    return-void

    .line 1148
    :cond_1
    iget v2, v1, Lcom/youku/gamecenter/data/GameInfo;->notificationID:I

    if-eqz v2, :cond_0

    .line 1153
    :try_start_0
    const-string v2, "notification"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    iget v3, v1, Lcom/youku/gamecenter/data/GameInfo;->notificationID:I

    invoke-virtual {v2, v3}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1156
    :catch_0
    move-exception v0

    .line 1157
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "NotificationManager-> clear notifycation error!!"

    invoke-static {v2}, Lcom/youku/gamecenter/GameCenterModel;->dumpLogs(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static deleteApkFile(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "needCallBack"    # Z

    .prologue
    .line 1123
    sget-object v1, Lcom/youku/gamecenter/GameCenterModel;->sDownloadPackages:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/gamecenter/download/DownloadInfo;

    .line 1125
    .local v0, "downloadInfo":Lcom/youku/gamecenter/download/DownloadInfo;
    invoke-static {p0}, Lcom/youku/gamecenter/download/DownloadManager;->getInstance(Landroid/content/Context;)Lcom/youku/gamecenter/download/DownloadManager;

    move-result-object v1

    invoke-virtual {v1, p0, v0, p2}, Lcom/youku/gamecenter/download/DownloadManager;->deleteApkFile(Landroid/content/Context;Lcom/youku/gamecenter/download/DownloadInfo;Z)V

    .line 1128
    return-void
.end method

.method public static deleteDownloadTask(Landroid/content/Context;Lcom/youku/gamecenter/data/GameInfo;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "gameInfo"    # Lcom/youku/gamecenter/data/GameInfo;

    .prologue
    .line 348
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteDownloadTask "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/youku/gamecenter/data/GameInfo;->appname:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/youku/gamecenter/data/GameInfo;->download_link_for_update:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/youku/gamecenter/GameCenterModel;->dumpLogs(Ljava/lang/String;)V

    .line 350
    iget-object v1, p1, Lcom/youku/gamecenter/data/GameInfo;->packagename:Ljava/lang/String;

    invoke-static {v1}, Lcom/youku/gamecenter/GameCenterModel;->isAppInstalled(Ljava/lang/String;)Z

    move-result v0

    .line 351
    .local v0, "retainDB":Z
    if-eqz v0, :cond_0

    .line 352
    iget-object v1, p1, Lcom/youku/gamecenter/data/GameInfo;->packagename:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Lcom/youku/gamecenter/GameCenterModel;->deleteApkFile(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 358
    :goto_0
    return-void

    .line 355
    :cond_0
    invoke-static {p0}, Lcom/youku/gamecenter/download/DownloadManager;->getInstance(Landroid/content/Context;)Lcom/youku/gamecenter/download/DownloadManager;

    move-result-object v1

    iget-object v2, p1, Lcom/youku/gamecenter/data/GameInfo;->download_link_for_update:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/youku/gamecenter/download/DownloadManager;->deleteDownloaded(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private deleteRecomLaunchItem(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packagename"    # Ljava/lang/String;

    .prologue
    .line 1188
    invoke-static {p1, p2}, Lcom/youku/gamecenter/providers/GameCenterProviderHelper;->deleteExistDialogInstalledlistItem(Landroid/content/Context;Ljava/lang/String;)V

    .line 1190
    return-void
.end method

.method private dumpDownloadedGamesLogs(Ljava/util/List;)V
    .locals 5
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
    .line 1351
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/youku/gamecenter/download/DownloadInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/gamecenter/download/DownloadInfo;

    .line 1352
    .local v1, "info":Lcom/youku/gamecenter/download/DownloadInfo;
    const-string v2, "GameCenter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-> downloaded app: \t"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/youku/gamecenter/download/DownloadInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , \t "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/youku/gamecenter/download/DownloadInfo;->mDownloadTitle:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1355
    .end local v1    # "info":Lcom/youku/gamecenter/download/DownloadInfo;
    :cond_0
    return-void
.end method

.method private dumpGamesLogs(Ljava/lang/String;Ljava/util/List;)V
    .locals 5
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/youku/gamecenter/data/GameInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1343
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/youku/gamecenter/data/GameInfo;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/gamecenter/data/GameInfo;

    .line 1344
    .local v1, "info":Lcom/youku/gamecenter/data/GameInfo;
    const-string v2, "GameCenter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/youku/gamecenter/data/GameInfo;->packagename:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , \t "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/youku/gamecenter/data/GameInfo;->appname:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1348
    .end local v1    # "info":Lcom/youku/gamecenter/data/GameInfo;
    :cond_0
    return-void
.end method

.method private dumpInstalledAppLogs(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1358
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    .line 1359
    .local v1, "info":Landroid/content/pm/PackageInfo;
    const-string v2, "GameCenter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-> installed app: \t"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1362
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    :cond_0
    return-void
.end method

.method private static dumpLogs(Ljava/lang/String;)V
    .locals 3
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 1339
    const-string v0, "GameCenter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/youku/gamecenter/GameCenterModel;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1340
    return-void
.end method

.method public static getDownloadingGameManagerData()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/youku/gamecenter/data/GameInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 259
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 260
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/youku/gamecenter/data/GameInfo;>;"
    sget-object v3, Lcom/youku/gamecenter/GameCenterModel;->sGameManageData:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/gamecenter/data/GameInfo;

    .line 261
    .local v1, "info":Lcom/youku/gamecenter/data/GameInfo;
    iget-object v3, v1, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    sget-object v4, Lcom/youku/gamecenter/data/GameInfoStatus;->STATUS_DOWNLOAD_ING:Lcom/youku/gamecenter/data/GameInfoStatus;

    if-eq v3, v4, :cond_1

    iget-object v3, v1, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    sget-object v4, Lcom/youku/gamecenter/data/GameInfoStatus;->STATUS_DOWNLOAD_PAUSE:Lcom/youku/gamecenter/data/GameInfoStatus;

    if-eq v3, v4, :cond_1

    iget-object v3, v1, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    sget-object v4, Lcom/youku/gamecenter/data/GameInfoStatus;->STATUS_DOWNLOAD_STOP:Lcom/youku/gamecenter/data/GameInfoStatus;

    if-eq v3, v4, :cond_1

    iget-object v3, v1, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    sget-object v4, Lcom/youku/gamecenter/data/GameInfoStatus;->STATUS_DOWNLOAD_DONE:Lcom/youku/gamecenter/data/GameInfoStatus;

    if-eq v3, v4, :cond_1

    iget-object v3, v1, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    sget-object v4, Lcom/youku/gamecenter/data/GameInfoStatus;->STATUS_DOWNLOAD_PENDING:Lcom/youku/gamecenter/data/GameInfoStatus;

    if-ne v3, v4, :cond_0

    .line 266
    :cond_1
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 270
    .end local v1    # "info":Lcom/youku/gamecenter/data/GameInfo;
    :cond_2
    return-object v2
.end method

.method public static getGameInfoByPackageName(Ljava/lang/String;)Lcom/youku/gamecenter/data/GameInfo;
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 549
    sget-object v0, Lcom/youku/gamecenter/GameCenterModel;->sGamesCache:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/gamecenter/data/GameInfo;

    return-object v0
.end method

.method public static getGameInfoFromCache(Ljava/lang/String;)Lcom/youku/gamecenter/data/GameInfo;
    .locals 2
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 894
    sget-object v1, Lcom/youku/gamecenter/GameCenterModel;->sGamesCache:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 895
    sget-object v1, Lcom/youku/gamecenter/GameCenterModel;->sGamesCache:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/gamecenter/data/GameInfo;

    .line 902
    :goto_0
    return-object v1

    .line 898
    :cond_0
    new-instance v0, Lcom/youku/gamecenter/data/GameInfo;

    invoke-direct {v0}, Lcom/youku/gamecenter/data/GameInfo;-><init>()V

    .line 899
    .local v0, "gameInfo":Lcom/youku/gamecenter/data/GameInfo;
    iput-object p0, v0, Lcom/youku/gamecenter/data/GameInfo;->packagename:Ljava/lang/String;

    .line 900
    sget-object v1, Lcom/youku/gamecenter/GameCenterModel;->sGamesCache:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 902
    goto :goto_0
.end method

.method public static getGameInfoFromManager(Ljava/lang/String;)Lcom/youku/gamecenter/data/GameInfo;
    .locals 3
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 553
    sget-object v2, Lcom/youku/gamecenter/GameCenterModel;->sGameManageData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/gamecenter/data/GameInfo;

    .line 554
    .local v0, "game":Lcom/youku/gamecenter/data/GameInfo;
    iget-object v2, v0, Lcom/youku/gamecenter/data/GameInfo;->packagename:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 558
    .end local v0    # "game":Lcom/youku/gamecenter/data/GameInfo;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getGameManagerData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/youku/gamecenter/data/GameInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 206
    sget-object v0, Lcom/youku/gamecenter/GameCenterModel;->sGameManageData:Ljava/util/List;

    return-object v0
.end method

.method public static getGameManagerDataByType(Lcom/youku/gamecenter/GameManagerFragment$GameManagerType;)Ljava/util/List;
    .locals 3
    .param p0, "type"    # Lcom/youku/gamecenter/GameManagerFragment$GameManagerType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/youku/gamecenter/GameManagerFragment$GameManagerType;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/youku/gamecenter/data/GameInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 274
    sget-object v0, Lcom/youku/gamecenter/GameCenterModel$3;->$SwitchMap$com$youku$gamecenter$GameManagerFragment$GameManagerType:[I

    invoke-virtual {p0}, Lcom/youku/gamecenter/GameManagerFragment$GameManagerType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 283
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Method getGameManagerDataByType Not support "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " !"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 276
    :pswitch_0
    invoke-static {}, Lcom/youku/gamecenter/GameCenterModel;->getInstalledAndUpgradeGameManagerData()Ljava/util/List;

    move-result-object v0

    .line 280
    :goto_0
    return-object v0

    .line 278
    :pswitch_1
    invoke-static {}, Lcom/youku/gamecenter/GameCenterModel;->getUninstalledGameManagerData()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 280
    :pswitch_2
    invoke-static {}, Lcom/youku/gamecenter/GameCenterModel;->getUpgradeGameManagerData()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 274
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static getInstalledAndUpgradeGameManagerData()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/youku/gamecenter/data/GameInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 221
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 222
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/youku/gamecenter/data/GameInfo;>;"
    sget-object v4, Lcom/youku/gamecenter/GameCenterModel;->sGameManageData:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/gamecenter/data/GameInfo;

    .line 223
    .local v1, "info":Lcom/youku/gamecenter/data/GameInfo;
    iget-object v3, v1, Lcom/youku/gamecenter/data/GameInfo;->packagename:Ljava/lang/String;

    .line 224
    .local v3, "packagename":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 227
    sget-object v4, Lcom/youku/gamecenter/GameCenterModel;->sInstalledPackages:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 228
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 233
    .end local v1    # "info":Lcom/youku/gamecenter/data/GameInfo;
    .end local v3    # "packagename":Ljava/lang/String;
    :cond_1
    return-object v2
.end method

.method public static getInstalledGameManagerData()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/youku/gamecenter/data/GameInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 210
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 211
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/youku/gamecenter/data/GameInfo;>;"
    sget-object v3, Lcom/youku/gamecenter/GameCenterModel;->sGameManageData:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/gamecenter/data/GameInfo;

    .line 212
    .local v1, "info":Lcom/youku/gamecenter/data/GameInfo;
    iget-object v3, v1, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    sget-object v4, Lcom/youku/gamecenter/data/GameInfoStatus;->STATUS_INSTALLED:Lcom/youku/gamecenter/data/GameInfoStatus;

    if-ne v3, v4, :cond_0

    .line 213
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 217
    .end local v1    # "info":Lcom/youku/gamecenter/data/GameInfo;
    :cond_1
    return-object v2
.end method

.method private getInstalledPackages(Landroid/content/Context;)Ljava/util/List;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 599
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 600
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 605
    .end local v1    # "packageManager":Landroid/content/pm/PackageManager;
    :goto_0
    return-object v2

    .line 601
    :catch_0
    move-exception v0

    .line 602
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "GameCenter"

    const-string v3, "GameCenterModel->getInstalledPackages  exception!!"

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 605
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_0
.end method

.method private getInstalledVersionCode(Ljava/lang/String;)I
    .locals 3
    .param p1, "packagename"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 524
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 531
    :cond_0
    :goto_0
    return v1

    .line 527
    :cond_1
    sget-object v2, Lcom/youku/gamecenter/GameCenterModel;->sInstalledPackages:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    .line 528
    .local v0, "info":Landroid/content/pm/PackageInfo;
    if-eqz v0, :cond_0

    .line 531
    iget v1, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    goto :goto_0
.end method

.method private getInstalledVersionName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "packagename"    # Ljava/lang/String;

    .prologue
    .line 513
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 514
    const-string v1, ""

    .line 520
    :goto_0
    return-object v1

    .line 516
    :cond_0
    sget-object v1, Lcom/youku/gamecenter/GameCenterModel;->sInstalledPackages:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    .line 517
    .local v0, "info":Landroid/content/pm/PackageInfo;
    if-nez v0, :cond_1

    .line 518
    const-string v1, ""

    goto :goto_0

    .line 520
    :cond_1
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    goto :goto_0
.end method

.method public static declared-synchronized getInstance()Lcom/youku/gamecenter/GameCenterModel;
    .locals 2

    .prologue
    .line 80
    const-class v1, Lcom/youku/gamecenter/GameCenterModel;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/youku/gamecenter/GameCenterModel;->sSingleton:Lcom/youku/gamecenter/GameCenterModel;

    if-nez v0, :cond_0

    .line 81
    new-instance v0, Lcom/youku/gamecenter/GameCenterModel;

    invoke-direct {v0}, Lcom/youku/gamecenter/GameCenterModel;-><init>()V

    sput-object v0, Lcom/youku/gamecenter/GameCenterModel;->sSingleton:Lcom/youku/gamecenter/GameCenterModel;

    .line 83
    :cond_0
    sget-object v0, Lcom/youku/gamecenter/GameCenterModel;->sSingleton:Lcom/youku/gamecenter/GameCenterModel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 80
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 541
    sget-object v0, Lcom/youku/gamecenter/GameCenterModel;->sInstalledPackages:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    return-object v0
.end method

.method private getPackageInfoByName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1201
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1203
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v1, p2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1208
    :goto_0
    return-object v2

    .line 1205
    :catch_0
    move-exception v0

    .line 1206
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 1208
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getUninstalledGameManagerData()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/youku/gamecenter/data/GameInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 237
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 238
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/youku/gamecenter/data/GameInfo;>;"
    sget-object v3, Lcom/youku/gamecenter/GameCenterModel;->sGameManageData:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/gamecenter/data/GameInfo;

    .line 239
    .local v1, "info":Lcom/youku/gamecenter/data/GameInfo;
    invoke-static {v1}, Lcom/youku/gamecenter/GameCenterModel;->isGameUninstalled(Lcom/youku/gamecenter/data/GameInfo;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 240
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 244
    .end local v1    # "info":Lcom/youku/gamecenter/data/GameInfo;
    :cond_1
    return-object v2
.end method

.method public static getUpgradationPara()Ljava/lang/String;
    .locals 6

    .prologue
    .line 1391
    invoke-static {}, Lcom/youku/gamecenter/GameCenterModel;->getInstalledGameManagerData()Ljava/util/List;

    move-result-object v2

    .line 1393
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/youku/gamecenter/data/GameInfo;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1394
    .local v3, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v4, "{"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1395
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 1396
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/gamecenter/data/GameInfo;

    .line 1397
    .local v0, "gameInfo":Lcom/youku/gamecenter/data/GameInfo;
    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1398
    iget-object v4, v0, Lcom/youku/gamecenter/data/GameInfo;->packagename:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1399
    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1400
    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1401
    iget v4, v0, Lcom/youku/gamecenter/data/GameInfo;->ver_code:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1402
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v5, v1, -0x1

    if-ne v4, v5, :cond_0

    const-string v4, ""

    :goto_1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1395
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1402
    :cond_0
    const-string v4, ","

    goto :goto_1

    .line 1404
    .end local v0    # "gameInfo":Lcom/youku/gamecenter/data/GameInfo;
    :cond_1
    const-string/jumbo v4, "}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1406
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/youku/gamecenter/services/URLContainer;->URLEncoder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static getUpgradeGameManagerData()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/youku/gamecenter/data/GameInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 248
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 249
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/youku/gamecenter/data/GameInfo;>;"
    sget-object v3, Lcom/youku/gamecenter/GameCenterModel;->sGameManageData:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/gamecenter/data/GameInfo;

    .line 250
    .local v1, "info":Lcom/youku/gamecenter/data/GameInfo;
    iget-object v3, v1, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    sget-object v4, Lcom/youku/gamecenter/data/GameInfoStatus;->STATUS_UPDATEABLE:Lcom/youku/gamecenter/data/GameInfoStatus;

    if-ne v3, v4, :cond_0

    .line 251
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 255
    .end local v1    # "info":Lcom/youku/gamecenter/data/GameInfo;
    :cond_1
    return-object v2
.end method

.method private handlePackageAdded(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 1080
    invoke-direct {p0, p1, p2}, Lcom/youku/gamecenter/GameCenterModel;->getPackageInfoByName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 1081
    .local v3, "pi":Landroid/content/pm/PackageInfo;
    if-nez v3, :cond_0

    .line 1118
    :goto_0
    return-void

    .line 1085
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onReceive packageAdded:\t"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , remove it from sInstalledPackages"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/youku/gamecenter/GameCenterModel;->dumpLogs(Ljava/lang/String;)V

    .line 1088
    sget-object v4, Lcom/youku/gamecenter/GameCenterModel;->sInstalledPackages:Ljava/util/Map;

    invoke-interface {v4, p2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1092
    invoke-static {p1}, Lcom/youku/gamecenter/download/DownloadManager;->getInstance(Landroid/content/Context;)Lcom/youku/gamecenter/download/DownloadManager;

    move-result-object v0

    .line 1093
    .local v0, "dm":Lcom/youku/gamecenter/download/DownloadManager;
    invoke-virtual {v0, p1, p2}, Lcom/youku/gamecenter/download/DownloadManager;->getDownloadInfoFromSilentList(Landroid/content/Context;Ljava/lang/String;)Lcom/youku/gamecenter/download/DownloadInfo;

    move-result-object v2

    .line 1095
    .local v2, "info":Lcom/youku/gamecenter/download/DownloadInfo;
    if-eqz v2, :cond_1

    .line 1096
    invoke-virtual {v0, v2, v6}, Lcom/youku/gamecenter/download/DownloadManager;->changeDownloadTypeFromSQL(Lcom/youku/gamecenter/download/DownloadInfo;I)V

    .line 1098
    iget v4, v2, Lcom/youku/gamecenter/download/DownloadInfo;->mVersion:I

    invoke-virtual {v0, p2, v4}, Lcom/youku/gamecenter/download/DownloadManager;->deleteOlderGameDownload(Ljava/lang/String;I)V

    .line 1099
    sget-object v4, Lcom/youku/gamecenter/GameCenterModel;->sDownloadPackages:Ljava/util/Map;

    invoke-interface {v4, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1100
    invoke-direct {p0, v2}, Lcom/youku/gamecenter/GameCenterModel;->transformDownloadInfoToGameInfo(Lcom/youku/gamecenter/download/DownloadInfo;)Lcom/youku/gamecenter/data/GameInfo;

    move-result-object v1

    .line 1101
    .local v1, "gameInfo":Lcom/youku/gamecenter/data/GameInfo;
    sget-object v4, Lcom/youku/gamecenter/GameCenterModel;->sGameManageData:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1107
    .end local v1    # "gameInfo":Lcom/youku/gamecenter/data/GameInfo;
    :cond_1
    invoke-static {p1, p2, v6}, Lcom/youku/gamecenter/GameCenterModel;->deleteApkFile(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 1109
    const/4 v4, 0x1

    invoke-static {p2, v4}, Lcom/youku/gamecenter/GameCenterModel;->updateGameInfoStatus(Ljava/lang/String;Z)V

    .line 1112
    invoke-direct {p0, p2}, Lcom/youku/gamecenter/GameCenterModel;->updateStatusWhenInstalledGame(Ljava/lang/String;)V

    .line 1114
    invoke-direct {p0, p1, p2}, Lcom/youku/gamecenter/GameCenterModel;->insertRecomLaunchItemWhenPackageDownloaded(Landroid/content/Context;Ljava/lang/String;)V

    .line 1116
    invoke-static {p1, p2}, Lcom/youku/gamecenter/GameCenterModel;->clearInstalledNotifycation(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handlePackageRemoved(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceive packageRemoved:\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " , remove it from sInstalledPackages"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/youku/gamecenter/GameCenterModel;->dumpLogs(Ljava/lang/String;)V

    .line 1165
    sget-object v0, Lcom/youku/gamecenter/GameCenterModel;->sInstalledPackages:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1167
    invoke-static {p2}, Lcom/youku/gamecenter/GameCenterModel;->updateGameInfoStatus(Ljava/lang/String;)V

    .line 1170
    invoke-direct {p0, p2}, Lcom/youku/gamecenter/GameCenterModel;->updateStatusWhenUninstalledGame(Ljava/lang/String;)V

    .line 1172
    invoke-direct {p0, p1, p2}, Lcom/youku/gamecenter/GameCenterModel;->deleteRecomLaunchItem(Landroid/content/Context;Ljava/lang/String;)V

    .line 1173
    return-void
.end method

.method private insertRecomLaunchItemWhenPackageDownloaded(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packagename"    # Ljava/lang/String;

    .prologue
    .line 1177
    sget-object v0, Lcom/youku/gamecenter/GameCenterModel;->sDownloadPackages:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1185
    :goto_0
    return-void

    .line 1180
    :cond_0
    sget-object v0, Lcom/youku/gamecenter/GameCenterModel;->sDownloadPackages:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/youku/gamecenter/download/DownloadInfo;

    .line 1181
    .local v6, "downloadInfo":Lcom/youku/gamecenter/download/DownloadInfo;
    const-string v1, "empty"

    iget-object v2, v6, Lcom/youku/gamecenter/download/DownloadInfo;->mId:Ljava/lang/String;

    const-string v4, "0"

    const-string v5, "recom_launch"

    move-object v0, p1

    move-object v3, p2

    invoke-static/range {v0 .. v5}, Lcom/youku/gamecenter/providers/GameCenterProviderHelper;->insertExistDialogRecomGames(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private isAppAdded(Ljava/lang/String;)Z
    .locals 1
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 1217
    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isAppInstalled(Ljava/lang/String;)Z
    .locals 2
    .param p0, "packagename"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 290
    sget-object v1, Lcom/youku/gamecenter/GameCenterModel;->sInstalledPackages:Ljava/util/Map;

    if-nez v1, :cond_1

    .line 296
    :cond_0
    :goto_0
    return v0

    .line 293
    :cond_1
    sget-object v1, Lcom/youku/gamecenter/GameCenterModel;->sInstalledPackages:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 296
    sget-object v0, Lcom/youku/gamecenter/GameCenterModel;->sInstalledPackages:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private isAppRemoved(Ljava/lang/String;)Z
    .locals 1
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 1212
    const-string v0, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isCurrentVersionDownloaded(Lcom/youku/gamecenter/data/GameInfo;)Z
    .locals 2
    .param p0, "info"    # Lcom/youku/gamecenter/data/GameInfo;

    .prologue
    .line 727
    iget-object v0, p0, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    sget-object v1, Lcom/youku/gamecenter/data/GameInfoStatus;->STATUS_DOWNLOAD_DONE:Lcom/youku/gamecenter/data/GameInfoStatus;

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/youku/gamecenter/data/GameInfo;->download_version_code:I

    iget v1, p0, Lcom/youku/gamecenter/data/GameInfo;->current_version_code:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isDelayRefresh(Lcom/youku/gamecenter/data/GameInfoStatus;Z)Z
    .locals 1
    .param p1, "status"    # Lcom/youku/gamecenter/data/GameInfoStatus;
    .param p2, "isStatusChanged"    # Z

    .prologue
    .line 820
    if-nez p2, :cond_0

    sget-object v0, Lcom/youku/gamecenter/data/GameInfoStatus;->STATUS_DOWNLOAD_ING:Lcom/youku/gamecenter/data/GameInfoStatus;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isGameStatusChanged(Lcom/youku/gamecenter/data/GameInfo;Lcom/youku/gamecenter/data/GameInfoStatus;)Z
    .locals 2
    .param p1, "gameInfo"    # Lcom/youku/gamecenter/data/GameInfo;
    .param p2, "status"    # Lcom/youku/gamecenter/data/GameInfoStatus;

    .prologue
    const/4 v0, 0x0

    .line 812
    if-nez p1, :cond_1

    .line 815
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p1, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    if-eq v1, p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static isGameUninstalled(Lcom/youku/gamecenter/data/GameInfo;)Z
    .locals 3
    .param p0, "info"    # Lcom/youku/gamecenter/data/GameInfo;

    .prologue
    const/4 v0, 0x1

    .line 326
    iget-object v1, p0, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    sget-object v2, Lcom/youku/gamecenter/data/GameInfoStatus;->STATUS_DOWNLOAD_DONE:Lcom/youku/gamecenter/data/GameInfoStatus;

    if-ne v1, v2, :cond_1

    .line 335
    :cond_0
    :goto_0
    return v0

    .line 329
    :cond_1
    iget-object v1, p0, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    sget-object v2, Lcom/youku/gamecenter/data/GameInfoStatus;->STATUS_DOWNLOAD_ING:Lcom/youku/gamecenter/data/GameInfoStatus;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    sget-object v2, Lcom/youku/gamecenter/data/GameInfoStatus;->STATUS_DOWNLOAD_PAUSE:Lcom/youku/gamecenter/data/GameInfoStatus;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    sget-object v2, Lcom/youku/gamecenter/data/GameInfoStatus;->STATUS_DOWNLOAD_STOP:Lcom/youku/gamecenter/data/GameInfoStatus;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    sget-object v2, Lcom/youku/gamecenter/data/GameInfoStatus;->STATUS_DOWNLOAD_PENDING:Lcom/youku/gamecenter/data/GameInfoStatus;

    if-eq v1, v2, :cond_0

    .line 335
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPackageDownloaded(Ljava/lang/String;)Z
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 545
    sget-object v0, Lcom/youku/gamecenter/GameCenterModel;->sDownloadPackages:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isPackageInstalled(Ljava/lang/String;)Z
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 537
    sget-object v0, Lcom/youku/gamecenter/GameCenterModel;->sInstalledPackages:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isUpdateShouldBeRemoved(Lcom/youku/gamecenter/data/GameInfo;)Z
    .locals 4
    .param p1, "gameInfo"    # Lcom/youku/gamecenter/data/GameInfo;

    .prologue
    const/4 v1, 0x0

    .line 990
    iget-object v2, p1, Lcom/youku/gamecenter/data/GameInfo;->packagename:Ljava/lang/String;

    invoke-static {v2}, Lcom/youku/gamecenter/GameCenterModel;->getGameInfoByPackageName(Ljava/lang/String;)Lcom/youku/gamecenter/data/GameInfo;

    move-result-object v0

    .line 992
    .local v0, "originGameInfo":Lcom/youku/gamecenter/data/GameInfo;
    if-nez v0, :cond_1

    .line 1000
    :cond_0
    :goto_0
    return v1

    .line 996
    :cond_1
    iget-object v2, p1, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    sget-object v3, Lcom/youku/gamecenter/data/GameInfoStatus;->STATUS_UPDATEABLE:Lcom/youku/gamecenter/data/GameInfoStatus;

    if-ne v2, v3, :cond_0

    .line 1000
    iget-boolean v2, v0, Lcom/youku/gamecenter/data/GameInfo;->isDownloadedOldVersion:Z

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private loadDownloadPackages(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x0

    .line 609
    invoke-static {p1}, Lcom/youku/gamecenter/download/DownloadManager;->getInstance(Landroid/content/Context;)Lcom/youku/gamecenter/download/DownloadManager;

    move-result-object v0

    .line 610
    .local v0, "downloadManager":Lcom/youku/gamecenter/download/DownloadManager;
    invoke-virtual {v0, p0}, Lcom/youku/gamecenter/download/DownloadManager;->setIDownloadUpdate(Lcom/youku/gamecenter/download/IDownloadUpdate;)V

    .line 611
    invoke-virtual {v0}, Lcom/youku/gamecenter/download/DownloadManager;->getAllDownloadInfo()Ljava/util/List;

    move-result-object v3

    .line 612
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Lcom/youku/gamecenter/download/DownloadInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/gamecenter/download/DownloadInfo;

    .line 613
    .local v2, "info":Lcom/youku/gamecenter/download/DownloadInfo;
    if-eqz v2, :cond_0

    .line 616
    iget v4, v2, Lcom/youku/gamecenter/download/DownloadInfo;->mType:I

    if-eqz v4, :cond_1

    iget v4, v2, Lcom/youku/gamecenter/download/DownloadInfo;->mType:I

    const/4 v5, 0x5

    if-ne v4, v5, :cond_2

    .line 618
    :cond_1
    sget-object v4, Lcom/youku/gamecenter/GameCenterModel;->sDownloadPackages:Ljava/util/Map;

    iget-object v5, v2, Lcom/youku/gamecenter/download/DownloadInfo;->mPackageName:Ljava/lang/String;

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 621
    :cond_2
    iget v4, v2, Lcom/youku/gamecenter/download/DownloadInfo;->mType:I

    if-ne v4, v7, :cond_3

    iget v4, v2, Lcom/youku/gamecenter/download/DownloadInfo;->mProgress:I

    const/16 v5, 0x64

    if-ne v4, v5, :cond_3

    .line 623
    iget-object v4, v2, Lcom/youku/gamecenter/download/DownloadInfo;->mPackageName:Ljava/lang/String;

    iget v5, v2, Lcom/youku/gamecenter/download/DownloadInfo;->mVersion:I

    invoke-virtual {v0, v4, v5}, Lcom/youku/gamecenter/download/DownloadManager;->deleteOlderGameDownload(Ljava/lang/String;I)V

    .line 625
    invoke-virtual {v0, v2, v6}, Lcom/youku/gamecenter/download/DownloadManager;->changeDownloadTypeFromSQL(Lcom/youku/gamecenter/download/DownloadInfo;I)V

    .line 627
    sget-object v4, Lcom/youku/gamecenter/GameCenterModel;->sDownloadPackages:Ljava/util/Map;

    iget-object v5, v2, Lcom/youku/gamecenter/download/DownloadInfo;->mPackageName:Ljava/lang/String;

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 628
    iget-object v4, v2, Lcom/youku/gamecenter/download/DownloadInfo;->mPackageName:Ljava/lang/String;

    invoke-direct {p0, v4, v6}, Lcom/youku/gamecenter/GameCenterModel;->notifyListenerDataChanged(Ljava/lang/String;Z)V

    goto :goto_0

    .line 631
    :cond_3
    sget-object v4, Lcom/youku/gamecenter/GameCenterModel;->sInstalledPackages:Ljava/util/Map;

    iget-object v5, v2, Lcom/youku/gamecenter/download/DownloadInfo;->mPackageName:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 632
    sget-object v4, Lcom/youku/gamecenter/GameCenterModel;->sInstalledPackages:Ljava/util/Map;

    iget-object v5, v2, Lcom/youku/gamecenter/download/DownloadInfo;->mPackageName:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageInfo;

    iget v4, v4, Landroid/content/pm/PackageInfo;->versionCode:I

    iget v5, v2, Lcom/youku/gamecenter/download/DownloadInfo;->mVersion:I

    if-ne v4, v5, :cond_0

    .line 634
    iget v4, v2, Lcom/youku/gamecenter/download/DownloadInfo;->mType:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_4

    iget v4, v2, Lcom/youku/gamecenter/download/DownloadInfo;->mType:I

    if-ne v4, v7, :cond_0

    .line 636
    :cond_4
    sget-object v4, Lcom/youku/gamecenter/GameCenterModel;->sDownloadPackages:Ljava/util/Map;

    iget-object v5, v2, Lcom/youku/gamecenter/download/DownloadInfo;->mPackageName:Ljava/lang/String;

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 637
    iget-object v4, v2, Lcom/youku/gamecenter/download/DownloadInfo;->mPackageName:Ljava/lang/String;

    iget v5, v2, Lcom/youku/gamecenter/download/DownloadInfo;->mVersion:I

    invoke-virtual {v0, v4, v5}, Lcom/youku/gamecenter/download/DownloadManager;->deleteOlderGameDownload(Ljava/lang/String;I)V

    .line 639
    invoke-virtual {v0, v2, v6}, Lcom/youku/gamecenter/download/DownloadManager;->changeDownloadTypeFromSQL(Lcom/youku/gamecenter/download/DownloadInfo;I)V

    goto :goto_0

    .line 646
    .end local v2    # "info":Lcom/youku/gamecenter/download/DownloadInfo;
    :cond_5
    invoke-direct {p0, v3}, Lcom/youku/gamecenter/GameCenterModel;->dumpDownloadedGamesLogs(Ljava/util/List;)V

    .line 648
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 649
    return-void
.end method

.method private loadGameManagerData(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 187
    sget-object v5, Lcom/youku/gamecenter/GameCenterModel;->sDownloadPackages:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 188
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/youku/gamecenter/download/DownloadInfo;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 189
    .local v4, "packageName":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/gamecenter/download/DownloadInfo;

    .line 190
    .local v0, "downloadInfo":Lcom/youku/gamecenter/download/DownloadInfo;
    if-eqz v4, :cond_0

    if-eqz v0, :cond_0

    .line 192
    iget v5, v0, Lcom/youku/gamecenter/download/DownloadInfo;->mType:I

    const/4 v6, 0x5

    if-eq v5, v6, :cond_0

    .line 195
    invoke-direct {p0, v0}, Lcom/youku/gamecenter/GameCenterModel;->transformDownloadInfoToGameInfo(Lcom/youku/gamecenter/download/DownloadInfo;)Lcom/youku/gamecenter/data/GameInfo;

    move-result-object v2

    .line 196
    .local v2, "gameInfo":Lcom/youku/gamecenter/data/GameInfo;
    sget-object v5, Lcom/youku/gamecenter/GameCenterModel;->sGameManageData:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 199
    .end local v0    # "downloadInfo":Lcom/youku/gamecenter/download/DownloadInfo;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/youku/gamecenter/download/DownloadInfo;>;"
    .end local v2    # "gameInfo":Lcom/youku/gamecenter/data/GameInfo;
    .end local v4    # "packageName":Ljava/lang/String;
    :cond_1
    invoke-direct {p0}, Lcom/youku/gamecenter/GameCenterModel;->updateGameManagerData()V

    .line 201
    const-string v5, "Managed app"

    sget-object v6, Lcom/youku/gamecenter/GameCenterModel;->sGameManageData:Ljava/util/List;

    invoke-direct {p0, v5, v6}, Lcom/youku/gamecenter/GameCenterModel;->dumpGamesLogs(Ljava/lang/String;Ljava/util/List;)V

    .line 203
    return-void
.end method

.method private loadInstalledPackages(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 584
    invoke-direct {p0, p1}, Lcom/youku/gamecenter/GameCenterModel;->getInstalledPackages(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    .line 585
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    .line 586
    .local v1, "info":Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_0

    .line 589
    sget-object v3, Lcom/youku/gamecenter/GameCenterModel;->sInstalledPackages:Ljava/util/Map;

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 592
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    :cond_1
    invoke-direct {p0, v2}, Lcom/youku/gamecenter/GameCenterModel;->dumpInstalledAppLogs(Ljava/util/List;)V

    .line 594
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 595
    return-void
.end method

.method private notifyListenerDataChanged(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "packagename"    # Ljava/lang/String;
    .param p2, "isDelayRefresh"    # Z

    .prologue
    .line 1278
    iget-object v2, p0, Lcom/youku/gamecenter/GameCenterModel;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/gamecenter/OnGameInfoChangedListener;

    .line 1279
    .local v1, "listener":Lcom/youku/gamecenter/OnGameInfoChangedListener;
    if-eqz p2, :cond_0

    .line 1280
    invoke-interface {v1, p1}, Lcom/youku/gamecenter/OnGameInfoChangedListener;->onGameInfoProgressChanged(Ljava/lang/String;)V

    goto :goto_0

    .line 1283
    :cond_0
    invoke-interface {v1, p1}, Lcom/youku/gamecenter/OnGameInfoChangedListener;->onGameInfoStatusChanged(Ljava/lang/String;)V

    goto :goto_0

    .line 1285
    .end local v1    # "listener":Lcom/youku/gamecenter/OnGameInfoChangedListener;
    :cond_1
    return-void
.end method

.method private notifyUIPakcageChanged(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceive call notifyListenerDataChanged  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/youku/gamecenter/GameCenterModel;->dumpLogs(Ljava/lang/String;)V

    .line 1196
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/youku/gamecenter/GameCenterModel;->notifyListenerDataChanged(Ljava/lang/String;Z)V

    .line 1198
    return-void
.end method

.method private promptApkFileDeleted(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "gamename"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 1131
    if-nez p1, :cond_0

    .line 1137
    :goto_0
    return-void

    .line 1134
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/youku/gamecenter/R$string;->game_apk_file_deleted:I

    new-array v3, v5, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1136
    .local v0, "prompt":Ljava/lang/String;
    invoke-static {p1, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public static putGameInfoIntoCache(Lcom/youku/gamecenter/data/GameInfo;)V
    .locals 2
    .param p0, "game"    # Lcom/youku/gamecenter/data/GameInfo;

    .prologue
    .line 562
    invoke-static {p0}, Lcom/youku/gamecenter/GameCenterModel;->updateGameInfoStatus(Lcom/youku/gamecenter/data/GameInfo;)V

    .line 563
    sget-object v0, Lcom/youku/gamecenter/GameCenterModel;->sGamesCache:Ljava/util/Map;

    iget-object v1, p0, Lcom/youku/gamecenter/data/GameInfo;->packagename:Ljava/lang/String;

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 564
    return-void
.end method

.method private setVersionNamebyStatus(Lcom/youku/gamecenter/data/GameInfo;)V
    .locals 2
    .param p1, "info"    # Lcom/youku/gamecenter/data/GameInfo;

    .prologue
    .line 412
    iget-object v0, p1, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    sget-object v1, Lcom/youku/gamecenter/data/GameInfoStatus;->STATUS_INSTALLED:Lcom/youku/gamecenter/data/GameInfoStatus;

    if-eq v0, v1, :cond_0

    iget-object v0, p1, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    sget-object v1, Lcom/youku/gamecenter/data/GameInfoStatus;->STATUS_UPDATEABLE:Lcom/youku/gamecenter/data/GameInfoStatus;

    if-ne v0, v1, :cond_1

    .line 414
    :cond_0
    sget-object v0, Lcom/youku/gamecenter/GameCenterModel;->sInstalledPackages:Ljava/util/Map;

    iget-object v1, p1, Lcom/youku/gamecenter/data/GameInfo;->packagename:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v0, p1, Lcom/youku/gamecenter/data/GameInfo;->version:Ljava/lang/String;

    .line 416
    :cond_1
    return-void
.end method

.method private transformDownloadInfoToGameInfo(Lcom/youku/gamecenter/download/DownloadInfo;)Lcom/youku/gamecenter/data/GameInfo;
    .locals 4
    .param p1, "downloadInfo"    # Lcom/youku/gamecenter/download/DownloadInfo;

    .prologue
    .line 136
    const-string/jumbo v1, "songxl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "transformDownloadInfoToGameInfo : mState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/youku/gamecenter/download/DownloadInfo;->mState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", packagename = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/youku/gamecenter/download/DownloadInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    new-instance v0, Lcom/youku/gamecenter/data/GameInfo;

    invoke-direct {v0}, Lcom/youku/gamecenter/data/GameInfo;-><init>()V

    .line 141
    .local v0, "gameInfo":Lcom/youku/gamecenter/data/GameInfo;
    iget-object v1, p1, Lcom/youku/gamecenter/download/DownloadInfo;->mId:Ljava/lang/String;

    iput-object v1, v0, Lcom/youku/gamecenter/data/GameInfo;->id:Ljava/lang/String;

    .line 142
    iget-object v1, p1, Lcom/youku/gamecenter/download/DownloadInfo;->mIcon:Ljava/lang/String;

    iput-object v1, v0, Lcom/youku/gamecenter/data/GameInfo;->logo:Ljava/lang/String;

    .line 143
    iget-object v1, p1, Lcom/youku/gamecenter/download/DownloadInfo;->mDownloadTitle:Ljava/lang/String;

    iput-object v1, v0, Lcom/youku/gamecenter/data/GameInfo;->appname:Ljava/lang/String;

    .line 144
    iget-wide v2, p1, Lcom/youku/gamecenter/download/DownloadInfo;->mSize:J

    invoke-static {v2, v3}, Lcom/youku/gamecenter/util/CommonUtils;->formatSize(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/youku/gamecenter/data/GameInfo;->size:Ljava/lang/String;

    .line 145
    iget-object v1, p1, Lcom/youku/gamecenter/download/DownloadInfo;->mPackageName:Ljava/lang/String;

    iput-object v1, v0, Lcom/youku/gamecenter/data/GameInfo;->packagename:Ljava/lang/String;

    .line 146
    iget v1, p1, Lcom/youku/gamecenter/download/DownloadInfo;->mState:I

    invoke-static {v1}, Lcom/youku/gamecenter/GameCenterModel;->transformDownloadStateToGameInfoStatus(I)Lcom/youku/gamecenter/data/GameInfoStatus;

    move-result-object v1

    iput-object v1, v0, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    .line 147
    iget-object v1, v0, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    invoke-direct {p0, v1}, Lcom/youku/gamecenter/GameCenterModel;->transformStatusToState(Lcom/youku/gamecenter/data/GameInfoStatus;)I

    move-result v1

    iput v1, v0, Lcom/youku/gamecenter/data/GameInfo;->sort_state:I

    .line 148
    iget v1, p1, Lcom/youku/gamecenter/download/DownloadInfo;->mVersion:I

    iput v1, v0, Lcom/youku/gamecenter/data/GameInfo;->ver_code:I

    .line 149
    iget v1, p1, Lcom/youku/gamecenter/download/DownloadInfo;->mVersion:I

    iput v1, v0, Lcom/youku/gamecenter/data/GameInfo;->download_version_code:I

    .line 150
    iget-object v1, p1, Lcom/youku/gamecenter/download/DownloadInfo;->mPath:Ljava/lang/String;

    iput-object v1, v0, Lcom/youku/gamecenter/data/GameInfo;->local_apk_url:Ljava/lang/String;

    .line 151
    iget-object v1, p1, Lcom/youku/gamecenter/download/DownloadInfo;->mDownloadUrl:Ljava/lang/String;

    iput-object v1, v0, Lcom/youku/gamecenter/data/GameInfo;->download_link:Ljava/lang/String;

    .line 152
    iget-object v1, p1, Lcom/youku/gamecenter/download/DownloadInfo;->mDownloadUrl:Ljava/lang/String;

    iput-object v1, v0, Lcom/youku/gamecenter/data/GameInfo;->download_link_for_update:Ljava/lang/String;

    .line 153
    iget-object v1, p1, Lcom/youku/gamecenter/download/DownloadInfo;->mLastModified:Ljava/lang/String;

    iput-object v1, v0, Lcom/youku/gamecenter/data/GameInfo;->last_modified:Ljava/lang/String;

    .line 154
    iget v1, p1, Lcom/youku/gamecenter/download/DownloadInfo;->mDownloadWay:I

    iput v1, v0, Lcom/youku/gamecenter/data/GameInfo;->download_way:I

    .line 155
    iget v1, p1, Lcom/youku/gamecenter/download/DownloadInfo;->mProgress:I

    iput v1, v0, Lcom/youku/gamecenter/data/GameInfo;->download_progress:I

    .line 156
    iget v1, p1, Lcom/youku/gamecenter/download/DownloadInfo;->mNotificationID:I

    iput v1, v0, Lcom/youku/gamecenter/data/GameInfo;->notificationID:I

    .line 157
    iget-wide v2, p1, Lcom/youku/gamecenter/download/DownloadInfo;->mCurrentLength:J

    iput-wide v2, v0, Lcom/youku/gamecenter/data/GameInfo;->currentLength:J

    .line 159
    return-object v0
.end method

.method private static transformDownloadStateToGameInfoStatus(I)Lcom/youku/gamecenter/data/GameInfoStatus;
    .locals 3
    .param p0, "state"    # I

    .prologue
    .line 1035
    packed-switch p0, :pswitch_data_0

    .line 1047
    :pswitch_0
    const-string v0, "GameCenter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUpdate unknow state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1050
    sget-object v0, Lcom/youku/gamecenter/data/GameInfoStatus;->STATUS_NEW:Lcom/youku/gamecenter/data/GameInfoStatus;

    :goto_0
    return-object v0

    .line 1037
    :pswitch_1
    sget-object v0, Lcom/youku/gamecenter/data/GameInfoStatus;->STATUS_DOWNLOAD_ING:Lcom/youku/gamecenter/data/GameInfoStatus;

    goto :goto_0

    .line 1039
    :pswitch_2
    sget-object v0, Lcom/youku/gamecenter/data/GameInfoStatus;->STATUS_DOWNLOAD_PAUSE:Lcom/youku/gamecenter/data/GameInfoStatus;

    goto :goto_0

    .line 1041
    :pswitch_3
    sget-object v0, Lcom/youku/gamecenter/data/GameInfoStatus;->STATUS_DOWNLOAD_STOP:Lcom/youku/gamecenter/data/GameInfoStatus;

    goto :goto_0

    .line 1043
    :pswitch_4
    sget-object v0, Lcom/youku/gamecenter/data/GameInfoStatus;->STATUS_DOWNLOAD_DONE:Lcom/youku/gamecenter/data/GameInfoStatus;

    goto :goto_0

    .line 1045
    :pswitch_5
    sget-object v0, Lcom/youku/gamecenter/data/GameInfoStatus;->STATUS_DOWNLOAD_PENDING:Lcom/youku/gamecenter/data/GameInfoStatus;

    goto :goto_0

    .line 1035
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method private transformStatusToState(Lcom/youku/gamecenter/data/GameInfoStatus;)I
    .locals 2
    .param p1, "status"    # Lcom/youku/gamecenter/data/GameInfoStatus;

    .prologue
    const/4 v0, 0x0

    .line 420
    sget-object v1, Lcom/youku/gamecenter/data/GameInfoStatus;->STATUS_DOWNLOAD_ING:Lcom/youku/gamecenter/data/GameInfoStatus;

    if-ne p1, v1, :cond_1

    .line 445
    :cond_0
    :goto_0
    return v0

    .line 424
    :cond_1
    sget-object v1, Lcom/youku/gamecenter/data/GameInfoStatus;->STATUS_DOWNLOAD_PAUSE:Lcom/youku/gamecenter/data/GameInfoStatus;

    if-eq p1, v1, :cond_2

    sget-object v1, Lcom/youku/gamecenter/data/GameInfoStatus;->STATUS_DOWNLOAD_STOP:Lcom/youku/gamecenter/data/GameInfoStatus;

    if-ne p1, v1, :cond_3

    .line 426
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 429
    :cond_3
    sget-object v1, Lcom/youku/gamecenter/data/GameInfoStatus;->STATUS_DOWNLOAD_DONE:Lcom/youku/gamecenter/data/GameInfoStatus;

    if-ne p1, v1, :cond_4

    .line 430
    const/4 v0, 0x2

    goto :goto_0

    .line 433
    :cond_4
    sget-object v1, Lcom/youku/gamecenter/data/GameInfoStatus;->STATUS_UPDATEABLE:Lcom/youku/gamecenter/data/GameInfoStatus;

    if-ne p1, v1, :cond_5

    .line 434
    const/4 v0, 0x3

    goto :goto_0

    .line 437
    :cond_5
    sget-object v1, Lcom/youku/gamecenter/data/GameInfoStatus;->STATUS_INSTALLED:Lcom/youku/gamecenter/data/GameInfoStatus;

    if-ne p1, v1, :cond_6

    .line 438
    const/4 v0, 0x4

    goto :goto_0

    .line 441
    :cond_6
    sget-object v1, Lcom/youku/gamecenter/data/GameInfoStatus;->STATUS_DOWNLOAD_PENDING:Lcom/youku/gamecenter/data/GameInfoStatus;

    if-eq p1, v1, :cond_0

    .line 445
    const/4 v0, 0x5

    goto :goto_0
.end method

.method private unregisterReceiverWithTryCatch(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1268
    :try_start_0
    iget-object v1, p0, Lcom/youku/gamecenter/GameCenterModel;->mNetworkStateChangeReceiver:Lcom/youku/gamecenter/receivers/NetworkStateChangeReceiver;

    invoke-virtual {p1, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1274
    :goto_0
    return-void

    .line 1269
    :catch_0
    move-exception v0

    .line 1270
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "GameCenter"

    const-string v2, "GameCenterModel->unregisterReceiverWithTryCatch item2 error occur!!!"

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1272
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static updateDownloadInfoStatus(Ljava/lang/String;I)V
    .locals 2
    .param p0, "packagename"    # Ljava/lang/String;
    .param p1, "state"    # I

    .prologue
    .line 799
    sget-object v1, Lcom/youku/gamecenter/GameCenterModel;->sDownloadPackages:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 809
    :cond_0
    :goto_0
    return-void

    .line 802
    :cond_1
    sget-object v1, Lcom/youku/gamecenter/GameCenterModel;->sDownloadPackages:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/gamecenter/download/DownloadInfo;

    .line 803
    .local v0, "item":Lcom/youku/gamecenter/download/DownloadInfo;
    if-eqz v0, :cond_0

    .line 807
    iput p1, v0, Lcom/youku/gamecenter/download/DownloadInfo;->mState:I

    goto :goto_0
.end method

.method private static updateDownloadInfoStatus(Ljava/lang/String;IIJ)V
    .locals 5
    .param p0, "packagename"    # Ljava/lang/String;
    .param p1, "progress"    # I
    .param p2, "state"    # I
    .param p3, "size"    # J

    .prologue
    .line 783
    sget-object v1, Lcom/youku/gamecenter/GameCenterModel;->sDownloadPackages:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 795
    .end local p3    # "size":J
    :cond_0
    :goto_0
    return-void

    .line 786
    .restart local p3    # "size":J
    :cond_1
    sget-object v1, Lcom/youku/gamecenter/GameCenterModel;->sDownloadPackages:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/gamecenter/download/DownloadInfo;

    .line 787
    .local v0, "item":Lcom/youku/gamecenter/download/DownloadInfo;
    if-eqz v0, :cond_0

    .line 791
    iput p1, v0, Lcom/youku/gamecenter/download/DownloadInfo;->mProgress:I

    .line 792
    iput p2, v0, Lcom/youku/gamecenter/download/DownloadInfo;->mState:I

    .line 793
    const-wide/16 v2, -0x1

    cmp-long v1, p3, v2

    if-nez v1, :cond_2

    iget-wide p3, v0, Lcom/youku/gamecenter/download/DownloadInfo;->mSize:J

    .end local p3    # "size":J
    :cond_2
    iput-wide p3, v0, Lcom/youku/gamecenter/download/DownloadInfo;->mSize:J

    goto :goto_0
.end method

.method public static updateGameInfoStatus(Lcom/youku/gamecenter/data/GameInfo;)V
    .locals 0
    .param p0, "gameInfo"    # Lcom/youku/gamecenter/data/GameInfo;

    .prologue
    .line 924
    invoke-static {p0}, Lcom/youku/gamecenter/GameCenterModel;->updateGameInfoStatusFromDowloadManager1st(Lcom/youku/gamecenter/data/GameInfo;)V

    .line 925
    invoke-static {p0}, Lcom/youku/gamecenter/GameCenterModel;->updateGameInfoStatusFromPackageManger2nd(Lcom/youku/gamecenter/data/GameInfo;)V

    .line 926
    return-void
.end method

.method private static updateGameInfoStatus(Lcom/youku/gamecenter/data/GameInfo;Lcom/youku/gamecenter/data/GameInfoStatus;Ljava/lang/String;IILjava/lang/String;J)V
    .locals 0
    .param p0, "info"    # Lcom/youku/gamecenter/data/GameInfo;
    .param p1, "status"    # Lcom/youku/gamecenter/data/GameInfoStatus;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "progress"    # I
    .param p4, "downloadVersion"    # I
    .param p5, "downloadLink"    # Ljava/lang/String;
    .param p6, "currentLength"    # J

    .prologue
    .line 691
    iput-object p1, p0, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    .line 692
    iput-object p2, p0, Lcom/youku/gamecenter/data/GameInfo;->local_apk_url:Ljava/lang/String;

    .line 693
    iput p3, p0, Lcom/youku/gamecenter/data/GameInfo;->download_progress:I

    .line 694
    iput p4, p0, Lcom/youku/gamecenter/data/GameInfo;->download_version_code:I

    .line 695
    iput-object p5, p0, Lcom/youku/gamecenter/data/GameInfo;->download_link_for_update:Ljava/lang/String;

    .line 696
    iput-wide p6, p0, Lcom/youku/gamecenter/data/GameInfo;->currentLength:J

    .line 697
    return-void
.end method

.method public static updateGameInfoStatus(Ljava/lang/String;)V
    .locals 1
    .param p0, "packagename"    # Ljava/lang/String;

    .prologue
    .line 920
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/youku/gamecenter/GameCenterModel;->updateGameInfoStatus(Ljava/lang/String;Z)V

    .line 921
    return-void
.end method

.method public static updateGameInfoStatus(Ljava/lang/String;Z)V
    .locals 3
    .param p0, "packagename"    # Ljava/lang/String;
    .param p1, "clearProgress"    # Z

    .prologue
    .line 907
    sget-object v1, Lcom/youku/gamecenter/GameCenterModel;->sGamesCache:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 908
    const-string v1, "GameCenter"

    const-string/jumbo v2, "sGamesCache \u6ca1\u6709\u8fd9\u4e2a\u6570\u636e"

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 917
    :goto_0
    return-void

    .line 912
    :cond_0
    sget-object v1, Lcom/youku/gamecenter/GameCenterModel;->sGamesCache:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/gamecenter/data/GameInfo;

    .line 913
    .local v0, "gameInfo":Lcom/youku/gamecenter/data/GameInfo;
    if-eqz p1, :cond_1

    .line 914
    const/4 v1, 0x0

    iput v1, v0, Lcom/youku/gamecenter/data/GameInfo;->download_progress:I

    .line 916
    :cond_1
    invoke-static {v0}, Lcom/youku/gamecenter/GameCenterModel;->updateGameInfoStatus(Lcom/youku/gamecenter/data/GameInfo;)V

    goto :goto_0
.end method

.method private updateGameInfoStatusByPackageNameWhenEnd(Ljava/lang/String;ILcom/youku/gamecenter/data/GameInfoStatus;)V
    .locals 8
    .param p1, "packagename"    # Ljava/lang/String;
    .param p2, "progress"    # I
    .param p3, "status"    # Lcom/youku/gamecenter/data/GameInfoStatus;

    .prologue
    .line 961
    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v7}, Lcom/youku/gamecenter/GameCenterModel;->updateGameInfoStatusByPackageNameWhenUpdate(Ljava/lang/String;ILcom/youku/gamecenter/data/GameInfoStatus;IJ)V

    .line 963
    return-void
.end method

.method private updateGameInfoStatusByPackageNameWhenPending(Ljava/lang/String;Lcom/youku/gamecenter/data/GameInfoStatus;)V
    .locals 1
    .param p1, "packagename"    # Ljava/lang/String;
    .param p2, "status"    # Lcom/youku/gamecenter/data/GameInfoStatus;

    .prologue
    .line 955
    invoke-static {p1}, Lcom/youku/gamecenter/GameCenterModel;->getGameInfoFromCache(Ljava/lang/String;)Lcom/youku/gamecenter/data/GameInfo;

    move-result-object v0

    .line 956
    .local v0, "gameInfo":Lcom/youku/gamecenter/data/GameInfo;
    iput-object p2, v0, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    .line 957
    return-void
.end method

.method private updateGameInfoStatusByPackageNameWhenStart(Ljava/lang/String;Lcom/youku/gamecenter/data/GameInfoStatus;Ljava/lang/String;IILjava/lang/String;)V
    .locals 1
    .param p1, "packagename"    # Ljava/lang/String;
    .param p2, "status"    # Lcom/youku/gamecenter/data/GameInfoStatus;
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "downloadVersion"    # I
    .param p5, "notifycationId"    # I
    .param p6, "downloadUrl"    # Ljava/lang/String;

    .prologue
    .line 932
    invoke-static {p1}, Lcom/youku/gamecenter/GameCenterModel;->getGameInfoFromCache(Ljava/lang/String;)Lcom/youku/gamecenter/data/GameInfo;

    move-result-object v0

    .line 933
    .local v0, "gameInfo":Lcom/youku/gamecenter/data/GameInfo;
    iput-object p2, v0, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    .line 934
    iput-object p3, v0, Lcom/youku/gamecenter/data/GameInfo;->local_apk_url:Ljava/lang/String;

    .line 935
    iput p4, v0, Lcom/youku/gamecenter/data/GameInfo;->download_version_code:I

    .line 936
    iput-object p6, v0, Lcom/youku/gamecenter/data/GameInfo;->download_link_for_update:Ljava/lang/String;

    .line 937
    iput p5, v0, Lcom/youku/gamecenter/data/GameInfo;->notificationID:I

    .line 938
    return-void
.end method

.method private updateGameInfoStatusByPackageNameWhenUpdate(Ljava/lang/String;ILcom/youku/gamecenter/data/GameInfoStatus;IJ)V
    .locals 1
    .param p1, "packagename"    # Ljava/lang/String;
    .param p2, "progress"    # I
    .param p3, "status"    # Lcom/youku/gamecenter/data/GameInfoStatus;
    .param p4, "downloadVelocity"    # I
    .param p5, "currentLength"    # J

    .prologue
    .line 944
    invoke-static {p1}, Lcom/youku/gamecenter/GameCenterModel;->getGameInfoFromCache(Ljava/lang/String;)Lcom/youku/gamecenter/data/GameInfo;

    move-result-object v0

    .line 945
    .local v0, "gameInfo":Lcom/youku/gamecenter/data/GameInfo;
    iput-object p3, v0, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    .line 946
    iput p2, v0, Lcom/youku/gamecenter/data/GameInfo;->download_progress:I

    .line 947
    iput p4, v0, Lcom/youku/gamecenter/data/GameInfo;->downloadVelocity:I

    .line 948
    iput-wide p5, v0, Lcom/youku/gamecenter/data/GameInfo;->currentLength:J

    .line 950
    return-void
.end method

.method public static updateGameInfoStatusFromDowloadManager1st(Lcom/youku/gamecenter/data/GameInfo;)V
    .locals 9
    .param p0, "info"    # Lcom/youku/gamecenter/data/GameInfo;

    .prologue
    const/4 v2, 0x0

    .line 653
    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/youku/gamecenter/data/GameInfo;->packagename:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 654
    :cond_0
    const-string/jumbo v0, "updateGameInfoStatusFromDowloadManager1st gameInfo invalid!!"

    invoke-static {v0}, Lcom/youku/gamecenter/GameCenterModel;->dumpLogs(Ljava/lang/String;)V

    .line 686
    :goto_0
    return-void

    .line 659
    :cond_1
    iput v2, p0, Lcom/youku/gamecenter/data/GameInfo;->download_progress:I

    .line 660
    sget-object v0, Lcom/youku/gamecenter/data/GameInfoStatus;->STATUS_NEW:Lcom/youku/gamecenter/data/GameInfoStatus;

    iput-object v0, p0, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    .line 662
    iget-object v0, p0, Lcom/youku/gamecenter/data/GameInfo;->packagename:Ljava/lang/String;

    invoke-static {v0}, Lcom/youku/gamecenter/GameCenterModel;->isPackageDownloaded(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 663
    iput-boolean v2, p0, Lcom/youku/gamecenter/data/GameInfo;->isDownloadedOldVersion:Z

    .line 664
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateGameInfoStatusFromDowloadManager1st\t"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/youku/gamecenter/data/GameInfo;->packagename:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " not at download list!!!"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/youku/gamecenter/GameCenterModel;->dumpLogs(Ljava/lang/String;)V

    goto :goto_0

    .line 669
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youku/gamecenter/data/GameInfo;->isDownloadedOldVersion:Z

    .line 671
    sget-object v0, Lcom/youku/gamecenter/GameCenterModel;->sDownloadPackages:Ljava/util/Map;

    iget-object v2, p0, Lcom/youku/gamecenter/data/GameInfo;->packagename:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/youku/gamecenter/download/DownloadInfo;

    .line 673
    .local v8, "downloadInfo":Lcom/youku/gamecenter/download/DownloadInfo;
    iget v0, v8, Lcom/youku/gamecenter/download/DownloadInfo;->mNotificationID:I

    iput v0, p0, Lcom/youku/gamecenter/data/GameInfo;->notificationID:I

    .line 676
    iget v0, v8, Lcom/youku/gamecenter/download/DownloadInfo;->mDownloadWay:I

    iput v0, p0, Lcom/youku/gamecenter/data/GameInfo;->download_way:I

    .line 678
    iget v0, v8, Lcom/youku/gamecenter/download/DownloadInfo;->mState:I

    invoke-static {v0}, Lcom/youku/gamecenter/GameCenterModel;->transformDownloadStateToGameInfoStatus(I)Lcom/youku/gamecenter/data/GameInfoStatus;

    move-result-object v1

    .line 680
    .local v1, "status":Lcom/youku/gamecenter/data/GameInfoStatus;
    iget-object v2, v8, Lcom/youku/gamecenter/download/DownloadInfo;->mPath:Ljava/lang/String;

    iget v3, v8, Lcom/youku/gamecenter/download/DownloadInfo;->mProgress:I

    iget v4, v8, Lcom/youku/gamecenter/download/DownloadInfo;->mVersion:I

    iget-object v5, v8, Lcom/youku/gamecenter/download/DownloadInfo;->mDownloadUrl:Ljava/lang/String;

    iget-wide v6, v8, Lcom/youku/gamecenter/download/DownloadInfo;->mCurrentLength:J

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcom/youku/gamecenter/GameCenterModel;->updateGameInfoStatus(Lcom/youku/gamecenter/data/GameInfo;Lcom/youku/gamecenter/data/GameInfoStatus;Ljava/lang/String;IILjava/lang/String;J)V

    .line 684
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateGameInfoStatusFromDowloadManager1st "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/youku/gamecenter/data/GameInfo;->appname:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "  at download list, new status= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/youku/gamecenter/GameCenterModel;->dumpLogs(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static updateGameInfoStatusFromPackageManger2nd(Lcom/youku/gamecenter/data/GameInfo;)V
    .locals 3
    .param p0, "info"    # Lcom/youku/gamecenter/data/GameInfo;

    .prologue
    .line 700
    if-eqz p0, :cond_0

    iget-object v1, p0, Lcom/youku/gamecenter/data/GameInfo;->packagename:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 701
    :cond_0
    const-string v1, "GameCenter"

    const-string/jumbo v2, "\u66f4\u65b0\u72b6\u6001\u65f6 gameInfo invalid!"

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 724
    :cond_1
    :goto_0
    return-void

    .line 705
    :cond_2
    iget-object v1, p0, Lcom/youku/gamecenter/data/GameInfo;->packagename:Ljava/lang/String;

    invoke-static {v1}, Lcom/youku/gamecenter/GameCenterModel;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 710
    iget-object v1, p0, Lcom/youku/gamecenter/data/GameInfo;->packagename:Ljava/lang/String;

    invoke-static {v1}, Lcom/youku/gamecenter/GameCenterModel;->getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 711
    .local v0, "appInfo":Landroid/content/pm/PackageInfo;
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v1, p0, Lcom/youku/gamecenter/data/GameInfo;->current_version_name:Ljava/lang/String;

    .line 712
    iget v1, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    iget v2, p0, Lcom/youku/gamecenter/data/GameInfo;->ver_code:I

    if-lt v1, v2, :cond_3

    .line 713
    sget-object v1, Lcom/youku/gamecenter/data/GameInfoStatus;->STATUS_INSTALLED:Lcom/youku/gamecenter/data/GameInfoStatus;

    iput-object v1, p0, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    goto :goto_0

    .line 718
    :cond_3
    iget-object v1, p0, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    sget-object v2, Lcom/youku/gamecenter/data/GameInfoStatus;->STATUS_NEW:Lcom/youku/gamecenter/data/GameInfoStatus;

    if-eq v1, v2, :cond_4

    iget-object v1, p0, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    sget-object v2, Lcom/youku/gamecenter/data/GameInfoStatus;->STATUS_DOWNLOAD_DONE:Lcom/youku/gamecenter/data/GameInfoStatus;

    if-ne v1, v2, :cond_1

    :cond_4
    invoke-static {p0}, Lcom/youku/gamecenter/GameCenterModel;->isCurrentVersionDownloaded(Lcom/youku/gamecenter/data/GameInfo;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 723
    sget-object v1, Lcom/youku/gamecenter/data/GameInfoStatus;->STATUS_UPDATEABLE:Lcom/youku/gamecenter/data/GameInfoStatus;

    iput-object v1, p0, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    goto :goto_0
.end method

.method private updateGameManagerData()V
    .locals 3

    .prologue
    .line 403
    sget-object v2, Lcom/youku/gamecenter/GameCenterModel;->sGameManageData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/gamecenter/data/GameInfo;

    .line 404
    .local v1, "info":Lcom/youku/gamecenter/data/GameInfo;
    invoke-static {v1}, Lcom/youku/gamecenter/GameCenterModel;->updateGameInfoStatusFromPackageManger2nd(Lcom/youku/gamecenter/data/GameInfo;)V

    .line 405
    invoke-direct {p0, v1}, Lcom/youku/gamecenter/GameCenterModel;->setVersionNamebyStatus(Lcom/youku/gamecenter/data/GameInfo;)V

    .line 406
    iget-object v2, v1, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    invoke-direct {p0, v2}, Lcom/youku/gamecenter/GameCenterModel;->transformStatusToState(Lcom/youku/gamecenter/data/GameInfoStatus;)I

    move-result v2

    iput v2, v1, Lcom/youku/gamecenter/data/GameInfo;->sort_state:I

    goto :goto_0

    .line 409
    .end local v1    # "info":Lcom/youku/gamecenter/data/GameInfo;
    :cond_0
    return-void
.end method

.method private updateGameManagerData(Ljava/lang/String;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 966
    invoke-virtual {p0, p1}, Lcom/youku/gamecenter/GameCenterModel;->getGameInfoFromGameManager(Ljava/lang/String;)Lcom/youku/gamecenter/data/GameInfo;

    move-result-object v0

    .line 968
    .local v0, "gameInfo":Lcom/youku/gamecenter/data/GameInfo;
    if-nez v0, :cond_1

    .line 986
    :cond_0
    :goto_0
    return-void

    .line 972
    :cond_1
    invoke-static {v0}, Lcom/youku/gamecenter/GameCenterModel;->updateGameInfoStatus(Lcom/youku/gamecenter/data/GameInfo;)V

    .line 974
    invoke-direct {p0, v0}, Lcom/youku/gamecenter/GameCenterModel;->isUpdateShouldBeRemoved(Lcom/youku/gamecenter/data/GameInfo;)Z

    move-result v1

    .line 976
    .local v1, "isUpdateShouldBeRemoved":Z
    if-eqz v1, :cond_2

    .line 977
    sget-object v2, Lcom/youku/gamecenter/GameCenterModel;->sGameManageData:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 981
    :cond_2
    iget-object v2, v0, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    sget-object v3, Lcom/youku/gamecenter/data/GameInfoStatus;->STATUS_NEW:Lcom/youku/gamecenter/data/GameInfoStatus;

    if-ne v2, v3, :cond_0

    .line 982
    sget-object v2, Lcom/youku/gamecenter/GameCenterModel;->sGameManageData:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private updateGameManagerData(Ljava/lang/String;IJLcom/youku/gamecenter/data/GameInfoStatus;IJ)V
    .locals 5
    .param p1, "packagename"    # Ljava/lang/String;
    .param p2, "progress"    # I
    .param p3, "size"    # J
    .param p5, "status"    # Lcom/youku/gamecenter/data/GameInfoStatus;
    .param p6, "downloadVelocity"    # I
    .param p7, "currentLength"    # J

    .prologue
    .line 453
    sget-object v2, Lcom/youku/gamecenter/GameCenterModel;->sGameManageData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/gamecenter/data/GameInfo;

    .line 454
    .local v1, "info":Lcom/youku/gamecenter/data/GameInfo;
    iget-object v2, v1, Lcom/youku/gamecenter/data/GameInfo;->packagename:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 455
    iput p2, v1, Lcom/youku/gamecenter/data/GameInfo;->download_progress:I

    .line 456
    iput-object p5, v1, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    .line 457
    invoke-direct {p0, p5}, Lcom/youku/gamecenter/GameCenterModel;->transformStatusToState(Lcom/youku/gamecenter/data/GameInfoStatus;)I

    move-result v2

    iput v2, v1, Lcom/youku/gamecenter/data/GameInfo;->sort_state:I

    .line 458
    iput p6, v1, Lcom/youku/gamecenter/data/GameInfo;->downloadVelocity:I

    .line 459
    const-wide/16 v2, -0x1

    cmp-long v2, p3, v2

    if-eqz v2, :cond_0

    .line 462
    invoke-static {p3, p4}, Lcom/youku/gamecenter/util/CommonUtils;->formatSize(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/youku/gamecenter/data/GameInfo;->size:Ljava/lang/String;

    .line 463
    iput-wide p7, v1, Lcom/youku/gamecenter/data/GameInfo;->currentLength:J

    goto :goto_0

    .line 467
    .end local v1    # "info":Lcom/youku/gamecenter/data/GameInfo;
    :cond_1
    return-void
.end method

.method private updateGameManagerData(Ljava/lang/String;Lcom/youku/gamecenter/data/GameInfoStatus;)V
    .locals 3
    .param p1, "packagename"    # Ljava/lang/String;
    .param p2, "status"    # Lcom/youku/gamecenter/data/GameInfoStatus;

    .prologue
    .line 471
    sget-object v2, Lcom/youku/gamecenter/GameCenterModel;->sGameManageData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/gamecenter/data/GameInfo;

    .line 472
    .local v1, "info":Lcom/youku/gamecenter/data/GameInfo;
    iget-object v2, v1, Lcom/youku/gamecenter/data/GameInfo;->packagename:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 475
    iput-object p2, v1, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    .line 476
    invoke-direct {p0, p2}, Lcom/youku/gamecenter/GameCenterModel;->transformStatusToState(Lcom/youku/gamecenter/data/GameInfoStatus;)I

    move-result v2

    iput v2, v1, Lcom/youku/gamecenter/data/GameInfo;->sort_state:I

    goto :goto_0

    .line 479
    .end local v1    # "info":Lcom/youku/gamecenter/data/GameInfo;
    :cond_1
    return-void
.end method

.method private updateStatusWhenInstalledGame(Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 362
    sget-object v2, Lcom/youku/gamecenter/GameCenterModel;->sGameManageData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/gamecenter/data/GameInfo;

    .line 363
    .local v1, "info":Lcom/youku/gamecenter/data/GameInfo;
    iget-object v2, v1, Lcom/youku/gamecenter/data/GameInfo;->packagename:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 364
    sget-object v2, Lcom/youku/gamecenter/data/GameInfoStatus;->STATUS_INSTALLED:Lcom/youku/gamecenter/data/GameInfoStatus;

    iput-object v2, v1, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    .line 365
    const/4 v2, 0x4

    iput v2, v1, Lcom/youku/gamecenter/data/GameInfo;->sort_state:I

    .line 366
    sget-object v2, Lcom/youku/gamecenter/GameCenterModel;->sInstalledPackages:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v2, v1, Lcom/youku/gamecenter/data/GameInfo;->version:Ljava/lang/String;

    .line 367
    sget-object v2, Lcom/youku/gamecenter/GameCenterModel;->sInstalledPackages:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    iget v2, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v2, v1, Lcom/youku/gamecenter/data/GameInfo;->ver_code:I

    .line 368
    sget-object v2, Lcom/youku/gamecenter/GameCenterModel;->sInstalledPackages:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    iget v2, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v2, v1, Lcom/youku/gamecenter/data/GameInfo;->current_version_code:I

    .line 369
    sget-object v2, Lcom/youku/gamecenter/GameCenterModel;->sInstalledPackages:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v2, v1, Lcom/youku/gamecenter/data/GameInfo;->current_version_name:Ljava/lang/String;

    .line 374
    .end local v1    # "info":Lcom/youku/gamecenter/data/GameInfo;
    :cond_1
    return-void
.end method

.method private updateStatusWhenUninstalledGame(Ljava/lang/String;)V
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 377
    new-instance v3, Ljava/util/ArrayList;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 379
    .local v3, "removedApps":Ljava/util/List;, "Ljava/util/List<Lcom/youku/gamecenter/data/GameInfo;>;"
    sget-object v4, Lcom/youku/gamecenter/GameCenterModel;->sGameManageData:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/gamecenter/data/GameInfo;

    .line 380
    .local v2, "info":Lcom/youku/gamecenter/data/GameInfo;
    iget-object v4, v2, Lcom/youku/gamecenter/data/GameInfo;->packagename:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 381
    sget-object v4, Lcom/youku/gamecenter/GameCenterModel;->sDownloadPackages:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/gamecenter/download/DownloadInfo;

    .line 382
    .local v0, "downloadInfo":Lcom/youku/gamecenter/download/DownloadInfo;
    if-eqz v0, :cond_0

    .line 386
    iget v4, v0, Lcom/youku/gamecenter/download/DownloadInfo;->mState:I

    const/4 v5, 0x5

    if-eq v4, v5, :cond_1

    .line 387
    iget v4, v0, Lcom/youku/gamecenter/download/DownloadInfo;->mState:I

    invoke-static {v4}, Lcom/youku/gamecenter/GameCenterModel;->transformDownloadStateToGameInfoStatus(I)Lcom/youku/gamecenter/data/GameInfoStatus;

    move-result-object v4

    iput-object v4, v2, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    .line 388
    iget-object v4, v2, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    invoke-direct {p0, v4}, Lcom/youku/gamecenter/GameCenterModel;->transformStatusToState(Lcom/youku/gamecenter/data/GameInfoStatus;)I

    move-result v4

    iput v4, v2, Lcom/youku/gamecenter/data/GameInfo;->sort_state:I

    goto :goto_0

    .line 390
    :cond_1
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 395
    .end local v0    # "downloadInfo":Lcom/youku/gamecenter/download/DownloadInfo;
    .end local v2    # "info":Lcom/youku/gamecenter/data/GameInfo;
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/gamecenter/data/GameInfo;

    .line 396
    .restart local v2    # "info":Lcom/youku/gamecenter/data/GameInfo;
    sget-object v4, Lcom/youku/gamecenter/GameCenterModel;->sGameManageData:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 399
    .end local v2    # "info":Lcom/youku/gamecenter/data/GameInfo;
    :cond_3
    return-void
.end method


# virtual methods
.method public addOnGameInfoChangedListener(Lcom/youku/gamecenter/OnGameInfoChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/youku/gamecenter/OnGameInfoChangedListener;

    .prologue
    .line 1288
    iget-object v0, p0, Lcom/youku/gamecenter/GameCenterModel;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1292
    :goto_0
    return-void

    .line 1291
    :cond_0
    iget-object v0, p0, Lcom/youku/gamecenter/GameCenterModel;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public addOnNetworkStateChangeNoNetworkReceiver(Lcom/youku/gamecenter/receivers/NetworkStateChangeReceiver$OnNetworkUnavailableListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/youku/gamecenter/receivers/NetworkStateChangeReceiver$OnNetworkUnavailableListener;

    .prologue
    .line 1314
    iget-object v0, p0, Lcom/youku/gamecenter/GameCenterModel;->mNetworkStateChangeReceiver:Lcom/youku/gamecenter/receivers/NetworkStateChangeReceiver;

    invoke-virtual {v0, p1}, Lcom/youku/gamecenter/receivers/NetworkStateChangeReceiver;->addNoNetworkListener(Lcom/youku/gamecenter/receivers/NetworkStateChangeReceiver$OnNetworkUnavailableListener;)V

    .line 1315
    return-void
.end method

.method public addOnNetworkStateChangeReceiver(Lcom/youku/gamecenter/receivers/NetworkStateChangeReceiver$OnNetworkAvailbleListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/youku/gamecenter/receivers/NetworkStateChangeReceiver$OnNetworkAvailbleListener;

    .prologue
    .line 1301
    iget-object v0, p0, Lcom/youku/gamecenter/GameCenterModel;->mNetworkStateChangeReceiver:Lcom/youku/gamecenter/receivers/NetworkStateChangeReceiver;

    invoke-virtual {v0, p1}, Lcom/youku/gamecenter/receivers/NetworkStateChangeReceiver;->addListener(Lcom/youku/gamecenter/receivers/NetworkStateChangeReceiver$OnNetworkAvailbleListener;)V

    .line 1302
    return-void
.end method

.method public getDownloadingItems()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/youku/gamecenter/data/GameInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 117
    sget-object v3, Lcom/youku/gamecenter/GameCenterModel;->sGameManageData:Ljava/util/List;

    if-eqz v3, :cond_0

    sget-object v3, Lcom/youku/gamecenter/GameCenterModel;->sGameManageData:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_2

    .line 118
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 132
    :cond_1
    return-object v0

    .line 121
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    const/4 v3, 0x3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 123
    .local v0, "datas":Ljava/util/List;, "Ljava/util/List<Lcom/youku/gamecenter/data/GameInfo;>;"
    sget-object v3, Lcom/youku/gamecenter/GameCenterModel;->sGameManageData:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/gamecenter/data/GameInfo;

    .line 124
    .local v1, "game":Lcom/youku/gamecenter/data/GameInfo;
    if-eqz v1, :cond_3

    .line 127
    iget-object v3, v1, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    sget-object v4, Lcom/youku/gamecenter/data/GameInfoStatus;->STATUS_DOWNLOAD_ING:Lcom/youku/gamecenter/data/GameInfoStatus;

    if-ne v3, v4, :cond_3

    .line 130
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getGameDownloadDoneData()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/youku/gamecenter/data/GameInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 303
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 304
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/youku/gamecenter/data/GameInfo;>;"
    sget-object v3, Lcom/youku/gamecenter/GameCenterModel;->sGameManageData:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/gamecenter/data/GameInfo;

    .line 305
    .local v1, "info":Lcom/youku/gamecenter/data/GameInfo;
    iget-object v3, v1, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    sget-object v4, Lcom/youku/gamecenter/data/GameInfoStatus;->STATUS_DOWNLOAD_DONE:Lcom/youku/gamecenter/data/GameInfoStatus;

    if-ne v3, v4, :cond_0

    .line 306
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 309
    .end local v1    # "info":Lcom/youku/gamecenter/data/GameInfo;
    :cond_1
    iget-object v3, p0, Lcom/youku/gamecenter/GameCenterModel;->dateComparator:Ljava/util/Comparator;

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 310
    return-object v2
.end method

.method public getGameHomePromptData()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/youku/gamecenter/data/GameInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 318
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 320
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/youku/gamecenter/data/GameInfo;>;"
    invoke-virtual {p0}, Lcom/youku/gamecenter/GameCenterModel;->getGameDownloadDoneData()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 322
    return-object v0
.end method

.method public getGameInfoFromGameManager(Ljava/lang/String;)Lcom/youku/gamecenter/data/GameInfo;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1004
    sget-object v2, Lcom/youku/gamecenter/GameCenterModel;->sGameManageData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/gamecenter/data/GameInfo;

    .line 1005
    .local v0, "gameInfo":Lcom/youku/gamecenter/data/GameInfo;
    if-eqz v0, :cond_0

    .line 1009
    iget-object v2, v0, Lcom/youku/gamecenter/data/GameInfo;->packagename:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1015
    .end local v0    # "gameInfo":Lcom/youku/gamecenter/data/GameInfo;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getGameInfoFromGameManagerById(Ljava/lang/String;)Lcom/youku/gamecenter/data/GameInfo;
    .locals 3
    .param p1, "gameId"    # Ljava/lang/String;

    .prologue
    .line 1019
    sget-object v2, Lcom/youku/gamecenter/GameCenterModel;->sGameManageData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/gamecenter/data/GameInfo;

    .line 1020
    .local v0, "gameInfo":Lcom/youku/gamecenter/data/GameInfo;
    if-eqz v0, :cond_0

    .line 1024
    iget-object v2, v0, Lcom/youku/gamecenter/data/GameInfo;->id:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1030
    .end local v0    # "gameInfo":Lcom/youku/gamecenter/data/GameInfo;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getUnfinishedTaskNumber()I
    .locals 5

    .prologue
    .line 166
    const/4 v2, 0x0

    .line 168
    .local v2, "shownNum":I
    sget-object v3, Lcom/youku/gamecenter/GameCenterModel;->sGameManageData:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/gamecenter/data/GameInfo;

    .line 169
    .local v1, "info":Lcom/youku/gamecenter/data/GameInfo;
    iget-object v3, v1, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    sget-object v4, Lcom/youku/gamecenter/data/GameInfoStatus;->STATUS_DOWNLOAD_PAUSE:Lcom/youku/gamecenter/data/GameInfoStatus;

    if-eq v3, v4, :cond_1

    iget-object v3, v1, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    sget-object v4, Lcom/youku/gamecenter/data/GameInfoStatus;->STATUS_DOWNLOAD_DONE:Lcom/youku/gamecenter/data/GameInfoStatus;

    if-eq v3, v4, :cond_1

    iget-object v3, v1, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    sget-object v4, Lcom/youku/gamecenter/data/GameInfoStatus;->STATUS_DOWNLOAD_STOP:Lcom/youku/gamecenter/data/GameInfoStatus;

    if-eq v3, v4, :cond_1

    iget-object v3, v1, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    sget-object v4, Lcom/youku/gamecenter/data/GameInfoStatus;->STATUS_DOWNLOAD_ING:Lcom/youku/gamecenter/data/GameInfoStatus;

    if-eq v3, v4, :cond_1

    iget-object v3, v1, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    sget-object v4, Lcom/youku/gamecenter/data/GameInfoStatus;->STATUS_DOWNLOAD_PENDING:Lcom/youku/gamecenter/data/GameInfoStatus;

    if-ne v3, v4, :cond_0

    .line 174
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 178
    .end local v1    # "info":Lcom/youku/gamecenter/data/GameInfo;
    :cond_2
    return v2
.end method

.method public handleActivityCreated()V
    .locals 2

    .prologue
    .line 1365
    iget v0, p0, Lcom/youku/gamecenter/GameCenterModel;->mAge:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/youku/gamecenter/GameCenterModel;->mAge:I

    .line 1366
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityCreate       mAge++="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/youku/gamecenter/GameCenterModel;->mAge:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/youku/gamecenter/GameCenterModel;->dumpLogs(Ljava/lang/String;)V

    .line 1367
    return-void
.end method

.method public handleActivityDestroyed(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1370
    iget v0, p0, Lcom/youku/gamecenter/GameCenterModel;->mAge:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/youku/gamecenter/GameCenterModel;->mAge:I

    .line 1371
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityDestroyed       mAge--="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/youku/gamecenter/GameCenterModel;->mAge:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/youku/gamecenter/GameCenterModel;->dumpLogs(Ljava/lang/String;)V

    .line 1373
    iget v0, p0, Lcom/youku/gamecenter/GameCenterModel;->mAge:I

    if-gtz v0, :cond_0

    .line 1374
    invoke-static {p1}, Lcom/youku/gamecenter/GameCenterModel;->clearDatas(Landroid/content/Context;)V

    .line 1376
    :cond_0
    return-void
.end method

.method public loadLocalPackages(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 567
    sget-object v0, Lcom/youku/gamecenter/GameCenterModel;->sInstalledPackages:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 568
    invoke-direct {p0, p1}, Lcom/youku/gamecenter/GameCenterModel;->loadInstalledPackages(Landroid/content/Context;)V

    .line 571
    :cond_0
    sget-object v0, Lcom/youku/gamecenter/GameCenterModel;->sDownloadPackages:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 572
    invoke-direct {p0, p1}, Lcom/youku/gamecenter/GameCenterModel;->loadDownloadPackages(Landroid/content/Context;)V

    .line 576
    :cond_1
    sget-object v0, Lcom/youku/gamecenter/GameCenterModel;->sGameManageData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 577
    invoke-direct {p0, p1}, Lcom/youku/gamecenter/GameCenterModel;->loadGameManagerData(Landroid/content/Context;)V

    .line 581
    :cond_2
    return-void
.end method

.method public onActivityCreated()V
    .locals 0

    .prologue
    .line 1380
    invoke-virtual {p0}, Lcom/youku/gamecenter/GameCenterModel;->handleActivityCreated()V

    .line 1381
    return-void
.end method

.method public onActivityDestroyed(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1385
    invoke-virtual {p0, p1}, Lcom/youku/gamecenter/GameCenterModel;->handleActivityDestroyed(Landroid/content/Context;)V

    .line 1386
    return-void
.end method

.method public onCancel(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 842
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCancel "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/youku/gamecenter/GameCenterModel;->dumpLogs(Ljava/lang/String;)V

    .line 844
    sget-object v0, Lcom/youku/gamecenter/GameCenterModel;->sDownloadPackages:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 846
    invoke-direct {p0, p1}, Lcom/youku/gamecenter/GameCenterModel;->updateGameManagerData(Ljava/lang/String;)V

    .line 848
    invoke-static {p1}, Lcom/youku/gamecenter/GameCenterModel;->updateGameInfoStatus(Ljava/lang/String;)V

    .line 851
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/youku/gamecenter/GameCenterModel;->notifyListenerDataChanged(Ljava/lang/String;Z)V

    .line 852
    return-void
.end method

.method public onDelete(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 856
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDelete "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/youku/gamecenter/GameCenterModel;->dumpLogs(Ljava/lang/String;)V

    .line 858
    sget-object v0, Lcom/youku/gamecenter/GameCenterModel;->sDownloadPackages:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 860
    invoke-direct {p0, p1}, Lcom/youku/gamecenter/GameCenterModel;->updateGameManagerData(Ljava/lang/String;)V

    .line 862
    invoke-static {p1}, Lcom/youku/gamecenter/GameCenterModel;->updateGameInfoStatus(Ljava/lang/String;)V

    .line 865
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/youku/gamecenter/GameCenterModel;->notifyListenerDataChanged(Ljava/lang/String;Z)V

    .line 866
    return-void
.end method

.method public onDownloadIcon(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 891
    return-void
.end method

.method public onEnd(Ljava/lang/String;I)V
    .locals 10
    .param p1, "packagename"    # Ljava/lang/String;
    .param p2, "state"    # I

    .prologue
    const-wide/16 v4, -0x1

    const/4 v7, 0x0

    const/16 v3, 0x64

    .line 826
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onEnd\t\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " , \tstate:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/youku/gamecenter/GameCenterModel;->dumpLogs(Ljava/lang/String;)V

    .line 828
    invoke-static {p1, v3, p2, v4, v5}, Lcom/youku/gamecenter/GameCenterModel;->updateDownloadInfoStatus(Ljava/lang/String;IIJ)V

    .line 830
    invoke-static {p2}, Lcom/youku/gamecenter/GameCenterModel;->transformDownloadStateToGameInfoStatus(I)Lcom/youku/gamecenter/data/GameInfoStatus;

    move-result-object v6

    .line 831
    .local v6, "status":Lcom/youku/gamecenter/data/GameInfoStatus;
    invoke-direct {p0, p1, v3, v6}, Lcom/youku/gamecenter/GameCenterModel;->updateGameInfoStatusByPackageNameWhenEnd(Ljava/lang/String;ILcom/youku/gamecenter/data/GameInfoStatus;)V

    .line 834
    const-wide/16 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v9}, Lcom/youku/gamecenter/GameCenterModel;->updateGameManagerData(Ljava/lang/String;IJLcom/youku/gamecenter/data/GameInfoStatus;IJ)V

    .line 837
    invoke-direct {p0, p1, v7}, Lcom/youku/gamecenter/GameCenterModel;->notifyListenerDataChanged(Ljava/lang/String;Z)V

    .line 838
    return-void
.end method

.method public onPending(Lcom/youku/gamecenter/download/DownloadInfo;)V
    .locals 4
    .param p1, "downloadInfo"    # Lcom/youku/gamecenter/download/DownloadInfo;

    .prologue
    .line 871
    iget-object v0, p1, Lcom/youku/gamecenter/download/DownloadInfo;->mPackageName:Ljava/lang/String;

    .line 874
    .local v0, "packageName":Ljava/lang/String;
    sget-object v2, Lcom/youku/gamecenter/GameCenterModel;->sDownloadPackages:Ljava/util/Map;

    iget-object v3, p1, Lcom/youku/gamecenter/download/DownloadInfo;->mPackageName:Ljava/lang/String;

    invoke-interface {v2, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 877
    const/4 v2, 0x6

    invoke-static {v2}, Lcom/youku/gamecenter/GameCenterModel;->transformDownloadStateToGameInfoStatus(I)Lcom/youku/gamecenter/data/GameInfoStatus;

    move-result-object v1

    .line 878
    .local v1, "status":Lcom/youku/gamecenter/data/GameInfoStatus;
    invoke-direct {p0, v0, v1}, Lcom/youku/gamecenter/GameCenterModel;->updateGameInfoStatusByPackageNameWhenPending(Ljava/lang/String;Lcom/youku/gamecenter/data/GameInfoStatus;)V

    .line 881
    sget-object v2, Lcom/youku/gamecenter/data/GameInfoStatus;->STATUS_DOWNLOAD_PENDING:Lcom/youku/gamecenter/data/GameInfoStatus;

    invoke-direct {p0, p1, v2}, Lcom/youku/gamecenter/GameCenterModel;->addGameManagerData(Lcom/youku/gamecenter/download/DownloadInfo;Lcom/youku/gamecenter/data/GameInfoStatus;)V

    .line 884
    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/youku/gamecenter/GameCenterModel;->notifyListenerDataChanged(Ljava/lang/String;Z)V

    .line 886
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1055
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1056
    .local v0, "action":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    if-nez v2, :cond_1

    .line 1077
    :cond_0
    :goto_0
    return-void

    .line 1060
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    .line 1061
    .local v1, "packageName":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1066
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive action:\t"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/youku/gamecenter/GameCenterModel;->dumpLogs(Ljava/lang/String;)V

    .line 1068
    invoke-direct {p0, v0}, Lcom/youku/gamecenter/GameCenterModel;->isAppAdded(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1069
    invoke-direct {p0, p1, v1}, Lcom/youku/gamecenter/GameCenterModel;->handlePackageAdded(Landroid/content/Context;Ljava/lang/String;)V

    .line 1072
    :cond_2
    invoke-direct {p0, v0}, Lcom/youku/gamecenter/GameCenterModel;->isAppRemoved(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1073
    invoke-direct {p0, p1, v1}, Lcom/youku/gamecenter/GameCenterModel;->handlePackageRemoved(Landroid/content/Context;Ljava/lang/String;)V

    .line 1076
    :cond_3
    invoke-direct {p0, v1}, Lcom/youku/gamecenter/GameCenterModel;->notifyUIPakcageChanged(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onStart(Lcom/youku/gamecenter/download/DownloadInfo;)V
    .locals 7
    .param p1, "downloadInfo"    # Lcom/youku/gamecenter/download/DownloadInfo;

    .prologue
    .line 734
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStart \t\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/youku/gamecenter/download/DownloadInfo;->mDownloadTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " , \tdownloadurl:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/youku/gamecenter/download/DownloadInfo;->mDownloadUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/youku/gamecenter/GameCenterModel;->dumpLogs(Ljava/lang/String;)V

    .line 737
    sget-object v0, Lcom/youku/gamecenter/GameCenterModel;->sDownloadPackages:Ljava/util/Map;

    iget-object v1, p1, Lcom/youku/gamecenter/download/DownloadInfo;->mPackageName:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 740
    sget-object v0, Lcom/youku/gamecenter/data/GameInfoStatus;->STATUS_DOWNLOAD_ING:Lcom/youku/gamecenter/data/GameInfoStatus;

    invoke-direct {p0, p1, v0}, Lcom/youku/gamecenter/GameCenterModel;->addGameManagerData(Lcom/youku/gamecenter/download/DownloadInfo;Lcom/youku/gamecenter/data/GameInfoStatus;)V

    .line 743
    iget-object v1, p1, Lcom/youku/gamecenter/download/DownloadInfo;->mPackageName:Ljava/lang/String;

    sget-object v2, Lcom/youku/gamecenter/data/GameInfoStatus;->STATUS_DOWNLOAD_ING:Lcom/youku/gamecenter/data/GameInfoStatus;

    iget-object v3, p1, Lcom/youku/gamecenter/download/DownloadInfo;->mPath:Ljava/lang/String;

    iget v4, p1, Lcom/youku/gamecenter/download/DownloadInfo;->mVersion:I

    iget v5, p1, Lcom/youku/gamecenter/download/DownloadInfo;->mNotificationID:I

    iget-object v6, p1, Lcom/youku/gamecenter/download/DownloadInfo;->mDownloadUrl:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/youku/gamecenter/GameCenterModel;->updateGameInfoStatusByPackageNameWhenStart(Ljava/lang/String;Lcom/youku/gamecenter/data/GameInfoStatus;Ljava/lang/String;IILjava/lang/String;)V

    .line 748
    iget-object v0, p1, Lcom/youku/gamecenter/download/DownloadInfo;->mPackageName:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/youku/gamecenter/GameCenterModel;->notifyListenerDataChanged(Ljava/lang/String;Z)V

    .line 749
    return-void
.end method

.method public onUpdate(Ljava/lang/String;IIJIJ)V
    .locals 20
    .param p1, "packagename"    # Ljava/lang/String;
    .param p2, "progress"    # I
    .param p3, "state"    # I
    .param p4, "size"    # J
    .param p6, "downloadVelocity"    # I
    .param p7, "currentLength"    # J

    .prologue
    .line 755
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onUpdate \t\t"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , \tprogress:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , \tstate:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/youku/gamecenter/GameCenterModel;->dumpLogs(Ljava/lang/String;)V

    .line 758
    invoke-static/range {p1 .. p5}, Lcom/youku/gamecenter/GameCenterModel;->updateDownloadInfoStatus(Ljava/lang/String;IIJ)V

    .line 760
    invoke-static/range {p1 .. p1}, Lcom/youku/gamecenter/GameCenterModel;->getGameInfoByPackageName(Ljava/lang/String;)Lcom/youku/gamecenter/data/GameInfo;

    move-result-object v4

    .line 762
    .local v4, "gameInfo":Lcom/youku/gamecenter/data/GameInfo;
    invoke-static/range {p3 .. p3}, Lcom/youku/gamecenter/GameCenterModel;->transformDownloadStateToGameInfoStatus(I)Lcom/youku/gamecenter/data/GameInfoStatus;

    move-result-object v8

    .line 765
    .local v8, "status":Lcom/youku/gamecenter/data/GameInfoStatus;
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v8}, Lcom/youku/gamecenter/GameCenterModel;->isGameStatusChanged(Lcom/youku/gamecenter/data/GameInfo;Lcom/youku/gamecenter/data/GameInfoStatus;)Z

    move-result v19

    .local v19, "isStatusChanged":Z
    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move/from16 v7, p2

    move/from16 v9, p6

    move-wide/from16 v10, p7

    .line 767
    invoke-direct/range {v5 .. v11}, Lcom/youku/gamecenter/GameCenterModel;->updateGameInfoStatusByPackageNameWhenUpdate(Ljava/lang/String;ILcom/youku/gamecenter/data/GameInfoStatus;IJ)V

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move/from16 v11, p2

    move-wide/from16 v12, p4

    move-object v14, v8

    move/from16 v15, p6

    move-wide/from16 v16, p7

    .line 771
    invoke-direct/range {v9 .. v17}, Lcom/youku/gamecenter/GameCenterModel;->updateGameManagerData(Ljava/lang/String;IJLcom/youku/gamecenter/data/GameInfoStatus;IJ)V

    .line 775
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v8, v1}, Lcom/youku/gamecenter/GameCenterModel;->isDelayRefresh(Lcom/youku/gamecenter/data/GameInfoStatus;Z)Z

    move-result v18

    .line 777
    .local v18, "isDelayRefresh":Z
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/youku/gamecenter/GameCenterModel;->notifyListenerDataChanged(Ljava/lang/String;Z)V

    .line 778
    return-void
.end method

.method public registerReceiver(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1224
    iget v2, p0, Lcom/youku/gamecenter/GameCenterModel;->mRegisterAge:I

    if-eqz v2, :cond_1

    .line 1225
    iget v2, p0, Lcom/youku/gamecenter/GameCenterModel;->mRegisterAge:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/youku/gamecenter/GameCenterModel;->mRegisterAge:I

    .line 1251
    :cond_0
    :goto_0
    return-void

    .line 1228
    :cond_1
    iget v2, p0, Lcom/youku/gamecenter/GameCenterModel;->mRegisterAge:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/youku/gamecenter/GameCenterModel;->mRegisterAge:I

    .line 1230
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 1231
    .local v1, "filter2":Landroid/content/IntentFilter;
    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1232
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/youku/gamecenter/GameCenterModel;->mNetworkStateChangeReceiver:Lcom/youku/gamecenter/receivers/NetworkStateChangeReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1235
    iget-boolean v2, p0, Lcom/youku/gamecenter/GameCenterModel;->mIsInstalledLoaded:Z

    if-nez v2, :cond_0

    .line 1236
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/youku/gamecenter/GameCenterModel;->mIsInstalledLoaded:Z

    .line 1238
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1239
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1240
    const-string v2, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1241
    const-string v2, "package"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1243
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1244
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1245
    .restart local v0    # "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1246
    const-string v2, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1247
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public removeOnGameInfoChangedListener(Lcom/youku/gamecenter/OnGameInfoChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/youku/gamecenter/OnGameInfoChangedListener;

    .prologue
    .line 1296
    iget-object v0, p0, Lcom/youku/gamecenter/GameCenterModel;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1297
    return-void
.end method

.method public removeOnNetworkStateChangeNoNetworkReceiver(Lcom/youku/gamecenter/receivers/NetworkStateChangeReceiver$OnNetworkUnavailableListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/youku/gamecenter/receivers/NetworkStateChangeReceiver$OnNetworkUnavailableListener;

    .prologue
    .line 1319
    iget-object v0, p0, Lcom/youku/gamecenter/GameCenterModel;->mNetworkStateChangeReceiver:Lcom/youku/gamecenter/receivers/NetworkStateChangeReceiver;

    invoke-virtual {v0, p1}, Lcom/youku/gamecenter/receivers/NetworkStateChangeReceiver;->removeNoNetworkListener(Lcom/youku/gamecenter/receivers/NetworkStateChangeReceiver$OnNetworkUnavailableListener;)V

    .line 1320
    return-void
.end method

.method public removeOnNetworkStateChangeReceiver(Lcom/youku/gamecenter/receivers/NetworkStateChangeReceiver$OnNetworkAvailbleListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/youku/gamecenter/receivers/NetworkStateChangeReceiver$OnNetworkAvailbleListener;

    .prologue
    .line 1306
    iget-object v0, p0, Lcom/youku/gamecenter/GameCenterModel;->mNetworkStateChangeReceiver:Lcom/youku/gamecenter/receivers/NetworkStateChangeReceiver;

    invoke-virtual {v0, p1}, Lcom/youku/gamecenter/receivers/NetworkStateChangeReceiver;->removeListener(Lcom/youku/gamecenter/receivers/NetworkStateChangeReceiver$OnNetworkAvailbleListener;)V

    .line 1307
    return-void
.end method

.method public sortGameManagerData()V
    .locals 2

    .prologue
    .line 113
    sget-object v0, Lcom/youku/gamecenter/GameCenterModel;->sGameManageData:Ljava/util/List;

    iget-object v1, p0, Lcom/youku/gamecenter/GameCenterModel;->comparator:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 114
    return-void
.end method

.method public unRegisterReceiver(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1255
    iget v0, p0, Lcom/youku/gamecenter/GameCenterModel;->mRegisterAge:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/youku/gamecenter/GameCenterModel;->mRegisterAge:I

    .line 1257
    iget v0, p0, Lcom/youku/gamecenter/GameCenterModel;->mRegisterAge:I

    if-nez v0, :cond_0

    .line 1258
    invoke-direct {p0, p1}, Lcom/youku/gamecenter/GameCenterModel;->unregisterReceiverWithTryCatch(Landroid/content/Context;)V

    .line 1261
    :cond_0
    return-void
.end method
