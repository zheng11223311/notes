.class public Lcom/youku/gamecenter/services/GetGameListService;
.super Lcom/youku/gamecenter/services/GetResponseService;
.source "GetGameListService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/gamecenter/services/GetGameListService$OnGameListServiceListener;
    }
.end annotation


# instance fields
.field private request_id:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/youku/gamecenter/services/GetResponseService;-><init>(Landroid/content/Context;)V

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/gamecenter/services/GetGameListService;->request_id:Ljava/lang/String;

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "request_id"    # Ljava/lang/String;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/youku/gamecenter/services/GetResponseService;-><init>(Landroid/content/Context;)V

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/gamecenter/services/GetGameListService;->request_id:Ljava/lang/String;

    .line 21
    iput-object p2, p0, Lcom/youku/gamecenter/services/GetGameListService;->request_id:Ljava/lang/String;

    .line 22
    return-void
.end method


# virtual methods
.method public onSuccess()V
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/youku/gamecenter/services/GetGameListService;->mListener:Lcom/youku/gamecenter/services/GetResponseService$IResponseServiceListener;

    check-cast v0, Lcom/youku/gamecenter/services/GetGameListService$OnGameListServiceListener;

    iget-object v1, p0, Lcom/youku/gamecenter/services/GetGameListService;->mResponse:Lcom/youku/gamecenter/data/IResponseable;

    check-cast v1, Lcom/youku/gamecenter/data/GameListInfo;

    invoke-interface {v0, v1}, Lcom/youku/gamecenter/services/GetGameListService$OnGameListServiceListener;->onSuccess(Lcom/youku/gamecenter/data/GameListInfo;)V

    .line 78
    return-void
.end method

.method public parseResponse(Ljava/lang/String;)V
    .locals 6
    .param p1, "jsonString"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 26
    new-instance v3, Lcom/youku/gamecenter/data/GameListInfo;

    invoke-direct {v3}, Lcom/youku/gamecenter/data/GameListInfo;-><init>()V

    .line 27
    .local v3, "mGameListInfo":Lcom/youku/gamecenter/data/GameListInfo;
    const/4 v1, 0x0

    .line 29
    .local v1, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    .local v2, "jsonObject":Lorg/json/JSONObject;
    move-object v1, v2

    .line 34
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .restart local v1    # "jsonObject":Lorg/json/JSONObject;
    :goto_0
    if-nez v1, :cond_1

    .line 72
    :cond_0
    :goto_1
    return-void

    .line 30
    :catch_0
    move-exception v0

    .line 31
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 38
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_1
    const-string v4, "page_count"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 39
    const-string v4, "page_count"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/youku/gamecenter/data/GameListInfo;->setPageCount(I)V

    .line 41
    :cond_2
    const-string v4, "pg"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 42
    const-string v4, "pg"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/youku/gamecenter/data/GameListInfo;->setPage(Ljava/lang/String;)V

    .line 44
    :cond_3
    const-string v4, "pz"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 45
    const-string v4, "pz"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/youku/gamecenter/data/GameListInfo;->setPageSize(I)V

    .line 47
    :cond_4
    const-string/jumbo v4, "sort_type"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 48
    const-string/jumbo v4, "sort_type"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/youku/gamecenter/data/GameListInfo;->sort_type:Ljava/lang/String;

    .line 50
    :cond_5
    const-string/jumbo v4, "tag_id"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 51
    const-string/jumbo v4, "tag_id"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/youku/gamecenter/data/GameListInfo;->tag_id:Ljava/lang/String;

    .line 53
    :cond_6
    const-string/jumbo v4, "tag_name"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 54
    const-string/jumbo v4, "tag_name"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/youku/gamecenter/data/GameListInfo;->tag_name:Ljava/lang/String;

    .line 56
    :cond_7
    const-string/jumbo v4, "tag_games"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 57
    const-string/jumbo v4, "tag_games"

    invoke-virtual {p0, v1, v4}, Lcom/youku/gamecenter/services/GetGameListService;->parseGamesList(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    iput-object v4, v3, Lcom/youku/gamecenter/data/GameListInfo;->tag_games:Ljava/util/List;

    .line 59
    :cond_8
    const-string v4, "games"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 63
    iget-object v4, p0, Lcom/youku/gamecenter/services/GetGameListService;->request_id:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 64
    iget-object v4, p0, Lcom/youku/gamecenter/services/GetGameListService;->request_id:Ljava/lang/String;

    iput-object v4, v3, Lcom/youku/gamecenter/data/GameListInfo;->request_id:Ljava/lang/String;

    .line 67
    :cond_9
    const-string v4, "games"

    invoke-virtual {p0, v1, v4, v5}, Lcom/youku/gamecenter/services/GetGameListService;->parseGamesList(Lorg/json/JSONObject;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/youku/gamecenter/data/GameListInfo;->addToGameRankInfos(Ljava/util/List;)V

    .line 69
    const-string v4, "promotion_apps"

    invoke-virtual {p0, v1, v4, v5}, Lcom/youku/gamecenter/services/GetGameListService;->parseGamesList(Lorg/json/JSONObject;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v4

    iput-object v4, v3, Lcom/youku/gamecenter/data/GameListInfo;->promotion_apps:Ljava/util/List;

    .line 71
    iput-object v3, p0, Lcom/youku/gamecenter/services/GetGameListService;->mResponse:Lcom/youku/gamecenter/data/IResponseable;

    goto/16 :goto_1
.end method
