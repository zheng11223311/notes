.class public Lcom/tudou/service/playhistory/PlayhistoryManagerImp;
.super Ljava/lang/Object;
.source "PlayhistoryManagerImp.java"

# interfaces
.implements Lcom/tudou/service/playhistory/PlayHistoryManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tudou/service/playhistory/PlayhistoryManagerImp$PlayHistoryCallBack;
    }
.end annotation


# static fields
.field public static final TRAILER_NO:Ljava/lang/String; = "1"

.field public static final TRAILER_YES:Ljava/lang/String; = "0"

.field private static playhistoryUpload:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/HistoryVideo;",
            ">;"
        }
    .end annotation
.end field

.field private static reUploadCount:I

.field private static uploadData:Lcom/youku/vo/HistoryVideo;

.field private static uploadLocation:I


# instance fields
.field public isGetCache:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 33
    sput v0, Lcom/tudou/service/playhistory/PlayhistoryManagerImp;->uploadLocation:I

    .line 35
    sput v0, Lcom/tudou/service/playhistory/PlayhistoryManagerImp;->reUploadCount:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 223
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tudou/service/playhistory/PlayhistoryManagerImp;->isGetCache:Z

    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .prologue
    .line 29
    sget v0, Lcom/tudou/service/playhistory/PlayhistoryManagerImp;->reUploadCount:I

    return v0
.end method

.method static synthetic access$002(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 29
    sput p0, Lcom/tudou/service/playhistory/PlayhistoryManagerImp;->reUploadCount:I

    return p0
.end method

.method static synthetic access$008()I
    .locals 2

    .prologue
    .line 29
    sget v0, Lcom/tudou/service/playhistory/PlayhistoryManagerImp;->reUploadCount:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/tudou/service/playhistory/PlayhistoryManagerImp;->reUploadCount:I

    return v0
.end method

.method static synthetic access$100()I
    .locals 1

    .prologue
    .line 29
    sget v0, Lcom/tudou/service/playhistory/PlayhistoryManagerImp;->uploadLocation:I

    return v0
.end method

.method static synthetic access$102(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 29
    sput p0, Lcom/tudou/service/playhistory/PlayhistoryManagerImp;->uploadLocation:I

    return p0
.end method

.method static synthetic access$106()I
    .locals 1

    .prologue
    .line 29
    sget v0, Lcom/tudou/service/playhistory/PlayhistoryManagerImp;->uploadLocation:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/tudou/service/playhistory/PlayhistoryManagerImp;->uploadLocation:I

    return v0
.end method

.method static synthetic access$200()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/tudou/service/playhistory/PlayhistoryManagerImp;->playhistoryUpload:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300()Lcom/youku/vo/HistoryVideo;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/tudou/service/playhistory/PlayhistoryManagerImp;->uploadData:Lcom/youku/vo/HistoryVideo;

    return-object v0
.end method

.method static synthetic access$302(Lcom/youku/vo/HistoryVideo;)Lcom/youku/vo/HistoryVideo;
    .locals 0
    .param p0, "x0"    # Lcom/youku/vo/HistoryVideo;

    .prologue
    .line 29
    sput-object p0, Lcom/tudou/service/playhistory/PlayhistoryManagerImp;->uploadData:Lcom/youku/vo/HistoryVideo;

    return-object p0
.end method

.method static synthetic access$400(Lcom/youku/vo/HistoryVideo;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/vo/HistoryVideo;

    .prologue
    .line 29
    invoke-static {p0}, Lcom/tudou/service/playhistory/PlayhistoryManagerImp;->onUserLoginCallbackImp(Lcom/youku/vo/HistoryVideo;)V

    return-void
.end method

.method public static declared-synchronized addToPlayHistory(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZLjava/lang/String;)V
    .locals 12
    .param p0, "videoId"    # Ljava/lang/String;
    .param p1, "playSeconds"    # I
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "picUrl"    # Ljava/lang/String;
    .param p4, "showId"    # Ljava/lang/String;
    .param p5, "duration"    # I
    .param p6, "isStage"    # I
    .param p7, "stage"    # I
    .param p8, "isTrailer"    # Z
    .param p9, "playlistCode"    # Ljava/lang/String;

    .prologue
    .line 258
    const-class v8, Lcom/tudou/service/playhistory/PlayhistoryManagerImp;

    monitor-enter v8

    :try_start_0
    const-string v7, "Youku"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "addToPlayHistory videoId = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " showId = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p4

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " title = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-nez v7, :cond_1

    :cond_0
    if-nez p1, :cond_2

    .line 290
    :cond_1
    :goto_0
    monitor-exit v8

    return-void

    .line 262
    :cond_2
    sub-int v7, p5, p1

    const/16 v9, 0x3c

    if-le v7, v9, :cond_3

    const/4 v6, 0x0

    .line 263
    .local v6, "isDone":I
    :goto_1
    :try_start_1
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v7

    invoke-virtual {v7}, Lcom/youku/vo/UserBean;->isLogin()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 264
    const-class v7, Lcom/youku/network/IHttpRequest;

    invoke-static {v7}, Lcom/youku/service/YoukuService;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/youku/network/IHttpRequest;

    .line 265
    .local v5, "httpRequest":Lcom/youku/network/IHttpRequest;
    new-instance v4, Lcom/youku/network/HttpIntent;

    move-object/from16 v0, p9

    invoke-static {p0, p1, v6, v0}, Lcom/youku/http/TudouURLContainer;->getAddPlayHistoryUrl(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x1

    invoke-direct {v4, v7, v9}, Lcom/youku/network/HttpIntent;-><init>(Ljava/lang/String;Z)V

    .line 266
    .local v4, "httpIntent":Lcom/youku/network/HttpIntent;
    const-string v7, "Youku"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "addToPlayHistory url = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p9

    invoke-static {p0, p1, v6, v0}, Lcom/youku/http/TudouURLContainer;->getAddPlayHistoryUrl(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    new-instance v7, Lcom/tudou/service/playhistory/PlayhistoryManagerImp$3;

    invoke-direct {v7}, Lcom/tudou/service/playhistory/PlayhistoryManagerImp$3;-><init>()V

    invoke-interface {v5, v4, v7}, Lcom/youku/network/IHttpRequest;->request(Lcom/youku/network/HttpIntent;Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;)V

    .line 281
    .end local v4    # "httpIntent":Lcom/youku/network/HttpIntent;
    .end local v5    # "httpRequest":Lcom/youku/network/IHttpRequest;
    :goto_2
    invoke-static {}, Lcom/tudou/service/download/DownloadManager;->getInstance()Lcom/tudou/service/download/DownloadManager;

    move-result-object v3

    .line 282
    .local v3, "download":Lcom/tudou/service/download/DownloadManager;
    invoke-virtual {v3, p0}, Lcom/tudou/service/download/DownloadManager;->isDownloadFinished(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 283
    invoke-virtual {v3, p0}, Lcom/tudou/service/download/DownloadManager;->getDownloadInfo(Ljava/lang/String;)Lcom/tudou/service/download/DownloadInfo;

    move-result-object v2

    .line 284
    .local v2, "di":Lcom/tudou/service/download/DownloadInfo;
    if-eqz v2, :cond_1

    .line 286
    iput p1, v2, Lcom/tudou/service/download/DownloadInfo;->playTime:I

    .line 287
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iput-wide v10, v2, Lcom/tudou/service/download/DownloadInfo;->lastPlayTime:J

    .line 288
    invoke-static {v2}, Lcom/tudou/service/download/DownloadUtils;->makeDownloadInfoFile(Lcom/tudou/service/download/DownloadInfo;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 258
    .end local v2    # "di":Lcom/tudou/service/download/DownloadInfo;
    .end local v3    # "download":Lcom/tudou/service/download/DownloadManager;
    .end local v6    # "isDone":I
    :catchall_0
    move-exception v7

    monitor-exit v8

    throw v7

    .line 262
    :cond_3
    const/4 v6, 0x1

    goto :goto_1

    .line 279
    .restart local v6    # "isDone":I
    :cond_4
    :try_start_2
    invoke-static/range {p0 .. p9}, Lcom/youku/data/SQLiteManagerTudou;->addToPlayHistory(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZLjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method private getCacheData(IILcom/tudou/service/playhistory/PlayhistoryManagerImp$PlayHistoryCallBack;)V
    .locals 9
    .param p1, "pageNum"    # I
    .param p2, "pageSize"    # I
    .param p3, "callBack"    # Lcom/tudou/service/playhistory/PlayhistoryManagerImp$PlayHistoryCallBack;

    .prologue
    const/4 v8, 0x0

    .line 225
    iget-boolean v7, p0, Lcom/tudou/service/playhistory/PlayhistoryManagerImp;->isGetCache:Z

    if-nez v7, :cond_1

    .line 241
    :cond_0
    :goto_0
    return-void

    .line 227
    :cond_1
    iput-boolean v8, p0, Lcom/tudou/service/playhistory/PlayhistoryManagerImp;->isGetCache:Z

    .line 228
    invoke-static {p1, p2, v8}, Lcom/youku/http/TudouURLContainer;->getPlayHistoryUrl(III)Ljava/lang/String;

    move-result-object v3

    .line 229
    .local v3, "historyURL":Ljava/lang/String;
    const/4 v7, 0x1

    invoke-static {v3, v7}, Lcom/tudou/android/TudouApi;->formatURL(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 230
    .local v2, "formatUri":Ljava/lang/String;
    invoke-static {v2}, Lcom/tudou/android/Youku;->getPreference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 232
    :try_start_0
    invoke-static {v2}, Lcom/tudou/android/TudouApi;->readUrlCacheFromLocal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 233
    .local v0, "cacheDataStr":Ljava/lang/String;
    new-instance v7, Lcom/youku/vo/HistoryVideoResult;

    invoke-direct {v7}, Lcom/youku/vo/HistoryVideoResult;-><init>()V

    invoke-static {v0, v7}, Lcom/youku/network/HttpRequestManager;->parse(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/youku/vo/HistoryVideoResult;

    .line 234
    .local v4, "historyVideo":Lcom/youku/vo/HistoryVideoResult;
    iget-object v7, v4, Lcom/youku/vo/HistoryVideoResult;->multiPageResult:Lcom/youku/vo/HistoryVideoResult$HVMultiPageResult;

    iget-object v7, v7, Lcom/youku/vo/HistoryVideoResult$HVMultiPageResult;->page:Lcom/youku/vo/HistoryVideoResult$HVMultiPageResult$HVPage;

    iget v6, v7, Lcom/youku/vo/HistoryVideoResult$HVMultiPageResult$HVPage;->totalCount:I

    .line 235
    .local v6, "totalCount":I
    iget-object v7, v4, Lcom/youku/vo/HistoryVideoResult;->multiPageResult:Lcom/youku/vo/HistoryVideoResult$HVMultiPageResult;

    iget-object v5, v7, Lcom/youku/vo/HistoryVideoResult$HVMultiPageResult;->results:Ljava/util/ArrayList;

    .line 236
    .local v5, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/vo/HistoryVideo;>;"
    invoke-interface {p3, v6, v5}, Lcom/tudou/service/playhistory/PlayhistoryManagerImp$PlayHistoryCallBack;->onLoadCacheDataSuccess(ILjava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 237
    .end local v0    # "cacheDataStr":Ljava/lang/String;
    .end local v4    # "historyVideo":Lcom/youku/vo/HistoryVideoResult;
    .end local v5    # "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/vo/HistoryVideo;>;"
    .end local v6    # "totalCount":I
    :catch_0
    move-exception v1

    .line 238
    .local v1, "e":Ljava/lang/Exception;
    const-string v7, ""

    invoke-interface {p3, v7}, Lcom/tudou/service/playhistory/PlayhistoryManagerImp$PlayHistoryCallBack;->onLoadCacheDataFailed(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static final declared-synchronized getInstance()Lcom/tudou/service/playhistory/PlayhistoryManagerImp;
    .locals 2

    .prologue
    .line 42
    const-class v1, Lcom/tudou/service/playhistory/PlayhistoryManagerImp;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lcom/tudou/service/playhistory/PlayhistoryManagerImp;

    invoke-direct {v0}, Lcom/tudou/service/playhistory/PlayhistoryManagerImp;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getItemId(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "Uri"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 78
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 89
    :cond_0
    :goto_0
    return-object v1

    .line 81
    :cond_1
    const-string v2, "itemId="

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 82
    .local v0, "i":I
    if-ltz v0, :cond_0

    .line 83
    const-string v2, "&"

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 84
    add-int/lit8 v1, v0, 0x7

    const-string v2, "&"

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getLocalData()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/HistoryVideo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 66
    invoke-static {}, Lcom/youku/data/SQLiteManagerTudou;->getLocalPlayHistory()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v1}, Lcom/youku/vo/HistoryVideo;->parseLocalPlayHistory(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    .line 68
    .local v0, "playhistory":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/vo/HistoryVideo;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 69
    sput-object v0, Lcom/tudou/service/playhistory/PlayhistoryManagerImp;->playhistoryUpload:Ljava/util/ArrayList;

    .line 70
    const-string v1, "TAG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "playhistory=========="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    sget-object v1, Lcom/tudou/service/playhistory/PlayhistoryManagerImp;->playhistoryUpload:Ljava/util/ArrayList;

    .line 73
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getSQLData(Lcom/tudou/service/playhistory/PlayhistoryManagerImp$PlayHistoryCallBack;)V
    .locals 4
    .param p1, "callBack"    # Lcom/tudou/service/playhistory/PlayhistoryManagerImp$PlayHistoryCallBack;

    .prologue
    .line 161
    :try_start_0
    invoke-static {}, Lcom/youku/data/SQLiteManagerTudou;->getLocalPlayHistory()Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v2}, Lcom/youku/vo/HistoryVideo;->parseLocalPlayHistory(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v1

    .line 162
    .local v1, "historyVideos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/vo/HistoryVideo;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-interface {p1, v2, v1}, Lcom/tudou/service/playhistory/PlayhistoryManagerImp$PlayHistoryCallBack;->onLoadLocalDataSuccess(ILjava/util/ArrayList;)V

    .line 163
    const-string v2, "TAG_TUDOU"

    const-string v3, "history data  sucess"

    invoke-static {v2, v3}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    .end local v1    # "historyVideos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/vo/HistoryVideo;>;"
    :goto_0
    return-void

    .line 164
    :catch_0
    move-exception v0

    .line 165
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, ""

    invoke-interface {p1, v2}, Lcom/tudou/service/playhistory/PlayhistoryManagerImp$PlayHistoryCallBack;->onLoadLocalDataFailed(Ljava/lang/String;)V

    .line 166
    const-string v2, "TAG_TUDOU"

    const-string v3, "history data  error"

    invoke-static {v2, v3}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getServeData(IILandroid/os/Handler;Lcom/tudou/service/playhistory/PlayhistoryManagerImp$PlayHistoryCallBack;)V
    .locals 5
    .param p1, "pageNum"    # I
    .param p2, "pageSize"    # I
    .param p3, "mainHandler"    # Landroid/os/Handler;
    .param p4, "callBack"    # Lcom/tudou/service/playhistory/PlayhistoryManagerImp$PlayHistoryCallBack;

    .prologue
    const/4 v4, 0x1

    .line 180
    invoke-direct {p0, p1, p2, p4}, Lcom/tudou/service/playhistory/PlayhistoryManagerImp;->getCacheData(IILcom/tudou/service/playhistory/PlayhistoryManagerImp$PlayHistoryCallBack;)V

    .line 181
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 182
    const/4 v3, 0x0

    invoke-static {p1, p2, v3}, Lcom/youku/http/TudouURLContainer;->getPlayHistoryUrl(III)Ljava/lang/String;

    move-result-object v0

    .line 183
    .local v0, "historyURL":Ljava/lang/String;
    new-instance v1, Lcom/youku/network/HttpIntent;

    invoke-direct {v1, v0, v4}, Lcom/youku/network/HttpIntent;-><init>(Ljava/lang/String;Z)V

    .line 184
    .local v1, "httpIntent":Lcom/youku/network/HttpIntent;
    const-class v3, Lcom/youku/network/IHttpRequest;

    invoke-static {v3, v4}, Lcom/youku/service/YoukuService;->getService(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/network/IHttpRequest;

    .line 185
    .local v2, "mHttpRequest":Lcom/youku/network/IHttpRequest;
    new-instance v3, Lcom/tudou/service/playhistory/PlayhistoryManagerImp$2;

    invoke-direct {v3, p0, p3, p4}, Lcom/tudou/service/playhistory/PlayhistoryManagerImp$2;-><init>(Lcom/tudou/service/playhistory/PlayhistoryManagerImp;Landroid/os/Handler;Lcom/tudou/service/playhistory/PlayhistoryManagerImp$PlayHistoryCallBack;)V

    invoke-interface {v2, v1, v3}, Lcom/youku/network/IHttpRequest;->request(Lcom/youku/network/HttpIntent;Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;)V

    .line 221
    .end local v0    # "historyURL":Ljava/lang/String;
    .end local v1    # "httpIntent":Lcom/youku/network/HttpIntent;
    .end local v2    # "mHttpRequest":Lcom/youku/network/IHttpRequest;
    :goto_0
    return-void

    .line 219
    :cond_0
    const-string v3, ""

    invoke-interface {p4, v3}, Lcom/tudou/service/playhistory/PlayhistoryManagerImp$PlayHistoryCallBack;->onLoadServerDataFailed(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static onUserLoginCallbackImp(Lcom/youku/vo/HistoryVideo;)V
    .locals 8
    .param p0, "hv"    # Lcom/youku/vo/HistoryVideo;

    .prologue
    const/4 v7, 0x0

    .line 93
    const-class v2, Lcom/youku/network/IHttpRequest;

    invoke-static {v2}, Lcom/youku/service/YoukuService;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/network/IHttpRequest;

    .line 95
    .local v1, "httpRequest":Lcom/youku/network/IHttpRequest;
    new-instance v0, Lcom/youku/network/HttpIntent;

    iget-object v2, p0, Lcom/youku/vo/HistoryVideo;->itemCode:Ljava/lang/String;

    iget v3, p0, Lcom/youku/vo/HistoryVideo;->lvt:I

    iget v4, p0, Lcom/youku/vo/HistoryVideo;->done:I

    invoke-static {v2, v3, v4, v7}, Lcom/youku/http/TudouURLContainer;->getAddPlayHistoryUrl(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/youku/network/HttpIntent;-><init>(Ljava/lang/String;)V

    .line 96
    .local v0, "httpIntent":Lcom/youku/network/HttpIntent;
    const-string v2, "Youku"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updataLocalPlayhistory url = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/youku/vo/HistoryVideo;->itemCode:Ljava/lang/String;

    iget v5, p0, Lcom/youku/vo/HistoryVideo;->lvt:I

    iget v6, p0, Lcom/youku/vo/HistoryVideo;->done:I

    invoke-static {v4, v5, v6, v7}, Lcom/youku/http/TudouURLContainer;->getAddPlayHistoryUrl(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    new-instance v2, Lcom/tudou/service/playhistory/PlayhistoryManagerImp$1;

    invoke-direct {v2}, Lcom/tudou/service/playhistory/PlayhistoryManagerImp$1;-><init>()V

    invoke-interface {v1, v0, v2}, Lcom/youku/network/IHttpRequest;->request(Lcom/youku/network/HttpIntent;Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;)V

    .line 148
    return-void
.end method


# virtual methods
.method public getPlayHistory(IILcom/tudou/service/playhistory/PlayhistoryManagerImp$PlayHistoryCallBack;)V
    .locals 2
    .param p1, "pageNum"    # I
    .param p2, "pageSize"    # I
    .param p3, "callBack"    # Lcom/tudou/service/playhistory/PlayhistoryManagerImp$PlayHistoryCallBack;

    .prologue
    .line 151
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 152
    .local v0, "mainHandler":Landroid/os/Handler;
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/youku/vo/UserBean;->isLogin()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 153
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/tudou/service/playhistory/PlayhistoryManagerImp;->getServeData(IILandroid/os/Handler;Lcom/tudou/service/playhistory/PlayhistoryManagerImp$PlayHistoryCallBack;)V

    .line 157
    :goto_0
    return-void

    .line 155
    :cond_0
    invoke-direct {p0, p3}, Lcom/tudou/service/playhistory/PlayhistoryManagerImp;->getSQLData(Lcom/tudou/service/playhistory/PlayhistoryManagerImp$PlayHistoryCallBack;)V

    goto :goto_0
.end method

.method public onUserLoginCallBack()V
    .locals 3

    .prologue
    .line 50
    invoke-static {}, Lcom/tudou/service/playhistory/PlayhistoryManagerImp;->getLocalData()Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/tudou/service/playhistory/PlayhistoryManagerImp;->playhistoryUpload:Ljava/util/ArrayList;

    .line 52
    sget-object v0, Lcom/tudou/service/playhistory/PlayhistoryManagerImp;->playhistoryUpload:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tudou/service/playhistory/PlayhistoryManagerImp;->playhistoryUpload:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    const-string v0, "\u89c2\u770b\u8bb0\u5f55\u4e91\u540c\u6b65\u5f00\u59cb"

    const-class v1, Lcom/tudou/ui/activity/PlayHistoryActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u89c2\u770b\u8bb0\u5f55-\u4e91\u540c\u6b65\u5f00\u59cb"

    invoke-static {v0, v1, v2}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    sget-object v0, Lcom/tudou/service/playhistory/PlayhistoryManagerImp;->playhistoryUpload:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/tudou/service/playhistory/PlayhistoryManagerImp;->uploadLocation:I

    .line 56
    sget-object v0, Lcom/tudou/service/playhistory/PlayhistoryManagerImp;->playhistoryUpload:Ljava/util/ArrayList;

    sget v1, Lcom/tudou/service/playhistory/PlayhistoryManagerImp;->uploadLocation:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/HistoryVideo;

    sput-object v0, Lcom/tudou/service/playhistory/PlayhistoryManagerImp;->uploadData:Lcom/youku/vo/HistoryVideo;

    .line 57
    sget-object v0, Lcom/tudou/service/playhistory/PlayhistoryManagerImp;->uploadData:Lcom/youku/vo/HistoryVideo;

    invoke-static {v0}, Lcom/tudou/service/playhistory/PlayhistoryManagerImp;->onUserLoginCallbackImp(Lcom/youku/vo/HistoryVideo;)V

    .line 63
    :cond_0
    return-void
.end method
