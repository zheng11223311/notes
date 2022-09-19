.class public Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/FlashInfoMessage;
.super Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/MessageInfo;
.source "FlashInfoMessage.java"


# static fields
.field public static final BODY_MSG:Ljava/lang/String; = "m"

.field public static final BODY_SCREEN_ID:Ljava/lang/String; = "sci"

.field public static final BODY_SCREEN_NEW:Ljava/lang/String; = "in"

.field public static final FLASHINFO_MESSAGE:Ljava/lang/String; = "flashinfo"

.field private static final START:Ljava/lang/String; = "start"


# instance fields
.field private playMsg:Ljava/lang/String;

.field private screenNew:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 5
    .param p1, "src"    # Ljava/lang/String;

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/MessageInfo;-><init>()V

    .line 18
    const-string v3, ""

    iput-object v3, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/FlashInfoMessage;->playMsg:Ljava/lang/String;

    .line 19
    const-string v3, ""

    iput-object v3, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/FlashInfoMessage;->screenNew:Ljava/lang/String;

    .line 22
    const/16 v3, 0x15

    iput v3, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/FlashInfoMessage;->type:I

    .line 23
    const/4 v1, 0x0

    .line 25
    .local v1, "root":Lorg/json/JSONObject;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "root":Lorg/json/JSONObject;
    .local v2, "root":Lorg/json/JSONObject;
    move-object v1, v2

    .line 29
    .end local v2    # "root":Lorg/json/JSONObject;
    .restart local v1    # "root":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    .line 36
    :goto_1
    return-void

    .line 26
    :catch_0
    move-exception v0

    .line 27
    .local v0, "e":Lorg/json/JSONException;
    sget-boolean v3, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 32
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_1
    const-string/jumbo v3, "roomid"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/FlashInfoMessage;->mRoomId:Ljava/lang/String;

    .line 33
    const-string v3, "body"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    iput-object v3, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/FlashInfoMessage;->mBody:Lorg/json/JSONObject;

    .line 34
    iget-object v3, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/FlashInfoMessage;->mBody:Lorg/json/JSONObject;

    const-string v4, "m"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/FlashInfoMessage;->playMsg:Ljava/lang/String;

    .line 35
    iget-object v3, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/FlashInfoMessage;->mBody:Lorg/json/JSONObject;

    const-string v4, "in"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/FlashInfoMessage;->screenNew:Ljava/lang/String;

    goto :goto_1
.end method


# virtual methods
.method public getPlayStatus()Z
    .locals 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/FlashInfoMessage;->playMsg:Ljava/lang/String;

    const-string/jumbo v1, "start"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    const/4 v0, 0x1

    .line 42
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getScreenNew()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/FlashInfoMessage;->screenNew:Ljava/lang/String;

    return-object v0
.end method
