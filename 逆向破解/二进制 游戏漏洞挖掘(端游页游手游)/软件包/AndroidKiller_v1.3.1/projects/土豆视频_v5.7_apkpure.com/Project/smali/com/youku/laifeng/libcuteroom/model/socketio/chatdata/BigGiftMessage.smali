.class public Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/BigGiftMessage;
.super Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/MessageInfo;
.source "BigGiftMessage.java"


# static fields
.field public static final BODY_FACE_URL:Ljava/lang/String; = "f"

.field public static final BODY_GIFT_ID:Ljava/lang/String; = "g"

.field public static final BODY_GIFT_NUM:Ljava/lang/String; = "q"

.field public static final BODY_NAME:Ljava/lang/String; = "n"

.field public static final BODY_REWARD:Ljava/lang/String; = "r"

.field public static final BODY_ROOM_ID:Ljava/lang/String; = "rm"

.field public static final BODY_TIME:Ljava/lang/String; = "t"

.field public static final BODY_TO_NAME:Ljava/lang/String; = "tn"

.field public static final BODY_XINGBIE:Ljava/lang/String; = "gd"

.field public static final SEND_BIG_GIFT:Ljava/lang/String; = "sendBigGift"


# instance fields
.field private hasGift:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 10
    .param p1, "src"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 32
    invoke-direct {p0}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/MessageInfo;-><init>()V

    .line 26
    iput-boolean v7, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/BigGiftMessage;->hasGift:Z

    .line 33
    const/16 v4, 0x12

    iput v4, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/BigGiftMessage;->type:I

    .line 34
    const/4 v2, 0x0

    .line 36
    .local v2, "root":Lorg/json/JSONObject;
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "root":Lorg/json/JSONObject;
    .local v3, "root":Lorg/json/JSONObject;
    move-object v2, v3

    .line 40
    .end local v3    # "root":Lorg/json/JSONObject;
    .restart local v2    # "root":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    if-nez v2, :cond_1

    .line 62
    :goto_1
    return-void

    .line 37
    :catch_0
    move-exception v0

    .line 38
    .local v0, "e":Lorg/json/JSONException;
    sget-boolean v4, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 43
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_1
    const-string/jumbo v4, "roomid"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/BigGiftMessage;->mRoomId:Ljava/lang/String;

    .line 44
    const-string v4, "body"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    iput-object v4, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/BigGiftMessage;->mBody:Lorg/json/JSONObject;

    .line 45
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/model/data/Gifts;->getInstance()Lcom/youku/laifeng/libcuteroom/model/data/Gifts;

    move-result-object v4

    iget-object v5, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/BigGiftMessage;->mBody:Lorg/json/JSONObject;

    const-string v6, "g"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/youku/laifeng/libcuteroom/model/data/Gifts;->getGiftById(Ljava/lang/String;)Lcom/youku/laifeng/libcuteroom/model/data/Gifts$BeanGift;

    move-result-object v4

    invoke-virtual {v4}, Lcom/youku/laifeng/libcuteroom/model/data/Gifts$BeanGift;->getId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "-1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 46
    iput-boolean v7, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/BigGiftMessage;->hasGift:Z

    .line 51
    :goto_2
    :try_start_1
    iget-object v4, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/BigGiftMessage;->mBody:Lorg/json/JSONObject;

    const-string v5, "q"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-le v4, v8, :cond_3

    .line 52
    const-string/jumbo v1, "\u9001\u51fa %1$s x %2$s %3$s"

    .line 53
    .local v1, "result":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/BigGiftMessage;->mBody:Lorg/json/JSONObject;

    const-string v8, "n"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/BigGiftMessage;->mBody:Lorg/json/JSONObject;

    const-string v8, "q"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/model/data/Gifts;->getInstance()Lcom/youku/laifeng/libcuteroom/model/data/Gifts;

    move-result-object v7

    iget-object v8, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/BigGiftMessage;->mBody:Lorg/json/JSONObject;

    const-string v9, "g"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/youku/laifeng/libcuteroom/model/data/Gifts;->getGiftById(Ljava/lang/String;)Lcom/youku/laifeng/libcuteroom/model/data/Gifts$BeanGift;

    move-result-object v7

    invoke-virtual {v7}, Lcom/youku/laifeng/libcuteroom/model/data/Gifts$BeanGift;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "xingmeng_gift_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/BigGiftMessage;->mBody:Lorg/json/JSONObject;

    const-string v6, "g"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/BigGiftMessage;->mMessageDetail:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 59
    .end local v1    # "result":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 60
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v4, ""

    iput-object v4, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/BigGiftMessage;->mMessageDetail:Ljava/lang/String;

    goto/16 :goto_1

    .line 48
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :cond_2
    iput-boolean v8, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/BigGiftMessage;->hasGift:Z

    goto :goto_2

    .line 55
    :cond_3
    :try_start_2
    const-string/jumbo v1, "\u9001\u51fa %1$s %2$s"

    .line 56
    .restart local v1    # "result":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/BigGiftMessage;->mBody:Lorg/json/JSONObject;

    const-string v8, "n"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/model/data/Gifts;->getInstance()Lcom/youku/laifeng/libcuteroom/model/data/Gifts;

    move-result-object v7

    iget-object v8, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/BigGiftMessage;->mBody:Lorg/json/JSONObject;

    const-string v9, "g"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/youku/laifeng/libcuteroom/model/data/Gifts;->getGiftById(Ljava/lang/String;)Lcom/youku/laifeng/libcuteroom/model/data/Gifts$BeanGift;

    move-result-object v7

    invoke-virtual {v7}, Lcom/youku/laifeng/libcuteroom/model/data/Gifts$BeanGift;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "xingmeng_gift_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/BigGiftMessage;->mBody:Lorg/json/JSONObject;

    const-string v6, "g"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/BigGiftMessage;->mMessageDetail:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1
.end method


# virtual methods
.method public hasGift()Z
    .locals 1

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/BigGiftMessage;->hasGift:Z

    return v0
.end method
