.class public Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/ChatMessage;
.super Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/MessageInfo;
.source "ChatMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/ChatMessage$ChatPersonIdentity;
    }
.end annotation


# static fields
.field public static final BODY_ANCHOR_LEVEL:Ljava/lang/String; = "al"

.field public static final BODY_GUANFANG:Ljava/lang/String; = "gf"

.field public static final BODY_ID:Ljava/lang/String; = "i"

.field public static final BODY_LEVEL:Ljava/lang/String; = "l"

.field public static final BODY_MSG:Ljava/lang/String; = "m"

.field public static final BODY_NAME:Ljava/lang/String; = "n"

.field public static final BODY_TIME:Ljava/lang/String; = "t"

.field public static final BODY_TO_ID:Ljava/lang/String; = "ti"

.field public static final BODY_XINGBIE:Ljava/lang/String; = "gd"

.field public static final CHAT_MESSAGE:Ljava/lang/String; = "chatMessage"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 6
    .param p1, "src"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/MessageInfo;-><init>()V

    .line 32
    const/16 v3, 0x10

    iput v3, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/ChatMessage;->type:I

    .line 33
    const/4 v1, 0x0

    .line 35
    .local v1, "root":Lorg/json/JSONObject;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "root":Lorg/json/JSONObject;
    .local v2, "root":Lorg/json/JSONObject;
    move-object v1, v2

    .line 39
    .end local v2    # "root":Lorg/json/JSONObject;
    .restart local v1    # "root":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    if-nez v1, :cond_2

    .line 56
    :cond_1
    :goto_1
    return-void

    .line 36
    :catch_0
    move-exception v0

    .line 37
    .local v0, "e":Lorg/json/JSONException;
    sget-boolean v3, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 42
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_2
    const-string/jumbo v3, "roomid"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/ChatMessage;->mRoomId:Ljava/lang/String;

    .line 43
    const-string v3, "body"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    iput-object v3, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/ChatMessage;->mBody:Lorg/json/JSONObject;

    .line 44
    iget-object v3, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/ChatMessage;->mBody:Lorg/json/JSONObject;

    const-string v4, "m"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/ChatMessage;->mMessageDetail:Ljava/lang/String;

    .line 45
    const-string v3, "l"

    invoke-virtual {p0, v3}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/ChatMessage;->getBodyValueByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0x9

    if-le v3, v4, :cond_4

    .line 46
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/model/data/ExpressionDict;->getInstance()Lcom/youku/laifeng/libcuteroom/model/data/ExpressionDict;

    move-result-object v3

    iget-object v4, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/ChatMessage;->mMessageDetail:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/youku/laifeng/libcuteroom/model/data/ExpressionDict;->getConvertStringWithRealName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/ChatMessage;->mMessageDetail:Ljava/lang/String;

    .line 50
    :goto_2
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getLibInstance()Lcom/youku/laifeng/libcuteroom/LibAppApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getUserInfo()Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getLibInstance()Lcom/youku/laifeng/libcuteroom/LibAppApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getUserInfo()Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;->getId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/ChatMessage;->mBody:Lorg/json/JSONObject;

    const-string v5, "i"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 51
    const/4 v3, 0x2

    iput v3, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/ChatMessage;->mGetOrPost:I

    .line 53
    :cond_3
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/model/data/RoomInfo;->getInstance()Lcom/youku/laifeng/libcuteroom/model/data/RoomInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/youku/laifeng/libcuteroom/model/data/RoomInfo;->getRoomInfo()Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanRoomInfo;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/model/data/RoomInfo;->getInstance()Lcom/youku/laifeng/libcuteroom/model/data/RoomInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/youku/laifeng/libcuteroom/model/data/RoomInfo;->getRoomInfo()Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanRoomInfo;

    move-result-object v3

    const-string v4, "id"

    invoke-virtual {v3, v4}, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanRoomInfo;->getAnchorInfoByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/ChatMessage;->mBody:Lorg/json/JSONObject;

    const-string v5, "i"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 54
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/ChatMessage;->mIsAnchor:Z

    goto/16 :goto_1

    .line 48
    :cond_4
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/model/data/ExpressionDict;->getInstance()Lcom/youku/laifeng/libcuteroom/model/data/ExpressionDict;

    move-result-object v3

    iget-object v4, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/ChatMessage;->mMessageDetail:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/youku/laifeng/libcuteroom/model/data/ExpressionDict;->getConvertStringWithRealNameLowLv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/ChatMessage;->mMessageDetail:Ljava/lang/String;

    goto :goto_2
.end method
