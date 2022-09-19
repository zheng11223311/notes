.class public Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/VoteTopMessage;
.super Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/MessageInfo;
.source "VoteTopMessage.java"


# static fields
.field public static final BODY_VI:Ljava/lang/String; = "vi"

.field public static final VOTE_TOP_MSG:Ljava/lang/String; = "voteTop"


# instance fields
.field private vi:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 5
    .param p1, "src"    # Ljava/lang/String;

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/MessageInfo;-><init>()V

    .line 18
    const/16 v3, 0x23

    iput v3, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/VoteTopMessage;->type:I

    .line 19
    const/4 v1, 0x0

    .line 21
    .local v1, "root":Lorg/json/JSONObject;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "root":Lorg/json/JSONObject;
    .local v2, "root":Lorg/json/JSONObject;
    move-object v1, v2

    .line 25
    .end local v2    # "root":Lorg/json/JSONObject;
    .restart local v1    # "root":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    if-nez v1, :cond_2

    .line 33
    :cond_1
    :goto_1
    return-void

    .line 22
    :catch_0
    move-exception v0

    .line 23
    .local v0, "e":Lorg/json/JSONException;
    sget-boolean v3, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 28
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_2
    const-string/jumbo v3, "roomid"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/VoteTopMessage;->mRoomId:Ljava/lang/String;

    .line 29
    const-string v3, "body"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    iput-object v3, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/VoteTopMessage;->mBody:Lorg/json/JSONObject;

    .line 30
    iget-object v3, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/VoteTopMessage;->mBody:Lorg/json/JSONObject;

    if-eqz v3, :cond_1

    .line 31
    iget-object v3, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/VoteTopMessage;->mBody:Lorg/json/JSONObject;

    const-string/jumbo v4, "vi"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/VoteTopMessage;->vi:I

    goto :goto_1
.end method


# virtual methods
.method public getVi()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/VoteTopMessage;->vi:I

    return v0
.end method
