.class public Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/TopNoticeMessage;
.super Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/MessageInfo;
.source "TopNoticeMessage.java"


# static fields
.field public static final BODY_MSG:Ljava/lang/String; = "m"

.field public static final BODY_TIME:Ljava/lang/String; = "t"

.field public static final TOP_NOTICE_MESSAGE:Ljava/lang/String; = "topNoticeMessage"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 5
    .param p1, "src"    # Ljava/lang/String;

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/MessageInfo;-><init>()V

    .line 16
    const/16 v3, 0x20

    iput v3, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/TopNoticeMessage;->type:I

    .line 17
    const/4 v1, 0x0

    .line 19
    .local v1, "root":Lorg/json/JSONObject;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "root":Lorg/json/JSONObject;
    .local v2, "root":Lorg/json/JSONObject;
    move-object v1, v2

    .line 23
    .end local v2    # "root":Lorg/json/JSONObject;
    .restart local v1    # "root":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    .line 29
    :goto_1
    return-void

    .line 20
    :catch_0
    move-exception v0

    .line 21
    .local v0, "e":Lorg/json/JSONException;
    sget-boolean v3, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 26
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_1
    const-string/jumbo v3, "roomid"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/TopNoticeMessage;->mRoomId:Ljava/lang/String;

    .line 27
    const-string v3, "body"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    iput-object v3, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/TopNoticeMessage;->mBody:Lorg/json/JSONObject;

    .line 28
    iget-object v3, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/TopNoticeMessage;->mBody:Lorg/json/JSONObject;

    const-string v4, "m"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/TopNoticeMessage;->mMessageDetail:Ljava/lang/String;

    goto :goto_1
.end method
