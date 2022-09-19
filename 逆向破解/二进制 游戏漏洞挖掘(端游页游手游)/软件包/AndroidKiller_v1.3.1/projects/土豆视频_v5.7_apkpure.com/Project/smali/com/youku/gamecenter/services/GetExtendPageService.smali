.class public Lcom/youku/gamecenter/services/GetExtendPageService;
.super Lcom/youku/gamecenter/services/GetResponseService;
.source "GetExtendPageService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/gamecenter/services/GetExtendPageService$OnExtendPageServiceListener;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/youku/gamecenter/services/GetResponseService;-><init>(Landroid/content/Context;)V

    .line 17
    return-void
.end method

.method private getJsonObjectFromString(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 3
    .param p1, "jsonStr"    # Ljava/lang/String;

    .prologue
    .line 61
    const/4 v1, 0x0

    .line 63
    .local v1, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    .local v2, "jsonObject":Lorg/json/JSONObject;
    move-object v1, v2

    .line 67
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .restart local v1    # "jsonObject":Lorg/json/JSONObject;
    :goto_0
    return-object v1

    .line 64
    :catch_0
    move-exception v0

    .line 65
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private parseSlidesInfo(Lcom/youku/gamecenter/data/ExtendPageInfo;Lorg/json/JSONObject;)V
    .locals 4
    .param p1, "extendPageInfo"    # Lcom/youku/gamecenter/data/ExtendPageInfo;
    .param p2, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    .line 47
    const-string/jumbo v1, "scollers"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 58
    :cond_0
    :goto_0
    return-void

    .line 51
    :cond_1
    const-string/jumbo v1, "scollers"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 53
    .local v0, "array":Lorg/json/JSONArray;
    if-eqz v0, :cond_0

    .line 57
    const-string/jumbo v1, "scollers"

    const/4 v2, 0x1

    const-string v3, "extent_fragment"

    invoke-virtual {p0, p2, v1, v2, v3}, Lcom/youku/gamecenter/services/GetExtendPageService;->parseGamesList(Lorg/json/JSONObject;Ljava/lang/String;ZLjava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p1, Lcom/youku/gamecenter/data/ExtendPageInfo;->slides:Ljava/util/List;

    goto :goto_0
.end method

.method private parseSortType(Lcom/youku/gamecenter/data/ExtendPageInfo;Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "extendPageInfo"    # Lcom/youku/gamecenter/data/ExtendPageInfo;
    .param p2, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    .line 40
    const-string/jumbo v0, "sort_type"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    const-string/jumbo v0, "sort_type"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/youku/gamecenter/data/ExtendPageInfo;->sort_type:Ljava/lang/String;

    .line 43
    :cond_0
    return-void
.end method


# virtual methods
.method public onSuccess()V
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/youku/gamecenter/services/GetExtendPageService;->mListener:Lcom/youku/gamecenter/services/GetResponseService$IResponseServiceListener;

    check-cast v0, Lcom/youku/gamecenter/services/GetExtendPageService$OnExtendPageServiceListener;

    iget-object v1, p0, Lcom/youku/gamecenter/services/GetExtendPageService;->mResponse:Lcom/youku/gamecenter/data/IResponseable;

    check-cast v1, Lcom/youku/gamecenter/data/ExtendPageInfo;

    invoke-interface {v0, v1}, Lcom/youku/gamecenter/services/GetExtendPageService$OnExtendPageServiceListener;->onSuccess(Lcom/youku/gamecenter/data/ExtendPageInfo;)V

    .line 74
    return-void
.end method

.method public parseResponse(Ljava/lang/String;)V
    .locals 5
    .param p1, "jsonString"    # Ljava/lang/String;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/youku/gamecenter/services/GetExtendPageService;->getJsonObjectFromString(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 24
    .local v1, "jsonObject":Lorg/json/JSONObject;
    if-nez v1, :cond_0

    .line 25
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

    .line 29
    :cond_0
    new-instance v0, Lcom/youku/gamecenter/data/ExtendPageInfo;

    invoke-direct {v0}, Lcom/youku/gamecenter/data/ExtendPageInfo;-><init>()V

    .line 31
    .local v0, "extendPageInfo":Lcom/youku/gamecenter/data/ExtendPageInfo;
    invoke-direct {p0, v0, v1}, Lcom/youku/gamecenter/services/GetExtendPageService;->parseSlidesInfo(Lcom/youku/gamecenter/data/ExtendPageInfo;Lorg/json/JSONObject;)V

    .line 32
    const-string v2, "page_count"

    invoke-static {v1, v2}, Lcom/youku/gamecenter/services/GetExtendPageService;->parseIntValue(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/youku/gamecenter/data/ExtendPageInfo;->page_count:I

    .line 33
    const-string v2, "games"

    invoke-virtual {p0, v1, v2}, Lcom/youku/gamecenter/services/GetExtendPageService;->parseGamesList(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v0, Lcom/youku/gamecenter/data/ExtendPageInfo;->games:Ljava/util/List;

    .line 34
    invoke-direct {p0, v0, v1}, Lcom/youku/gamecenter/services/GetExtendPageService;->parseSortType(Lcom/youku/gamecenter/data/ExtendPageInfo;Lorg/json/JSONObject;)V

    .line 36
    iput-object v0, p0, Lcom/youku/gamecenter/services/GetExtendPageService;->mResponse:Lcom/youku/gamecenter/data/IResponseable;

    goto :goto_0
.end method
