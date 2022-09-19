.class public Lcom/youku/gamecenter/services/GetHomePageDialogService;
.super Lcom/youku/gamecenter/services/GetResponseService;
.source "GetHomePageDialogService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/gamecenter/services/GetHomePageDialogService$OnHomePageDialogServiceListener;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/youku/gamecenter/services/GetResponseService;-><init>(Landroid/content/Context;)V

    .line 24
    return-void
.end method

.method private parseGameInfo(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/youku/gamecenter/data/GameInfo;
    .locals 3
    .param p1, "item"    # Lorg/json/JSONObject;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 95
    if-nez p1, :cond_1

    .line 105
    :cond_0
    :goto_0
    return-object v1

    .line 98
    :cond_1
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 101
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 102
    .local v0, "object":Lorg/json/JSONObject;
    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/services/GetHomePageDialogService;->parseGameInfo(Lorg/json/JSONObject;)Lcom/youku/gamecenter/data/GameInfo;

    move-result-object v1

    goto :goto_0
.end method

.method private parseHomePageDialogInfo(Lorg/json/JSONObject;)Lcom/youku/gamecenter/data/IResponseable;
    .locals 1
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 51
    new-instance v0, Lcom/youku/gamecenter/data/HomePageDialogInfo;

    invoke-direct {v0}, Lcom/youku/gamecenter/data/HomePageDialogInfo;-><init>()V

    .line 53
    .local v0, "dataInfo":Lcom/youku/gamecenter/data/HomePageDialogInfo;
    invoke-direct {p0, p1, v0}, Lcom/youku/gamecenter/services/GetHomePageDialogService;->parseRecommendInfo(Lorg/json/JSONObject;Lcom/youku/gamecenter/data/HomePageDialogInfo;)V

    .line 55
    return-object v0
.end method

.method private parseRecommendInfo(Lorg/json/JSONObject;Lcom/youku/gamecenter/data/HomePageDialogInfo;)V
    .locals 5
    .param p1, "object"    # Lorg/json/JSONObject;
    .param p2, "dataInfo"    # Lcom/youku/gamecenter/data/HomePageDialogInfo;

    .prologue
    .line 61
    const-string v4, "id"

    invoke-static {p1, v4}, Lcom/youku/gamecenter/services/GetHomePageDialogService;->parseValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p2, Lcom/youku/gamecenter/data/HomePageDialogInfo;->id:Ljava/lang/String;

    .line 63
    const-string v4, "apps"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 92
    :cond_0
    return-void

    .line 67
    :cond_1
    const-string v4, "apps"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 69
    .local v0, "array":Lorg/json/JSONArray;
    if-eqz v0, :cond_0

    .line 73
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 75
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 77
    .local v2, "item":Lorg/json/JSONObject;
    if-nez v2, :cond_2

    .line 73
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 81
    :cond_2
    new-instance v3, Lcom/youku/gamecenter/data/HomePageDialogInfo$HomePageDialogItemInfo;

    invoke-direct {v3}, Lcom/youku/gamecenter/data/HomePageDialogInfo$HomePageDialogItemInfo;-><init>()V

    .line 83
    .local v3, "itemInfo":Lcom/youku/gamecenter/data/HomePageDialogInfo$HomePageDialogItemInfo;
    const-string v4, "detail"

    invoke-direct {p0, v2, v4}, Lcom/youku/gamecenter/services/GetHomePageDialogService;->parseGameInfo(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/youku/gamecenter/data/GameInfo;

    move-result-object v4

    iput-object v4, v3, Lcom/youku/gamecenter/data/HomePageDialogInfo$HomePageDialogItemInfo;->game:Lcom/youku/gamecenter/data/GameInfo;

    .line 84
    const-string v4, "image"

    invoke-static {v2, v4}, Lcom/youku/gamecenter/services/GetHomePageDialogService;->parseValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/youku/gamecenter/data/HomePageDialogInfo$HomePageDialogItemInfo;->image:Ljava/lang/String;

    .line 85
    const-string v4, "op_type"

    invoke-static {v2, v4}, Lcom/youku/gamecenter/services/GetHomePageDialogService;->parseIntValue(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lcom/youku/gamecenter/data/HomePageDialogInfo$HomePageDialogItemInfo;->op_type:I

    .line 86
    const-string v4, "rec_words"

    invoke-static {v2, v4}, Lcom/youku/gamecenter/services/GetHomePageDialogService;->parseValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/youku/gamecenter/data/HomePageDialogInfo$HomePageDialogItemInfo;->rec_words:Ljava/lang/String;

    .line 87
    const-string v4, "h5_url"

    invoke-static {v2, v4}, Lcom/youku/gamecenter/services/GetHomePageDialogService;->parseValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/youku/gamecenter/data/HomePageDialogInfo$HomePageDialogItemInfo;->h5_url:Ljava/lang/String;

    .line 89
    iget-object v4, p2, Lcom/youku/gamecenter/data/HomePageDialogInfo;->list:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method


# virtual methods
.method public onSuccess()V
    .locals 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/youku/gamecenter/services/GetHomePageDialogService;->mListener:Lcom/youku/gamecenter/services/GetResponseService$IResponseServiceListener;

    check-cast v0, Lcom/youku/gamecenter/services/GetHomePageDialogService$OnHomePageDialogServiceListener;

    iget-object v1, p0, Lcom/youku/gamecenter/services/GetHomePageDialogService;->mResponse:Lcom/youku/gamecenter/data/IResponseable;

    check-cast v1, Lcom/youku/gamecenter/data/HomePageDialogInfo;

    invoke-interface {v0, v1}, Lcom/youku/gamecenter/services/GetHomePageDialogService$OnHomePageDialogServiceListener;->onSuccess(Lcom/youku/gamecenter/data/HomePageDialogInfo;)V

    .line 47
    return-void
.end method

.method public parseResponse(Ljava/lang/String;)V
    .locals 4
    .param p1, "jsonString"    # Ljava/lang/String;

    .prologue
    .line 29
    const/4 v1, 0x0

    .line 31
    .local v1, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    .local v2, "jsonObject":Lorg/json/JSONObject;
    move-object v1, v2

    .line 36
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .restart local v1    # "jsonObject":Lorg/json/JSONObject;
    :goto_0
    if-nez v1, :cond_0

    .line 41
    :goto_1
    return-void

    .line 32
    :catch_0
    move-exception v0

    .line 33
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 40
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_0
    invoke-direct {p0, v1}, Lcom/youku/gamecenter/services/GetHomePageDialogService;->parseHomePageDialogInfo(Lorg/json/JSONObject;)Lcom/youku/gamecenter/data/IResponseable;

    move-result-object v3

    iput-object v3, p0, Lcom/youku/gamecenter/services/GetHomePageDialogService;->mResponse:Lcom/youku/gamecenter/data/IResponseable;

    goto :goto_1
.end method
