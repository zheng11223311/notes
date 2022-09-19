.class public Lcom/youku/gamecenter/services/GetGameCenterInitialService;
.super Lcom/youku/gamecenter/services/GetResponseService;
.source "GetGameCenterInitialService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/gamecenter/services/GetGameCenterInitialService$OnGetGameCenterInitialServiceListener;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/youku/gamecenter/services/GetResponseService;-><init>(Landroid/content/Context;)V

    .line 24
    return-void
.end method

.method private parseInstallpopup(Lcom/youku/gamecenter/data/GameCenterInitialInfo;Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "data"    # Lcom/youku/gamecenter/data/GameCenterInitialInfo;
    .param p2, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    .line 103
    const-string v0, "installpopup"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    const-string v0, "installpopup"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "status"

    invoke-static {v0, v1}, Lcom/youku/gamecenter/services/GetGameCenterInitialService;->parseValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/youku/gamecenter/data/GameCenterInitialInfo;->launchNotifyStatus:Ljava/lang/String;

    .line 105
    const-string v0, "installpopup"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "frequency"

    invoke-static {v0, v1}, Lcom/youku/gamecenter/services/GetGameCenterInitialService;->parseIntValue(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p1, Lcom/youku/gamecenter/data/GameCenterInitialInfo;->launchNotifyFrequency:I

    .line 107
    :cond_0
    return-void
.end method

.method private parseMessageCenterData(Lcom/youku/gamecenter/data/GameCenterInitialInfo;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 8
    .param p1, "data"    # Lcom/youku/gamecenter/data/GameCenterInitialInfo;
    .param p2, "jsonObject"    # Lorg/json/JSONObject;
    .param p3, "arrayName"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 66
    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 67
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v6, p1, Lcom/youku/gamecenter/data/GameCenterInitialInfo;->messageCenterGameInfos:Ljava/util/List;

    .line 97
    :goto_0
    return-void

    .line 71
    :cond_0
    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 73
    .local v0, "gameArray":Lorg/json/JSONArray;
    if-nez v0, :cond_1

    .line 74
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v6, p1, Lcom/youku/gamecenter/data/GameCenterInitialInfo;->messageCenterGameInfos:Ljava/util/List;

    goto :goto_0

    .line 78
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 80
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Lcom/youku/gamecenter/data/MessageCenterGameInfo;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v1, v6, :cond_2

    .line 81
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 82
    .local v5, "object":Lorg/json/JSONObject;
    new-instance v3, Lcom/youku/gamecenter/data/MessageCenterGameInfo;

    invoke-direct {v3}, Lcom/youku/gamecenter/data/MessageCenterGameInfo;-><init>()V

    .line 83
    .local v3, "item":Lcom/youku/gamecenter/data/MessageCenterGameInfo;
    invoke-virtual {p0, v5}, Lcom/youku/gamecenter/services/GetGameCenterInitialService;->parseGameInfo(Lorg/json/JSONObject;)Lcom/youku/gamecenter/data/GameInfo;

    move-result-object v2

    .line 85
    .local v2, "info":Lcom/youku/gamecenter/data/GameInfo;
    const-string v6, "game_id"

    invoke-static {v5, v6}, Lcom/youku/gamecenter/services/GetGameCenterInitialService;->parseValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/youku/gamecenter/data/GameInfo;->id:Ljava/lang/String;

    .line 86
    iput-object v2, v3, Lcom/youku/gamecenter/data/MessageCenterGameInfo;->gameInfo:Lcom/youku/gamecenter/data/GameInfo;

    .line 88
    const-string v6, "oper_type"

    invoke-static {v5, v6}, Lcom/youku/gamecenter/services/GetGameCenterInitialService;->parseIntValue(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v6

    iput v6, v3, Lcom/youku/gamecenter/data/MessageCenterGameInfo;->oper_type:I

    .line 89
    const-string/jumbo v6, "seq"

    invoke-static {v5, v6}, Lcom/youku/gamecenter/services/GetGameCenterInitialService;->parseIntValue(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v6

    iput v6, v3, Lcom/youku/gamecenter/data/MessageCenterGameInfo;->seq:I

    .line 90
    const-string v6, "rec_words"

    invoke-static {v5, v6}, Lcom/youku/gamecenter/services/GetGameCenterInitialService;->parseValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/youku/gamecenter/data/MessageCenterGameInfo;->rec_words:Ljava/lang/String;

    .line 91
    const-string v6, "rec_img"

    invoke-static {v5, v6}, Lcom/youku/gamecenter/services/GetGameCenterInitialService;->parseValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/youku/gamecenter/data/MessageCenterGameInfo;->rec_img:Ljava/lang/String;

    .line 92
    const-string/jumbo v6, "url"

    invoke-static {v5, v6}, Lcom/youku/gamecenter/services/GetGameCenterInitialService;->parseValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/youku/gamecenter/data/MessageCenterGameInfo;->url:Ljava/lang/String;

    .line 93
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 96
    .end local v2    # "info":Lcom/youku/gamecenter/data/GameInfo;
    .end local v3    # "item":Lcom/youku/gamecenter/data/MessageCenterGameInfo;
    .end local v5    # "object":Lorg/json/JSONObject;
    :cond_2
    iput-object v4, p1, Lcom/youku/gamecenter/data/GameCenterInitialInfo;->messageCenterGameInfos:Ljava/util/List;

    goto :goto_0
.end method

.method private parseResultFields(Lcom/youku/gamecenter/data/GameCenterInitialInfo;Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "data"    # Lcom/youku/gamecenter/data/GameCenterInitialInfo;
    .param p2, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    .line 56
    const-string/jumbo v0, "status"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    const-string/jumbo v0, "status"

    invoke-static {p2, v0}, Lcom/youku/gamecenter/services/GetGameCenterInitialService;->parseValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/youku/gamecenter/data/GameCenterInitialInfo;->status:Ljava/lang/String;

    .line 60
    :cond_0
    const-string v0, "api.expired_at"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 61
    const-string v0, "api.expired_at"

    invoke-static {p2, v0}, Lcom/youku/gamecenter/services/GetGameCenterInitialService;->parseValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/youku/gamecenter/data/GameCenterInitialInfo;->api_expired_at:Ljava/lang/String;

    .line 64
    :cond_1
    return-void
.end method


# virtual methods
.method public onSuccess()V
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/youku/gamecenter/services/GetGameCenterInitialService;->mListener:Lcom/youku/gamecenter/services/GetResponseService$IResponseServiceListener;

    check-cast v0, Lcom/youku/gamecenter/services/GetGameCenterInitialService$OnGetGameCenterInitialServiceListener;

    iget-object v1, p0, Lcom/youku/gamecenter/services/GetGameCenterInitialService;->mResponse:Lcom/youku/gamecenter/data/IResponseable;

    check-cast v1, Lcom/youku/gamecenter/data/GameCenterInitialInfo;

    invoke-interface {v0, v1}, Lcom/youku/gamecenter/services/GetGameCenterInitialService$OnGetGameCenterInitialServiceListener;->onSuccess(Lcom/youku/gamecenter/data/GameCenterInitialInfo;)V

    .line 113
    return-void
.end method

.method public parseResponse(Ljava/lang/String;)V
    .locals 6
    .param p1, "jsonString"    # Ljava/lang/String;

    .prologue
    .line 28
    new-instance v0, Lcom/youku/gamecenter/data/GameCenterInitialInfo;

    invoke-direct {v0}, Lcom/youku/gamecenter/data/GameCenterInitialInfo;-><init>()V

    .line 29
    .local v0, "data":Lcom/youku/gamecenter/data/GameCenterInitialInfo;
    const/4 v2, 0x0

    .line 31
    .local v2, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .local v3, "jsonObject":Lorg/json/JSONObject;
    move-object v2, v3

    .line 36
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    .restart local v2    # "jsonObject":Lorg/json/JSONObject;
    :goto_0
    if-nez v2, :cond_0

    .line 37
    iput-object v0, p0, Lcom/youku/gamecenter/services/GetGameCenterInitialService;->mResponse:Lcom/youku/gamecenter/data/IResponseable;

    .line 52
    :goto_1
    return-void

    .line 32
    :catch_0
    move-exception v1

    .line 33
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 41
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_0
    const-string/jumbo v5, "results"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 42
    .local v4, "resultObject":Lorg/json/JSONObject;
    if-nez v4, :cond_1

    .line 43
    iput-object v0, p0, Lcom/youku/gamecenter/services/GetGameCenterInitialService;->mResponse:Lcom/youku/gamecenter/data/IResponseable;

    goto :goto_1

    .line 47
    :cond_1
    invoke-direct {p0, v0, v2}, Lcom/youku/gamecenter/services/GetGameCenterInitialService;->parseResultFields(Lcom/youku/gamecenter/data/GameCenterInitialInfo;Lorg/json/JSONObject;)V

    .line 48
    invoke-direct {p0, v0, v4}, Lcom/youku/gamecenter/services/GetGameCenterInitialService;->parseInstallpopup(Lcom/youku/gamecenter/data/GameCenterInitialInfo;Lorg/json/JSONObject;)V

    .line 49
    const-string v5, "messages"

    invoke-direct {p0, v0, v4, v5}, Lcom/youku/gamecenter/services/GetGameCenterInitialService;->parseMessageCenterData(Lcom/youku/gamecenter/data/GameCenterInitialInfo;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 50
    iput-object v0, p0, Lcom/youku/gamecenter/services/GetGameCenterInitialService;->mResponse:Lcom/youku/gamecenter/data/IResponseable;

    goto :goto_1
.end method
