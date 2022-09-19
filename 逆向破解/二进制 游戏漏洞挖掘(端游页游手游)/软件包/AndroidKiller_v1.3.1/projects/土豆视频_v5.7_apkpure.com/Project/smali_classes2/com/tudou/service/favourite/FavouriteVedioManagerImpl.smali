.class public Lcom/tudou/service/favourite/FavouriteVedioManagerImpl;
.super Lcom/tudou/service/favourite/FavouriteVedioManager;
.source "FavouriteVedioManagerImpl.java"


# instance fields
.field protected mActivity:Lcom/tudou/ui/activity/BaseActivity;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/tudou/service/favourite/FavouriteVedioManager;-><init>()V

    return-void
.end method


# virtual methods
.method public addToFavrite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tudou/service/favourite/IFavouriteVedio$CallBack;)V
    .locals 10
    .param p1, "itemCode"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "totaltime"    # Ljava/lang/String;
    .param p4, "picurl"    # Ljava/lang/String;
    .param p5, "callBack"    # Lcom/tudou/service/favourite/IFavouriteVedio$CallBack;

    .prologue
    const/4 v1, 0x1

    .line 37
    sput-boolean v1, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->mRefreshKey:Z

    .line 38
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/vo/UserBean;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    const-string v0, "add"

    invoke-static {p1, v0}, Lcom/youku/http/TudouURLContainer;->getUpdateMyFavouriteUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 40
    .local v9, "url":Ljava/lang/String;
    const-class v0, Lcom/youku/network/IHttpRequest;

    invoke-static {v0, v1}, Lcom/youku/service/YoukuService;->getService(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/youku/network/IHttpRequest;

    .line 41
    .local v8, "httpRequest":Lcom/youku/network/IHttpRequest;
    new-instance v7, Lcom/youku/network/HttpIntent;

    const-string v0, "POST"

    invoke-direct {v7, v9, v0, v1}, Lcom/youku/network/HttpIntent;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 43
    .local v7, "httpIntent":Lcom/youku/network/HttpIntent;
    new-instance v0, Lcom/tudou/service/favourite/FavouriteVedioManagerImpl$1;

    invoke-direct {v0, p0, p5, p1}, Lcom/tudou/service/favourite/FavouriteVedioManagerImpl$1;-><init>(Lcom/tudou/service/favourite/FavouriteVedioManagerImpl;Lcom/tudou/service/favourite/IFavouriteVedio$CallBack;Ljava/lang/String;)V

    invoke-interface {v8, v7, v0}, Lcom/youku/network/IHttpRequest;->request(Lcom/youku/network/HttpIntent;Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;)V

    .line 122
    .end local v7    # "httpIntent":Lcom/youku/network/HttpIntent;
    .end local v8    # "httpRequest":Lcom/youku/network/IHttpRequest;
    .end local v9    # "url":Ljava/lang/String;
    :goto_0
    return-void

    .line 103
    :cond_0
    new-instance v0, Lcom/tudou/service/favourite/FavouriteVedioManagerImpl$2;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p4

    move-object v5, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/tudou/service/favourite/FavouriteVedioManagerImpl$2;-><init>(Lcom/tudou/service/favourite/FavouriteVedioManagerImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tudou/service/favourite/IFavouriteVedio$CallBack;)V

    invoke-virtual {v0}, Lcom/tudou/service/favourite/FavouriteVedioManagerImpl$2;->start()V

    goto :goto_0
.end method

.method public deleteFavrite(Landroid/content/Context;Ljava/lang/String;Lcom/tudou/service/favourite/IFavouriteVedio$CallBack;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "itemCode"    # Ljava/lang/String;
    .param p3, "callBack"    # Lcom/tudou/service/favourite/IFavouriteVedio$CallBack;

    .prologue
    const/4 v4, 0x1

    .line 127
    sput-boolean v4, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->mRefreshKey:Z

    .line 128
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/youku/vo/UserBean;->isLogin()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 129
    const-class v2, Lcom/youku/network/IHttpRequest;

    invoke-static {v2, v4}, Lcom/youku/service/YoukuService;->getService(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/network/IHttpRequest;

    .line 131
    .local v1, "httpRequest":Lcom/youku/network/IHttpRequest;
    new-instance v0, Lcom/youku/network/HttpIntent;

    const-string v2, "del"

    invoke-static {p2, v2}, Lcom/youku/http/TudouURLContainer;->getUpdateMyFavouriteUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "POST"

    invoke-direct {v0, v2, v3, v4}, Lcom/youku/network/HttpIntent;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 135
    .local v0, "httpIntent":Lcom/youku/network/HttpIntent;
    new-instance v2, Lcom/tudou/service/favourite/FavouriteVedioManagerImpl$3;

    invoke-direct {v2, p0, p3, p2}, Lcom/tudou/service/favourite/FavouriteVedioManagerImpl$3;-><init>(Lcom/tudou/service/favourite/FavouriteVedioManagerImpl;Lcom/tudou/service/favourite/IFavouriteVedio$CallBack;Ljava/lang/String;)V

    invoke-interface {v1, v0, v2}, Lcom/youku/network/IHttpRequest;->request(Lcom/youku/network/HttpIntent;Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;)V

    .line 163
    .end local v0    # "httpIntent":Lcom/youku/network/HttpIntent;
    .end local v1    # "httpRequest":Lcom/youku/network/IHttpRequest;
    :goto_0
    return-void

    .line 149
    :cond_0
    new-instance v2, Lcom/tudou/service/favourite/FavouriteVedioManagerImpl$4;

    invoke-direct {v2, p0, p2, p3}, Lcom/tudou/service/favourite/FavouriteVedioManagerImpl$4;-><init>(Lcom/tudou/service/favourite/FavouriteVedioManagerImpl;Ljava/lang/String;Lcom/tudou/service/favourite/IFavouriteVedio$CallBack;)V

    invoke-virtual {v2}, Lcom/tudou/service/favourite/FavouriteVedioManagerImpl$4;->start()V

    goto :goto_0
.end method

.method public deleteFavrite(Landroid/content/Context;Ljava/util/ArrayList;Lcom/tudou/service/favourite/IFavouriteVedio$CallBack;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "callBack"    # Lcom/tudou/service/favourite/IFavouriteVedio$CallBack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/tudou/service/favourite/IFavouriteVedio$CallBack;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v4, 0x1

    .line 346
    sput-boolean v4, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->mRefreshKey:Z

    .line 347
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/youku/vo/UserBean;->isLogin()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 349
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v2

    if-nez v2, :cond_0

    .line 350
    const v2, 0x7f0d02c3

    invoke-static {v2}, Lcom/youku/util/Util;->showTips(I)V

    .line 383
    :goto_0
    return-void

    .line 354
    :cond_0
    const-class v2, Lcom/youku/network/IHttpRequest;

    invoke-static {v2, v4}, Lcom/youku/service/YoukuService;->getService(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/network/IHttpRequest;

    .line 355
    .local v1, "httpRequest":Lcom/youku/network/IHttpRequest;
    new-instance v0, Lcom/youku/network/HttpIntent;

    const-string v2, "del"

    invoke-static {p2, v2}, Lcom/youku/http/TudouURLContainer;->getUpdateMyFavouriteUrl(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "POST"

    invoke-direct {v0, v2, v3, v4}, Lcom/youku/network/HttpIntent;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 356
    .local v0, "httpIntent":Lcom/youku/network/HttpIntent;
    new-instance v2, Lcom/tudou/service/favourite/FavouriteVedioManagerImpl$9;

    invoke-direct {v2, p0, p3}, Lcom/tudou/service/favourite/FavouriteVedioManagerImpl$9;-><init>(Lcom/tudou/service/favourite/FavouriteVedioManagerImpl;Lcom/tudou/service/favourite/IFavouriteVedio$CallBack;)V

    invoke-interface {v1, v0, v2}, Lcom/youku/network/IHttpRequest;->request(Lcom/youku/network/HttpIntent;Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;)V

    goto :goto_0

    .line 369
    .end local v0    # "httpIntent":Lcom/youku/network/HttpIntent;
    .end local v1    # "httpRequest":Lcom/youku/network/IHttpRequest;
    :cond_1
    new-instance v2, Lcom/tudou/service/favourite/FavouriteVedioManagerImpl$10;

    invoke-direct {v2, p0, p2, p3}, Lcom/tudou/service/favourite/FavouriteVedioManagerImpl$10;-><init>(Lcom/tudou/service/favourite/FavouriteVedioManagerImpl;Ljava/util/ArrayList;Lcom/tudou/service/favourite/IFavouriteVedio$CallBack;)V

    invoke-virtual {v2}, Lcom/tudou/service/favourite/FavouriteVedioManagerImpl$10;->start()V

    goto :goto_0
.end method

.method public deleteLocalFavrite()V
    .locals 1

    .prologue
    .line 231
    new-instance v0, Lcom/tudou/service/favourite/FavouriteVedioManagerImpl$6;

    invoke-direct {v0, p0}, Lcom/tudou/service/favourite/FavouriteVedioManagerImpl$6;-><init>(Lcom/tudou/service/favourite/FavouriteVedioManagerImpl;)V

    invoke-virtual {v0}, Lcom/tudou/service/favourite/FavouriteVedioManagerImpl$6;->start()V

    .line 238
    return-void
.end method

.method public getFavriteList(Landroid/content/Context;ILcom/tudou/service/favourite/IFavouriteVedio$GetListCallBack;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "page"    # I
    .param p3, "callBack"    # Lcom/tudou/service/favourite/IFavouriteVedio$GetListCallBack;

    .prologue
    .line 242
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v9

    invoke-virtual {v9}, Lcom/youku/vo/UserBean;->isLogin()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 243
    const/4 v9, 0x1

    if-ne p2, v9, :cond_0

    sget-boolean v9, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->isCache:Z

    if-eqz v9, :cond_0

    .line 244
    const/4 v9, 0x0

    sput-boolean v9, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->isCache:Z

    .line 245
    const/4 v9, 0x2

    new-array v9, v9, [I

    const/4 v10, 0x0

    aput p2, v9, v10

    const/4 v10, 0x1

    const/16 v11, 0xa

    aput v11, v9, v10

    invoke-static {v9}, Lcom/youku/http/TudouURLContainer;->getAddMyFavouriteUrl([I)Ljava/lang/String;

    move-result-object v3

    .line 246
    .local v3, "favURL":Ljava/lang/String;
    const/4 v9, 0x1

    invoke-static {v3, v9}, Lcom/tudou/android/TudouApi;->formatURL(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    .line 248
    .local v5, "formatUri":Ljava/lang/String;
    invoke-static {v5}, Lcom/tudou/android/Youku;->getPreference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 250
    :try_start_0
    invoke-static {v5}, Lcom/tudou/android/TudouApi;->readUrlCacheFromLocal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 251
    .local v0, "cacheDataStr":Ljava/lang/String;
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 252
    new-instance v4, Lcom/youku/vo/FavouriteVideoResult;

    invoke-direct {v4}, Lcom/youku/vo/FavouriteVideoResult;-><init>()V

    .line 253
    .local v4, "favouriteVideo":Lcom/youku/vo/FavouriteVideoResult;
    invoke-static {v0, v4}, Lcom/youku/network/HttpRequestManager;->parse(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "favouriteVideo":Lcom/youku/vo/FavouriteVideoResult;
    check-cast v4, Lcom/youku/vo/FavouriteVideoResult;

    .line 254
    .restart local v4    # "favouriteVideo":Lcom/youku/vo/FavouriteVideoResult;
    iget-object v9, v4, Lcom/youku/vo/FavouriteVideoResult;->data:Lcom/youku/vo/FavouriteVideoResult$FVMultiPageResult;

    if-eqz v9, :cond_0

    iget-object v9, v4, Lcom/youku/vo/FavouriteVideoResult;->data:Lcom/youku/vo/FavouriteVideoResult$FVMultiPageResult;

    iget-object v9, v9, Lcom/youku/vo/FavouriteVideoResult$FVMultiPageResult;->result:Ljava/util/ArrayList;

    if-eqz v9, :cond_0

    iget-object v9, v4, Lcom/youku/vo/FavouriteVideoResult;->data:Lcom/youku/vo/FavouriteVideoResult$FVMultiPageResult;

    iget-object v9, v9, Lcom/youku/vo/FavouriteVideoResult$FVMultiPageResult;->result:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_0

    .line 255
    const-string v9, "testcacheFavour"

    const-string v10, "favour success"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    const/4 v9, 0x2

    invoke-virtual {p3, v4, v9}, Lcom/tudou/service/favourite/IFavouriteVedio$GetListCallBack;->onSucess(Lcom/youku/vo/FavouriteVideoResult;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 263
    .end local v0    # "cacheDataStr":Ljava/lang/String;
    .end local v3    # "favURL":Ljava/lang/String;
    .end local v4    # "favouriteVideo":Lcom/youku/vo/FavouriteVideoResult;
    .end local v5    # "formatUri":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 264
    new-instance v6, Lcom/youku/network/HttpIntent;

    const/4 v9, 0x2

    new-array v9, v9, [I

    const/4 v10, 0x0

    aput p2, v9, v10

    const/4 v10, 0x1

    const/16 v11, 0xa

    aput v11, v9, v10

    invoke-static {v9}, Lcom/youku/http/TudouURLContainer;->getAddMyFavouriteUrl([I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    invoke-direct {v6, v9, v10}, Lcom/youku/network/HttpIntent;-><init>(Ljava/lang/String;Z)V

    .line 265
    .local v6, "httpIntent":Lcom/youku/network/HttpIntent;
    const-class v9, Lcom/youku/network/IHttpRequest;

    const/4 v10, 0x1

    invoke-static {v9, v10}, Lcom/youku/service/YoukuService;->getService(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/youku/network/IHttpRequest;

    .line 266
    .local v7, "httpRequest":Lcom/youku/network/IHttpRequest;
    new-instance v9, Lcom/tudou/service/favourite/FavouriteVedioManagerImpl$7;

    invoke-direct {v9, p0, p3}, Lcom/tudou/service/favourite/FavouriteVedioManagerImpl$7;-><init>(Lcom/tudou/service/favourite/FavouriteVedioManagerImpl;Lcom/tudou/service/favourite/IFavouriteVedio$GetListCallBack;)V

    invoke-interface {v7, v6, v9}, Lcom/youku/network/IHttpRequest;->request(Lcom/youku/network/HttpIntent;Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;)V

    .line 296
    .end local v6    # "httpIntent":Lcom/youku/network/HttpIntent;
    .end local v7    # "httpRequest":Lcom/youku/network/IHttpRequest;
    :goto_1
    return-void

    .line 258
    .restart local v3    # "favURL":Ljava/lang/String;
    .restart local v5    # "formatUri":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 259
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 281
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "favURL":Ljava/lang/String;
    .end local v5    # "formatUri":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/youku/widget/YoukuLoading;->dismiss()V

    .line 282
    const v9, 0x7f0d02c3

    invoke-static {v9}, Lcom/youku/util/Util;->showTips(I)V

    .line 283
    const-string v9, ""

    invoke-virtual {p3, v9}, Lcom/tudou/service/favourite/IFavouriteVedio$GetListCallBack;->onFail(Ljava/lang/String;)V

    goto :goto_1

    .line 286
    :cond_2
    invoke-static {}, Lcom/youku/data/SQLiteManagerTudou;->getFavouriteVedioInfo()Ljava/util/ArrayList;

    move-result-object v1

    .line 287
    .local v1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/vo/FavouriteVideo;>;"
    new-instance v4, Lcom/youku/vo/FavouriteVideoResult;

    invoke-direct {v4}, Lcom/youku/vo/FavouriteVideoResult;-><init>()V

    .line 288
    .restart local v4    # "favouriteVideo":Lcom/youku/vo/FavouriteVideoResult;
    iget-object v9, v4, Lcom/youku/vo/FavouriteVideoResult;->data:Lcom/youku/vo/FavouriteVideoResult$FVMultiPageResult;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v10

    iput v10, v9, Lcom/youku/vo/FavouriteVideoResult$FVMultiPageResult;->count:I

    .line 289
    iget-object v9, v4, Lcom/youku/vo/FavouriteVideoResult;->data:Lcom/youku/vo/FavouriteVideoResult$FVMultiPageResult;

    iput-object v1, v9, Lcom/youku/vo/FavouriteVideoResult$FVMultiPageResult;->result:Ljava/util/ArrayList;

    .line 290
    iget-object v9, v4, Lcom/youku/vo/FavouriteVideoResult;->data:Lcom/youku/vo/FavouriteVideoResult$FVMultiPageResult;

    iget-object v9, v9, Lcom/youku/vo/FavouriteVideoResult$FVMultiPageResult;->result:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_3

    .line 291
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2
    iget-object v9, v4, Lcom/youku/vo/FavouriteVideoResult;->data:Lcom/youku/vo/FavouriteVideoResult$FVMultiPageResult;

    iget-object v9, v9, Lcom/youku/vo/FavouriteVideoResult$FVMultiPageResult;->result:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_3

    .line 292
    iget-object v9, v4, Lcom/youku/vo/FavouriteVideoResult;->data:Lcom/youku/vo/FavouriteVideoResult$FVMultiPageResult;

    iget-object v9, v9, Lcom/youku/vo/FavouriteVideoResult$FVMultiPageResult;->result:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/youku/vo/FavouriteVideo;

    iget-object v10, v4, Lcom/youku/vo/FavouriteVideoResult;->data:Lcom/youku/vo/FavouriteVideoResult$FVMultiPageResult;

    iget-object v10, v10, Lcom/youku/vo/FavouriteVideoResult$FVMultiPageResult;->result:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/youku/vo/FavouriteVideo;

    iget-object v10, v10, Lcom/youku/vo/FavouriteVideo;->title:Ljava/lang/String;

    iput-object v10, v9, Lcom/youku/vo/FavouriteVideo;->title_new:Ljava/lang/String;

    .line 291
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 294
    .end local v8    # "i":I
    :cond_3
    const/4 v9, 0x1

    invoke-virtual {p3, v4, v9}, Lcom/tudou/service/favourite/IFavouriteVedio$GetListCallBack;->onSucess(Lcom/youku/vo/FavouriteVideoResult;I)V

    goto :goto_1
.end method

.method public isFavrite(Ljava/lang/String;Lcom/tudou/service/favourite/IFavouriteVedio$CallBack;)V
    .locals 6
    .param p1, "itemCode"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/tudou/service/favourite/IFavouriteVedio$CallBack;

    .prologue
    const/4 v5, 0x1

    .line 300
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/youku/vo/UserBean;->isLogin()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 301
    const-string v4, "che"

    invoke-static {p1, v4}, Lcom/youku/http/TudouURLContainer;->getUpdateMyFavouriteUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 303
    .local v3, "url":Ljava/lang/String;
    const-class v4, Lcom/youku/network/IHttpRequest;

    invoke-static {v4, v5}, Lcom/youku/service/YoukuService;->getService(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/network/IHttpRequest;

    .line 305
    .local v1, "httpRequest":Lcom/youku/network/IHttpRequest;
    new-instance v0, Lcom/youku/network/HttpIntent;

    const-string v4, "POST"

    invoke-direct {v0, v3, v4, v5}, Lcom/youku/network/HttpIntent;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 307
    .local v0, "httpIntent":Lcom/youku/network/HttpIntent;
    new-instance v4, Lcom/tudou/service/favourite/FavouriteVedioManagerImpl$8;

    invoke-direct {v4, p0, p1, p2}, Lcom/tudou/service/favourite/FavouriteVedioManagerImpl$8;-><init>(Lcom/tudou/service/favourite/FavouriteVedioManagerImpl;Ljava/lang/String;Lcom/tudou/service/favourite/IFavouriteVedio$CallBack;)V

    invoke-interface {v1, v0, v4}, Lcom/youku/network/IHttpRequest;->request(Lcom/youku/network/HttpIntent;Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;)V

    .line 342
    .end local v0    # "httpIntent":Lcom/youku/network/HttpIntent;
    .end local v1    # "httpRequest":Lcom/youku/network/IHttpRequest;
    .end local v3    # "url":Ljava/lang/String;
    :goto_0
    return-void

    .line 335
    :cond_0
    invoke-static {p1}, Lcom/youku/data/SQLiteManagerTudou;->isFavoriteVedio(Ljava/lang/String;)Z

    move-result v2

    .line 336
    .local v2, "isfav":Z
    if-eqz v2, :cond_1

    .line 337
    invoke-virtual {p2, p1}, Lcom/tudou/service/favourite/IFavouriteVedio$CallBack;->onSucess(Ljava/lang/String;)V

    goto :goto_0

    .line 339
    :cond_1
    invoke-virtual {p2, p1}, Lcom/tudou/service/favourite/IFavouriteVedio$CallBack;->onFail(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onUserLoginCallBack()V
    .locals 3

    .prologue
    .line 167
    const-string v0, "\u6536\u85cf\u9875\u4e91\u540c\u6b65\u5f00\u59cb"

    const-class v1, Lcom/tudou/ui/activity/LoginActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u4e91\u540c\u6b65"

    invoke-static {v0, v1, v2}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    invoke-virtual {p0}, Lcom/tudou/service/favourite/FavouriteVedioManagerImpl;->uploadLocalFavrite()V

    .line 173
    const/4 v0, 0x1

    sput-boolean v0, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->mRefreshKey:Z

    .line 174
    return-void
.end method

.method public onUserQuitCallBack()V
    .locals 0

    .prologue
    .line 179
    return-void
.end method

.method public uploadLocalFavrite()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 183
    invoke-static {}, Lcom/youku/data/SQLiteManagerTudou;->getFavouriteVedioInfo()Ljava/util/ArrayList;

    move-result-object v3

    .line 185
    .local v3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/vo/FavouriteVideo;>;"
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_1

    .line 227
    :cond_0
    :goto_0
    return-void

    .line 188
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 189
    .local v4, "videolist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    .local v2, "i":I
    :goto_1
    if-ltz v2, :cond_2

    .line 190
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/youku/vo/FavouriteVideo;

    iget-object v5, v5, Lcom/youku/vo/FavouriteVideo;->itemCode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 192
    :cond_2
    new-instance v0, Lcom/youku/network/HttpIntent;

    const-string v5, "add"

    invoke-static {v4, v5}, Lcom/youku/http/TudouURLContainer;->getUpdateMyFavouriteUrl(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "POST"

    invoke-direct {v0, v5, v6, v7}, Lcom/youku/network/HttpIntent;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 196
    .local v0, "httpIntent":Lcom/youku/network/HttpIntent;
    const-class v5, Lcom/youku/network/IHttpRequest;

    invoke-static {v5, v7}, Lcom/youku/service/YoukuService;->getService(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/network/IHttpRequest;

    .line 198
    .local v1, "httpRequest":Lcom/youku/network/IHttpRequest;
    new-instance v5, Lcom/tudou/service/favourite/FavouriteVedioManagerImpl$5;

    invoke-direct {v5, p0}, Lcom/tudou/service/favourite/FavouriteVedioManagerImpl$5;-><init>(Lcom/tudou/service/favourite/FavouriteVedioManagerImpl;)V

    invoke-interface {v1, v0, v5}, Lcom/youku/network/IHttpRequest;->request(Lcom/youku/network/HttpIntent;Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;)V

    goto :goto_0
.end method
