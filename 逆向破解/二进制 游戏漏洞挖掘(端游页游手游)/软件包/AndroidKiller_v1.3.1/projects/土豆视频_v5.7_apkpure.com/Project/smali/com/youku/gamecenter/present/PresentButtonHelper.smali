.class public Lcom/youku/gamecenter/present/PresentButtonHelper;
.super Ljava/lang/Object;
.source "PresentButtonHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/gamecenter/present/PresentButtonHelper$1;,
        Lcom/youku/gamecenter/present/PresentButtonHelper$MyOnDialogClickListener;,
        Lcom/youku/gamecenter/present/PresentButtonHelper$onPresentStatusChangedListener;,
        Lcom/youku/gamecenter/present/PresentButtonHelper$MyOnPresentCodeServiceListener;
    }
.end annotation


# static fields
.field private static sSingleton:Lcom/youku/gamecenter/present/PresentButtonHelper;


# instance fields
.field private mClickTime:J

.field private mGameInfo:Lcom/youku/gamecenter/data/GameInfo;

.field private mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/youku/gamecenter/present/PresentButtonHelper$onPresentStatusChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageName:Ljava/lang/String;

.field private mPresentInfo:Lcom/youku/gamecenter/present/PresentInfo;

.field private mSource:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/youku/gamecenter/present/PresentButtonHelper;->mClickTime:J

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/youku/gamecenter/present/PresentButtonHelper;->mListeners:Ljava/util/List;

    .line 57
    return-void
.end method

.method static synthetic access$000(Lcom/youku/gamecenter/present/PresentButtonHelper;Landroid/content/Context;)Z
    .locals 1
    .param p0, "x0"    # Lcom/youku/gamecenter/present/PresentButtonHelper;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/youku/gamecenter/present/PresentButtonHelper;->isContextVaild(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/youku/gamecenter/present/PresentButtonHelper;)Lcom/youku/gamecenter/present/PresentInfo;
    .locals 1
    .param p0, "x0"    # Lcom/youku/gamecenter/present/PresentButtonHelper;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/youku/gamecenter/present/PresentButtonHelper;->mPresentInfo:Lcom/youku/gamecenter/present/PresentInfo;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/youku/gamecenter/present/PresentButtonHelper;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/gamecenter/present/PresentButtonHelper;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/youku/gamecenter/present/PresentButtonHelper;->startDownloadGame(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$200(Lcom/youku/gamecenter/present/PresentButtonHelper;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/youku/gamecenter/present/PresentButtonHelper;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/youku/gamecenter/present/PresentButtonHelper;->mSource:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/youku/gamecenter/present/PresentButtonHelper;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/gamecenter/present/PresentButtonHelper;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Lcom/youku/gamecenter/present/PresentButtonHelper;->sendTrack(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/youku/gamecenter/present/PresentButtonHelper;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/gamecenter/present/PresentButtonHelper;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/youku/gamecenter/present/PresentButtonHelper;->notifyListenerDataChanged()V

    return-void
.end method

.method static synthetic access$500(Lcom/youku/gamecenter/present/PresentButtonHelper;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/youku/gamecenter/present/PresentButtonHelper;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/youku/gamecenter/present/PresentButtonHelper;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/youku/gamecenter/present/PresentButtonHelper;)Lcom/youku/gamecenter/data/GameInfo;
    .locals 1
    .param p0, "x0"    # Lcom/youku/gamecenter/present/PresentButtonHelper;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/youku/gamecenter/present/PresentButtonHelper;->mGameInfo:Lcom/youku/gamecenter/data/GameInfo;

    return-object v0
.end method

.method static synthetic access$700(Lcom/youku/gamecenter/present/PresentButtonHelper;Lcom/youku/gamecenter/data/GameInfo;)Z
    .locals 1
    .param p0, "x0"    # Lcom/youku/gamecenter/present/PresentButtonHelper;
    .param p1, "x1"    # Lcom/youku/gamecenter/data/GameInfo;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/youku/gamecenter/present/PresentButtonHelper;->isPackageDownloadDone(Lcom/youku/gamecenter/data/GameInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/youku/gamecenter/present/PresentButtonHelper;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/gamecenter/present/PresentButtonHelper;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/youku/gamecenter/present/PresentButtonHelper;->installApp(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$900(Lcom/youku/gamecenter/present/PresentButtonHelper;Lcom/youku/gamecenter/data/GameInfo;)Z
    .locals 1
    .param p0, "x0"    # Lcom/youku/gamecenter/present/PresentButtonHelper;
    .param p1, "x1"    # Lcom/youku/gamecenter/data/GameInfo;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/youku/gamecenter/present/PresentButtonHelper;->isPackageDownloading(Lcom/youku/gamecenter/data/GameInfo;)Z

    move-result v0

    return v0
.end method

.method private getGameTagPara(Lcom/youku/gamecenter/present/PresentInfo;)Ljava/lang/String;
    .locals 2
    .param p1, "info"    # Lcom/youku/gamecenter/present/PresentInfo;

    .prologue
    .line 342
    if-nez p1, :cond_0

    .line 343
    const-string v0, ""

    .line 348
    :goto_0
    return-object v0

    .line 345
    :cond_0
    invoke-virtual {p1}, Lcom/youku/gamecenter/present/PresentInfo;->getAppTags()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 346
    const-string v0, ""

    goto :goto_0

    .line 348
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "&gametag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/youku/gamecenter/present/PresentInfo;->getAppTags()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static declared-synchronized getInstance()Lcom/youku/gamecenter/present/PresentButtonHelper;
    .locals 2

    .prologue
    .line 49
    const-class v1, Lcom/youku/gamecenter/present/PresentButtonHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/youku/gamecenter/present/PresentButtonHelper;->sSingleton:Lcom/youku/gamecenter/present/PresentButtonHelper;

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Lcom/youku/gamecenter/present/PresentButtonHelper;

    invoke-direct {v0}, Lcom/youku/gamecenter/present/PresentButtonHelper;-><init>()V

    sput-object v0, Lcom/youku/gamecenter/present/PresentButtonHelper;->sSingleton:Lcom/youku/gamecenter/present/PresentButtonHelper;

    .line 52
    :cond_0
    sget-object v0, Lcom/youku/gamecenter/present/PresentButtonHelper;->sSingleton:Lcom/youku/gamecenter/present/PresentButtonHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 49
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getStatisticText(Lcom/youku/gamecenter/present/PresentInfo;)Ljava/lang/String;
    .locals 4
    .param p1, "info"    # Lcom/youku/gamecenter/present/PresentInfo;

    .prologue
    .line 332
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "&gameid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/youku/gamecenter/present/PresentInfo;->app_id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "gamename"

    iget-object v3, p1, Lcom/youku/gamecenter/present/PresentInfo;->app_name:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/youku/gamecenter/services/URLContainer;->getValidText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&giftid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/youku/gamecenter/present/PresentInfo;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "giftname"

    iget-object v3, p1, Lcom/youku/gamecenter/present/PresentInfo;->name:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/youku/gamecenter/services/URLContainer;->getValidText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/youku/gamecenter/present/PresentButtonHelper;->getGameTagPara(Lcom/youku/gamecenter/present/PresentInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 338
    .local v0, "statistic":Ljava/lang/String;
    return-object v0
.end method

.method private getStatisticText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "presentId"    # Ljava/lang/String;
    .param p2, "rec_tags"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;

    .prologue
    .line 192
    const-string v0, ""

    .line 193
    .local v0, "statistic":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 194
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&giftid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 195
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 196
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&gametag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 198
    :cond_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 199
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&gametypename="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p3}, Lcom/youku/gamecenter/services/URLContainer;->URLEncoder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 201
    :cond_2
    return-object v0
.end method

.method private handlePresentStatusCheck(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 162
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GamePresentActivity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    check-cast p1, Lcom/youku/gamecenter/GamePresentActivity;

    .end local p1    # "context":Landroid/content/Context;
    invoke-virtual {p1, v2}, Lcom/youku/gamecenter/GamePresentActivity;->setCurrentItem(I)V

    .line 167
    :goto_0
    return-void

    .line 166
    .restart local p1    # "context":Landroid/content/Context;
    :cond_0
    invoke-static {p1, v2}, Lcom/youku/gamecenter/util/AppClickActionUtils;->launchGamePresentActivity(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method private handlePresentStatusGet(Landroid/content/Context;Lcom/youku/gamecenter/present/PresentInfo;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "info"    # Lcom/youku/gamecenter/present/PresentInfo;

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/youku/gamecenter/present/PresentButtonHelper;->isContextVaild(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 124
    :cond_0
    :goto_0
    return-void

    .line 93
    :cond_1
    invoke-direct {p0, p2}, Lcom/youku/gamecenter/present/PresentButtonHelper;->transformToGameInfo(Lcom/youku/gamecenter/present/PresentInfo;)Lcom/youku/gamecenter/data/GameInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/gamecenter/present/PresentButtonHelper;->mGameInfo:Lcom/youku/gamecenter/data/GameInfo;

    .line 96
    iget-object v0, p0, Lcom/youku/gamecenter/present/PresentButtonHelper;->mGameInfo:Lcom/youku/gamecenter/data/GameInfo;

    invoke-direct {p0, v0}, Lcom/youku/gamecenter/present/PresentButtonHelper;->isPackageInstalled(Lcom/youku/gamecenter/data/GameInfo;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 97
    invoke-direct {p0, p1, p2}, Lcom/youku/gamecenter/present/PresentButtonHelper;->notifyAndGetPresent(Landroid/content/Context;Lcom/youku/gamecenter/present/PresentInfo;)V

    goto :goto_0

    .line 102
    :cond_2
    iget-object v0, p0, Lcom/youku/gamecenter/present/PresentButtonHelper;->mGameInfo:Lcom/youku/gamecenter/data/GameInfo;

    invoke-direct {p0, v0}, Lcom/youku/gamecenter/present/PresentButtonHelper;->isPackageDownloadDone(Lcom/youku/gamecenter/data/GameInfo;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 103
    invoke-direct {p0, p1}, Lcom/youku/gamecenter/present/PresentButtonHelper;->showPromptDialog(Landroid/content/Context;)Lcom/youku/gamecenter/widgets/SimplePromptDialog;

    goto :goto_0

    .line 108
    :cond_3
    iget-object v0, p0, Lcom/youku/gamecenter/present/PresentButtonHelper;->mGameInfo:Lcom/youku/gamecenter/data/GameInfo;

    invoke-direct {p0, v0}, Lcom/youku/gamecenter/present/PresentButtonHelper;->isPackageDownloading(Lcom/youku/gamecenter/data/GameInfo;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 109
    invoke-direct {p0, p1}, Lcom/youku/gamecenter/present/PresentButtonHelper;->showPromptDialog(Landroid/content/Context;)Lcom/youku/gamecenter/widgets/SimplePromptDialog;

    goto :goto_0

    .line 114
    :cond_4
    iget-object v0, p0, Lcom/youku/gamecenter/present/PresentButtonHelper;->mGameInfo:Lcom/youku/gamecenter/data/GameInfo;

    invoke-direct {p0, v0}, Lcom/youku/gamecenter/present/PresentButtonHelper;->isPackageDownloadPaused(Lcom/youku/gamecenter/data/GameInfo;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 115
    invoke-direct {p0, p1}, Lcom/youku/gamecenter/present/PresentButtonHelper;->showPromptDialog(Landroid/content/Context;)Lcom/youku/gamecenter/widgets/SimplePromptDialog;

    goto :goto_0

    .line 120
    :cond_5
    iget-object v0, p0, Lcom/youku/gamecenter/present/PresentButtonHelper;->mGameInfo:Lcom/youku/gamecenter/data/GameInfo;

    invoke-direct {p0, v0}, Lcom/youku/gamecenter/present/PresentButtonHelper;->isPackageNew(Lcom/youku/gamecenter/data/GameInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    invoke-direct {p0, p1}, Lcom/youku/gamecenter/present/PresentButtonHelper;->showPromptDialog(Landroid/content/Context;)Lcom/youku/gamecenter/widgets/SimplePromptDialog;

    goto :goto_0
.end method

.method private handlePresentStatusGetErrorTime(Landroid/content/Context;Lcom/youku/gamecenter/present/PresentInfo;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "info"    # Lcom/youku/gamecenter/present/PresentInfo;

    .prologue
    const/4 v2, 0x0

    .line 154
    invoke-direct {p0, p1}, Lcom/youku/gamecenter/present/PresentButtonHelper;->isContextVaild(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    const/4 v1, 0x1

    iget-object v3, p2, Lcom/youku/gamecenter/present/PresentInfo;->start_time:Ljava/lang/String;

    iget-object v4, p2, Lcom/youku/gamecenter/present/PresentInfo;->end_time:Ljava/lang/String;

    move-object v0, p1

    move-object v5, v2

    invoke-static/range {v0 .. v5}, Lcom/youku/gamecenter/widgets/PresentGetDialog;->showDialog(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/youku/gamecenter/widgets/PresentGetDialog;

    .line 159
    :cond_0
    return-void
.end method

.method private handleRepeatClick()Z
    .locals 4

    .prologue
    .line 447
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/youku/gamecenter/present/PresentButtonHelper;->mClickTime:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v2, 0x1f4

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 448
    const/4 v0, 0x1

    .line 450
    :goto_0
    return v0

    .line 449
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/youku/gamecenter/present/PresentButtonHelper;->mClickTime:J

    .line 450
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private installApp(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 139
    iget-object v1, p0, Lcom/youku/gamecenter/present/PresentButtonHelper;->mGameInfo:Lcom/youku/gamecenter/data/GameInfo;

    const-string v2, "32"

    const-string v4, ""

    move-object v0, p1

    move v5, v3

    invoke-static/range {v0 .. v5}, Lcom/youku/gamecenter/util/ClickActionUtils;->handleGameAction(Landroid/content/Context;Lcom/youku/gamecenter/data/GameInfo;Ljava/lang/String;ILjava/lang/String;Z)V

    .line 140
    return-void
.end method

.method private isContextVaild(Landroid/content/Context;)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 390
    if-nez p1, :cond_1

    move v0, v1

    .line 397
    .end local p1    # "context":Landroid/content/Context;
    :cond_0
    :goto_0
    return v0

    .line 394
    .restart local p1    # "context":Landroid/content/Context;
    :cond_1
    iget-object v2, p0, Lcom/youku/gamecenter/present/PresentButtonHelper;->mSource:Ljava/lang/String;

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 395
    check-cast p1, Landroid/support/v4/app/FragmentActivity;

    .end local p1    # "context":Landroid/content/Context;
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 397
    .restart local p1    # "context":Landroid/content/Context;
    :cond_2
    check-cast p1, Landroid/app/Activity;

    .end local p1    # "context":Landroid/content/Context;
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private isPackageDownloadDone(Lcom/youku/gamecenter/data/GameInfo;)Z
    .locals 2
    .param p1, "game"    # Lcom/youku/gamecenter/data/GameInfo;

    .prologue
    .line 303
    iget-object v0, p1, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    sget-object v1, Lcom/youku/gamecenter/data/GameInfoStatus;->STATUS_DOWNLOAD_DONE:Lcom/youku/gamecenter/data/GameInfoStatus;

    if-ne v0, v1, :cond_0

    .line 304
    const/4 v0, 0x1

    .line 306
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isPackageDownloadPaused(Lcom/youku/gamecenter/data/GameInfo;)Z
    .locals 3
    .param p1, "game"    # Lcom/youku/gamecenter/data/GameInfo;

    .prologue
    const/4 v0, 0x1

    .line 293
    iget-object v1, p1, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    sget-object v2, Lcom/youku/gamecenter/data/GameInfoStatus;->STATUS_DOWNLOAD_PAUSE:Lcom/youku/gamecenter/data/GameInfoStatus;

    if-ne v1, v2, :cond_1

    .line 299
    :cond_0
    :goto_0
    return v0

    .line 296
    :cond_1
    iget-object v1, p1, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    sget-object v2, Lcom/youku/gamecenter/data/GameInfoStatus;->STATUS_DOWNLOAD_STOP:Lcom/youku/gamecenter/data/GameInfoStatus;

    if-eq v1, v2, :cond_0

    .line 299
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isPackageDownloading(Lcom/youku/gamecenter/data/GameInfo;)Z
    .locals 3
    .param p1, "game"    # Lcom/youku/gamecenter/data/GameInfo;

    .prologue
    const/4 v0, 0x1

    .line 283
    iget-object v1, p1, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    sget-object v2, Lcom/youku/gamecenter/data/GameInfoStatus;->STATUS_DOWNLOAD_ING:Lcom/youku/gamecenter/data/GameInfoStatus;

    if-ne v1, v2, :cond_1

    .line 289
    :cond_0
    :goto_0
    return v0

    .line 286
    :cond_1
    iget-object v1, p1, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    sget-object v2, Lcom/youku/gamecenter/data/GameInfoStatus;->STATUS_DOWNLOAD_PENDING:Lcom/youku/gamecenter/data/GameInfoStatus;

    if-eq v1, v2, :cond_0

    .line 289
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isPackageInstalled(Lcom/youku/gamecenter/data/GameInfo;)Z
    .locals 4
    .param p1, "game"    # Lcom/youku/gamecenter/data/GameInfo;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 310
    if-nez p1, :cond_1

    .line 319
    :cond_0
    :goto_0
    return v0

    .line 313
    :cond_1
    iget-object v2, p1, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    sget-object v3, Lcom/youku/gamecenter/data/GameInfoStatus;->STATUS_INSTALLED:Lcom/youku/gamecenter/data/GameInfoStatus;

    if-ne v2, v3, :cond_2

    move v0, v1

    .line 314
    goto :goto_0

    .line 316
    :cond_2
    iget-object v2, p1, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    sget-object v3, Lcom/youku/gamecenter/data/GameInfoStatus;->STATUS_UPDATEABLE:Lcom/youku/gamecenter/data/GameInfoStatus;

    if-ne v2, v3, :cond_0

    move v0, v1

    .line 317
    goto :goto_0
.end method

.method private isPackageNew(Lcom/youku/gamecenter/data/GameInfo;)Z
    .locals 2
    .param p1, "game"    # Lcom/youku/gamecenter/data/GameInfo;

    .prologue
    .line 276
    iget-object v0, p1, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    sget-object v1, Lcom/youku/gamecenter/data/GameInfoStatus;->STATUS_NEW:Lcom/youku/gamecenter/data/GameInfoStatus;

    if-ne v0, v1, :cond_0

    .line 277
    const/4 v0, 0x1

    .line 279
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private notifyAndGetPresent(Landroid/content/Context;Lcom/youku/gamecenter/present/PresentInfo;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "info"    # Lcom/youku/gamecenter/present/PresentInfo;

    .prologue
    .line 143
    sget-object v3, Lcom/youku/gamecenter/present/PresentStatus;->STATUS_ING:Lcom/youku/gamecenter/present/PresentStatus;

    iput-object v3, p2, Lcom/youku/gamecenter/present/PresentInfo;->status:Lcom/youku/gamecenter/present/PresentStatus;

    .line 144
    invoke-direct {p0}, Lcom/youku/gamecenter/present/PresentButtonHelper;->notifyListenerDataChanged()V

    .line 145
    iget-object v3, p2, Lcom/youku/gamecenter/present/PresentInfo;->id:Ljava/lang/String;

    invoke-static {v3}, Lcom/youku/gamecenter/services/URLContainer;->getPresentCodeByPresentId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 146
    .local v2, "url":Ljava/lang/String;
    new-instance v0, Lcom/youku/gamecenter/services/GetPresentCodeOrCountService;

    const/4 v3, 0x1

    invoke-direct {v0, p1, v3}, Lcom/youku/gamecenter/services/GetPresentCodeOrCountService;-><init>(Landroid/content/Context;Z)V

    .line 148
    .local v0, "getPresentCodeOrCountService":Lcom/youku/gamecenter/services/GetPresentCodeOrCountService;
    new-instance v1, Lcom/youku/gamecenter/present/PresentButtonHelper$MyOnPresentCodeServiceListener;

    invoke-direct {v1, p0, p1}, Lcom/youku/gamecenter/present/PresentButtonHelper$MyOnPresentCodeServiceListener;-><init>(Lcom/youku/gamecenter/present/PresentButtonHelper;Landroid/content/Context;)V

    .line 150
    .local v1, "listener":Lcom/youku/gamecenter/present/PresentButtonHelper$MyOnPresentCodeServiceListener;
    invoke-virtual {v0, v2, v1}, Lcom/youku/gamecenter/services/GetPresentCodeOrCountService;->fetchResponse(Ljava/lang/String;Lcom/youku/gamecenter/services/GetResponseService$IResponseServiceListener;)V

    .line 151
    return-void
.end method

.method private notifyListenerDataChanged()V
    .locals 3

    .prologue
    .line 365
    iget-object v2, p0, Lcom/youku/gamecenter/present/PresentButtonHelper;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/gamecenter/present/PresentButtonHelper$onPresentStatusChangedListener;

    .line 366
    .local v1, "listener":Lcom/youku/gamecenter/present/PresentButtonHelper$onPresentStatusChangedListener;
    iget-object v2, p0, Lcom/youku/gamecenter/present/PresentButtonHelper;->mPresentInfo:Lcom/youku/gamecenter/present/PresentInfo;

    invoke-interface {v1, v2}, Lcom/youku/gamecenter/present/PresentButtonHelper$onPresentStatusChangedListener;->onPresentButtonClick(Lcom/youku/gamecenter/present/PresentInfo;)V

    goto :goto_0

    .line 368
    .end local v1    # "listener":Lcom/youku/gamecenter/present/PresentButtonHelper$onPresentStatusChangedListener;
    :cond_0
    return-void
.end method

.method private sendTrack(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "source"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;

    .prologue
    .line 323
    sget-object v2, Lcom/youku/gamecenter/services/URLContainer;->GAME_PRESENT_STATISTICS:Ljava/lang/String;

    invoke-static {p1, v2}, Lcom/youku/gamecenter/statistics/GameTrack;->setBaseParam(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 325
    .local v1, "url":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/youku/gamecenter/present/PresentButtonHelper;->mPresentInfo:Lcom/youku/gamecenter/present/PresentInfo;

    invoke-direct {p0, v3}, Lcom/youku/gamecenter/present/PresentButtonHelper;->getStatisticText(Lcom/youku/gamecenter/present/PresentInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&source="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 327
    new-instance v0, Lcom/youku/gamecenter/statistics/GameStatisticsTask;

    invoke-direct {v0, v1, p1}, Lcom/youku/gamecenter/statistics/GameStatisticsTask;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    .line 328
    .local v0, "statistics":Lcom/youku/gamecenter/statistics/GameStatisticsTask;
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v2}, Lcom/youku/gamecenter/statistics/GameStatisticsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 329
    return-void
.end method

.method private showPromptDialog(Landroid/content/Context;)Lcom/youku/gamecenter/widgets/SimplePromptDialog;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 127
    sget v4, Lcom/youku/gamecenter/R$string;->game_present_promopt_dialog_title:I

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 129
    .local v3, "title":Ljava/lang/String;
    sget v4, Lcom/youku/gamecenter/R$string;->game_present_promopt_dialog_content:I

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 131
    .local v0, "content":Ljava/lang/String;
    sget v4, Lcom/youku/gamecenter/R$string;->str_install:I

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 133
    .local v2, "okTitle":Ljava/lang/String;
    new-instance v1, Lcom/youku/gamecenter/present/PresentButtonHelper$MyOnDialogClickListener;

    invoke-direct {v1, p0, p1}, Lcom/youku/gamecenter/present/PresentButtonHelper$MyOnDialogClickListener;-><init>(Lcom/youku/gamecenter/present/PresentButtonHelper;Landroid/content/Context;)V

    .line 135
    .local v1, "listener":Lcom/youku/gamecenter/present/PresentButtonHelper$MyOnDialogClickListener;
    invoke-static {p1, v3, v0, v2, v1}, Lcom/youku/gamecenter/widgets/SimplePromptDialog;->showDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/youku/gamecenter/widgets/SimplePromptDialog$OnDialogClickListener;)Lcom/youku/gamecenter/widgets/SimplePromptDialog;

    move-result-object v4

    return-object v4
.end method

.method private startDownloadGame(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 440
    iget-object v0, p0, Lcom/youku/gamecenter/present/PresentButtonHelper;->mGameInfo:Lcom/youku/gamecenter/data/GameInfo;

    invoke-virtual {v0}, Lcom/youku/gamecenter/data/GameInfo;->getGameTags()Ljava/lang/String;

    move-result-object v6

    .line 441
    .local v6, "rec_tags":Ljava/lang/String;
    iget-object v0, p0, Lcom/youku/gamecenter/present/PresentButtonHelper;->mPresentInfo:Lcom/youku/gamecenter/present/PresentInfo;

    iget-object v0, v0, Lcom/youku/gamecenter/present/PresentInfo;->id:Ljava/lang/String;

    iget-object v1, p0, Lcom/youku/gamecenter/present/PresentButtonHelper;->mGameInfo:Lcom/youku/gamecenter/data/GameInfo;

    iget-object v1, v1, Lcom/youku/gamecenter/data/GameInfo;->type:Ljava/lang/String;

    invoke-direct {p0, v0, v6, v1}, Lcom/youku/gamecenter/present/PresentButtonHelper;->getStatisticText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 443
    .local v4, "statistics":Ljava/lang/String;
    iget-object v1, p0, Lcom/youku/gamecenter/present/PresentButtonHelper;->mGameInfo:Lcom/youku/gamecenter/data/GameInfo;

    const-string v2, "32"

    move-object v0, p1

    move v5, v3

    invoke-static/range {v0 .. v5}, Lcom/youku/gamecenter/util/ClickActionUtils;->handleGameAction(Landroid/content/Context;Lcom/youku/gamecenter/data/GameInfo;Ljava/lang/String;ILjava/lang/String;Z)V

    .line 444
    return-void
.end method

.method private transformToGameInfo(Lcom/youku/gamecenter/present/PresentInfo;)Lcom/youku/gamecenter/data/GameInfo;
    .locals 2
    .param p1, "info"    # Lcom/youku/gamecenter/present/PresentInfo;

    .prologue
    .line 171
    iget-object v1, p1, Lcom/youku/gamecenter/present/PresentInfo;->app_package:Ljava/lang/String;

    invoke-static {v1}, Lcom/youku/gamecenter/GameCenterModel;->getGameInfoFromCache(Ljava/lang/String;)Lcom/youku/gamecenter/data/GameInfo;

    move-result-object v0

    .line 174
    .local v0, "gameInfo":Lcom/youku/gamecenter/data/GameInfo;
    iget v1, p1, Lcom/youku/gamecenter/present/PresentInfo;->app_vercode:I

    iput v1, v0, Lcom/youku/gamecenter/data/GameInfo;->ver_code:I

    .line 176
    invoke-static {v0}, Lcom/youku/gamecenter/GameCenterModel;->updateGameInfoStatus(Lcom/youku/gamecenter/data/GameInfo;)V

    .line 178
    iget-object v1, p1, Lcom/youku/gamecenter/present/PresentInfo;->app_name:Ljava/lang/String;

    iput-object v1, v0, Lcom/youku/gamecenter/data/GameInfo;->appname:Ljava/lang/String;

    .line 179
    iget-object v1, p1, Lcom/youku/gamecenter/present/PresentInfo;->app_id:Ljava/lang/String;

    iput-object v1, v0, Lcom/youku/gamecenter/data/GameInfo;->id:Ljava/lang/String;

    .line 180
    iget-object v1, p1, Lcom/youku/gamecenter/present/PresentInfo;->app_tags:Ljava/util/List;

    iput-object v1, v0, Lcom/youku/gamecenter/data/GameInfo;->tags:Ljava/util/List;

    .line 181
    iget-object v1, p1, Lcom/youku/gamecenter/present/PresentInfo;->app_icon:Ljava/lang/String;

    iput-object v1, v0, Lcom/youku/gamecenter/data/GameInfo;->logo:Ljava/lang/String;

    .line 182
    iget-object v1, p1, Lcom/youku/gamecenter/present/PresentInfo;->app_url:Ljava/lang/String;

    iput-object v1, v0, Lcom/youku/gamecenter/data/GameInfo;->download_link:Ljava/lang/String;

    .line 183
    iget-object v1, p1, Lcom/youku/gamecenter/present/PresentInfo;->app_package:Ljava/lang/String;

    iput-object v1, v0, Lcom/youku/gamecenter/data/GameInfo;->packagename:Ljava/lang/String;

    .line 184
    iget-object v1, p1, Lcom/youku/gamecenter/present/PresentInfo;->app_version:Ljava/lang/String;

    iput-object v1, v0, Lcom/youku/gamecenter/data/GameInfo;->version:Ljava/lang/String;

    .line 185
    iget-object v1, p1, Lcom/youku/gamecenter/present/PresentInfo;->app_type:Ljava/lang/String;

    iput-object v1, v0, Lcom/youku/gamecenter/data/GameInfo;->type:Ljava/lang/String;

    .line 187
    return-object v0
.end method


# virtual methods
.method public addOnPresentStatusChangedListener(Lcom/youku/gamecenter/present/PresentButtonHelper$onPresentStatusChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/youku/gamecenter/present/PresentButtonHelper$onPresentStatusChangedListener;

    .prologue
    .line 372
    iget-object v0, p0, Lcom/youku/gamecenter/present/PresentButtonHelper;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 376
    :goto_0
    return-void

    .line 375
    :cond_0
    iget-object v0, p0, Lcom/youku/gamecenter/present/PresentButtonHelper;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public handleClickAction(Lcom/youku/gamecenter/present/PresentInfo;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "info"    # Lcom/youku/gamecenter/present/PresentInfo;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "source"    # Ljava/lang/String;
    .param p4, "packagename"    # Ljava/lang/String;

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/youku/gamecenter/present/PresentButtonHelper;->handleRepeatClick()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 85
    :cond_0
    :goto_0
    return-void

    .line 67
    :cond_1
    iput-object p1, p0, Lcom/youku/gamecenter/present/PresentButtonHelper;->mPresentInfo:Lcom/youku/gamecenter/present/PresentInfo;

    .line 68
    iput-object p3, p0, Lcom/youku/gamecenter/present/PresentButtonHelper;->mSource:Ljava/lang/String;

    .line 69
    iput-object p4, p0, Lcom/youku/gamecenter/present/PresentButtonHelper;->mPackageName:Ljava/lang/String;

    .line 71
    iget-object v0, p1, Lcom/youku/gamecenter/present/PresentInfo;->status:Lcom/youku/gamecenter/present/PresentStatus;

    sget-object v1, Lcom/youku/gamecenter/present/PresentStatus;->STATUS_GET:Lcom/youku/gamecenter/present/PresentStatus;

    if-ne v0, v1, :cond_2

    .line 72
    invoke-direct {p0, p2, p1}, Lcom/youku/gamecenter/present/PresentButtonHelper;->handlePresentStatusGet(Landroid/content/Context;Lcom/youku/gamecenter/present/PresentInfo;)V

    goto :goto_0

    .line 75
    :cond_2
    iget-object v0, p1, Lcom/youku/gamecenter/present/PresentInfo;->status:Lcom/youku/gamecenter/present/PresentStatus;

    sget-object v1, Lcom/youku/gamecenter/present/PresentStatus;->STATUS_GET_ERROR_TIME:Lcom/youku/gamecenter/present/PresentStatus;

    if-ne v0, v1, :cond_3

    .line 76
    invoke-direct {p0, p2, p1}, Lcom/youku/gamecenter/present/PresentButtonHelper;->handlePresentStatusGetErrorTime(Landroid/content/Context;Lcom/youku/gamecenter/present/PresentInfo;)V

    goto :goto_0

    .line 80
    :cond_3
    iget-object v0, p1, Lcom/youku/gamecenter/present/PresentInfo;->status:Lcom/youku/gamecenter/present/PresentStatus;

    sget-object v1, Lcom/youku/gamecenter/present/PresentStatus;->STATUS_CHECK:Lcom/youku/gamecenter/present/PresentStatus;

    if-ne v0, v1, :cond_0

    .line 81
    invoke-direct {p0, p2}, Lcom/youku/gamecenter/present/PresentButtonHelper;->handlePresentStatusCheck(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public removeOnPresentStatusChangedListener(Lcom/youku/gamecenter/present/PresentButtonHelper$onPresentStatusChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/youku/gamecenter/present/PresentButtonHelper$onPresentStatusChangedListener;

    .prologue
    .line 380
    iget-object v0, p0, Lcom/youku/gamecenter/present/PresentButtonHelper;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 381
    return-void
.end method

.method public switchFailedToPresnetStatus(Lcom/youku/gamecenter/services/GetResponseService$FailedInfo;)Lcom/youku/gamecenter/present/PresentStatus;
    .locals 2
    .param p1, "failedInfo"    # Lcom/youku/gamecenter/services/GetResponseService$FailedInfo;

    .prologue
    .line 353
    iget-object v0, p1, Lcom/youku/gamecenter/services/GetResponseService$FailedInfo;->errorCode:Ljava/lang/String;

    const-string v1, "-1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 354
    sget-object v0, Lcom/youku/gamecenter/present/PresentStatus;->STATUS_CHECK:Lcom/youku/gamecenter/present/PresentStatus;

    .line 361
    :goto_0
    return-object v0

    .line 357
    :cond_0
    iget-object v0, p1, Lcom/youku/gamecenter/services/GetResponseService$FailedInfo;->errorCode:Ljava/lang/String;

    const-string v1, "-3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 358
    sget-object v0, Lcom/youku/gamecenter/present/PresentStatus;->STATUS_NULL:Lcom/youku/gamecenter/present/PresentStatus;

    goto :goto_0

    .line 361
    :cond_1
    sget-object v0, Lcom/youku/gamecenter/present/PresentStatus;->STATUS_GET:Lcom/youku/gamecenter/present/PresentStatus;

    goto :goto_0
.end method
