.class public Lcom/youku/gamecenter/services/GetPresentCodeOrCountService;
.super Lcom/youku/gamecenter/services/GetResponseService;
.source "GetPresentCodeOrCountService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/gamecenter/services/GetPresentCodeOrCountService$OnPresentCodeServiceListener;
    }
.end annotation


# instance fields
.field private isPost:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 0
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "isPost"    # Z

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/youku/gamecenter/services/GetResponseService;-><init>(Landroid/content/Context;)V

    .line 17
    iput-boolean p2, p0, Lcom/youku/gamecenter/services/GetPresentCodeOrCountService;->isPost:Z

    .line 18
    return-void
.end method

.method private getJsonObjectFromString(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 3
    .param p1, "jsonStr"    # Ljava/lang/String;

    .prologue
    .line 62
    const/4 v1, 0x0

    .line 64
    .local v1, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    .local v2, "jsonObject":Lorg/json/JSONObject;
    move-object v1, v2

    .line 68
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .restart local v1    # "jsonObject":Lorg/json/JSONObject;
    :goto_0
    return-object v1

    .line 65
    :catch_0
    move-exception v0

    .line 66
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private parseNewCount(Lorg/json/JSONObject;)I
    .locals 2
    .param p1, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 42
    const-string v1, "count"

    invoke-static {p1, v1}, Lcom/youku/gamecenter/services/GetPresentCodeOrCountService;->parseIntValue(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    .line 43
    .local v0, "num":I
    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    const/16 v1, 0x9

    if-le v0, v1, :cond_1

    .line 44
    :cond_0
    const v0, 0x7fffffff

    .line 46
    .end local v0    # "num":I
    :cond_1
    return v0
.end method


# virtual methods
.method protected getTaskGetResponseUrl(Ljava/lang/String;)Lcom/youku/gamecenter/services/TaskGetResponseUrl;
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 52
    new-instance v0, Lcom/youku/gamecenter/services/TaskGetResponseUrl;

    iget-boolean v1, p0, Lcom/youku/gamecenter/services/GetPresentCodeOrCountService;->isPost:Z

    invoke-direct {v0, p1, v1}, Lcom/youku/gamecenter/services/TaskGetResponseUrl;-><init>(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public onSuccess()V
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/youku/gamecenter/services/GetPresentCodeOrCountService;->mListener:Lcom/youku/gamecenter/services/GetResponseService$IResponseServiceListener;

    check-cast v0, Lcom/youku/gamecenter/services/GetPresentCodeOrCountService$OnPresentCodeServiceListener;

    iget-object v1, p0, Lcom/youku/gamecenter/services/GetPresentCodeOrCountService;->mResponse:Lcom/youku/gamecenter/data/IResponseable;

    check-cast v1, Lcom/youku/gamecenter/present/PresentInfo;

    invoke-interface {v0, v1}, Lcom/youku/gamecenter/services/GetPresentCodeOrCountService$OnPresentCodeServiceListener;->onSuccess(Lcom/youku/gamecenter/present/PresentInfo;)V

    .line 59
    return-void
.end method

.method public parseResponse(Ljava/lang/String;)V
    .locals 5
    .param p1, "jsonString"    # Ljava/lang/String;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/youku/gamecenter/services/GetPresentCodeOrCountService;->getJsonObjectFromString(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 23
    .local v1, "jsonObject":Lorg/json/JSONObject;
    new-instance v0, Lcom/youku/gamecenter/present/PresentInfo;

    invoke-direct {v0}, Lcom/youku/gamecenter/present/PresentInfo;-><init>()V

    .line 25
    .local v0, "info":Lcom/youku/gamecenter/present/PresentInfo;
    if-nez v1, :cond_0

    .line 26
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

    .line 39
    :goto_0
    return-void

    .line 30
    :cond_0
    const-string v2, "active_code"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 31
    const-string v2, "active_code"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/youku/gamecenter/present/PresentInfo;->present_code:Ljava/lang/String;

    .line 34
    :cond_1
    const-string v2, "count"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 35
    invoke-direct {p0, v1}, Lcom/youku/gamecenter/services/GetPresentCodeOrCountService;->parseNewCount(Lorg/json/JSONObject;)I

    move-result v2

    iput v2, v0, Lcom/youku/gamecenter/present/PresentInfo;->new_count:I

    .line 38
    :cond_2
    iput-object v0, p0, Lcom/youku/gamecenter/services/GetPresentCodeOrCountService;->mResponse:Lcom/youku/gamecenter/data/IResponseable;

    goto :goto_0
.end method

.method public parseResponseError(Ljava/lang/String;)Lcom/youku/gamecenter/services/GetResponseService$FailedInfo;
    .locals 5
    .param p1, "jsonString"    # Ljava/lang/String;

    .prologue
    .line 80
    new-instance v1, Lcom/youku/gamecenter/services/GetResponseService$FailedInfo;

    invoke-direct {v1}, Lcom/youku/gamecenter/services/GetResponseService$FailedInfo;-><init>()V

    .line 81
    .local v1, "info":Lcom/youku/gamecenter/services/GetResponseService$FailedInfo;
    const-string v4, "-5"

    iput-object v4, v1, Lcom/youku/gamecenter/services/GetResponseService$FailedInfo;->errorCode:Ljava/lang/String;

    .line 82
    const/4 v2, 0x0

    .line 84
    .local v2, "jsonObject":Lorg/json/JSONObject;
    if-nez p1, :cond_0

    .line 102
    :goto_0
    return-object v1

    .line 89
    :cond_0
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .local v3, "jsonObject":Lorg/json/JSONObject;
    :try_start_1
    const-string v4, "code"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 91
    const-string v4, "code"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/youku/gamecenter/services/GetResponseService$FailedInfo;->errorCode:Ljava/lang/String;

    .line 93
    :cond_1
    const-string v4, "desc"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 94
    const-string v4, "desc"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/youku/gamecenter/services/GetResponseService$FailedInfo;->errorDesc:Ljava/lang/String;

    .line 96
    :cond_2
    const-string v4, "active_code"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 97
    const-string v4, "active_code"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/youku/gamecenter/services/GetResponseService$FailedInfo;->errorDesc:Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_3
    move-object v2, v3

    .line 101
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    .restart local v2    # "jsonObject":Lorg/json/JSONObject;
    goto :goto_0

    .line 99
    :catch_0
    move-exception v0

    .line 100
    .local v0, "e":Lorg/json/JSONException;
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 99
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .restart local v3    # "jsonObject":Lorg/json/JSONObject;
    :catch_1
    move-exception v0

    move-object v2, v3

    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    .restart local v2    # "jsonObject":Lorg/json/JSONObject;
    goto :goto_1
.end method
