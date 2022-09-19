.class public Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/StarMessage;
.super Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/MessageInfo;
.source "StarMessage.java"


# static fields
.field public static final BODY_ANCHOR_LEVEL:Ljava/lang/String; = "al"

.field public static final BODY_GIFT_NUM:Ljava/lang/String; = "q"

.field public static final BODY_GUANFANG:Ljava/lang/String; = "gf"

.field public static final BODY_ID:Ljava/lang/String; = "i"

.field public static final BODY_LEVEL:Ljava/lang/String; = "l"

.field public static final BODY_NAME:Ljava/lang/String; = "n"

.field public static final BODY_TIME:Ljava/lang/String; = "t"

.field public static final BODY_XINGBIE:Ljava/lang/String; = "gd"

.field public static final SEND_STAR:Ljava/lang/String; = "sendStar"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 9
    .param p1, "src"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 22
    invoke-direct {p0}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/MessageInfo;-><init>()V

    .line 23
    const/16 v4, 0x14

    iput v4, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/StarMessage;->type:I

    .line 24
    const/4 v2, 0x0

    .line 26
    .local v2, "root":Lorg/json/JSONObject;
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "root":Lorg/json/JSONObject;
    .local v3, "root":Lorg/json/JSONObject;
    move-object v2, v3

    .line 30
    .end local v3    # "root":Lorg/json/JSONObject;
    .restart local v2    # "root":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    if-nez v2, :cond_1

    .line 42
    :goto_1
    return-void

    .line 27
    :catch_0
    move-exception v0

    .line 28
    .local v0, "e":Lorg/json/JSONException;
    sget-boolean v4, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 33
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_1
    const-string/jumbo v4, "roomid"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/StarMessage;->mRoomId:Ljava/lang/String;

    .line 34
    const-string v4, "body"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    iput-object v4, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/StarMessage;->mBody:Lorg/json/JSONObject;

    .line 35
    iget-object v4, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/StarMessage;->mBody:Lorg/json/JSONObject;

    const-string v5, "q"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-le v4, v7, :cond_2

    .line 36
    const-string/jumbo v1, "\u9001\u51fa %1$s x \u5c0f\u661f\u661f %2$s"

    .line 37
    .local v1, "result":Ljava/lang/String;
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/StarMessage;->mBody:Lorg/json/JSONObject;

    const-string v6, "q"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    const-string v5, "livehouse_gift_star"

    aput-object v5, v4, v7

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/StarMessage;->mMessageDetail:Ljava/lang/String;

    goto :goto_1

    .line 39
    .end local v1    # "result":Ljava/lang/String;
    :cond_2
    const-string/jumbo v1, "\u9001\u51fa \u5c0f\u661f\u661f %1$s"

    .line 40
    .restart local v1    # "result":Ljava/lang/String;
    new-array v4, v7, [Ljava/lang/Object;

    const-string v5, "livehouse_gift_star"

    aput-object v5, v4, v8

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/StarMessage;->mMessageDetail:Ljava/lang/String;

    goto :goto_1
.end method
