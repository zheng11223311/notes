.class public Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserCountMessage;
.super Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/MessageInfo;
.source "UserCountMessage.java"


# static fields
.field public static final EVENT_USER_COUNT:Ljava/lang/String; = "usercount"

.field private static final TAG:Ljava/lang/String;

.field public static final USER_COUNT_COUNT:Ljava/lang/String; = "usercount"

.field private static mInstance:Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserCountMessage;

.field private static mMutex:Ljava/lang/Object;


# instance fields
.field private count:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const-class v0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserCountMessage;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserCountMessage;->TAG:Ljava/lang/String;

    .line 15
    const/4 v0, 0x0

    sput-object v0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserCountMessage;->mInstance:Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserCountMessage;

    .line 16
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserCountMessage;->mMutex:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/MessageInfo;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserCountMessage;->count:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public static getInstance()Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserCountMessage;
    .locals 2

    .prologue
    .line 43
    sget-object v0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserCountMessage;->mInstance:Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserCountMessage;

    if-nez v0, :cond_1

    .line 44
    sget-object v1, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserCountMessage;->mMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 45
    :try_start_0
    sget-object v0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserCountMessage;->mInstance:Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserCountMessage;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserCountMessage;

    invoke-direct {v0}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserCountMessage;-><init>()V

    sput-object v0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserCountMessage;->mInstance:Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserCountMessage;

    .line 48
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    :cond_1
    sget-object v0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserCountMessage;->mInstance:Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserCountMessage;

    return-object v0

    .line 48
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public clean()V
    .locals 1

    .prologue
    .line 54
    const-string v0, "0"

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserCountMessage;->count:Ljava/lang/String;

    .line 55
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserCountMessage;->mRoomId:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public getCount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserCountMessage;->count:Ljava/lang/String;

    return-object v0
.end method

.method public setCount(Ljava/lang/String;)V
    .locals 0
    .param p1, "count"    # Ljava/lang/String;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserCountMessage;->count:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public setData(Ljava/lang/String;)V
    .locals 5
    .param p1, "args"    # Ljava/lang/String;

    .prologue
    .line 30
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 31
    .local v1, "tmp":Lorg/json/JSONObject;
    if-nez v1, :cond_0

    .line 40
    .end local v1    # "tmp":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 34
    .restart local v1    # "tmp":Lorg/json/JSONObject;
    :cond_0
    const-string/jumbo v2, "roomid"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserCountMessage;->mRoomId:Ljava/lang/String;

    .line 35
    const-string/jumbo v2, "usercount"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserCountMessage;->count:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    .end local v1    # "tmp":Lorg/json/JSONObject;
    :cond_1
    :goto_1
    sget-object v2, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserCountMessage;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "roomId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserCountMessage;->mRoomId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " & "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "count = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserCountMessage;->count:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/youku/laifeng/libcuteroom/MyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 36
    :catch_0
    move-exception v0

    .line 37
    .local v0, "e":Lorg/json/JSONException;
    sget-boolean v2, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method
