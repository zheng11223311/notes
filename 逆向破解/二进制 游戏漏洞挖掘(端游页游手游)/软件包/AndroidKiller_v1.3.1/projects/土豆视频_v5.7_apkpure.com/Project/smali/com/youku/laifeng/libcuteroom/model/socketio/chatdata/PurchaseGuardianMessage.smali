.class public Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/PurchaseGuardianMessage;
.super Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/MessageInfo;
.source "PurchaseGuardianMessage.java"


# static fields
.field public static final BODY_ANCHOR_LEVEL:Ljava/lang/String; = "al"

.field public static final BODY_END_TIME:Ljava/lang/String; = "et"

.field public static final BODY_ID:Ljava/lang/String; = "i"

.field public static final BODY_LEVEL:Ljava/lang/String; = "l"

.field public static final BODY_NICK_NAME:Ljava/lang/String; = "n"

.field public static final BODY_SERVER_TIME:Ljava/lang/String; = "ts"

.field public static final BODY_USER_FACE:Ljava/lang/String; = "f"

.field public static final BODY_XINGBIE:Ljava/lang/String; = "gd"

.field public static final PURCHASE_GUARDIAN_MESSAGE:Ljava/lang/String; = "psDone"


# instance fields
.field public ancherName:Ljava/lang/String;

.field public nickName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 6
    .param p1, "src"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/MessageInfo;-><init>()V

    .line 38
    const/16 v3, 0x25

    iput v3, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/PurchaseGuardianMessage;->type:I

    .line 39
    const/4 v1, 0x0

    .line 41
    .local v1, "root":Lorg/json/JSONObject;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "root":Lorg/json/JSONObject;
    .local v2, "root":Lorg/json/JSONObject;
    move-object v1, v2

    .line 45
    .end local v2    # "root":Lorg/json/JSONObject;
    .restart local v1    # "root":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    if-nez v1, :cond_2

    .line 63
    :cond_1
    :goto_1
    return-void

    .line 42
    :catch_0
    move-exception v0

    .line 43
    .local v0, "e":Lorg/json/JSONException;
    sget-boolean v3, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 48
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_2
    const-string/jumbo v3, "roomid"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/PurchaseGuardianMessage;->mRoomId:Ljava/lang/String;

    .line 49
    const-string v3, "body"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    iput-object v3, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/PurchaseGuardianMessage;->mBody:Lorg/json/JSONObject;

    .line 52
    iget-object v3, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/PurchaseGuardianMessage;->mBody:Lorg/json/JSONObject;

    const-string v4, "n"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/PurchaseGuardianMessage;->nickName:Ljava/lang/String;

    .line 54
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/model/data/RoomInfo;->getInstance()Lcom/youku/laifeng/libcuteroom/model/data/RoomInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/youku/laifeng/libcuteroom/model/data/RoomInfo;->getRoomInfo()Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanRoomInfo;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/model/data/RoomInfo;->getInstance()Lcom/youku/laifeng/libcuteroom/model/data/RoomInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/youku/laifeng/libcuteroom/model/data/RoomInfo;->getRoomInfo()Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanRoomInfo;

    move-result-object v3

    const-string v4, "id"

    invoke-virtual {v3, v4}, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanRoomInfo;->getAnchorInfoByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/PurchaseGuardianMessage;->mBody:Lorg/json/JSONObject;

    const-string v5, "i"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 55
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/PurchaseGuardianMessage;->mIsAnchor:Z

    .line 59
    :cond_3
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/model/data/RoomInfo;->getInstance()Lcom/youku/laifeng/libcuteroom/model/data/RoomInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/youku/laifeng/libcuteroom/model/data/RoomInfo;->getRoomInfo()Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanRoomInfo;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 60
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/model/data/RoomInfo;->getInstance()Lcom/youku/laifeng/libcuteroom/model/data/RoomInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/youku/laifeng/libcuteroom/model/data/RoomInfo;->getRoomInfo()Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanRoomInfo;

    move-result-object v3

    const-string v4, "nickName"

    invoke-virtual {v3, v4}, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanRoomInfo;->getAnchorInfoByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/PurchaseGuardianMessage;->ancherName:Ljava/lang/String;

    goto :goto_1
.end method


# virtual methods
.method public getAncherName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/PurchaseGuardianMessage;->ancherName:Ljava/lang/String;

    return-object v0
.end method
