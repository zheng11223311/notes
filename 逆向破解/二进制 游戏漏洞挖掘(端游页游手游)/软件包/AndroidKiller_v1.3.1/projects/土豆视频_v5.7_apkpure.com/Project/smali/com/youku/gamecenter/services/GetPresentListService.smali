.class public Lcom/youku/gamecenter/services/GetPresentListService;
.super Lcom/youku/gamecenter/services/GetResponseService;
.source "GetPresentListService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/gamecenter/services/GetPresentListService$OnPresentListServiceListener;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/youku/gamecenter/services/GetResponseService;-><init>(Landroid/content/Context;)V

    .line 17
    iput-object p1, p0, Lcom/youku/gamecenter/services/GetPresentListService;->context:Landroid/content/Context;

    .line 18
    return-void
.end method

.method private getJsonObjectFromString(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 3
    .param p1, "jsonStr"    # Ljava/lang/String;

    .prologue
    .line 56
    const/4 v1, 0x0

    .line 58
    .local v1, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    .local v2, "jsonObject":Lorg/json/JSONObject;
    move-object v1, v2

    .line 62
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .restart local v1    # "jsonObject":Lorg/json/JSONObject;
    :goto_0
    return-object v1

    .line 59
    :catch_0
    move-exception v0

    .line 60
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private parsePageCount(II)I
    .locals 8
    .param p1, "total"    # I
    .param p2, "pz"    # I

    .prologue
    .line 66
    const/4 v0, 0x1

    .line 67
    .local v0, "count":I
    int-to-double v4, p1

    .line 68
    .local v4, "t":D
    int-to-double v2, p2

    .line 69
    .local v2, "p":D
    div-double v6, v4, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v0, v6

    .line 70
    return v0
.end method


# virtual methods
.method public onSuccess()V
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/youku/gamecenter/services/GetPresentListService;->mListener:Lcom/youku/gamecenter/services/GetResponseService$IResponseServiceListener;

    check-cast v0, Lcom/youku/gamecenter/services/GetPresentListService$OnPresentListServiceListener;

    iget-object v1, p0, Lcom/youku/gamecenter/services/GetPresentListService;->mResponse:Lcom/youku/gamecenter/data/IResponseable;

    check-cast v1, Lcom/youku/gamecenter/present/PresentListInfo;

    invoke-interface {v0, v1}, Lcom/youku/gamecenter/services/GetPresentListService$OnPresentListServiceListener;->onSuccess(Lcom/youku/gamecenter/present/PresentListInfo;)V

    .line 78
    return-void
.end method

.method public parseResponse(Ljava/lang/String;)V
    .locals 5
    .param p1, "jsonString"    # Ljava/lang/String;

    .prologue
    .line 23
    new-instance v1, Lcom/youku/gamecenter/present/PresentListInfo;

    invoke-direct {v1}, Lcom/youku/gamecenter/present/PresentListInfo;-><init>()V

    .line 25
    .local v1, "mPresentListInfo":Lcom/youku/gamecenter/present/PresentListInfo;
    invoke-direct {p0, p1}, Lcom/youku/gamecenter/services/GetPresentListService;->getJsonObjectFromString(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 27
    .local v0, "jsonObject":Lorg/json/JSONObject;
    if-nez v0, :cond_1

    .line 28
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

    .line 53
    :cond_0
    :goto_0
    return-void

    .line 32
    :cond_1
    const-string/jumbo v2, "total"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 33
    const-string/jumbo v2, "total"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/youku/gamecenter/present/PresentListInfo;->total:I

    .line 34
    iget v2, v1, Lcom/youku/gamecenter/present/PresentListInfo;->total:I

    sget v3, Lcom/youku/gamecenter/present/PresentListInfo;->pz:I

    invoke-direct {p0, v2, v3}, Lcom/youku/gamecenter/services/GetPresentListService;->parsePageCount(II)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/youku/gamecenter/present/PresentListInfo;->setPageCount(I)V

    .line 37
    :cond_2
    const-string v2, "page_count"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 38
    const-string v2, "page_count"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/youku/gamecenter/present/PresentListInfo;->setPageCount(I)V

    .line 40
    :cond_3
    const-string v2, "pg"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 41
    const-string v2, "pg"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/youku/gamecenter/present/PresentListInfo;->setPage(Ljava/lang/String;)V

    .line 44
    :cond_4
    const-string/jumbo v2, "results"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 48
    iget-object v2, p0, Lcom/youku/gamecenter/services/GetPresentListService;->context:Landroid/content/Context;

    const-string/jumbo v3, "results"

    invoke-virtual {p0, v2, v0, v3}, Lcom/youku/gamecenter/services/GetPresentListService;->parsePresentList(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/youku/gamecenter/present/PresentListInfo;->addToPresentInfos(Ljava/util/List;)V

    .line 51
    iput-object v1, p0, Lcom/youku/gamecenter/services/GetPresentListService;->mResponse:Lcom/youku/gamecenter/data/IResponseable;

    goto :goto_0
.end method
