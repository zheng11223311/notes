.class public Lcom/youku/gamecenter/services/GetDetailPageService;
.super Lcom/youku/gamecenter/services/GetResponseService;
.source "GetDetailPageService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/gamecenter/services/GetDetailPageService$OnDetailPageServiceListener;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/youku/gamecenter/services/GetResponseService;-><init>(Landroid/content/Context;)V

    .line 20
    return-void
.end method

.method private getAppJsonObject(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 3
    .param p1, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    .line 97
    const/4 v1, 0x0

    .line 99
    .local v1, "object":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "app"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 103
    :goto_0
    return-object v1

    .line 100
    :catch_0
    move-exception v0

    .line 101
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private getFieldSeqsJsonObject(Lorg/json/JSONObject;)Lorg/json/JSONArray;
    .locals 3
    .param p1, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    .line 87
    const/4 v1, 0x0

    .line 89
    .local v1, "object":Lorg/json/JSONArray;
    :try_start_0
    const-string v2, "field_seqs"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 93
    :goto_0
    return-object v1

    .line 90
    :catch_0
    move-exception v0

    .line 91
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private getJsonObjectFromString(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 3
    .param p1, "jsonStr"    # Ljava/lang/String;

    .prologue
    .line 107
    const/4 v1, 0x0

    .line 109
    .local v1, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    .local v2, "jsonObject":Lorg/json/JSONObject;
    move-object v1, v2

    .line 113
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .restart local v1    # "jsonObject":Lorg/json/JSONObject;
    :goto_0
    return-object v1

    .line 110
    :catch_0
    move-exception v0

    .line 111
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private parseFieldSeqs(Lorg/json/JSONArray;)Ljava/util/HashMap;
    .locals 7
    .param p1, "array"    # Lorg/json/JSONArray;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, -0x1

    .line 64
    if-nez p1, :cond_1

    .line 65
    const/4 v0, 0x0

    .line 83
    :cond_0
    return-object v0

    .line 68
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 70
    .local v0, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 71
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/json/JSONObject;

    .line 72
    .local v4, "subObject":Lorg/json/JSONObject;
    if-nez v4, :cond_3

    .line 70
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 75
    :cond_3
    const-string v5, "name"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 76
    .local v2, "name":Ljava/lang/String;
    const-string/jumbo v5, "seq"

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    .line 77
    .local v3, "seq":I
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    if-eq v3, v6, :cond_2

    .line 80
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method private parseGameDetailInfo(Lorg/json/JSONObject;)Lcom/youku/gamecenter/data/GameDetailInfo;
    .locals 5
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/youku/gamecenter/services/GetDetailPageService;->getAppJsonObject(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    .line 40
    .local v0, "appObject":Lorg/json/JSONObject;
    if-nez v0, :cond_0

    .line 41
    const-string v3, "PlayFlow"

    const-string v4, "parseGameDetailInfo: appObject is null!"

    invoke-static {v3, v4}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    const/4 v1, 0x0

    .line 59
    :goto_0
    return-object v1

    .line 45
    :cond_0
    new-instance v1, Lcom/youku/gamecenter/data/GameDetailInfo;

    invoke-direct {v1}, Lcom/youku/gamecenter/data/GameDetailInfo;-><init>()V

    .line 47
    .local v1, "data":Lcom/youku/gamecenter/data/GameDetailInfo;
    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/services/GetDetailPageService;->parseGameInfo(Lorg/json/JSONObject;)Lcom/youku/gamecenter/data/GameInfo;

    move-result-object v3

    iput-object v3, v1, Lcom/youku/gamecenter/data/GameDetailInfo;->app:Lcom/youku/gamecenter/data/GameInfo;

    .line 49
    const-string v3, "rec_games"

    invoke-virtual {p0, p1, v3}, Lcom/youku/gamecenter/services/GetDetailPageService;->parseGamesList(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v1, Lcom/youku/gamecenter/data/GameDetailInfo;->rec_games:Ljava/util/List;

    .line 51
    invoke-direct {p0, p1}, Lcom/youku/gamecenter/services/GetDetailPageService;->getFieldSeqsJsonObject(Lorg/json/JSONObject;)Lorg/json/JSONArray;

    move-result-object v2

    .line 53
    .local v2, "fieldSeqsArray":Lorg/json/JSONArray;
    if-nez v2, :cond_1

    .line 54
    const-string v3, "PlayFlow"

    const-string v4, "parseGameDetailInfo: fieldSeqsArray is null!"

    invoke-static {v3, v4}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 57
    :cond_1
    invoke-direct {p0, v2}, Lcom/youku/gamecenter/services/GetDetailPageService;->parseFieldSeqs(Lorg/json/JSONArray;)Ljava/util/HashMap;

    move-result-object v3

    iput-object v3, v1, Lcom/youku/gamecenter/data/GameDetailInfo;->field_seqs:Ljava/util/HashMap;

    goto :goto_0
.end method


# virtual methods
.method public onSuccess()V
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/youku/gamecenter/services/GetDetailPageService;->mListener:Lcom/youku/gamecenter/services/GetResponseService$IResponseServiceListener;

    check-cast v0, Lcom/youku/gamecenter/services/GetDetailPageService$OnDetailPageServiceListener;

    iget-object v1, p0, Lcom/youku/gamecenter/services/GetDetailPageService;->mResponse:Lcom/youku/gamecenter/data/IResponseable;

    check-cast v1, Lcom/youku/gamecenter/data/GameDetailInfo;

    invoke-interface {v0, v1}, Lcom/youku/gamecenter/services/GetDetailPageService$OnDetailPageServiceListener;->onSuccess(Lcom/youku/gamecenter/data/GameDetailInfo;)V

    .line 120
    return-void
.end method

.method public parseResponse(Ljava/lang/String;)V
    .locals 4
    .param p1, "jsonString"    # Ljava/lang/String;

    .prologue
    .line 25
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WIRELESS-33181: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/youku/gamecenter/services/GetDetailPageService;->logs(Ljava/lang/String;)V

    .line 26
    invoke-direct {p0, p1}, Lcom/youku/gamecenter/services/GetDetailPageService;->getJsonObjectFromString(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 28
    .local v0, "jsonObject":Lorg/json/JSONObject;
    if-nez v0, :cond_0

    .line 29
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

    .line 34
    :goto_0
    return-void

    .line 33
    :cond_0
    invoke-direct {p0, v0}, Lcom/youku/gamecenter/services/GetDetailPageService;->parseGameDetailInfo(Lorg/json/JSONObject;)Lcom/youku/gamecenter/data/GameDetailInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/youku/gamecenter/services/GetDetailPageService;->mResponse:Lcom/youku/gamecenter/data/IResponseable;

    goto :goto_0
.end method
