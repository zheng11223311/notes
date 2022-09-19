.class public Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/AnchorLevelMessage;
.super Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/MessageInfo;
.source "AnchorLevelMessage.java"


# static fields
.field public static final ANCHOR_LEVEL_MESSAGE:Ljava/lang/String; = "levelMsg"

.field public static final BODY_ANCHOR_LEVEL:Ljava/lang/String; = "cl"

.field public static final BODY_GAIN_BEAN:Ljava/lang/String; = "gb"

.field public static final BODY_HAS_BEAN:Ljava/lang/String; = "hb"

.field public static final BODY_NEXT_BEAN:Ljava/lang/String; = "nb"


# instance fields
.field private level:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 5
    .param p1, "src"    # Ljava/lang/String;

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/MessageInfo;-><init>()V

    .line 18
    const/4 v3, 0x0

    iput v3, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/AnchorLevelMessage;->level:I

    .line 21
    const/16 v3, 0x21

    iput v3, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/AnchorLevelMessage;->type:I

    .line 22
    const/4 v1, 0x0

    .line 24
    .local v1, "root":Lorg/json/JSONObject;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "root":Lorg/json/JSONObject;
    .local v2, "root":Lorg/json/JSONObject;
    move-object v1, v2

    .line 28
    .end local v2    # "root":Lorg/json/JSONObject;
    .restart local v1    # "root":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    if-nez v1, :cond_2

    .line 37
    :cond_1
    :goto_1
    return-void

    .line 25
    :catch_0
    move-exception v0

    .line 26
    .local v0, "e":Lorg/json/JSONException;
    sget-boolean v3, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 31
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_2
    const-string/jumbo v3, "roomid"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/AnchorLevelMessage;->mRoomId:Ljava/lang/String;

    .line 32
    const-string v3, "body"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    iput-object v3, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/AnchorLevelMessage;->mBody:Lorg/json/JSONObject;

    .line 33
    iget-object v3, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/AnchorLevelMessage;->mBody:Lorg/json/JSONObject;

    if-eqz v3, :cond_1

    .line 36
    iget-object v3, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/AnchorLevelMessage;->mBody:Lorg/json/JSONObject;

    const-string v4, "cl"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/AnchorLevelMessage;->level:I

    goto :goto_1
.end method


# virtual methods
.method public getAnchorLevel()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/AnchorLevelMessage;->level:I

    return v0
.end method
