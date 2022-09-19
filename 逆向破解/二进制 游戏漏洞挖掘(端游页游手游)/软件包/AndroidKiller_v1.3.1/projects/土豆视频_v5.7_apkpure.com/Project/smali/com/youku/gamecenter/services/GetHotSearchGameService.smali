.class public Lcom/youku/gamecenter/services/GetHotSearchGameService;
.super Lcom/youku/gamecenter/services/GetResponseService;
.source "GetHotSearchGameService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/gamecenter/services/GetHotSearchGameService$OnHotSearchGameServiceListener;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/youku/gamecenter/services/GetResponseService;-><init>(Landroid/content/Context;)V

    .line 21
    return-void
.end method

.method private getJsonObjectFromString(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 3
    .param p1, "jsonStr"    # Ljava/lang/String;

    .prologue
    .line 40
    const/4 v1, 0x0

    .line 42
    .local v1, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    .local v2, "jsonObject":Lorg/json/JSONObject;
    move-object v1, v2

    .line 46
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .restart local v1    # "jsonObject":Lorg/json/JSONObject;
    :goto_0
    return-object v1

    .line 43
    :catch_0
    move-exception v0

    .line 44
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private parseKeyWordsInfo(Lcom/youku/gamecenter/data/HotSearchGameInfo;Lorg/json/JSONObject;)V
    .locals 5
    .param p1, "hotSearchGameInfo"    # Lcom/youku/gamecenter/data/HotSearchGameInfo;
    .param p2, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    .line 50
    const-string v4, "data"

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 72
    :cond_0
    return-void

    .line 54
    :cond_1
    const-string v4, "data"

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 56
    .local v0, "array":Lorg/json/JSONArray;
    if-eqz v0, :cond_0

    .line 60
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 61
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 62
    .local v2, "object":Lorg/json/JSONObject;
    if-nez v2, :cond_2

    .line 60
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 65
    :cond_2
    new-instance v3, Lcom/youku/gamecenter/data/SearchKeywordsInfo;

    invoke-direct {v3}, Lcom/youku/gamecenter/data/SearchKeywordsInfo;-><init>()V

    .line 66
    .local v3, "search_words_info":Lcom/youku/gamecenter/data/SearchKeywordsInfo;
    const-string v4, "count"

    invoke-static {v2, v4}, Lcom/youku/gamecenter/services/GetHotSearchGameService;->parseIntValue(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lcom/youku/gamecenter/data/SearchKeywordsInfo;->count:I

    .line 67
    const-string/jumbo v4, "word"

    invoke-static {v2, v4}, Lcom/youku/gamecenter/services/GetHotSearchGameService;->parseValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/youku/gamecenter/data/SearchKeywordsInfo;->word:Ljava/lang/String;

    .line 68
    const-string v4, "id"

    invoke-static {v2, v4}, Lcom/youku/gamecenter/services/GetHotSearchGameService;->parseIntValue(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lcom/youku/gamecenter/data/SearchKeywordsInfo;->id:I

    .line 70
    iget-object v4, p1, Lcom/youku/gamecenter/data/HotSearchGameInfo;->hot_words:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private parsehotGamesInfo(Lcom/youku/gamecenter/data/HotSearchGameInfo;Lorg/json/JSONObject;)V
    .locals 5
    .param p1, "hotSearchGameInfo"    # Lcom/youku/gamecenter/data/HotSearchGameInfo;
    .param p2, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    .line 75
    const-string v4, "games"

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 97
    :cond_0
    return-void

    .line 79
    :cond_1
    const-string v4, "games"

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 81
    .local v0, "array":Lorg/json/JSONArray;
    if-eqz v0, :cond_0

    .line 85
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 86
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 87
    .local v3, "object":Lorg/json/JSONObject;
    if-nez v3, :cond_2

    .line 85
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 90
    :cond_2
    new-instance v1, Lcom/youku/gamecenter/data/GameInfo;

    invoke-direct {v1}, Lcom/youku/gamecenter/data/GameInfo;-><init>()V

    .line 91
    .local v1, "hot_games_info":Lcom/youku/gamecenter/data/GameInfo;
    const-string v4, "logo"

    invoke-static {v3, v4}, Lcom/youku/gamecenter/services/GetHotSearchGameService;->parseValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/youku/gamecenter/data/GameInfo;->logo:Ljava/lang/String;

    .line 92
    const-string v4, "appname"

    invoke-static {v3, v4}, Lcom/youku/gamecenter/services/GetHotSearchGameService;->parseValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/youku/gamecenter/data/GameInfo;->appname:Ljava/lang/String;

    .line 93
    const-string v4, "id"

    invoke-static {v3, v4}, Lcom/youku/gamecenter/services/GetHotSearchGameService;->parseValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/youku/gamecenter/data/GameInfo;->id:Ljava/lang/String;

    .line 95
    iget-object v4, p1, Lcom/youku/gamecenter/data/HotSearchGameInfo;->hot_games:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method


# virtual methods
.method public onSuccess()V
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/youku/gamecenter/services/GetHotSearchGameService;->mListener:Lcom/youku/gamecenter/services/GetResponseService$IResponseServiceListener;

    check-cast v0, Lcom/youku/gamecenter/services/GetHotSearchGameService$OnHotSearchGameServiceListener;

    iget-object v1, p0, Lcom/youku/gamecenter/services/GetHotSearchGameService;->mResponse:Lcom/youku/gamecenter/data/IResponseable;

    check-cast v1, Lcom/youku/gamecenter/data/HotSearchGameInfo;

    invoke-interface {v0, v1}, Lcom/youku/gamecenter/services/GetHotSearchGameService$OnHotSearchGameServiceListener;->onSuccess(Lcom/youku/gamecenter/data/HotSearchGameInfo;)V

    .line 104
    return-void
.end method

.method public parseResponse(Ljava/lang/String;)V
    .locals 5
    .param p1, "jsonString"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/youku/gamecenter/services/GetHotSearchGameService;->getJsonObjectFromString(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 28
    .local v1, "jsonObject":Lorg/json/JSONObject;
    if-nez v1, :cond_0

    .line 29
    const-string v2, "PlayFlow"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": jsonObject is null! json name="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    :goto_0
    return-void

    .line 33
    :cond_0
    new-instance v0, Lcom/youku/gamecenter/data/HotSearchGameInfo;

    invoke-direct {v0}, Lcom/youku/gamecenter/data/HotSearchGameInfo;-><init>()V

    .line 34
    .local v0, "hotSearchGameInfo":Lcom/youku/gamecenter/data/HotSearchGameInfo;
    invoke-direct {p0, v0, v1}, Lcom/youku/gamecenter/services/GetHotSearchGameService;->parseKeyWordsInfo(Lcom/youku/gamecenter/data/HotSearchGameInfo;Lorg/json/JSONObject;)V

    .line 35
    invoke-direct {p0, v0, v1}, Lcom/youku/gamecenter/services/GetHotSearchGameService;->parsehotGamesInfo(Lcom/youku/gamecenter/data/HotSearchGameInfo;Lorg/json/JSONObject;)V

    .line 36
    iput-object v0, p0, Lcom/youku/gamecenter/services/GetHotSearchGameService;->mResponse:Lcom/youku/gamecenter/data/IResponseable;

    goto :goto_0
.end method
