.class public Lcom/youku/laifeng/libcuteroom/model/data/UserStarInfo;
.super Ljava/lang/Object;
.source "UserStarInfo.java"


# static fields
.field private static final CODE:Ljava/lang/String; = "code"

.field private static final DATA:Ljava/lang/String; = "data"

.field private static final MESSAGE:Ljava/lang/String; = "message"

.field private static final RESP:Ljava/lang/String; = "response"

.field private static mInstance:Lcom/youku/laifeng/libcuteroom/model/data/UserStarInfo;


# instance fields
.field private code:Ljava/lang/String;

.field private mStarInfo:Lorg/json/JSONObject;

.field private message:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const/4 v0, 0x0

    sput-object v0, Lcom/youku/laifeng/libcuteroom/model/data/UserStarInfo;->mInstance:Lcom/youku/laifeng/libcuteroom/model/data/UserStarInfo;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/UserStarInfo;->code:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/UserStarInfo;->message:Ljava/lang/String;

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/UserStarInfo;->mStarInfo:Lorg/json/JSONObject;

    .line 21
    return-void
.end method

.method public static getInstance()Lcom/youku/laifeng/libcuteroom/model/data/UserStarInfo;
    .locals 2

    .prologue
    .line 24
    sget-object v0, Lcom/youku/laifeng/libcuteroom/model/data/UserStarInfo;->mInstance:Lcom/youku/laifeng/libcuteroom/model/data/UserStarInfo;

    if-nez v0, :cond_1

    .line 25
    const-class v1, Lcom/youku/laifeng/libcuteroom/model/data/UserStarInfo;

    monitor-enter v1

    .line 26
    :try_start_0
    sget-object v0, Lcom/youku/laifeng/libcuteroom/model/data/UserStarInfo;->mInstance:Lcom/youku/laifeng/libcuteroom/model/data/UserStarInfo;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lcom/youku/laifeng/libcuteroom/model/data/UserStarInfo;

    invoke-direct {v0}, Lcom/youku/laifeng/libcuteroom/model/data/UserStarInfo;-><init>()V

    sput-object v0, Lcom/youku/laifeng/libcuteroom/model/data/UserStarInfo;->mInstance:Lcom/youku/laifeng/libcuteroom/model/data/UserStarInfo;

    .line 29
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    :cond_1
    sget-object v0, Lcom/youku/laifeng/libcuteroom/model/data/UserStarInfo;->mInstance:Lcom/youku/laifeng/libcuteroom/model/data/UserStarInfo;

    return-object v0

    .line 29
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/UserStarInfo;->code:Ljava/lang/String;

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/UserStarInfo;->message:Ljava/lang/String;

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/UserStarInfo;->mStarInfo:Lorg/json/JSONObject;

    .line 38
    return-void
.end method

.method public getCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/UserStarInfo;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/UserStarInfo;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getUserStarInfoStr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/UserStarInfo;->mStarInfo:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    .line 63
    const/4 v0, 0x0

    .line 65
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/UserStarInfo;->mStarInfo:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public updateStarInfo(Ljava/lang/String;)V
    .locals 5
    .param p1, "src"    # Ljava/lang/String;

    .prologue
    .line 41
    const/4 v1, 0x0

    .line 43
    .local v1, "resp":Lorg/json/JSONObject;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "resp":Lorg/json/JSONObject;
    .local v2, "resp":Lorg/json/JSONObject;
    move-object v1, v2

    .line 47
    .end local v2    # "resp":Lorg/json/JSONObject;
    .restart local v1    # "resp":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    const-string/jumbo v4, "response"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 48
    .local v3, "root":Lorg/json/JSONObject;
    const-string v4, "code"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/youku/laifeng/libcuteroom/model/data/UserStarInfo;->code:Ljava/lang/String;

    .line 49
    const-string v4, "message"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/youku/laifeng/libcuteroom/model/data/UserStarInfo;->message:Ljava/lang/String;

    .line 50
    const-string v4, "data"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    iput-object v4, p0, Lcom/youku/laifeng/libcuteroom/model/data/UserStarInfo;->mStarInfo:Lorg/json/JSONObject;

    .line 51
    return-void

    .line 44
    .end local v3    # "root":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 45
    .local v0, "e":Lorg/json/JSONException;
    sget-boolean v4, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public updateStarInfoByKey(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "val"    # Ljava/lang/String;

    .prologue
    .line 71
    :try_start_0
    iget-object v1, p0, Lcom/youku/laifeng/libcuteroom/model/data/UserStarInfo;->mStarInfo:Lorg/json/JSONObject;

    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    :cond_0
    :goto_0
    return-void

    .line 72
    :catch_0
    move-exception v0

    .line 73
    .local v0, "e":Lorg/json/JSONException;
    sget-boolean v1, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
