.class public Lcom/youku/gamecenter/outer/VideoAdvGameDownloadHelper;
.super Ljava/lang/Object;
.source "VideoAdvGameDownloadHelper.java"


# static fields
.field private static sInstance:Lcom/youku/gamecenter/outer/VideoAdvGameDownloadHelper;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEndTrack:[Ljava/lang/String;

.field private mGameCenterModel:Lcom/youku/gamecenter/GameCenterModel;

.field private mGameInfo:Lcom/youku/gamecenter/data/GameInfo;

.field private mStartTrack:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    sput-object v0, Lcom/youku/gamecenter/outer/VideoAdvGameDownloadHelper;->sInstance:Lcom/youku/gamecenter/outer/VideoAdvGameDownloadHelper;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-static {}, Lcom/youku/gamecenter/GameCenterModel;->getInstance()Lcom/youku/gamecenter/GameCenterModel;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/gamecenter/outer/VideoAdvGameDownloadHelper;->mGameCenterModel:Lcom/youku/gamecenter/GameCenterModel;

    .line 28
    iput-object v1, p0, Lcom/youku/gamecenter/outer/VideoAdvGameDownloadHelper;->mGameInfo:Lcom/youku/gamecenter/data/GameInfo;

    .line 29
    iput-object v1, p0, Lcom/youku/gamecenter/outer/VideoAdvGameDownloadHelper;->mStartTrack:[Ljava/lang/String;

    .line 30
    iput-object v1, p0, Lcom/youku/gamecenter/outer/VideoAdvGameDownloadHelper;->mEndTrack:[Ljava/lang/String;

    .line 33
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/gamecenter/outer/VideoAdvGameDownloadHelper;->mContext:Landroid/content/Context;

    .line 34
    invoke-direct {p0}, Lcom/youku/gamecenter/outer/VideoAdvGameDownloadHelper;->registerListeners()V

    .line 35
    iget-object v0, p0, Lcom/youku/gamecenter/outer/VideoAdvGameDownloadHelper;->mGameCenterModel:Lcom/youku/gamecenter/GameCenterModel;

    iget-object v1, p0, Lcom/youku/gamecenter/outer/VideoAdvGameDownloadHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/youku/gamecenter/GameCenterModel;->loadLocalPackages(Landroid/content/Context;)V

    .line 36
    return-void
.end method

.method static synthetic access$000(Lcom/youku/gamecenter/outer/VideoAdvGameDownloadHelper;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/youku/gamecenter/outer/VideoAdvGameDownloadHelper;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/youku/gamecenter/outer/VideoAdvGameDownloadHelper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/youku/gamecenter/outer/VideoAdvGameDownloadHelper;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/youku/gamecenter/outer/VideoAdvGameDownloadHelper;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/youku/gamecenter/outer/VideoAdvGameDownloadHelper;->mStartTrack:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/youku/gamecenter/outer/VideoAdvGameDownloadHelper;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/youku/gamecenter/outer/VideoAdvGameDownloadHelper;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/youku/gamecenter/outer/VideoAdvGameDownloadHelper;->mEndTrack:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/youku/gamecenter/outer/VideoAdvGameDownloadHelper;Lcom/youku/gamecenter/data/GameInfo;)Lcom/youku/gamecenter/data/GameInfo;
    .locals 0
    .param p0, "x0"    # Lcom/youku/gamecenter/outer/VideoAdvGameDownloadHelper;
    .param p1, "x1"    # Lcom/youku/gamecenter/data/GameInfo;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/youku/gamecenter/outer/VideoAdvGameDownloadHelper;->mGameInfo:Lcom/youku/gamecenter/data/GameInfo;

    return-object p1
.end method

.method static synthetic access$400(Lcom/youku/gamecenter/outer/VideoAdvGameDownloadHelper;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/youku/gamecenter/outer/VideoAdvGameDownloadHelper;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/youku/gamecenter/outer/VideoAdvGameDownloadHelper;->hasThisGameInfo(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/youku/gamecenter/outer/VideoAdvGameDownloadHelper;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    const-class v1, Lcom/youku/gamecenter/outer/VideoAdvGameDownloadHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/youku/gamecenter/outer/VideoAdvGameDownloadHelper;->sInstance:Lcom/youku/gamecenter/outer/VideoAdvGameDownloadHelper;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lcom/youku/gamecenter/outer/VideoAdvGameDownloadHelper;

    invoke-direct {v0, p0}, Lcom/youku/gamecenter/outer/VideoAdvGameDownloadHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/youku/gamecenter/outer/VideoAdvGameDownloadHelper;->sInstance:Lcom/youku/gamecenter/outer/VideoAdvGameDownloadHelper;

    .line 42
    :cond_0
    sget-object v0, Lcom/youku/gamecenter/outer/VideoAdvGameDownloadHelper;->sInstance:Lcom/youku/gamecenter/outer/VideoAdvGameDownloadHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 39
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private hasThisGameInfo(Ljava/lang/String;)Z
    .locals 3
    .param p1, "gameId"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 113
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 114
    const-string v1, "VideoAdGameDownloadHelper---->"

    const-string/jumbo v2, "the gameId is null!!!"

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    :cond_0
    :goto_0
    return v0

    .line 118
    :cond_1
    iget-object v1, p0, Lcom/youku/gamecenter/outer/VideoAdvGameDownloadHelper;->mGameInfo:Lcom/youku/gamecenter/data/GameInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/youku/gamecenter/outer/VideoAdvGameDownloadHelper;->mGameInfo:Lcom/youku/gamecenter/data/GameInfo;

    iget-object v1, v1, Lcom/youku/gamecenter/data/GameInfo;->id:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 119
    const-string v0, "VideoAdGameDownloadHelper---->"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "already get this gameInfo, gameId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/youku/gamecenter/outer/VideoAdvGameDownloadHelper;->mGameInfo:Lcom/youku/gamecenter/data/GameInfo;

    iget-object v2, v2, Lcom/youku/gamecenter/data/GameInfo;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "packageName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/youku/gamecenter/outer/VideoAdvGameDownloadHelper;->mGameInfo:Lcom/youku/gamecenter/data/GameInfo;

    iget-object v2, v2, Lcom/youku/gamecenter/data/GameInfo;->packagename:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "downloadUrl = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/youku/gamecenter/outer/VideoAdvGameDownloadHelper;->mGameInfo:Lcom/youku/gamecenter/data/GameInfo;

    iget-object v2, v2, Lcom/youku/gamecenter/data/GameInfo;->download_link:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private loadAdvGameInfo(Ljava/lang/String;Z)V
    .locals 5
    .param p1, "gameId"    # Ljava/lang/String;
    .param p2, "isLastRequest"    # Z

    .prologue
    .line 51
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 52
    const-string v2, "VideoAdGameDownloadHelper---->"

    const-string v3, "loadAdvGameInfo ---> the gameId is null!!!"

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    :goto_0
    return-void

    .line 56
    :cond_0
    if-nez p2, :cond_1

    .line 57
    invoke-direct {p0, p1}, Lcom/youku/gamecenter/outer/VideoAdvGameDownloadHelper;->hasThisGameInfo(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 58
    const-string v2, "VideoAdGameDownloadHelper---->"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "not lastRequest!!! loadAdvGameInfo ---> already get this gameInfo, gameId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/youku/gamecenter/outer/VideoAdvGameDownloadHelper;->mGameInfo:Lcom/youku/gamecenter/data/GameInfo;

    iget-object v4, v4, Lcom/youku/gamecenter/data/GameInfo;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "packageName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/youku/gamecenter/outer/VideoAdvGameDownloadHelper;->mGameInfo:Lcom/youku/gamecenter/data/GameInfo;

    iget-object v4, v4, Lcom/youku/gamecenter/data/GameInfo;->packagename:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "downloadUrl = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/youku/gamecenter/outer/VideoAdvGameDownloadHelper;->mGameInfo:Lcom/youku/gamecenter/data/GameInfo;

    iget-object v4, v4, Lcom/youku/gamecenter/data/GameInfo;->download_link:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 63
    :cond_1
    invoke-static {p1}, Lcom/youku/gamecenter/services/URLContainer;->getSimpleGameInfoUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 64
    .local v1, "url":Ljava/lang/String;
    new-instance v0, Lcom/youku/gamecenter/services/GetSimpleGameInfoService;

    iget-object v2, p0, Lcom/youku/gamecenter/outer/VideoAdvGameDownloadHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/youku/gamecenter/services/GetSimpleGameInfoService;-><init>(Landroid/content/Context;)V

    .line 65
    .local v0, "service":Lcom/youku/gamecenter/services/GetSimpleGameInfoService;
    const-string v2, "VideoAdGameDownloadHelper---->"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadAdvGameInfo ---> start load gameInfo, gameId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    new-instance v2, Lcom/youku/gamecenter/outer/VideoAdvGameDownloadHelper$1;

    invoke-direct {v2, p0, p2, p1}, Lcom/youku/gamecenter/outer/VideoAdvGameDownloadHelper$1;-><init>(Lcom/youku/gamecenter/outer/VideoAdvGameDownloadHelper;ZLjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/youku/gamecenter/services/GetSimpleGameInfoService;->fetchResponse(Ljava/lang/String;Lcom/youku/gamecenter/services/GetResponseService$IResponseServiceListener;)V

    goto :goto_0
.end method

.method private parseGameId(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "CU"    # Ljava/lang/String;

    .prologue
    .line 99
    const-string v1, ""

    .line 101
    .local v1, "id":Ljava/lang/String;
    :try_start_0
    const-string v3, "(?<=([\\?|\\&]u\\=))[^\\&]*"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 102
    .local v2, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 103
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 109
    .end local v2    # "matcher":Ljava/util/regex/Matcher;
    :cond_0
    :goto_0
    return-object v1

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "VideoAdGameDownloadHelper"

    const-string v4, "parse gameId error!!!"

    invoke-static {v3, v4}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private registerListeners()V
    .locals 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/youku/gamecenter/outer/VideoAdvGameDownloadHelper;->mGameCenterModel:Lcom/youku/gamecenter/GameCenterModel;

    iget-object v1, p0, Lcom/youku/gamecenter/outer/VideoAdvGameDownloadHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/youku/gamecenter/GameCenterModel;->registerReceiver(Landroid/content/Context;)V

    .line 47
    iget-object v0, p0, Lcom/youku/gamecenter/outer/VideoAdvGameDownloadHelper;->mGameCenterModel:Lcom/youku/gamecenter/GameCenterModel;

    invoke-virtual {v0}, Lcom/youku/gamecenter/GameCenterModel;->handleActivityCreated()V

    .line 48
    return-void
.end method


# virtual methods
.method public loadAdvGameInfo(Ljava/lang/String;)V
    .locals 2
    .param p1, "CU"    # Ljava/lang/String;

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/youku/gamecenter/outer/VideoAdvGameDownloadHelper;->parseGameId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 92
    .local v0, "gameId":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/youku/gamecenter/outer/VideoAdvGameDownloadHelper;->loadAdvGameInfo(Ljava/lang/String;Z)V

    .line 93
    return-void
.end method

.method public startDownloadGame(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 6
    .param p1, "CU"    # Ljava/lang/String;
    .param p2, "startTrack"    # [Ljava/lang/String;
    .param p3, "endTrack"    # [Ljava/lang/String;

    .prologue
    .line 128
    iput-object p2, p0, Lcom/youku/gamecenter/outer/VideoAdvGameDownloadHelper;->mStartTrack:[Ljava/lang/String;

    .line 129
    iput-object p3, p0, Lcom/youku/gamecenter/outer/VideoAdvGameDownloadHelper;->mEndTrack:[Ljava/lang/String;

    .line 131
    invoke-direct {p0, p1}, Lcom/youku/gamecenter/outer/VideoAdvGameDownloadHelper;->parseGameId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 133
    .local v0, "gameId":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/youku/gamecenter/outer/VideoAdvGameDownloadHelper;->hasThisGameInfo(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 134
    const-string v1, "VideoAdGameDownloadHelper---->"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "start download game, gameId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/youku/gamecenter/outer/VideoAdvGameDownloadHelper;->mGameInfo:Lcom/youku/gamecenter/data/GameInfo;

    iget-object v3, v3, Lcom/youku/gamecenter/data/GameInfo;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " packageName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/youku/gamecenter/outer/VideoAdvGameDownloadHelper;->mGameInfo:Lcom/youku/gamecenter/data/GameInfo;

    iget-object v3, v3, Lcom/youku/gamecenter/data/GameInfo;->packagename:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " downloadUrl = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/youku/gamecenter/outer/VideoAdvGameDownloadHelper;->mGameInfo:Lcom/youku/gamecenter/data/GameInfo;

    iget-object v3, v3, Lcom/youku/gamecenter/data/GameInfo;->download_link:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    iget-object v1, p0, Lcom/youku/gamecenter/outer/VideoAdvGameDownloadHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/youku/gamecenter/outer/VideoAdvGameDownloadHelper;->mGameInfo:Lcom/youku/gamecenter/data/GameInfo;

    const-string v3, "48"

    iget-object v4, p0, Lcom/youku/gamecenter/outer/VideoAdvGameDownloadHelper;->mStartTrack:[Ljava/lang/String;

    iget-object v5, p0, Lcom/youku/gamecenter/outer/VideoAdvGameDownloadHelper;->mStartTrack:[Ljava/lang/String;

    invoke-static {v1, v2, v3, v4, v5}, Lcom/youku/gamecenter/util/ClickActionUtils;->handleAdvDialogOKAction(Landroid/content/Context;Lcom/youku/gamecenter/data/GameInfo;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 141
    :goto_0
    return-void

    .line 139
    :cond_0
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/youku/gamecenter/outer/VideoAdvGameDownloadHelper;->loadAdvGameInfo(Ljava/lang/String;Z)V

    goto :goto_0
.end method
