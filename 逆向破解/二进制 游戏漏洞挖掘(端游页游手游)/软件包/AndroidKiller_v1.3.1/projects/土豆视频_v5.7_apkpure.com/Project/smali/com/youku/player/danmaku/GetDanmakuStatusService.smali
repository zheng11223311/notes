.class public Lcom/youku/player/danmaku/GetDanmakuStatusService;
.super Ljava/lang/Object;
.source "GetDanmakuStatusService.java"

# interfaces
.implements Lcom/youku/player/service/NetService;


# instance fields
.field private danmakuEnable:Z

.field private danmakuInfoCallBack:Lcom/youku/player/danmaku/IDanmakuInfoCallBack;

.field private danmakuStatus:Ljava/lang/String;

.field private handler:Landroid/os/Handler;

.field private isUserShutUp:Z

.field private starUids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/youku/player/danmaku/GetDanmakuStatusService;->starUids:Ljava/util/ArrayList;

    .line 38
    new-instance v0, Lcom/youku/player/danmaku/GetDanmakuStatusService$1;

    invoke-direct {v0, p0}, Lcom/youku/player/danmaku/GetDanmakuStatusService$1;-><init>(Lcom/youku/player/danmaku/GetDanmakuStatusService;)V

    iput-object v0, p0, Lcom/youku/player/danmaku/GetDanmakuStatusService;->handler:Landroid/os/Handler;

    .line 26
    return-void
.end method

.method static synthetic access$000(Lcom/youku/player/danmaku/GetDanmakuStatusService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/player/danmaku/GetDanmakuStatusService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/youku/player/danmaku/GetDanmakuStatusService;->setDanmakuStatus(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/youku/player/danmaku/GetDanmakuStatusService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/youku/player/danmaku/GetDanmakuStatusService;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/youku/player/danmaku/GetDanmakuStatusService;->danmakuStatus:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/youku/player/danmaku/GetDanmakuStatusService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/youku/player/danmaku/GetDanmakuStatusService;

    .prologue
    .line 16
    iget-boolean v0, p0, Lcom/youku/player/danmaku/GetDanmakuStatusService;->danmakuEnable:Z

    return v0
.end method

.method static synthetic access$300(Lcom/youku/player/danmaku/GetDanmakuStatusService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/youku/player/danmaku/GetDanmakuStatusService;

    .prologue
    .line 16
    iget-boolean v0, p0, Lcom/youku/player/danmaku/GetDanmakuStatusService;->isUserShutUp:Z

    return v0
.end method

.method static synthetic access$400(Lcom/youku/player/danmaku/GetDanmakuStatusService;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/youku/player/danmaku/GetDanmakuStatusService;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/youku/player/danmaku/GetDanmakuStatusService;->starUids:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/youku/player/danmaku/GetDanmakuStatusService;)Lcom/youku/player/danmaku/IDanmakuInfoCallBack;
    .locals 1
    .param p0, "x0"    # Lcom/youku/player/danmaku/GetDanmakuStatusService;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/youku/player/danmaku/GetDanmakuStatusService;->danmakuInfoCallBack:Lcom/youku/player/danmaku/IDanmakuInfoCallBack;

    return-object v0
.end method

.method private setDanmakuStatus(Ljava/lang/String;)V
    .locals 8
    .param p1, "responseString"    # Ljava/lang/String;

    .prologue
    .line 59
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 61
    .local v3, "json":Lorg/json/JSONObject;
    const-string v6, "data"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 62
    const-string v6, "data"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 63
    .local v0, "data":Lorg/json/JSONObject;
    if-eqz v0, :cond_1

    .line 64
    const-string v6, "m_points"

    const-string v7, ""

    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/youku/player/danmaku/GetDanmakuStatusService;->danmakuStatus:Ljava/lang/String;

    .line 65
    const-string v6, "danmu_enable"

    const/4 v7, 0x1

    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/youku/player/danmaku/GetDanmakuStatusService;->danmakuEnable:Z

    .line 66
    const-string/jumbo v6, "user_shut_up"

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/youku/player/danmaku/GetDanmakuStatusService;->isUserShutUp:Z

    .line 67
    const-string/jumbo v6, "style_uidcodes"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 68
    .local v4, "style_uidcodes":Lorg/json/JSONArray;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-lez v6, :cond_1

    .line 69
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v2, v6, :cond_1

    .line 70
    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 71
    .local v5, "uidcode":Lorg/json/JSONObject;
    const-string v6, "id"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 72
    iget-object v6, p0, Lcom/youku/player/danmaku/GetDanmakuStatusService;->starUids:Ljava/util/ArrayList;

    const-string v7, "id"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 78
    .end local v0    # "data":Lorg/json/JSONObject;
    .end local v2    # "i":I
    .end local v3    # "json":Lorg/json/JSONObject;
    .end local v4    # "style_uidcodes":Lorg/json/JSONArray;
    .end local v5    # "uidcode":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 80
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 82
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_1
    return-void
.end method


# virtual methods
.method public getDanmakuStatus(Ljava/lang/String;ILcom/youku/player/danmaku/IDanmakuInfoCallBack;)V
    .locals 5
    .param p1, "iid"    # Ljava/lang/String;
    .param p2, "cid"    # I
    .param p3, "danmakuInfoCallBack"    # Lcom/youku/player/danmaku/IDanmakuInfoCallBack;

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 30
    invoke-static {p1, p2}, Lcom/youku/player/util/URLContainer;->getDanmakuStatusParameter(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 31
    .local v1, "url":Ljava/lang/String;
    iput-object p3, p0, Lcom/youku/player/danmaku/GetDanmakuStatusService;->danmakuInfoCallBack:Lcom/youku/player/danmaku/IDanmakuInfoCallBack;

    .line 32
    new-instance v0, Lcom/youku/player/danmaku/TaskGetDanmakuInfo;

    invoke-direct {v0, v1}, Lcom/youku/player/danmaku/TaskGetDanmakuInfo;-><init>(Ljava/lang/String;)V

    .line 33
    .local v0, "taskGetDanmakuStatus":Lcom/youku/player/danmaku/TaskGetDanmakuInfo;
    invoke-virtual {v0, v2}, Lcom/youku/player/danmaku/TaskGetDanmakuInfo;->setSuccess(I)V

    .line 34
    invoke-virtual {v0, v4}, Lcom/youku/player/danmaku/TaskGetDanmakuInfo;->setFail(I)V

    .line 35
    new-array v2, v2, [Landroid/os/Handler;

    iget-object v3, p0, Lcom/youku/player/danmaku/GetDanmakuStatusService;->handler:Landroid/os/Handler;

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Lcom/youku/player/danmaku/TaskGetDanmakuInfo;->execute([Ljava/lang/Object;)Lcom/baseproject/network/YoukuAsyncTask;

    .line 36
    return-void
.end method
