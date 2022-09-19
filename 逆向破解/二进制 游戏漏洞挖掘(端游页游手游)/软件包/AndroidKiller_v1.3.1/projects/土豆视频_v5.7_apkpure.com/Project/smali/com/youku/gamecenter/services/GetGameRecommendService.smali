.class public Lcom/youku/gamecenter/services/GetGameRecommendService;
.super Lcom/youku/gamecenter/services/GetResponseService;
.source "GetGameRecommendService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/gamecenter/services/GetGameRecommendService$OnGameRecommendServiceListener;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/youku/gamecenter/services/GetResponseService;-><init>(Landroid/content/Context;)V

    .line 14
    return-void
.end method


# virtual methods
.method public onSuccess()V
    .locals 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/youku/gamecenter/services/GetGameRecommendService;->mListener:Lcom/youku/gamecenter/services/GetResponseService$IResponseServiceListener;

    check-cast v0, Lcom/youku/gamecenter/services/GetGameRecommendService$OnGameRecommendServiceListener;

    iget-object v1, p0, Lcom/youku/gamecenter/services/GetGameRecommendService;->mResponse:Lcom/youku/gamecenter/data/IResponseable;

    check-cast v1, Lcom/youku/gamecenter/data/GameRecommendInfo;

    invoke-interface {v0, v1}, Lcom/youku/gamecenter/services/GetGameRecommendService$OnGameRecommendServiceListener;->onSuccess(Lcom/youku/gamecenter/data/GameRecommendInfo;)V

    .line 47
    return-void
.end method

.method public parseResponse(Ljava/lang/String;)V
    .locals 6
    .param p1, "jsonString"    # Ljava/lang/String;

    .prologue
    .line 19
    new-instance v3, Lcom/youku/gamecenter/data/GameRecommendInfo;

    invoke-direct {v3}, Lcom/youku/gamecenter/data/GameRecommendInfo;-><init>()V

    .line 20
    .local v3, "recommendInfo":Lcom/youku/gamecenter/data/GameRecommendInfo;
    const/4 v1, 0x0

    .line 22
    .local v1, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    .local v2, "jsonObject":Lorg/json/JSONObject;
    move-object v1, v2

    .line 27
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .restart local v1    # "jsonObject":Lorg/json/JSONObject;
    :goto_0
    if-nez v1, :cond_1

    .line 41
    :cond_0
    :goto_1
    return-void

    .line 23
    :catch_0
    move-exception v0

    .line 24
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 31
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_1
    const-string v4, "games_count"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 32
    const-string v4, "page_count"

    invoke-static {v1, v4}, Lcom/youku/gamecenter/services/GetGameRecommendService;->parseIntValue(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lcom/youku/gamecenter/data/GameRecommendInfo;->gameCount:I

    .line 35
    :cond_2
    const-string v4, "games"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 39
    const-string v4, "games"

    const/4 v5, 0x0

    invoke-virtual {p0, v1, v4, v5}, Lcom/youku/gamecenter/services/GetGameRecommendService;->parseGamesList(Lorg/json/JSONObject;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v4

    iput-object v4, v3, Lcom/youku/gamecenter/data/GameRecommendInfo;->games:Ljava/util/List;

    .line 40
    iput-object v3, p0, Lcom/youku/gamecenter/services/GetGameRecommendService;->mResponse:Lcom/youku/gamecenter/data/IResponseable;

    goto :goto_1
.end method
