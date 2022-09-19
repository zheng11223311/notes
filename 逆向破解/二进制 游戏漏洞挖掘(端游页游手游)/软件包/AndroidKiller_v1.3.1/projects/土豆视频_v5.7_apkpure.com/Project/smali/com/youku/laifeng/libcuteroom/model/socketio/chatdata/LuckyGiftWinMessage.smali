.class public Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/LuckyGiftWinMessage;
.super Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/MessageInfo;
.source "LuckyGiftWinMessage.java"


# static fields
.field public static final BODY_MSG:Ljava/lang/String; = "m"

.field public static final BODY_REWARD:Ljava/lang/String; = "r"

.field public static final BODY_TIME:Ljava/lang/String; = "t"

.field public static final BODY_TO_ID:Ljava/lang/String; = "ti"

.field public static final SEND_LUCKY_GIFT_WIN:Ljava/lang/String; = "luckyGiftWinning"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 6
    .param p1, "src"    # Ljava/lang/String;

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/MessageInfo;-><init>()V

    .line 19
    const/16 v3, 0x18

    iput v3, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/LuckyGiftWinMessage;->type:I

    .line 20
    const/4 v1, 0x0

    .line 22
    .local v1, "root":Lorg/json/JSONObject;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "root":Lorg/json/JSONObject;
    .local v2, "root":Lorg/json/JSONObject;
    move-object v1, v2

    .line 26
    .end local v2    # "root":Lorg/json/JSONObject;
    .restart local v1    # "root":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    if-nez v1, :cond_2

    .line 35
    :cond_1
    :goto_1
    return-void

    .line 23
    :catch_0
    move-exception v0

    .line 24
    .local v0, "e":Lorg/json/JSONException;
    sget-boolean v3, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 29
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_2
    const-string/jumbo v3, "roomid"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/LuckyGiftWinMessage;->mRoomId:Ljava/lang/String;

    .line 30
    const-string v3, "body"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    iput-object v3, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/LuckyGiftWinMessage;->mBody:Lorg/json/JSONObject;

    .line 31
    iget-object v3, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/LuckyGiftWinMessage;->mBody:Lorg/json/JSONObject;

    const-string v4, "m"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/LuckyGiftWinMessage;->mMessageDetail:Ljava/lang/String;

    .line 32
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getLibInstance()Lcom/youku/laifeng/libcuteroom/LibAppApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getUserInfo()Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getLibInstance()Lcom/youku/laifeng/libcuteroom/LibAppApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getUserInfo()Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;->getId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/LuckyGiftWinMessage;->mBody:Lorg/json/JSONObject;

    const-string/jumbo v5, "ti"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 33
    const/4 v3, 0x2

    iput v3, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/LuckyGiftWinMessage;->mGetOrPost:I

    goto :goto_1
.end method
