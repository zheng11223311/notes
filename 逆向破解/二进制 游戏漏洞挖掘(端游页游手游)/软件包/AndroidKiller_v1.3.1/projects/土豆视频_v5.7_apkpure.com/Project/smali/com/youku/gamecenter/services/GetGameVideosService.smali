.class public Lcom/youku/gamecenter/services/GetGameVideosService;
.super Lcom/youku/gamecenter/services/GetResponseService;
.source "GetGameVideosService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/gamecenter/services/GetGameVideosService$OnGameVideosServiceListener;
    }
.end annotation


# instance fields
.field private mIsTudouVideo:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/youku/gamecenter/services/GetResponseService;-><init>(Landroid/content/Context;)V

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youku/gamecenter/services/GetGameVideosService;->mIsTudouVideo:Z

    .line 21
    return-void
.end method

.method private getJsonObjectFromString(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 3
    .param p1, "jsonStr"    # Ljava/lang/String;

    .prologue
    .line 46
    const/4 v1, 0x0

    .line 48
    .local v1, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    .local v2, "jsonObject":Lorg/json/JSONObject;
    move-object v1, v2

    .line 52
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .restart local v1    # "jsonObject":Lorg/json/JSONObject;
    :goto_0
    return-object v1

    .line 49
    :catch_0
    move-exception v0

    .line 50
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private parseGameVideoInfo(Lorg/json/JSONObject;)Lcom/youku/gamecenter/data/IResponseable;
    .locals 8
    .param p1, "arrayObject"    # Lorg/json/JSONObject;

    .prologue
    .line 89
    new-instance v2, Lcom/youku/gamecenter/data/GameVideosInfo;

    invoke-direct {v2}, Lcom/youku/gamecenter/data/GameVideosInfo;-><init>()V

    .line 91
    .local v2, "gameVideos":Lcom/youku/gamecenter/data/GameVideosInfo;
    const-string/jumbo v5, "results"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 93
    .local v0, "array":Lorg/json/JSONArray;
    if-nez v0, :cond_1

    .line 94
    const-string v5, "PlayFlow"

    const-string v6, "parseGameVideoInfo : dataArray == null"

    invoke-static {v5, v6}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    :cond_0
    return-object v2

    .line 98
    :cond_1
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v3, v5, :cond_0

    .line 99
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 100
    .local v4, "object":Lorg/json/JSONObject;
    if-nez v4, :cond_2

    .line 98
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 104
    :cond_2
    new-instance v1, Lcom/youku/gamecenter/data/GameVideoInfo;

    invoke-direct {v1}, Lcom/youku/gamecenter/data/GameVideoInfo;-><init>()V

    .line 106
    .local v1, "gameVideoInfo":Lcom/youku/gamecenter/data/GameVideoInfo;
    const-string v5, "id"

    invoke-static {v4, v5}, Lcom/youku/gamecenter/services/GetGameVideosService;->parseValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/youku/gamecenter/data/GameVideoInfo;->videoid:Ljava/lang/String;

    .line 107
    const-string v5, "duration"

    invoke-static {v4, v5}, Lcom/youku/gamecenter/services/GetGameVideosService;->parseIntValue(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v5

    int-to-double v6, v5

    invoke-static {v6, v7}, Lcom/youku/gamecenter/util/CommonUtils;->formatTimeForHistory(D)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/youku/gamecenter/data/GameVideoInfo;->duration:Ljava/lang/String;

    .line 109
    const-string v5, "pubdate"

    invoke-static {v4, v5}, Lcom/youku/gamecenter/services/GetGameVideosService;->parseValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/youku/gamecenter/data/GameVideoInfo;->pubdate:Ljava/lang/String;

    .line 110
    const-string v5, "img_hd"

    invoke-static {v4, v5}, Lcom/youku/gamecenter/services/GetGameVideosService;->parseValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/youku/gamecenter/data/GameVideoInfo;->img_hd:Ljava/lang/String;

    .line 111
    const-string/jumbo v5, "title"

    invoke-static {v4, v5}, Lcom/youku/gamecenter/services/GetGameVideosService;->parseValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/youku/gamecenter/data/GameVideoInfo;->title:Ljava/lang/String;

    .line 113
    iget-object v5, v2, Lcom/youku/gamecenter/data/GameVideosInfo;->list:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private parseTudouGameVideoInfo(Lorg/json/JSONObject;)Lcom/youku/gamecenter/data/IResponseable;
    .locals 12
    .param p1, "arrayObject"    # Lorg/json/JSONObject;

    .prologue
    .line 57
    new-instance v2, Lcom/youku/gamecenter/data/GameVideosInfo;

    invoke-direct {v2}, Lcom/youku/gamecenter/data/GameVideosInfo;-><init>()V

    .line 59
    .local v2, "gameVideos":Lcom/youku/gamecenter/data/GameVideosInfo;
    const-string v5, "data"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 61
    .local v0, "array":Lorg/json/JSONArray;
    if-nez v0, :cond_1

    .line 62
    const-string v5, "PlayFlow"

    const-string v8, "parseTudouGameVideoInfo : dataArray == null"

    invoke-static {v5, v8}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    :cond_0
    return-object v2

    .line 66
    :cond_1
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v3, v5, :cond_0

    .line 67
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 68
    .local v4, "object":Lorg/json/JSONObject;
    if-nez v4, :cond_2

    .line 66
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 72
    :cond_2
    new-instance v1, Lcom/youku/gamecenter/data/GameVideoInfo;

    invoke-direct {v1}, Lcom/youku/gamecenter/data/GameVideoInfo;-><init>()V

    .line 74
    .local v1, "gameVideoInfo":Lcom/youku/gamecenter/data/GameVideoInfo;
    const-string v5, "itemCode"

    invoke-static {v4, v5}, Lcom/youku/gamecenter/services/GetGameVideosService;->parseValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/youku/gamecenter/data/GameVideoInfo;->videoid:Ljava/lang/String;

    .line 75
    const-string/jumbo v5, "times"

    invoke-static {v4, v5}, Lcom/youku/gamecenter/services/GetGameVideosService;->parseIntValue(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v5

    int-to-double v8, v5

    const-wide v10, 0x408f400000000000L    # 1000.0

    div-double v6, v8, v10

    .line 76
    .local v6, "time":D
    invoke-static {v6, v7}, Lcom/youku/gamecenter/util/CommonUtils;->formatTimeForHistory(D)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/youku/gamecenter/data/GameVideoInfo;->duration:Ljava/lang/String;

    .line 77
    const-string v5, "createTime"

    invoke-static {v4, v5}, Lcom/youku/gamecenter/services/GetGameVideosService;->parseValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/youku/gamecenter/data/GameVideoInfo;->pubdate:Ljava/lang/String;

    .line 78
    const-string v5, "bigPicUrl"

    invoke-static {v4, v5}, Lcom/youku/gamecenter/services/GetGameVideosService;->parseValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/youku/gamecenter/data/GameVideoInfo;->img_hd:Ljava/lang/String;

    .line 79
    const-string/jumbo v5, "title"

    invoke-static {v4, v5}, Lcom/youku/gamecenter/services/GetGameVideosService;->parseValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/youku/gamecenter/data/GameVideoInfo;->title:Ljava/lang/String;

    .line 81
    iget-object v5, v2, Lcom/youku/gamecenter/data/GameVideosInfo;->list:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method


# virtual methods
.method public fetchResponse(Ljava/lang/String;Lcom/youku/gamecenter/services/GetResponseService$IResponseServiceListener;Z)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/youku/gamecenter/services/GetResponseService$IResponseServiceListener;
    .param p3, "isTudouVideo"    # Z

    .prologue
    .line 24
    invoke-super {p0, p1, p2}, Lcom/youku/gamecenter/services/GetResponseService;->fetchResponse(Ljava/lang/String;Lcom/youku/gamecenter/services/GetResponseService$IResponseServiceListener;)V

    .line 25
    iput-boolean p3, p0, Lcom/youku/gamecenter/services/GetGameVideosService;->mIsTudouVideo:Z

    .line 26
    return-void
.end method

.method public onSuccess()V
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/youku/gamecenter/services/GetGameVideosService;->mListener:Lcom/youku/gamecenter/services/GetResponseService$IResponseServiceListener;

    check-cast v0, Lcom/youku/gamecenter/services/GetGameVideosService$OnGameVideosServiceListener;

    iget-object v1, p0, Lcom/youku/gamecenter/services/GetGameVideosService;->mResponse:Lcom/youku/gamecenter/data/IResponseable;

    check-cast v1, Lcom/youku/gamecenter/data/GameVideosInfo;

    invoke-interface {v0, v1}, Lcom/youku/gamecenter/services/GetGameVideosService$OnGameVideosServiceListener;->onSuccess(Lcom/youku/gamecenter/data/GameVideosInfo;)V

    .line 123
    return-void
.end method

.method public parseResponse(Ljava/lang/String;)V
    .locals 4
    .param p1, "jsonString"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/youku/gamecenter/services/GetGameVideosService;->getJsonObjectFromString(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 33
    .local v0, "jsonObject":Lorg/json/JSONObject;
    if-nez v0, :cond_0

    .line 34
    const-string v1, "PlayFlow"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": jsonObject is null! json name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    :goto_0
    return-void

    .line 38
    :cond_0
    iget-boolean v1, p0, Lcom/youku/gamecenter/services/GetGameVideosService;->mIsTudouVideo:Z

    if-eqz v1, :cond_1

    .line 39
    invoke-direct {p0, v0}, Lcom/youku/gamecenter/services/GetGameVideosService;->parseTudouGameVideoInfo(Lorg/json/JSONObject;)Lcom/youku/gamecenter/data/IResponseable;

    move-result-object v1

    iput-object v1, p0, Lcom/youku/gamecenter/services/GetGameVideosService;->mResponse:Lcom/youku/gamecenter/data/IResponseable;

    goto :goto_0

    .line 42
    :cond_1
    invoke-direct {p0, v0}, Lcom/youku/gamecenter/services/GetGameVideosService;->parseGameVideoInfo(Lorg/json/JSONObject;)Lcom/youku/gamecenter/data/IResponseable;

    move-result-object v1

    iput-object v1, p0, Lcom/youku/gamecenter/services/GetGameVideosService;->mResponse:Lcom/youku/gamecenter/data/IResponseable;

    goto :goto_0
.end method
