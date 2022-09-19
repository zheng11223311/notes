.class public Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/EnterMessage;
.super Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/MessageInfo;
.source "EnterMessage.java"


# static fields
.field public static final BODY_ANCHOR_LEVEL:Ljava/lang/String; = "al"

.field public static final BODY_ID:Ljava/lang/String; = "i"

.field public static final BODY_LEVEL:Ljava/lang/String; = "l"

.field public static final BODY_NAME:Ljava/lang/String; = "n"

.field public static final BODY_TIME:Ljava/lang/String; = "t"

.field public static final BODY_XINGBIE:Ljava/lang/String; = "gd"

.field public static final ENTER_MSG:Ljava/lang/String; = "enterMessage"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 8
    .param p1, "src"    # Ljava/lang/String;

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/MessageInfo;-><init>()V

    .line 20
    const/16 v4, 0x13

    iput v4, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/EnterMessage;->type:I

    .line 21
    const/4 v2, 0x0

    .line 23
    .local v2, "root":Lorg/json/JSONObject;
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "root":Lorg/json/JSONObject;
    .local v3, "root":Lorg/json/JSONObject;
    move-object v2, v3

    .line 27
    .end local v3    # "root":Lorg/json/JSONObject;
    .restart local v2    # "root":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    if-nez v2, :cond_1

    .line 34
    :goto_1
    return-void

    .line 24
    :catch_0
    move-exception v0

    .line 25
    .local v0, "e":Lorg/json/JSONException;
    sget-boolean v4, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 30
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_1
    const-string/jumbo v4, "roomid"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/EnterMessage;->mRoomId:Ljava/lang/String;

    .line 31
    const-string v4, "body"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    iput-object v4, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/EnterMessage;->mBody:Lorg/json/JSONObject;

    .line 32
    const-string v1, "%1$s \" \u8fdb\u5165\u9891\u9053"

    .line 33
    .local v1, "result":Ljava/lang/String;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/EnterMessage;->mBody:Lorg/json/JSONObject;

    const-string v7, "n"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/EnterMessage;->mMessageDetail:Ljava/lang/String;

    goto :goto_1
.end method
