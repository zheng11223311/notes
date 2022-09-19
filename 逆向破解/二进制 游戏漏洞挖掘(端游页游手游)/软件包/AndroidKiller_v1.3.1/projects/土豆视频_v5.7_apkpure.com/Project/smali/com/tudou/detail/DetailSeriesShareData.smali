.class public Lcom/tudou/detail/DetailSeriesShareData;
.super Ljava/lang/Object;
.source "DetailSeriesShareData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tudou/detail/DetailSeriesShareData$IseriesShareData;
    }
.end annotation


# static fields
.field private static albumID:Ljava/lang/String;

.field private static cacheGetData:Lcom/tudou/detail/DetailSeriesShareData$IseriesShareData;

.field private static detailseris:Lcom/youku/vo/DetailSeris;

.field private static fullscreenGetData:Lcom/tudou/detail/DetailSeriesShareData$IseriesShareData;

.field private static httpRequest:Lcom/youku/network/IHttpRequest;

.field private static isClear:Z

.field private static seriesGetData:Lcom/tudou/detail/DetailSeriesShareData$IseriesShareData;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tudou/detail/DetailSeriesShareData;->isClear:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 19
    sget-boolean v0, Lcom/tudou/detail/DetailSeriesShareData;->isClear:Z

    return v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/tudou/detail/DetailSeriesShareData;->albumID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/youku/vo/DetailSeris;)Lcom/youku/vo/DetailSeris;
    .locals 0
    .param p0, "x0"    # Lcom/youku/vo/DetailSeris;

    .prologue
    .line 19
    sput-object p0, Lcom/tudou/detail/DetailSeriesShareData;->detailseris:Lcom/youku/vo/DetailSeris;

    return-object p0
.end method

.method static synthetic access$300()V
    .locals 0

    .prologue
    .line 19
    invoke-static {}, Lcom/tudou/detail/DetailSeriesShareData;->notifyDataSuccess()V

    return-void
.end method

.method static synthetic access$400(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 19
    invoke-static {p0}, Lcom/tudou/detail/DetailSeriesShareData;->notifyDataFail(Ljava/lang/String;)V

    return-void
.end method

.method public static clear()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 35
    const-string v0, "DetailSeriesShareData"

    const-string v1, "clear"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    sget-object v0, Lcom/tudou/detail/DetailSeriesShareData;->detailseris:Lcom/youku/vo/DetailSeris;

    if-eqz v0, :cond_0

    .line 37
    sget-object v0, Lcom/tudou/detail/DetailSeriesShareData;->detailseris:Lcom/youku/vo/DetailSeris;

    iget-object v0, v0, Lcom/youku/vo/DetailSeris;->datalist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 38
    sget-object v0, Lcom/tudou/detail/DetailSeriesShareData;->detailseris:Lcom/youku/vo/DetailSeris;

    iget-object v0, v0, Lcom/youku/vo/DetailSeris;->langlist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 39
    sput-object v2, Lcom/tudou/detail/DetailSeriesShareData;->detailseris:Lcom/youku/vo/DetailSeris;

    .line 41
    :cond_0
    sget-object v0, Lcom/tudou/detail/DetailSeriesShareData;->httpRequest:Lcom/youku/network/IHttpRequest;

    if-eqz v0, :cond_1

    .line 42
    sget-object v0, Lcom/tudou/detail/DetailSeriesShareData;->httpRequest:Lcom/youku/network/IHttpRequest;

    invoke-interface {v0}, Lcom/youku/network/IHttpRequest;->cancel()V

    .line 44
    :cond_1
    const/4 v0, 0x1

    sput-boolean v0, Lcom/tudou/detail/DetailSeriesShareData;->isClear:Z

    .line 45
    sput-object v2, Lcom/tudou/detail/DetailSeriesShareData;->albumID:Ljava/lang/String;

    .line 46
    sput-object v2, Lcom/tudou/detail/DetailSeriesShareData;->httpRequest:Lcom/youku/network/IHttpRequest;

    .line 47
    sput-object v2, Lcom/tudou/detail/DetailSeriesShareData;->seriesGetData:Lcom/tudou/detail/DetailSeriesShareData$IseriesShareData;

    .line 48
    sput-object v2, Lcom/tudou/detail/DetailSeriesShareData;->cacheGetData:Lcom/tudou/detail/DetailSeriesShareData$IseriesShareData;

    .line 49
    sput-object v2, Lcom/tudou/detail/DetailSeriesShareData;->fullscreenGetData:Lcom/tudou/detail/DetailSeriesShareData$IseriesShareData;

    .line 51
    return-void
.end method

.method private static fetchData(ILjava/lang/String;)V
    .locals 5
    .param p0, "desc"    # I
    .param p1, "albumid"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 125
    const-string v1, "DetailSeriesShareData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fetchData albumid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    const-class v1, Lcom/youku/network/IHttpRequest;

    invoke-static {v1, v4}, Lcom/youku/service/YoukuService;->getService(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/network/IHttpRequest;

    sput-object v1, Lcom/tudou/detail/DetailSeriesShareData;->httpRequest:Lcom/youku/network/IHttpRequest;

    .line 127
    new-instance v0, Lcom/youku/network/HttpIntent;

    invoke-static {p1, v4, p0}, Lcom/youku/http/TudouURLContainer;->getVideoListURLV4(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v4}, Lcom/youku/network/HttpIntent;-><init>(Ljava/lang/String;Z)V

    .line 129
    .local v0, "httpIntent":Lcom/youku/network/HttpIntent;
    sget-object v1, Lcom/tudou/detail/DetailSeriesShareData;->httpRequest:Lcom/youku/network/IHttpRequest;

    new-instance v2, Lcom/tudou/detail/DetailSeriesShareData$1;

    invoke-direct {v2, p1, p0}, Lcom/tudou/detail/DetailSeriesShareData$1;-><init>(Ljava/lang/String;I)V

    invoke-interface {v1, v0, v2}, Lcom/youku/network/IHttpRequest;->request(Lcom/youku/network/HttpIntent;Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;)V

    .line 154
    return-void
.end method

.method public static getDetailseris()Lcom/youku/vo/DetailSeris;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/tudou/detail/DetailSeriesShareData;->detailseris:Lcom/youku/vo/DetailSeris;

    return-object v0
.end method

.method public static declared-synchronized getSeriesData(Ljava/lang/String;II)V
    .locals 3
    .param p0, "albumId"    # Ljava/lang/String;
    .param p1, "desc"    # I
    .param p2, "tag"    # I

    .prologue
    .line 61
    const-class v1, Lcom/tudou/detail/DetailSeriesShareData;

    monitor-enter v1

    :try_start_0
    const-string v0, "DetailSeriesShareData"

    const-string v2, "getSeriesData"

    invoke-static {v0, v2}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    if-nez p0, :cond_1

    .line 79
    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    .line 65
    :cond_1
    const/4 v0, 0x0

    :try_start_1
    sput-boolean v0, Lcom/tudou/detail/DetailSeriesShareData;->isClear:Z

    .line 66
    sget-object v0, Lcom/tudou/detail/DetailSeriesShareData;->detailseris:Lcom/youku/vo/DetailSeris;

    if-nez v0, :cond_2

    .line 67
    sget-object v0, Lcom/tudou/detail/DetailSeriesShareData;->httpRequest:Lcom/youku/network/IHttpRequest;

    if-nez v0, :cond_0

    .line 68
    sput-object p0, Lcom/tudou/detail/DetailSeriesShareData;->albumID:Ljava/lang/String;

    .line 69
    invoke-static {p1, p0}, Lcom/tudou/detail/DetailSeriesShareData;->fetchData(ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 61
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 72
    :cond_2
    :try_start_2
    sget-object v0, Lcom/tudou/detail/DetailSeriesShareData;->albumID:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 73
    sput-object p0, Lcom/tudou/detail/DetailSeriesShareData;->albumID:Ljava/lang/String;

    .line 74
    invoke-static {p1, p0}, Lcom/tudou/detail/DetailSeriesShareData;->fetchData(ILjava/lang/String;)V

    goto :goto_0

    .line 76
    :cond_3
    invoke-static {p2}, Lcom/tudou/detail/DetailSeriesShareData;->notifyDataSuccess(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private static notifyDataFail(Ljava/lang/String;)V
    .locals 2
    .param p0, "failReason"    # Ljava/lang/String;

    .prologue
    .line 114
    const-string v0, "DetailSeriesShareData"

    const-string v1, "notifyDataFail"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    const/4 v0, 0x0

    sput-object v0, Lcom/tudou/detail/DetailSeriesShareData;->httpRequest:Lcom/youku/network/IHttpRequest;

    .line 116
    sget-object v0, Lcom/tudou/detail/DetailSeriesShareData;->seriesGetData:Lcom/tudou/detail/DetailSeriesShareData$IseriesShareData;

    if-eqz v0, :cond_0

    .line 117
    sget-object v0, Lcom/tudou/detail/DetailSeriesShareData;->seriesGetData:Lcom/tudou/detail/DetailSeriesShareData$IseriesShareData;

    invoke-interface {v0, p0}, Lcom/tudou/detail/DetailSeriesShareData$IseriesShareData;->onFail(Ljava/lang/String;)V

    .line 118
    :cond_0
    sget-object v0, Lcom/tudou/detail/DetailSeriesShareData;->cacheGetData:Lcom/tudou/detail/DetailSeriesShareData$IseriesShareData;

    if-eqz v0, :cond_1

    .line 119
    sget-object v0, Lcom/tudou/detail/DetailSeriesShareData;->cacheGetData:Lcom/tudou/detail/DetailSeriesShareData$IseriesShareData;

    invoke-interface {v0, p0}, Lcom/tudou/detail/DetailSeriesShareData$IseriesShareData;->onFail(Ljava/lang/String;)V

    .line 120
    :cond_1
    sget-object v0, Lcom/tudou/detail/DetailSeriesShareData;->fullscreenGetData:Lcom/tudou/detail/DetailSeriesShareData$IseriesShareData;

    if-eqz v0, :cond_2

    .line 121
    sget-object v0, Lcom/tudou/detail/DetailSeriesShareData;->fullscreenGetData:Lcom/tudou/detail/DetailSeriesShareData$IseriesShareData;

    invoke-interface {v0, p0}, Lcom/tudou/detail/DetailSeriesShareData$IseriesShareData;->onFail(Ljava/lang/String;)V

    .line 122
    :cond_2
    return-void
.end method

.method private static notifyDataSuccess()V
    .locals 3

    .prologue
    .line 104
    const-string/jumbo v0, "test2"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DetailSeriesShareData notifyDataSuccess albumid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/tudou/detail/DetailSeriesShareData;->albumID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    sget-object v0, Lcom/tudou/detail/DetailSeriesShareData;->seriesGetData:Lcom/tudou/detail/DetailSeriesShareData$IseriesShareData;

    if-eqz v0, :cond_0

    .line 106
    sget-object v0, Lcom/tudou/detail/DetailSeriesShareData;->seriesGetData:Lcom/tudou/detail/DetailSeriesShareData$IseriesShareData;

    sget-object v1, Lcom/tudou/detail/DetailSeriesShareData;->detailseris:Lcom/youku/vo/DetailSeris;

    invoke-static {v1}, Lcom/youku/vo/DetailSeris;->cloneSeris(Lcom/youku/vo/DetailSeris;)Lcom/youku/vo/DetailSeris;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tudou/detail/DetailSeriesShareData$IseriesShareData;->onSuccess(Lcom/youku/vo/DetailSeris;)V

    .line 107
    :cond_0
    sget-object v0, Lcom/tudou/detail/DetailSeriesShareData;->cacheGetData:Lcom/tudou/detail/DetailSeriesShareData$IseriesShareData;

    if-eqz v0, :cond_1

    .line 108
    sget-object v0, Lcom/tudou/detail/DetailSeriesShareData;->cacheGetData:Lcom/tudou/detail/DetailSeriesShareData$IseriesShareData;

    sget-object v1, Lcom/tudou/detail/DetailSeriesShareData;->detailseris:Lcom/youku/vo/DetailSeris;

    invoke-static {v1}, Lcom/youku/vo/DetailSeris;->cloneSeris(Lcom/youku/vo/DetailSeris;)Lcom/youku/vo/DetailSeris;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tudou/detail/DetailSeriesShareData$IseriesShareData;->onSuccess(Lcom/youku/vo/DetailSeris;)V

    .line 109
    :cond_1
    sget-object v0, Lcom/tudou/detail/DetailSeriesShareData;->fullscreenGetData:Lcom/tudou/detail/DetailSeriesShareData$IseriesShareData;

    if-eqz v0, :cond_2

    .line 110
    sget-object v0, Lcom/tudou/detail/DetailSeriesShareData;->fullscreenGetData:Lcom/tudou/detail/DetailSeriesShareData$IseriesShareData;

    sget-object v1, Lcom/tudou/detail/DetailSeriesShareData;->detailseris:Lcom/youku/vo/DetailSeris;

    invoke-static {v1}, Lcom/youku/vo/DetailSeris;->cloneSeris(Lcom/youku/vo/DetailSeris;)Lcom/youku/vo/DetailSeris;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tudou/detail/DetailSeriesShareData$IseriesShareData;->onSuccess(Lcom/youku/vo/DetailSeris;)V

    .line 111
    :cond_2
    return-void
.end method

.method private static notifyDataSuccess(I)V
    .locals 2
    .param p0, "tag"    # I

    .prologue
    .line 94
    const-string/jumbo v0, "test2"

    const-string v1, "DetailSeriesShareData notifyDataSuccess"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    sget-object v0, Lcom/tudou/detail/DetailSeriesShareData;->seriesGetData:Lcom/tudou/detail/DetailSeriesShareData$IseriesShareData;

    if-eqz v0, :cond_0

    if-nez p0, :cond_0

    .line 96
    sget-object v0, Lcom/tudou/detail/DetailSeriesShareData;->seriesGetData:Lcom/tudou/detail/DetailSeriesShareData$IseriesShareData;

    sget-object v1, Lcom/tudou/detail/DetailSeriesShareData;->detailseris:Lcom/youku/vo/DetailSeris;

    invoke-static {v1}, Lcom/youku/vo/DetailSeris;->cloneSeris(Lcom/youku/vo/DetailSeris;)Lcom/youku/vo/DetailSeris;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tudou/detail/DetailSeriesShareData$IseriesShareData;->onSuccess(Lcom/youku/vo/DetailSeris;)V

    .line 97
    :cond_0
    sget-object v0, Lcom/tudou/detail/DetailSeriesShareData;->cacheGetData:Lcom/tudou/detail/DetailSeriesShareData$IseriesShareData;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    .line 98
    sget-object v0, Lcom/tudou/detail/DetailSeriesShareData;->cacheGetData:Lcom/tudou/detail/DetailSeriesShareData$IseriesShareData;

    sget-object v1, Lcom/tudou/detail/DetailSeriesShareData;->detailseris:Lcom/youku/vo/DetailSeris;

    invoke-static {v1}, Lcom/youku/vo/DetailSeris;->cloneSeris(Lcom/youku/vo/DetailSeris;)Lcom/youku/vo/DetailSeris;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tudou/detail/DetailSeriesShareData$IseriesShareData;->onSuccess(Lcom/youku/vo/DetailSeris;)V

    .line 99
    :cond_1
    sget-object v0, Lcom/tudou/detail/DetailSeriesShareData;->fullscreenGetData:Lcom/tudou/detail/DetailSeriesShareData$IseriesShareData;

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    .line 100
    sget-object v0, Lcom/tudou/detail/DetailSeriesShareData;->fullscreenGetData:Lcom/tudou/detail/DetailSeriesShareData$IseriesShareData;

    sget-object v1, Lcom/tudou/detail/DetailSeriesShareData;->detailseris:Lcom/youku/vo/DetailSeris;

    invoke-static {v1}, Lcom/youku/vo/DetailSeris;->cloneSeris(Lcom/youku/vo/DetailSeris;)Lcom/youku/vo/DetailSeris;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tudou/detail/DetailSeriesShareData$IseriesShareData;->onSuccess(Lcom/youku/vo/DetailSeris;)V

    .line 101
    :cond_2
    return-void
.end method

.method public static setCacheSerisInterface(Lcom/tudou/detail/DetailSeriesShareData$IseriesShareData;)V
    .locals 0
    .param p0, "iseries"    # Lcom/tudou/detail/DetailSeriesShareData$IseriesShareData;

    .prologue
    .line 86
    sput-object p0, Lcom/tudou/detail/DetailSeriesShareData;->cacheGetData:Lcom/tudou/detail/DetailSeriesShareData$IseriesShareData;

    .line 87
    return-void
.end method

.method public static setSerisInterface(Lcom/tudou/detail/DetailSeriesShareData$IseriesShareData;)V
    .locals 0
    .param p0, "iseries"    # Lcom/tudou/detail/DetailSeriesShareData$IseriesShareData;

    .prologue
    .line 82
    sput-object p0, Lcom/tudou/detail/DetailSeriesShareData;->seriesGetData:Lcom/tudou/detail/DetailSeriesShareData$IseriesShareData;

    .line 83
    return-void
.end method

.method public static setfullSerisInterface(Lcom/tudou/detail/DetailSeriesShareData$IseriesShareData;)V
    .locals 0
    .param p0, "iseries"    # Lcom/tudou/detail/DetailSeriesShareData$IseriesShareData;

    .prologue
    .line 90
    sput-object p0, Lcom/tudou/detail/DetailSeriesShareData;->fullscreenGetData:Lcom/tudou/detail/DetailSeriesShareData$IseriesShareData;

    .line 91
    return-void
.end method
