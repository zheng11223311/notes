.class public Lcom/youku/gamecenter/services/GetGameCenterVideoListService;
.super Lcom/youku/gamecenter/services/GetResponseService;
.source "GetGameCenterVideoListService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/gamecenter/services/GetGameCenterVideoListService$OnGameCenterVideoListServiceListener;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/youku/gamecenter/services/GetResponseService;-><init>(Landroid/content/Context;)V

    .line 25
    return-void
.end method

.method private parseVideoInfo(Lorg/json/JSONObject;)Lcom/youku/gamecenter/data/GameCenterVideoInfo;
    .locals 7
    .param p1, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    .line 87
    new-instance v2, Lcom/youku/gamecenter/data/GameCenterVideoInfo;

    invoke-direct {v2}, Lcom/youku/gamecenter/data/GameCenterVideoInfo;-><init>()V

    .line 89
    .local v2, "info":Lcom/youku/gamecenter/data/GameCenterVideoInfo;
    invoke-virtual {p0, p1}, Lcom/youku/gamecenter/services/GetGameCenterVideoListService;->parseGameInfo(Lorg/json/JSONObject;)Lcom/youku/gamecenter/data/GameInfo;

    move-result-object v0

    .line 90
    .local v0, "gameInfo":Lcom/youku/gamecenter/data/GameInfo;
    const-string/jumbo v6, "vid"

    invoke-static {p1, v6}, Lcom/youku/gamecenter/services/GetGameCenterVideoListService;->parseValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 91
    .local v5, "vid":Ljava/lang/String;
    const-string/jumbo v6, "title"

    invoke-static {p1, v6}, Lcom/youku/gamecenter/services/GetGameCenterVideoListService;->parseValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 92
    .local v3, "title":Ljava/lang/String;
    const-string v6, "image"

    invoke-static {p1, v6}, Lcom/youku/gamecenter/services/GetGameCenterVideoListService;->parseValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 93
    .local v1, "img":Ljava/lang/String;
    const-string/jumbo v6, "style_id"

    invoke-static {p1, v6}, Lcom/youku/gamecenter/services/GetGameCenterVideoListService;->parseIntValue(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v4

    .line 94
    .local v4, "type":I
    iput-object v0, v2, Lcom/youku/gamecenter/data/GameCenterVideoInfo;->gameInfo:Lcom/youku/gamecenter/data/GameInfo;

    .line 95
    iput-object v5, v2, Lcom/youku/gamecenter/data/GameCenterVideoInfo;->vid:Ljava/lang/String;

    .line 96
    iput-object v3, v2, Lcom/youku/gamecenter/data/GameCenterVideoInfo;->title:Ljava/lang/String;

    .line 97
    iput-object v1, v2, Lcom/youku/gamecenter/data/GameCenterVideoInfo;->image:Ljava/lang/String;

    .line 98
    iput v4, v2, Lcom/youku/gamecenter/data/GameCenterVideoInfo;->type:I

    .line 100
    return-object v2
.end method

.method private parseVideosInfo(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .param p1, "jsonObject"    # Lorg/json/JSONObject;
    .param p2, "arrayName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/youku/gamecenter/data/GameCenterVideoInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 56
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 57
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 83
    :cond_0
    :goto_0
    return-object v1

    .line 60
    :cond_1
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 61
    .local v4, "videosArray":Lorg/json/JSONArray;
    if-nez v4, :cond_2

    .line 62
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v6}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_0

    .line 65
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 67
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/youku/gamecenter/data/GameCenterVideoInfo;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v0, v5, :cond_0

    .line 68
    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 69
    .local v2, "object":Lorg/json/JSONObject;
    invoke-direct {p0, v2}, Lcom/youku/gamecenter/services/GetGameCenterVideoListService;->parseVideoInfo(Lorg/json/JSONObject;)Lcom/youku/gamecenter/data/GameCenterVideoInfo;

    move-result-object v3

    .line 70
    .local v3, "videoInfo":Lcom/youku/gamecenter/data/GameCenterVideoInfo;
    if-nez v3, :cond_4

    .line 67
    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 73
    :cond_4
    iget-object v5, v3, Lcom/youku/gamecenter/data/GameCenterVideoInfo;->vid:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, v3, Lcom/youku/gamecenter/data/GameCenterVideoInfo;->image:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 76
    iget-object v5, v3, Lcom/youku/gamecenter/data/GameCenterVideoInfo;->gameInfo:Lcom/youku/gamecenter/data/GameInfo;

    if-eqz v5, :cond_3

    .line 79
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method


# virtual methods
.method public onSuccess()V
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/youku/gamecenter/services/GetGameCenterVideoListService;->mListener:Lcom/youku/gamecenter/services/GetResponseService$IResponseServiceListener;

    check-cast v0, Lcom/youku/gamecenter/services/GetGameCenterVideoListService$OnGameCenterVideoListServiceListener;

    iget-object v1, p0, Lcom/youku/gamecenter/services/GetGameCenterVideoListService;->mResponse:Lcom/youku/gamecenter/data/IResponseable;

    check-cast v1, Lcom/youku/gamecenter/data/GameCenterVideoListInfo;

    invoke-interface {v0, v1}, Lcom/youku/gamecenter/services/GetGameCenterVideoListService$OnGameCenterVideoListServiceListener;->onSuccess(Lcom/youku/gamecenter/data/GameCenterVideoListInfo;)V

    .line 107
    return-void
.end method

.method public parseResponse(Ljava/lang/String;)V
    .locals 5
    .param p1, "jsonString"    # Ljava/lang/String;

    .prologue
    .line 29
    new-instance v3, Lcom/youku/gamecenter/data/GameCenterVideoListInfo;

    invoke-direct {v3}, Lcom/youku/gamecenter/data/GameCenterVideoListInfo;-><init>()V

    .line 30
    .local v3, "videoListInfo":Lcom/youku/gamecenter/data/GameCenterVideoListInfo;
    const/4 v1, 0x0

    .line 32
    .local v1, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    .local v2, "jsonObject":Lorg/json/JSONObject;
    move-object v1, v2

    .line 37
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .restart local v1    # "jsonObject":Lorg/json/JSONObject;
    :goto_0
    if-nez v1, :cond_1

    .line 53
    :cond_0
    :goto_1
    return-void

    .line 33
    :catch_0
    move-exception v0

    .line 34
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 41
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_1
    const-string v4, "page_count"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 42
    const-string v4, "page_count"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/youku/gamecenter/data/GameCenterVideoListInfo;->setPageCount(I)V

    .line 45
    :cond_2
    const-string/jumbo v4, "videos"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 49
    const-string/jumbo v4, "videos"

    invoke-direct {p0, v1, v4}, Lcom/youku/gamecenter/services/GetGameCenterVideoListService;->parseVideosInfo(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/youku/gamecenter/data/GameCenterVideoListInfo;->addToVideoInfos(Ljava/util/List;)V

    .line 51
    iput-object v3, p0, Lcom/youku/gamecenter/services/GetGameCenterVideoListService;->mResponse:Lcom/youku/gamecenter/data/IResponseable;

    goto :goto_1
.end method
