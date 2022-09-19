.class public Lcom/tudou/service/favourite/FavouritePlaylistManagerImpl;
.super Lcom/tudou/service/favourite/FavouritePlaylistManager;
.source "FavouritePlaylistManagerImpl.java"


# instance fields
.field protected mActivity:Lcom/tudou/ui/activity/BaseActivity;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/tudou/service/favourite/FavouritePlaylistManager;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/tudou/service/favourite/FavouritePlaylistManagerImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tudou/service/favourite/IFavouritePlaylist$CallBack;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/service/favourite/FavouritePlaylistManagerImpl;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Ljava/lang/String;
    .param p6, "x6"    # Ljava/lang/String;
    .param p7, "x7"    # Ljava/lang/String;
    .param p8, "x8"    # Ljava/lang/String;
    .param p9, "x9"    # Lcom/tudou/service/favourite/IFavouritePlaylist$CallBack;

    .prologue
    .line 34
    invoke-direct/range {p0 .. p9}, Lcom/tudou/service/favourite/FavouritePlaylistManagerImpl;->addToLocalFavrite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tudou/service/favourite/IFavouritePlaylist$CallBack;)V

    return-void
.end method

.method private addToLocalFavrite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tudou/service/favourite/IFavouritePlaylist$CallBack;)V
    .locals 11
    .param p1, "itemCode"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "vediocount"    # Ljava/lang/String;
    .param p4, "coverPicUrl"    # Ljava/lang/String;
    .param p5, "playTimes"    # Ljava/lang/String;
    .param p6, "update_time"    # Ljava/lang/String;
    .param p7, "lastItemCode"    # Ljava/lang/String;
    .param p8, "lastItemTitle"    # Ljava/lang/String;
    .param p9, "callBack"    # Lcom/tudou/service/favourite/IFavouritePlaylist$CallBack;

    .prologue
    .line 181
    new-instance v0, Lcom/tudou/service/favourite/FavouritePlaylistManagerImpl$3;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p5

    move-object v5, p4

    move-object/from16 v6, p6

    move-object v7, p3

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lcom/tudou/service/favourite/FavouritePlaylistManagerImpl$3;-><init>(Lcom/tudou/service/favourite/FavouritePlaylistManagerImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tudou/service/favourite/IFavouritePlaylist$CallBack;)V

    invoke-virtual {v0}, Lcom/tudou/service/favourite/FavouritePlaylistManagerImpl$3;->start()V

    .line 204
    return-void
.end method

.method private addToNetFavrite(Ljava/lang/String;Lcom/tudou/service/favourite/IFavouritePlaylist$CallBack;)V
    .locals 5
    .param p1, "itemCode"    # Ljava/lang/String;
    .param p2, "callBack"    # Lcom/tudou/service/favourite/IFavouritePlaylist$CallBack;

    .prologue
    const/4 v4, 0x1

    .line 115
    const-string v3, "add"

    invoke-static {p1, v3}, Lcom/youku/http/TudouURLContainer;->getUpdateMyFavouritePlaylistUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 116
    .local v2, "url":Ljava/lang/String;
    const-class v3, Lcom/youku/network/IHttpRequest;

    invoke-static {v3, v4}, Lcom/youku/service/YoukuService;->getService(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/network/IHttpRequest;

    .line 117
    .local v1, "httpRequest":Lcom/youku/network/IHttpRequest;
    new-instance v0, Lcom/youku/network/HttpIntent;

    const-string v3, "POST"

    invoke-direct {v0, v2, v3, v4}, Lcom/youku/network/HttpIntent;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 118
    .local v0, "httpIntent":Lcom/youku/network/HttpIntent;
    new-instance v3, Lcom/tudou/service/favourite/FavouritePlaylistManagerImpl$2;

    invoke-direct {v3, p0, p2, p1}, Lcom/tudou/service/favourite/FavouritePlaylistManagerImpl$2;-><init>(Lcom/tudou/service/favourite/FavouritePlaylistManagerImpl;Lcom/tudou/service/favourite/IFavouritePlaylist$CallBack;Ljava/lang/String;)V

    invoke-interface {v1, v0, v3}, Lcom/youku/network/IHttpRequest;->request(Lcom/youku/network/HttpIntent;Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;)V

    .line 174
    return-void
.end method


# virtual methods
.method public addToFavrite(Ljava/lang/String;Lcom/tudou/service/favourite/IFavouritePlaylist$CallBack;)V
    .locals 5
    .param p1, "playlistCode"    # Ljava/lang/String;
    .param p2, "callBack"    # Lcom/tudou/service/favourite/IFavouritePlaylist$CallBack;

    .prologue
    const/4 v4, 0x1

    .line 41
    sput-boolean v4, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->mRefreshKey:Z

    .line 42
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/youku/vo/UserBean;->isLogin()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/tudou/service/favourite/FavouritePlaylistManagerImpl;->addToNetFavrite(Ljava/lang/String;Lcom/tudou/service/favourite/IFavouritePlaylist$CallBack;)V

    .line 111
    :goto_0
    return-void

    .line 46
    :cond_0
    invoke-static {p1}, Lcom/youku/http/TudouURLContainer;->getPlaylistInfoURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 48
    .local v2, "url":Ljava/lang/String;
    const-class v3, Lcom/youku/network/IHttpRequest;

    invoke-static {v3, v4}, Lcom/youku/service/YoukuService;->getService(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/network/IHttpRequest;

    .line 49
    .local v1, "httpRequest":Lcom/youku/network/IHttpRequest;
    new-instance v0, Lcom/youku/network/HttpIntent;

    const-string v3, "GET"

    invoke-direct {v0, v2, v3, v4}, Lcom/youku/network/HttpIntent;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 51
    .local v0, "httpIntent":Lcom/youku/network/HttpIntent;
    new-instance v3, Lcom/tudou/service/favourite/FavouritePlaylistManagerImpl$1;

    invoke-direct {v3, p0, p1, p2}, Lcom/tudou/service/favourite/FavouritePlaylistManagerImpl$1;-><init>(Lcom/tudou/service/favourite/FavouritePlaylistManagerImpl;Ljava/lang/String;Lcom/tudou/service/favourite/IFavouritePlaylist$CallBack;)V

    invoke-interface {v1, v0, v3}, Lcom/youku/network/IHttpRequest;->request(Lcom/youku/network/HttpIntent;Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;)V

    goto :goto_0
.end method

.method public deleteFavrite(Landroid/content/Context;Ljava/lang/String;Lcom/tudou/service/favourite/IFavouritePlaylist$CallBack;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "itemCode"    # Ljava/lang/String;
    .param p3, "callBack"    # Lcom/tudou/service/favourite/IFavouritePlaylist$CallBack;

    .prologue
    const/4 v4, 0x1

    .line 208
    sput-boolean v4, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->mRefreshKey:Z

    .line 209
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/youku/vo/UserBean;->isLogin()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 210
    const-class v2, Lcom/youku/network/IHttpRequest;

    invoke-static {v2, v4}, Lcom/youku/service/YoukuService;->getService(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/network/IHttpRequest;

    .line 211
    .local v1, "httpRequest":Lcom/youku/network/IHttpRequest;
    new-instance v0, Lcom/youku/network/HttpIntent;

    const-string v2, "cancel"

    invoke-static {p2, v2}, Lcom/youku/http/TudouURLContainer;->getUpdateMyFavouritePlaylistUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "POST"

    invoke-direct {v0, v2, v3, v4}, Lcom/youku/network/HttpIntent;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 215
    .local v0, "httpIntent":Lcom/youku/network/HttpIntent;
    new-instance v2, Lcom/tudou/service/favourite/FavouritePlaylistManagerImpl$4;

    invoke-direct {v2, p0, p3, p2}, Lcom/tudou/service/favourite/FavouritePlaylistManagerImpl$4;-><init>(Lcom/tudou/service/favourite/FavouritePlaylistManagerImpl;Lcom/tudou/service/favourite/IFavouritePlaylist$CallBack;Ljava/lang/String;)V

    invoke-interface {v1, v0, v2}, Lcom/youku/network/IHttpRequest;->request(Lcom/youku/network/HttpIntent;Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;)V

    .line 242
    .end local v0    # "httpIntent":Lcom/youku/network/HttpIntent;
    .end local v1    # "httpRequest":Lcom/youku/network/IHttpRequest;
    :goto_0
    return-void

    .line 228
    :cond_0
    new-instance v2, Lcom/tudou/service/favourite/FavouritePlaylistManagerImpl$5;

    invoke-direct {v2, p0, p2, p3}, Lcom/tudou/service/favourite/FavouritePlaylistManagerImpl$5;-><init>(Lcom/tudou/service/favourite/FavouritePlaylistManagerImpl;Ljava/lang/String;Lcom/tudou/service/favourite/IFavouritePlaylist$CallBack;)V

    invoke-virtual {v2}, Lcom/tudou/service/favourite/FavouritePlaylistManagerImpl$5;->start()V

    goto :goto_0
.end method

.method public deleteFavrite(Landroid/content/Context;Ljava/util/ArrayList;Lcom/tudou/service/favourite/IFavouritePlaylist$CallBack;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "callBack"    # Lcom/tudou/service/favourite/IFavouritePlaylist$CallBack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/tudou/service/favourite/IFavouritePlaylist$CallBack;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v4, 0x1

    .line 424
    sput-boolean v4, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->mRefreshKey:Z

    .line 425
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/youku/vo/UserBean;->isLogin()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 427
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v2

    if-nez v2, :cond_0

    .line 428
    const v2, 0x7f0d02c3

    invoke-static {v2}, Lcom/youku/util/Util;->showTips(I)V

    .line 466
    :goto_0
    return-void

    .line 432
    :cond_0
    const-class v2, Lcom/youku/network/IHttpRequest;

    invoke-static {v2, v4}, Lcom/youku/service/YoukuService;->getService(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/network/IHttpRequest;

    .line 434
    .local v1, "httpRequest":Lcom/youku/network/IHttpRequest;
    new-instance v0, Lcom/youku/network/HttpIntent;

    const-string v2, "cancel"

    invoke-static {p2, v2}, Lcom/youku/http/TudouURLContainer;->getUpdateMyFavouritePlaylistUrl(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "POST"

    invoke-direct {v0, v2, v3, v4}, Lcom/youku/network/HttpIntent;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 438
    .local v0, "httpIntent":Lcom/youku/network/HttpIntent;
    new-instance v2, Lcom/tudou/service/favourite/FavouritePlaylistManagerImpl$10;

    invoke-direct {v2, p0, p3}, Lcom/tudou/service/favourite/FavouritePlaylistManagerImpl$10;-><init>(Lcom/tudou/service/favourite/FavouritePlaylistManagerImpl;Lcom/tudou/service/favourite/IFavouritePlaylist$CallBack;)V

    invoke-interface {v1, v0, v2}, Lcom/youku/network/IHttpRequest;->request(Lcom/youku/network/HttpIntent;Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;)V

    goto :goto_0

    .line 452
    .end local v0    # "httpIntent":Lcom/youku/network/HttpIntent;
    .end local v1    # "httpRequest":Lcom/youku/network/IHttpRequest;
    :cond_1
    new-instance v2, Lcom/tudou/service/favourite/FavouritePlaylistManagerImpl$11;

    invoke-direct {v2, p0, p2, p3}, Lcom/tudou/service/favourite/FavouritePlaylistManagerImpl$11;-><init>(Lcom/tudou/service/favourite/FavouritePlaylistManagerImpl;Ljava/util/ArrayList;Lcom/tudou/service/favourite/IFavouritePlaylist$CallBack;)V

    invoke-virtual {v2}, Lcom/tudou/service/favourite/FavouritePlaylistManagerImpl$11;->start()V

    goto :goto_0
.end method

.method public deleteLocalFavrite()V
    .locals 1

    .prologue
    .line 304
    new-instance v0, Lcom/tudou/service/favourite/FavouritePlaylistManagerImpl$7;

    invoke-direct {v0, p0}, Lcom/tudou/service/favourite/FavouritePlaylistManagerImpl$7;-><init>(Lcom/tudou/service/favourite/FavouritePlaylistManagerImpl;)V

    invoke-virtual {v0}, Lcom/tudou/service/favourite/FavouritePlaylistManagerImpl$7;->start()V

    .line 311
    return-void
.end method

.method public getFavriteList(Landroid/content/Context;ILcom/tudou/service/favourite/IFavouritePlaylist$GetListCallBack;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "page"    # I
    .param p3, "callBack"    # Lcom/tudou/service/favourite/IFavouritePlaylist$GetListCallBack;

    .prologue
    .line 315
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v9

    invoke-virtual {v9}, Lcom/youku/vo/UserBean;->isLogin()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 316
    const/4 v9, 0x1

    if-ne p2, v9, :cond_0

    sget-boolean v9, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->isCache:Z

    if-eqz v9, :cond_0

    .line 317
    const/4 v9, 0x0

    sput-boolean v9, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->isCache:Z

    .line 318
    const/4 v9, 0x2

    new-array v9, v9, [I

    const/4 v10, 0x0

    aput p2, v9, v10

    const/4 v10, 0x1

    const/16 v11, 0xa

    aput v11, v9, v10

    invoke-static {v9}, Lcom/youku/http/TudouURLContainer;->getAddMyFavouritePlaylistUrl([I)Ljava/lang/String;

    move-result-object v3

    .line 319
    .local v3, "favURL":Ljava/lang/String;
    const/4 v9, 0x1

    invoke-static {v3, v9}, Lcom/tudou/android/TudouApi;->formatURL(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    .line 321
    .local v4, "formatUri":Ljava/lang/String;
    invoke-static {v4}, Lcom/tudou/android/Youku;->getPreference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 323
    :try_start_0
    invoke-static {v4}, Lcom/tudou/android/TudouApi;->readUrlCacheFromLocal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 324
    .local v0, "cacheDataStr":Ljava/lang/String;
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 325
    new-instance v8, Lcom/youku/vo/FavouritePlaylistResult;

    invoke-direct {v8}, Lcom/youku/vo/FavouritePlaylistResult;-><init>()V

    .line 326
    .local v8, "result":Lcom/youku/vo/FavouritePlaylistResult;
    invoke-static {v0, v8}, Lcom/youku/network/HttpRequestManager;->parse(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "result":Lcom/youku/vo/FavouritePlaylistResult;
    check-cast v8, Lcom/youku/vo/FavouritePlaylistResult;

    .line 328
    .restart local v8    # "result":Lcom/youku/vo/FavouritePlaylistResult;
    if-eqz v8, :cond_0

    iget-object v9, v8, Lcom/youku/vo/FavouritePlaylistResult;->data:Lcom/youku/vo/FavouritePlaylistResult$PlaylistList;

    if-eqz v9, :cond_0

    iget-object v9, v8, Lcom/youku/vo/FavouritePlaylistResult;->data:Lcom/youku/vo/FavouritePlaylistResult$PlaylistList;

    iget-object v9, v9, Lcom/youku/vo/FavouritePlaylistResult$PlaylistList;->list:Ljava/util/ArrayList;

    if-eqz v9, :cond_0

    iget-object v9, v8, Lcom/youku/vo/FavouritePlaylistResult;->data:Lcom/youku/vo/FavouritePlaylistResult$PlaylistList;

    iget-object v9, v9, Lcom/youku/vo/FavouritePlaylistResult$PlaylistList;->list:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_0

    .line 331
    const-string v9, "testcacheFavour"

    const-string v10, "favour success"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    const/4 v9, 0x2

    invoke-virtual {p3, v8, v9}, Lcom/tudou/service/favourite/IFavouritePlaylist$GetListCallBack;->onSucess(Lcom/youku/vo/FavouritePlaylistResult;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 340
    .end local v0    # "cacheDataStr":Ljava/lang/String;
    .end local v3    # "favURL":Ljava/lang/String;
    .end local v4    # "formatUri":Ljava/lang/String;
    .end local v8    # "result":Lcom/youku/vo/FavouritePlaylistResult;
    :cond_0
    :goto_0
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 341
    new-instance v5, Lcom/youku/network/HttpIntent;

    const/4 v9, 0x2

    new-array v9, v9, [I

    const/4 v10, 0x0

    aput p2, v9, v10

    const/4 v10, 0x1

    const/16 v11, 0xa

    aput v11, v9, v10

    invoke-static {v9}, Lcom/youku/http/TudouURLContainer;->getAddMyFavouritePlaylistUrl([I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    invoke-direct {v5, v9, v10}, Lcom/youku/network/HttpIntent;-><init>(Ljava/lang/String;Z)V

    .line 342
    .local v5, "httpIntent":Lcom/youku/network/HttpIntent;
    const-class v9, Lcom/youku/network/IHttpRequest;

    const/4 v10, 0x1

    invoke-static {v9, v10}, Lcom/youku/service/YoukuService;->getService(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/youku/network/IHttpRequest;

    .line 343
    .local v6, "httpRequest":Lcom/youku/network/IHttpRequest;
    new-instance v9, Lcom/tudou/service/favourite/FavouritePlaylistManagerImpl$8;

    invoke-direct {v9, p0, p3}, Lcom/tudou/service/favourite/FavouritePlaylistManagerImpl$8;-><init>(Lcom/tudou/service/favourite/FavouritePlaylistManagerImpl;Lcom/tudou/service/favourite/IFavouritePlaylist$GetListCallBack;)V

    invoke-interface {v6, v5, v9}, Lcom/youku/network/IHttpRequest;->request(Lcom/youku/network/HttpIntent;Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;)V

    .line 373
    .end local v5    # "httpIntent":Lcom/youku/network/HttpIntent;
    .end local v6    # "httpRequest":Lcom/youku/network/IHttpRequest;
    :goto_1
    return-void

    .line 335
    .restart local v3    # "favURL":Ljava/lang/String;
    .restart local v4    # "formatUri":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 336
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 358
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "favURL":Ljava/lang/String;
    .end local v4    # "formatUri":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/youku/widget/YoukuLoading;->dismiss()V

    .line 359
    const v9, 0x7f0d02c3

    invoke-static {v9}, Lcom/youku/util/Util;->showTips(I)V

    .line 360
    const-string v9, ""

    invoke-virtual {p3, v9}, Lcom/tudou/service/favourite/IFavouritePlaylist$GetListCallBack;->onFail(Ljava/lang/String;)V

    goto :goto_1

    .line 363
    :cond_2
    invoke-static {}, Lcom/youku/data/SQLiteManagerTudou;->getFavouritePlaylistInfo()Ljava/util/ArrayList;

    move-result-object v1

    .line 364
    .local v1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/vo/FavouritePlaylist;>;"
    new-instance v8, Lcom/youku/vo/FavouritePlaylistResult;

    invoke-direct {v8}, Lcom/youku/vo/FavouritePlaylistResult;-><init>()V

    .line 365
    .restart local v8    # "result":Lcom/youku/vo/FavouritePlaylistResult;
    new-instance v7, Lcom/youku/vo/FavouritePlaylistResult$PlaylistList;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v7, v8}, Lcom/youku/vo/FavouritePlaylistResult$PlaylistList;-><init>(Lcom/youku/vo/FavouritePlaylistResult;)V

    .line 366
    .local v7, "list":Lcom/youku/vo/FavouritePlaylistResult$PlaylistList;
    iput-object v1, v7, Lcom/youku/vo/FavouritePlaylistResult$PlaylistList;->list:Ljava/util/ArrayList;

    .line 367
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v9

    iput v9, v7, Lcom/youku/vo/FavouritePlaylistResult$PlaylistList;->totalPlaylistCount:I

    .line 368
    const/4 v9, 0x0

    iput v9, v8, Lcom/youku/vo/FavouritePlaylistResult;->code:I

    .line 369
    const-string v9, "success"

    iput-object v9, v8, Lcom/youku/vo/FavouritePlaylistResult;->msg:Ljava/lang/String;

    .line 370
    iput-object v7, v8, Lcom/youku/vo/FavouritePlaylistResult;->data:Lcom/youku/vo/FavouritePlaylistResult$PlaylistList;

    .line 371
    const/4 v9, 0x1

    invoke-virtual {p3, v8, v9}, Lcom/tudou/service/favourite/IFavouritePlaylist$GetListCallBack;->onSucess(Lcom/youku/vo/FavouritePlaylistResult;I)V

    goto :goto_1
.end method

.method public isFavrite(Ljava/lang/String;Lcom/tudou/service/favourite/IFavouritePlaylist$CallBack;)V
    .locals 6
    .param p1, "itemCode"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/tudou/service/favourite/IFavouritePlaylist$CallBack;

    .prologue
    const/4 v5, 0x1

    .line 377
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/youku/vo/UserBean;->isLogin()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 378
    invoke-static {p1}, Lcom/youku/http/TudouURLContainer;->getCheckMyFavouritePlaylistUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 380
    .local v3, "url":Ljava/lang/String;
    const-class v4, Lcom/youku/network/IHttpRequest;

    invoke-static {v4, v5}, Lcom/youku/service/YoukuService;->getService(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/network/IHttpRequest;

    .line 382
    .local v1, "httpRequest":Lcom/youku/network/IHttpRequest;
    new-instance v0, Lcom/youku/network/HttpIntent;

    const-string v4, "GET"

    invoke-direct {v0, v3, v4, v5}, Lcom/youku/network/HttpIntent;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 384
    .local v0, "httpIntent":Lcom/youku/network/HttpIntent;
    new-instance v4, Lcom/tudou/service/favourite/FavouritePlaylistManagerImpl$9;

    invoke-direct {v4, p0, p1, p2}, Lcom/tudou/service/favourite/FavouritePlaylistManagerImpl$9;-><init>(Lcom/tudou/service/favourite/FavouritePlaylistManagerImpl;Ljava/lang/String;Lcom/tudou/service/favourite/IFavouritePlaylist$CallBack;)V

    invoke-interface {v1, v0, v4}, Lcom/youku/network/IHttpRequest;->request(Lcom/youku/network/HttpIntent;Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;)V

    .line 419
    .end local v0    # "httpIntent":Lcom/youku/network/HttpIntent;
    .end local v1    # "httpRequest":Lcom/youku/network/IHttpRequest;
    .end local v3    # "url":Ljava/lang/String;
    :goto_0
    return-void

    .line 412
    :cond_0
    invoke-static {p1}, Lcom/youku/data/SQLiteManagerTudou;->isFavoritePlaylist(Ljava/lang/String;)Z

    move-result v2

    .line 413
    .local v2, "isfav":Z
    if-eqz v2, :cond_1

    .line 414
    invoke-virtual {p2, p1}, Lcom/tudou/service/favourite/IFavouritePlaylist$CallBack;->onSucess(Ljava/lang/String;)V

    goto :goto_0

    .line 416
    :cond_1
    invoke-virtual {p2, p1}, Lcom/tudou/service/favourite/IFavouritePlaylist$CallBack;->onFail(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onUserLoginCallBack()V
    .locals 3

    .prologue
    .line 246
    const-string v0, "\u6536\u85cf\u9875\u4e91\u540c\u6b65\u5f00\u59cb"

    const-class v1, Lcom/tudou/ui/activity/LoginActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u4e91\u540c\u6b65"

    invoke-static {v0, v1, v2}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    invoke-virtual {p0}, Lcom/tudou/service/favourite/FavouritePlaylistManagerImpl;->uploadLocalFavrite()V

    .line 252
    const/4 v0, 0x1

    sput-boolean v0, Lcom/tudou/ui/fragment/FavouritePlaylistFragment;->mRefreshKey:Z

    .line 253
    return-void
.end method

.method public onUserQuitCallBack()V
    .locals 0

    .prologue
    .line 258
    return-void
.end method

.method public uploadLocalFavrite()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 262
    invoke-static {}, Lcom/youku/data/SQLiteManagerTudou;->getFavouritePlaylistInfo()Ljava/util/ArrayList;

    move-result-object v3

    .line 263
    .local v3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/vo/FavouritePlaylist;>;"
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_1

    .line 300
    :cond_0
    :goto_0
    return-void

    .line 266
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 267
    .local v4, "videolist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    .local v2, "i":I
    :goto_1
    if-ltz v2, :cond_2

    .line 268
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/youku/vo/FavouritePlaylist;

    iget-object v5, v5, Lcom/youku/vo/FavouritePlaylist;->lcode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 267
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 270
    :cond_2
    new-instance v0, Lcom/youku/network/HttpIntent;

    const-string v5, "add"

    invoke-static {v4, v5}, Lcom/youku/http/TudouURLContainer;->getUpdateMyFavouritePlaylistUrl(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "POST"

    invoke-direct {v0, v5, v6, v7}, Lcom/youku/network/HttpIntent;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 274
    .local v0, "httpIntent":Lcom/youku/network/HttpIntent;
    const-class v5, Lcom/youku/network/IHttpRequest;

    invoke-static {v5, v7}, Lcom/youku/service/YoukuService;->getService(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/network/IHttpRequest;

    .line 275
    .local v1, "httpRequest":Lcom/youku/network/IHttpRequest;
    new-instance v5, Lcom/tudou/service/favourite/FavouritePlaylistManagerImpl$6;

    invoke-direct {v5, p0}, Lcom/tudou/service/favourite/FavouritePlaylistManagerImpl$6;-><init>(Lcom/tudou/service/favourite/FavouritePlaylistManagerImpl;)V

    invoke-interface {v1, v0, v5}, Lcom/youku/network/IHttpRequest;->request(Lcom/youku/network/HttpIntent;Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;)V

    goto :goto_0
.end method
