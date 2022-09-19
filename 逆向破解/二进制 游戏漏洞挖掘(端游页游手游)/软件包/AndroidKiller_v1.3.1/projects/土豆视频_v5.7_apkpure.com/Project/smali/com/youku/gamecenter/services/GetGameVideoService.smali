.class public Lcom/youku/gamecenter/services/GetGameVideoService;
.super Lcom/youku/gamecenter/services/GetResponseService;
.source "GetGameVideoService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/gamecenter/services/GetGameVideoService$OnGameVideoServiceListener;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/youku/gamecenter/services/GetResponseService;-><init>(Landroid/content/Context;)V

    .line 16
    return-void
.end method

.method private getJsonObjectFromString(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 3
    .param p1, "jsonStr"    # Ljava/lang/String;

    .prologue
    .line 48
    const/4 v1, 0x0

    .line 50
    .local v1, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    .local v2, "jsonObject":Lorg/json/JSONObject;
    move-object v1, v2

    .line 54
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .restart local v1    # "jsonObject":Lorg/json/JSONObject;
    :goto_0
    return-object v1

    .line 51
    :catch_0
    move-exception v0

    .line 52
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private getResultsJsonObject(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 3
    .param p1, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    .line 38
    const/4 v1, 0x0

    .line 40
    .local v1, "object":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v2, "results"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 44
    :goto_0
    return-object v1

    .line 41
    :catch_0
    move-exception v0

    .line 42
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private parseGameVideoInfo(Lorg/json/JSONObject;)Lcom/youku/gamecenter/data/IResponseable;
    .locals 4
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 59
    new-instance v0, Lcom/youku/gamecenter/data/GameVideoInfo;

    invoke-direct {v0}, Lcom/youku/gamecenter/data/GameVideoInfo;-><init>()V

    .line 61
    .local v0, "gameVideoInfo":Lcom/youku/gamecenter/data/GameVideoInfo;
    const-string/jumbo v1, "videoid"

    invoke-static {p1, v1}, Lcom/youku/gamecenter/services/GetGameVideoService;->parseValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/youku/gamecenter/data/GameVideoInfo;->videoid:Ljava/lang/String;

    .line 62
    const-string v1, "duration"

    invoke-static {p1, v1}, Lcom/youku/gamecenter/services/GetGameVideoService;->parseIntValue(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v1

    int-to-double v2, v1

    invoke-static {v2, v3}, Lcom/youku/gamecenter/util/CommonUtils;->formatTimeForHistory(D)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/youku/gamecenter/data/GameVideoInfo;->duration:Ljava/lang/String;

    .line 64
    const-string v1, "pubdate"

    invoke-static {p1, v1}, Lcom/youku/gamecenter/services/GetGameVideoService;->parseValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/youku/gamecenter/data/GameVideoInfo;->pubdate:Ljava/lang/String;

    .line 65
    const-string v1, "img_hd"

    invoke-static {p1, v1}, Lcom/youku/gamecenter/services/GetGameVideoService;->parseValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/youku/gamecenter/data/GameVideoInfo;->img_hd:Ljava/lang/String;

    .line 66
    const-string/jumbo v1, "title"

    invoke-static {p1, v1}, Lcom/youku/gamecenter/services/GetGameVideoService;->parseValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/youku/gamecenter/data/GameVideoInfo;->title:Ljava/lang/String;

    .line 68
    return-object v0
.end method


# virtual methods
.method public onSuccess()V
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/youku/gamecenter/services/GetGameVideoService;->mListener:Lcom/youku/gamecenter/services/GetResponseService$IResponseServiceListener;

    check-cast v0, Lcom/youku/gamecenter/services/GetGameVideoService$OnGameVideoServiceListener;

    iget-object v1, p0, Lcom/youku/gamecenter/services/GetGameVideoService;->mResponse:Lcom/youku/gamecenter/data/IResponseable;

    check-cast v1, Lcom/youku/gamecenter/data/GameVideoInfo;

    invoke-interface {v0, v1}, Lcom/youku/gamecenter/services/GetGameVideoService$OnGameVideoServiceListener;->onSuccess(Lcom/youku/gamecenter/data/GameVideoInfo;)V

    .line 75
    return-void
.end method

.method public parseResponse(Ljava/lang/String;)V
    .locals 3
    .param p1, "jsonString"    # Ljava/lang/String;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/youku/gamecenter/services/GetGameVideoService;->getJsonObjectFromString(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 23
    .local v0, "jsonObject":Lorg/json/JSONObject;
    if-nez v0, :cond_1

    .line 35
    :cond_0
    :goto_0
    return-void

    .line 28
    :cond_1
    invoke-direct {p0, v0}, Lcom/youku/gamecenter/services/GetGameVideoService;->getResultsJsonObject(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    .line 29
    .local v1, "object":Lorg/json/JSONObject;
    if-eqz v1, :cond_0

    .line 34
    invoke-direct {p0, v1}, Lcom/youku/gamecenter/services/GetGameVideoService;->parseGameVideoInfo(Lorg/json/JSONObject;)Lcom/youku/gamecenter/data/IResponseable;

    move-result-object v2

    iput-object v2, p0, Lcom/youku/gamecenter/services/GetGameVideoService;->mResponse:Lcom/youku/gamecenter/data/IResponseable;

    goto :goto_0
.end method
