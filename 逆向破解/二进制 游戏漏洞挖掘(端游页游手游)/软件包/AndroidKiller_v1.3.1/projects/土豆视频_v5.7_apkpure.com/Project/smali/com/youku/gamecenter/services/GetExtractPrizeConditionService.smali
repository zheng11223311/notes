.class public Lcom/youku/gamecenter/services/GetExtractPrizeConditionService;
.super Lcom/youku/gamecenter/services/GetResponseService;
.source "GetExtractPrizeConditionService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/gamecenter/services/GetExtractPrizeConditionService$OnGetExtractPrizeTimesListener;
    }
.end annotation


# instance fields
.field private leastLimitCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/youku/gamecenter/services/GetResponseService;-><init>(Landroid/content/Context;)V

    .line 15
    const/4 v0, -0x1

    iput v0, p0, Lcom/youku/gamecenter/services/GetExtractPrizeConditionService;->leastLimitCount:I

    .line 19
    return-void
.end method


# virtual methods
.method public onSuccess()V
    .locals 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/youku/gamecenter/services/GetExtractPrizeConditionService;->mListener:Lcom/youku/gamecenter/services/GetResponseService$IResponseServiceListener;

    check-cast v0, Lcom/youku/gamecenter/services/GetExtractPrizeConditionService$OnGetExtractPrizeTimesListener;

    iget v1, p0, Lcom/youku/gamecenter/services/GetExtractPrizeConditionService;->leastLimitCount:I

    invoke-interface {v0, v1}, Lcom/youku/gamecenter/services/GetExtractPrizeConditionService$OnGetExtractPrizeTimesListener;->onSuccess(I)V

    .line 24
    return-void
.end method

.method public parseResponse(Ljava/lang/String;)V
    .locals 6
    .param p1, "jsonString"    # Ljava/lang/String;

    .prologue
    .line 28
    const/4 v1, 0x0

    .line 30
    .local v1, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    .local v2, "jsonObject":Lorg/json/JSONObject;
    move-object v1, v2

    .line 35
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .restart local v1    # "jsonObject":Lorg/json/JSONObject;
    :goto_0
    if-nez v1, :cond_0

    .line 45
    :goto_1
    return-void

    .line 31
    :catch_0
    move-exception v0

    .line 32
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 39
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_0
    if-nez v1, :cond_1

    .line 40
    const-string v3, "PlayFlow"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": jsonObject is null! json name="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 44
    :cond_1
    const-string v3, "limit"

    invoke-static {v1, v3}, Lcom/youku/gamecenter/services/GetExtractPrizeConditionService;->parseIntValue(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/youku/gamecenter/services/GetExtractPrizeConditionService;->leastLimitCount:I

    goto :goto_1
.end method
