.class public Lcom/youku/gamecenter/services/GetPresentInfoService;
.super Lcom/youku/gamecenter/services/GetResponseService;
.source "GetPresentInfoService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/gamecenter/services/GetPresentInfoService$onPresentInfoServiceListener;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/youku/gamecenter/services/GetResponseService;-><init>(Landroid/content/Context;)V

    .line 16
    iput-object p1, p0, Lcom/youku/gamecenter/services/GetPresentInfoService;->mContext:Landroid/content/Context;

    .line 17
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


# virtual methods
.method public onSuccess()V
    .locals 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/youku/gamecenter/services/GetPresentInfoService;->mListener:Lcom/youku/gamecenter/services/GetResponseService$IResponseServiceListener;

    check-cast v0, Lcom/youku/gamecenter/services/GetPresentInfoService$onPresentInfoServiceListener;

    iget-object v1, p0, Lcom/youku/gamecenter/services/GetPresentInfoService;->mResponse:Lcom/youku/gamecenter/data/IResponseable;

    check-cast v1, Lcom/youku/gamecenter/present/PresentInfo;

    invoke-interface {v0, v1}, Lcom/youku/gamecenter/services/GetPresentInfoService$onPresentInfoServiceListener;->onSuccess(Lcom/youku/gamecenter/present/PresentInfo;)V

    .line 38
    return-void
.end method

.method public parseResponse(Ljava/lang/String;)V
    .locals 4
    .param p1, "jsonString"    # Ljava/lang/String;

    .prologue
    .line 21
    new-instance v0, Lcom/youku/gamecenter/present/PresentInfo;

    invoke-direct {v0}, Lcom/youku/gamecenter/present/PresentInfo;-><init>()V

    .line 22
    .local v0, "info":Lcom/youku/gamecenter/present/PresentInfo;
    invoke-direct {p0, p1}, Lcom/youku/gamecenter/services/GetPresentInfoService;->getJsonObjectFromString(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 24
    .local v1, "jsonObject":Lorg/json/JSONObject;
    if-nez v1, :cond_0

    .line 31
    :goto_0
    return-void

    .line 28
    :cond_0
    iget-object v2, p0, Lcom/youku/gamecenter/services/GetPresentInfoService;->mContext:Landroid/content/Context;

    const-string v3, "detail"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/youku/gamecenter/services/GetPresentInfoService;->parsePresentInfo(Landroid/content/Context;Lorg/json/JSONObject;)Lcom/youku/gamecenter/present/PresentInfo;

    move-result-object v0

    .line 30
    iput-object v0, p0, Lcom/youku/gamecenter/services/GetPresentInfoService;->mResponse:Lcom/youku/gamecenter/data/IResponseable;

    goto :goto_0
.end method
