.class public Lcom/youku/gamecenter/services/GetGamesUpgradationService;
.super Lcom/youku/gamecenter/services/GetResponseService;
.source "GetGamesUpgradationService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/gamecenter/services/GetGamesUpgradationService$OnGameUpgradationServiceListener;
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
.method protected getTaskGetResponseUrl(Ljava/lang/String;)Lcom/youku/gamecenter/services/TaskGetResponseUrl;
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 18
    new-instance v0, Lcom/youku/gamecenter/services/TaskGetResponseUrl;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/youku/gamecenter/services/TaskGetResponseUrl;-><init>(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public onSuccess()V
    .locals 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/youku/gamecenter/services/GetGamesUpgradationService;->mListener:Lcom/youku/gamecenter/services/GetResponseService$IResponseServiceListener;

    check-cast v0, Lcom/youku/gamecenter/services/GetGamesUpgradationService$OnGameUpgradationServiceListener;

    iget-object v1, p0, Lcom/youku/gamecenter/services/GetGamesUpgradationService;->mResponse:Lcom/youku/gamecenter/data/IResponseable;

    check-cast v1, Lcom/youku/gamecenter/data/GameUpgradationInfo;

    invoke-interface {v0, v1}, Lcom/youku/gamecenter/services/GetGamesUpgradationService$OnGameUpgradationServiceListener;->onSuccess(Lcom/youku/gamecenter/data/GameUpgradationInfo;)V

    .line 49
    return-void
.end method

.method public parseResponse(Ljava/lang/String;)V
    .locals 6
    .param p1, "jsonString"    # Ljava/lang/String;

    .prologue
    .line 23
    new-instance v3, Lcom/youku/gamecenter/data/GameUpgradationInfo;

    invoke-direct {v3}, Lcom/youku/gamecenter/data/GameUpgradationInfo;-><init>()V

    .line 24
    .local v3, "mGames":Lcom/youku/gamecenter/data/GameUpgradationInfo;
    const/4 v1, 0x0

    .line 26
    .local v1, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    .local v2, "jsonObject":Lorg/json/JSONObject;
    move-object v1, v2

    .line 31
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .restart local v1    # "jsonObject":Lorg/json/JSONObject;
    :goto_0
    if-nez v1, :cond_0

    .line 32
    iput-object v3, p0, Lcom/youku/gamecenter/services/GetGamesUpgradationService;->mResponse:Lcom/youku/gamecenter/data/IResponseable;

    .line 43
    :goto_1
    return-void

    .line 27
    :catch_0
    move-exception v0

    .line 28
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 36
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_0
    const-string/jumbo v4, "results"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 37
    iput-object v3, p0, Lcom/youku/gamecenter/services/GetGamesUpgradationService;->mResponse:Lcom/youku/gamecenter/data/IResponseable;

    goto :goto_1

    .line 41
    :cond_1
    const-string/jumbo v4, "results"

    const/4 v5, 0x0

    invoke-virtual {p0, v1, v4, v5}, Lcom/youku/gamecenter/services/GetGamesUpgradationService;->parseGamesList(Lorg/json/JSONObject;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v4

    iput-object v4, v3, Lcom/youku/gamecenter/data/GameUpgradationInfo;->games:Ljava/util/List;

    .line 42
    iput-object v3, p0, Lcom/youku/gamecenter/services/GetGamesUpgradationService;->mResponse:Lcom/youku/gamecenter/data/IResponseable;

    goto :goto_1
.end method
