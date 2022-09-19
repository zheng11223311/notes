.class public Lcom/tudou/detail/DetailPlaylistShareData;
.super Ljava/lang/Object;
.source "DetailPlaylistShareData.java"


# static fields
.field private static cacheGetData:Lcom/tudou/detail/DetailSeriesShareData$IseriesShareData;

.field private static detailseris:Lcom/youku/vo/DetailSeris;

.field private static fullscreenGetData:Lcom/tudou/detail/DetailSeriesShareData$IseriesShareData;

.field private static httpRequest:Lcom/youku/network/IHttpRequest;

.field private static isClear:Z

.field private static playlistCode:Ljava/lang/String;

.field private static seriesGetData:Lcom/tudou/detail/DetailSeriesShareData$IseriesShareData;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tudou/detail/DetailPlaylistShareData;->isClear:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 20
    sget-boolean v0, Lcom/tudou/detail/DetailPlaylistShareData;->isClear:Z

    return v0
.end method

.method static synthetic access$102(Lcom/youku/vo/DetailSeris;)Lcom/youku/vo/DetailSeris;
    .locals 0
    .param p0, "x0"    # Lcom/youku/vo/DetailSeris;

    .prologue
    .line 20
    sput-object p0, Lcom/tudou/detail/DetailPlaylistShareData;->detailseris:Lcom/youku/vo/DetailSeris;

    return-object p0
.end method

.method static synthetic access$200()V
    .locals 0

    .prologue
    .line 20
    invoke-static {}, Lcom/tudou/detail/DetailPlaylistShareData;->notifyDataSuccess()V

    return-void
.end method

.method static synthetic access$300(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 20
    invoke-static {p0}, Lcom/tudou/detail/DetailPlaylistShareData;->notifyDataFail(Ljava/lang/String;)V

    return-void
.end method

.method public static clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 35
    sget-object v0, Lcom/tudou/detail/DetailPlaylistShareData;->detailseris:Lcom/youku/vo/DetailSeris;

    if-eqz v0, :cond_0

    .line 36
    sget-object v0, Lcom/tudou/detail/DetailPlaylistShareData;->detailseris:Lcom/youku/vo/DetailSeris;

    iget-object v0, v0, Lcom/youku/vo/DetailSeris;->datalist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 37
    sget-object v0, Lcom/tudou/detail/DetailPlaylistShareData;->detailseris:Lcom/youku/vo/DetailSeris;

    iget-object v0, v0, Lcom/youku/vo/DetailSeris;->langlist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 38
    sput-object v1, Lcom/tudou/detail/DetailPlaylistShareData;->detailseris:Lcom/youku/vo/DetailSeris;

    .line 40
    :cond_0
    sget-object v0, Lcom/tudou/detail/DetailPlaylistShareData;->httpRequest:Lcom/youku/network/IHttpRequest;

    if-eqz v0, :cond_1

    .line 41
    sget-object v0, Lcom/tudou/detail/DetailPlaylistShareData;->httpRequest:Lcom/youku/network/IHttpRequest;

    invoke-interface {v0}, Lcom/youku/network/IHttpRequest;->cancel()V

    .line 43
    :cond_1
    const/4 v0, 0x1

    sput-boolean v0, Lcom/tudou/detail/DetailPlaylistShareData;->isClear:Z

    .line 44
    sput-object v1, Lcom/tudou/detail/DetailPlaylistShareData;->playlistCode:Ljava/lang/String;

    .line 45
    sput-object v1, Lcom/tudou/detail/DetailPlaylistShareData;->httpRequest:Lcom/youku/network/IHttpRequest;

    .line 46
    sput-object v1, Lcom/tudou/detail/DetailPlaylistShareData;->seriesGetData:Lcom/tudou/detail/DetailSeriesShareData$IseriesShareData;

    .line 47
    sput-object v1, Lcom/tudou/detail/DetailPlaylistShareData;->cacheGetData:Lcom/tudou/detail/DetailSeriesShareData$IseriesShareData;

    .line 48
    sput-object v1, Lcom/tudou/detail/DetailPlaylistShareData;->fullscreenGetData:Lcom/tudou/detail/DetailSeriesShareData$IseriesShareData;

    .line 50
    return-void
.end method

.method private static fetchData()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 117
    const-class v1, Lcom/youku/network/IHttpRequest;

    invoke-static {v1, v2}, Lcom/youku/service/YoukuService;->getService(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/network/IHttpRequest;

    sput-object v1, Lcom/tudou/detail/DetailPlaylistShareData;->httpRequest:Lcom/youku/network/IHttpRequest;

    .line 118
    new-instance v0, Lcom/youku/network/HttpIntent;

    sget-object v1, Lcom/tudou/detail/DetailPlaylistShareData;->playlistCode:Ljava/lang/String;

    invoke-static {v1}, Lcom/youku/http/TudouURLContainer;->getVideoListUGCURLV4(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lcom/youku/network/HttpIntent;-><init>(Ljava/lang/String;Z)V

    .line 120
    .local v0, "httpIntent":Lcom/youku/network/HttpIntent;
    sget-object v1, Lcom/tudou/detail/DetailPlaylistShareData;->httpRequest:Lcom/youku/network/IHttpRequest;

    new-instance v2, Lcom/tudou/detail/DetailPlaylistShareData$1;

    invoke-direct {v2}, Lcom/tudou/detail/DetailPlaylistShareData$1;-><init>()V

    invoke-interface {v1, v0, v2}, Lcom/youku/network/IHttpRequest;->request(Lcom/youku/network/HttpIntent;Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;)V

    .line 143
    return-void
.end method

.method public static declared-synchronized getSeriesData(Ljava/lang/String;)V
    .locals 3
    .param p0, "playlistcode"    # Ljava/lang/String;

    .prologue
    .line 59
    const-class v1, Lcom/tudou/detail/DetailPlaylistShareData;

    monitor-enter v1

    if-nez p0, :cond_1

    .line 77
    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    .line 62
    :cond_1
    const/4 v0, 0x0

    :try_start_0
    sput-boolean v0, Lcom/tudou/detail/DetailPlaylistShareData;->isClear:Z

    .line 63
    sget-object v0, Lcom/tudou/detail/DetailPlaylistShareData;->detailseris:Lcom/youku/vo/DetailSeris;

    if-nez v0, :cond_2

    .line 64
    sget-object v0, Lcom/tudou/detail/DetailPlaylistShareData;->httpRequest:Lcom/youku/network/IHttpRequest;

    if-nez v0, :cond_0

    .line 65
    sput-object p0, Lcom/tudou/detail/DetailPlaylistShareData;->playlistCode:Ljava/lang/String;

    .line 66
    invoke-static {}, Lcom/tudou/detail/DetailPlaylistShareData;->fetchData()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 59
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 69
    :cond_2
    :try_start_1
    sget-object v0, Lcom/tudou/detail/DetailPlaylistShareData;->playlistCode:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 70
    sput-object p0, Lcom/tudou/detail/DetailPlaylistShareData;->playlistCode:Ljava/lang/String;

    .line 71
    invoke-static {}, Lcom/tudou/detail/DetailPlaylistShareData;->fetchData()V

    goto :goto_0

    .line 73
    :cond_3
    const-string/jumbo v0, "test2"

    const-string v2, "DetailSeriesShareData getSeriesData notifyDataSuccess"

    invoke-static {v0, v2}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    invoke-static {}, Lcom/tudou/detail/DetailPlaylistShareData;->notifyDataSuccess()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private static notifyDataFail(Ljava/lang/String;)V
    .locals 1
    .param p0, "failReason"    # Ljava/lang/String;

    .prologue
    .line 107
    const/4 v0, 0x0

    sput-object v0, Lcom/tudou/detail/DetailPlaylistShareData;->httpRequest:Lcom/youku/network/IHttpRequest;

    .line 108
    sget-object v0, Lcom/tudou/detail/DetailPlaylistShareData;->seriesGetData:Lcom/tudou/detail/DetailSeriesShareData$IseriesShareData;

    if-eqz v0, :cond_0

    .line 109
    sget-object v0, Lcom/tudou/detail/DetailPlaylistShareData;->seriesGetData:Lcom/tudou/detail/DetailSeriesShareData$IseriesShareData;

    invoke-interface {v0, p0}, Lcom/tudou/detail/DetailSeriesShareData$IseriesShareData;->onFail(Ljava/lang/String;)V

    .line 110
    :cond_0
    sget-object v0, Lcom/tudou/detail/DetailPlaylistShareData;->cacheGetData:Lcom/tudou/detail/DetailSeriesShareData$IseriesShareData;

    if-eqz v0, :cond_1

    .line 111
    sget-object v0, Lcom/tudou/detail/DetailPlaylistShareData;->cacheGetData:Lcom/tudou/detail/DetailSeriesShareData$IseriesShareData;

    invoke-interface {v0, p0}, Lcom/tudou/detail/DetailSeriesShareData$IseriesShareData;->onFail(Ljava/lang/String;)V

    .line 112
    :cond_1
    sget-object v0, Lcom/tudou/detail/DetailPlaylistShareData;->fullscreenGetData:Lcom/tudou/detail/DetailSeriesShareData$IseriesShareData;

    if-eqz v0, :cond_2

    .line 113
    sget-object v0, Lcom/tudou/detail/DetailPlaylistShareData;->fullscreenGetData:Lcom/tudou/detail/DetailSeriesShareData$IseriesShareData;

    invoke-interface {v0, p0}, Lcom/tudou/detail/DetailSeriesShareData$IseriesShareData;->onFail(Ljava/lang/String;)V

    .line 114
    :cond_2
    return-void
.end method

.method private static notifyDataSuccess()V
    .locals 2

    .prologue
    .line 92
    sget-object v0, Lcom/tudou/detail/DetailPlaylistShareData;->seriesGetData:Lcom/tudou/detail/DetailSeriesShareData$IseriesShareData;

    if-eqz v0, :cond_0

    .line 93
    const-string/jumbo v0, "test2"

    const-string v1, "DetailSeriesShareData seriesGetData notifyDataSuccess"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    sget-object v0, Lcom/tudou/detail/DetailPlaylistShareData;->seriesGetData:Lcom/tudou/detail/DetailSeriesShareData$IseriesShareData;

    sget-object v1, Lcom/tudou/detail/DetailPlaylistShareData;->detailseris:Lcom/youku/vo/DetailSeris;

    invoke-static {v1}, Lcom/youku/vo/DetailSeris;->cloneSeris(Lcom/youku/vo/DetailSeris;)Lcom/youku/vo/DetailSeris;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tudou/detail/DetailSeriesShareData$IseriesShareData;->onSuccess(Lcom/youku/vo/DetailSeris;)V

    .line 96
    :cond_0
    sget-object v0, Lcom/tudou/detail/DetailPlaylistShareData;->cacheGetData:Lcom/tudou/detail/DetailSeriesShareData$IseriesShareData;

    if-eqz v0, :cond_1

    .line 97
    const-string/jumbo v0, "test2"

    const-string v1, "DetailSeriesShareData cacheGetData notifyDataSuccess"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    sget-object v0, Lcom/tudou/detail/DetailPlaylistShareData;->cacheGetData:Lcom/tudou/detail/DetailSeriesShareData$IseriesShareData;

    sget-object v1, Lcom/tudou/detail/DetailPlaylistShareData;->detailseris:Lcom/youku/vo/DetailSeris;

    invoke-static {v1}, Lcom/youku/vo/DetailSeris;->cloneSeris(Lcom/youku/vo/DetailSeris;)Lcom/youku/vo/DetailSeris;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tudou/detail/DetailSeriesShareData$IseriesShareData;->onSuccess(Lcom/youku/vo/DetailSeris;)V

    .line 100
    :cond_1
    sget-object v0, Lcom/tudou/detail/DetailPlaylistShareData;->fullscreenGetData:Lcom/tudou/detail/DetailSeriesShareData$IseriesShareData;

    if-eqz v0, :cond_2

    .line 101
    const-string/jumbo v0, "test2"

    const-string v1, "DetailSeriesShareData fullscreenGetData notifyDataSuccess"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    sget-object v0, Lcom/tudou/detail/DetailPlaylistShareData;->fullscreenGetData:Lcom/tudou/detail/DetailSeriesShareData$IseriesShareData;

    sget-object v1, Lcom/tudou/detail/DetailPlaylistShareData;->detailseris:Lcom/youku/vo/DetailSeris;

    invoke-static {v1}, Lcom/youku/vo/DetailSeris;->cloneSeris(Lcom/youku/vo/DetailSeris;)Lcom/youku/vo/DetailSeris;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tudou/detail/DetailSeriesShareData$IseriesShareData;->onSuccess(Lcom/youku/vo/DetailSeris;)V

    .line 104
    :cond_2
    return-void
.end method

.method public static setCacheSerisInterface(Lcom/tudou/detail/DetailSeriesShareData$IseriesShareData;)V
    .locals 0
    .param p0, "iseries"    # Lcom/tudou/detail/DetailSeriesShareData$IseriesShareData;

    .prologue
    .line 84
    sput-object p0, Lcom/tudou/detail/DetailPlaylistShareData;->cacheGetData:Lcom/tudou/detail/DetailSeriesShareData$IseriesShareData;

    .line 85
    return-void
.end method

.method public static setSerisInterface(Lcom/tudou/detail/DetailSeriesShareData$IseriesShareData;)V
    .locals 0
    .param p0, "iseries"    # Lcom/tudou/detail/DetailSeriesShareData$IseriesShareData;

    .prologue
    .line 80
    sput-object p0, Lcom/tudou/detail/DetailPlaylistShareData;->seriesGetData:Lcom/tudou/detail/DetailSeriesShareData$IseriesShareData;

    .line 81
    return-void
.end method

.method public static setfullSerisInterface(Lcom/tudou/detail/DetailSeriesShareData$IseriesShareData;)V
    .locals 0
    .param p0, "iseries"    # Lcom/tudou/detail/DetailSeriesShareData$IseriesShareData;

    .prologue
    .line 88
    sput-object p0, Lcom/tudou/detail/DetailPlaylistShareData;->fullscreenGetData:Lcom/tudou/detail/DetailSeriesShareData$IseriesShareData;

    .line 89
    return-void
.end method
