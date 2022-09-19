.class public Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/AttentionMessage;
.super Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/MessageInfo;
.source "AttentionMessage.java"


# static fields
.field public static final ATTENTION_MSG:Ljava/lang/String; = "attention"

.field public static final BODY_ATTENTION_NUM:Ljava/lang/String; = "an"


# instance fields
.field private attentionCount:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 5
    .param p1, "src"    # Ljava/lang/String;

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/MessageInfo;-><init>()V

    .line 13
    const/4 v3, 0x0

    iput v3, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/AttentionMessage;->attentionCount:I

    .line 16
    const/16 v3, 0x16

    iput v3, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/AttentionMessage;->type:I

    .line 17
    const/4 v1, 0x0

    .line 19
    .local v1, "root":Lorg/json/JSONObject;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .end local v1    # "root":Lorg/json/JSONObject;
    .local v2, "root":Lorg/json/JSONObject;
    if-nez v2, :cond_1

    move-object v1, v2

    .line 29
    .end local v2    # "root":Lorg/json/JSONObject;
    .restart local v1    # "root":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-void

    .line 23
    .end local v1    # "root":Lorg/json/JSONObject;
    .restart local v2    # "root":Lorg/json/JSONObject;
    :cond_1
    :try_start_1
    const-string/jumbo v3, "roomid"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/AttentionMessage;->mRoomId:Ljava/lang/String;

    .line 24
    const-string v3, "body"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    iput-object v3, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/AttentionMessage;->mBody:Lorg/json/JSONObject;

    .line 25
    iget-object v3, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/AttentionMessage;->mBody:Lorg/json/JSONObject;

    const-string v4, "an"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/AttentionMessage;->attentionCount:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v2

    .line 28
    .end local v2    # "root":Lorg/json/JSONObject;
    .restart local v1    # "root":Lorg/json/JSONObject;
    goto :goto_0

    .line 26
    :catch_0
    move-exception v0

    .line 27
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    sget-boolean v3, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 26
    .end local v0    # "e":Ljava/lang/Exception;
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
.method public getAttentionCount()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/AttentionMessage;->attentionCount:I

    return v0
.end method
