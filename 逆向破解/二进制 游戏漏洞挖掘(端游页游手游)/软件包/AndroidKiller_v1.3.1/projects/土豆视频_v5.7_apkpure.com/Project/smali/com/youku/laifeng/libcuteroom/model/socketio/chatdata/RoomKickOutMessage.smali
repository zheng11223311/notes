.class public Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/RoomKickOutMessage;
.super Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/MessageInfo;
.source "RoomKickOutMessage.java"


# static fields
.field public static final BODY_ANCHOR_LEVEL:Ljava/lang/String; = "anchorLevel"

.field public static final BODY_ATTENTION_NUM:Ljava/lang/String; = "attentionNum"

.field public static final BODY_ORIGIN_ANCHOR_LEVEL:Ljava/lang/String; = "originAnchorLevel"

.field public static final BODY_ORIGIN_USER_ID:Ljava/lang/String; = "originUserId"

.field public static final BODY_TARGET_USER_ID:Ljava/lang/String; = "targetUserId"

.field public static final BODY_TARGET_USER_LEVEL:Ljava/lang/String; = "targetUserLevel"

.field public static final BODY_USER_LEVEL:Ljava/lang/String; = "userLevel"

.field public static final KICK_OUT_MESSAGE:Ljava/lang/String; = "userRoomKickout"


# instance fields
.field private anchorLevel:Ljava/lang/String;

.field private attentionNum:Ljava/lang/String;

.field private originAnchorLevel:Ljava/lang/String;

.field private originUserId:Ljava/lang/String;

.field private targetUserId:Ljava/lang/String;

.field private targetUserLevel:Ljava/lang/String;

.field private userLevel:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 5
    .param p1, "src"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/MessageInfo;-><init>()V

    .line 20
    const-string v3, ""

    iput-object v3, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/RoomKickOutMessage;->userLevel:Ljava/lang/String;

    .line 21
    const-string v3, ""

    iput-object v3, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/RoomKickOutMessage;->anchorLevel:Ljava/lang/String;

    .line 22
    const-string v3, ""

    iput-object v3, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/RoomKickOutMessage;->originUserId:Ljava/lang/String;

    .line 23
    const-string v3, ""

    iput-object v3, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/RoomKickOutMessage;->attentionNum:Ljava/lang/String;

    .line 24
    const-string v3, ""

    iput-object v3, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/RoomKickOutMessage;->originAnchorLevel:Ljava/lang/String;

    .line 25
    const-string v3, ""

    iput-object v3, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/RoomKickOutMessage;->targetUserLevel:Ljava/lang/String;

    .line 26
    const-string v3, ""

    iput-object v3, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/RoomKickOutMessage;->targetUserId:Ljava/lang/String;

    .line 29
    const/16 v3, 0x17

    iput v3, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/RoomKickOutMessage;->type:I

    .line 30
    const/4 v1, 0x0

    .line 32
    .local v1, "root":Lorg/json/JSONObject;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .end local v1    # "root":Lorg/json/JSONObject;
    .local v2, "root":Lorg/json/JSONObject;
    if-nez v2, :cond_1

    move-object v1, v2

    .line 49
    .end local v2    # "root":Lorg/json/JSONObject;
    .restart local v1    # "root":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-void

    .line 36
    .end local v1    # "root":Lorg/json/JSONObject;
    .restart local v2    # "root":Lorg/json/JSONObject;
    :cond_1
    :try_start_1
    const-string/jumbo v3, "targetuserid"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/RoomKickOutMessage;->mTargetuserId:Ljava/lang/String;

    .line 37
    const-string/jumbo v3, "roomid"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/RoomKickOutMessage;->mRoomId:Ljava/lang/String;

    .line 38
    const-string v3, "body"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    iput-object v3, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/RoomKickOutMessage;->mBody:Lorg/json/JSONObject;

    .line 39
    iget-object v3, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/RoomKickOutMessage;->mBody:Lorg/json/JSONObject;

    const-string/jumbo v4, "userLevel"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/RoomKickOutMessage;->userLevel:Ljava/lang/String;

    .line 40
    iget-object v3, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/RoomKickOutMessage;->mBody:Lorg/json/JSONObject;

    const-string v4, "anchorLevel"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/RoomKickOutMessage;->anchorLevel:Ljava/lang/String;

    .line 41
    iget-object v3, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/RoomKickOutMessage;->mBody:Lorg/json/JSONObject;

    const-string v4, "originUserId"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/RoomKickOutMessage;->originUserId:Ljava/lang/String;

    .line 42
    iget-object v3, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/RoomKickOutMessage;->mBody:Lorg/json/JSONObject;

    const-string v4, "attentionNum"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/RoomKickOutMessage;->attentionNum:Ljava/lang/String;

    .line 43
    iget-object v3, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/RoomKickOutMessage;->mBody:Lorg/json/JSONObject;

    const-string v4, "originAnchorLevel"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/RoomKickOutMessage;->originAnchorLevel:Ljava/lang/String;

    .line 44
    iget-object v3, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/RoomKickOutMessage;->mBody:Lorg/json/JSONObject;

    const-string/jumbo v4, "targetUserLevel"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/RoomKickOutMessage;->targetUserLevel:Ljava/lang/String;

    .line 45
    iget-object v3, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/RoomKickOutMessage;->mBody:Lorg/json/JSONObject;

    const-string/jumbo v4, "targetUserId"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/RoomKickOutMessage;->targetUserId:Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v2

    .line 48
    .end local v2    # "root":Lorg/json/JSONObject;
    .restart local v1    # "root":Lorg/json/JSONObject;
    goto :goto_0

    .line 46
    :catch_0
    move-exception v0

    .line 47
    .local v0, "e":Lorg/json/JSONException;
    :goto_1
    sget-boolean v3, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 46
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v1    # "root":Lorg/json/JSONObject;
    .restart local v2    # "root":Lorg/json/JSONObject;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2    # "root":Lorg/json/JSONObject;
    .restart local v1    # "root":Lorg/json/JSONObject;
    goto :goto_1
.end method


# virtual methods
.method public getAnchorLevel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/RoomKickOutMessage;->anchorLevel:Ljava/lang/String;

    return-object v0
.end method

.method public getAttentionNum()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/RoomKickOutMessage;->attentionNum:Ljava/lang/String;

    return-object v0
.end method

.method public getBodyTargetUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/RoomKickOutMessage;->targetUserId:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginAnchorLevel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/RoomKickOutMessage;->originAnchorLevel:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/RoomKickOutMessage;->originUserId:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/RoomKickOutMessage;->mTargetuserId:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetUserLevel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/RoomKickOutMessage;->targetUserLevel:Ljava/lang/String;

    return-object v0
.end method

.method public getUserLevel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/RoomKickOutMessage;->userLevel:Ljava/lang/String;

    return-object v0
.end method
