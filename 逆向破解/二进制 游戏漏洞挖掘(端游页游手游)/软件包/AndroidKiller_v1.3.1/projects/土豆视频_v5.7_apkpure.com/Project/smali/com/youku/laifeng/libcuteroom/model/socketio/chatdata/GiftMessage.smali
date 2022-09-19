.class public Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/GiftMessage;
.super Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/MessageInfo;
.source "GiftMessage.java"


# static fields
.field public static final BODY_ANCHOR_LEVEL:Ljava/lang/String; = "al"

.field public static final BODY_BEAN:Ljava/lang/String; = "e"

.field public static final BODY_GIFT_ID:Ljava/lang/String; = "g"

.field public static final BODY_GIFT_NUM:Ljava/lang/String; = "q"

.field public static final BODY_GUANFANG:Ljava/lang/String; = "gf"

.field public static final BODY_ID:Ljava/lang/String; = "i"

.field public static final BODY_LEVEL:Ljava/lang/String; = "l"

.field public static final BODY_NAME:Ljava/lang/String; = "n"

.field public static final BODY_PARAM_ID:Ljava/lang/String; = "pm"

.field public static final BODY_PRICE_COUNT:Ljava/lang/String; = "c"

.field public static final BODY_REWARD:Ljava/lang/String; = "r"

.field public static final BODY_REWARD_DETAILS:Ljava/lang/String; = "rd"

.field public static final BODY_REWARD_DETAILS_Q:Ljava/lang/String; = "q"

.field public static final BODY_REWARD_DETAILS_R:Ljava/lang/String; = "r"

.field public static final BODY_TIME:Ljava/lang/String; = "t"

.field public static final BODY_TO_ANCHOR_LEVEL:Ljava/lang/String; = "tal"

.field public static final BODY_TO_ID:Ljava/lang/String; = "ti"

.field public static final BODY_TO_LEVEL:Ljava/lang/String; = "tl"

.field public static final BODY_TO_NAME:Ljava/lang/String; = "tn"

.field public static final BODY_XINGBIE:Ljava/lang/String; = "gd"

.field public static final SEND_GIFT:Ljava/lang/String; = "sendGift"


# instance fields
.field private hasGift:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 13
    .param p1, "src"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 44
    invoke-direct {p0}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/MessageInfo;-><init>()V

    .line 38
    iput-boolean v10, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/GiftMessage;->hasGift:Z

    .line 45
    const/16 v5, 0x11

    iput v5, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/GiftMessage;->type:I

    .line 46
    const/4 v3, 0x0

    .line 48
    .local v3, "root":Lorg/json/JSONObject;
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3    # "root":Lorg/json/JSONObject;
    .local v4, "root":Lorg/json/JSONObject;
    move-object v3, v4

    .line 52
    .end local v4    # "root":Lorg/json/JSONObject;
    .restart local v3    # "root":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    if-nez v3, :cond_2

    .line 84
    :cond_1
    :goto_1
    return-void

    .line 49
    :catch_0
    move-exception v0

    .line 50
    .local v0, "e":Lorg/json/JSONException;
    sget-boolean v5, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v5, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 55
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_2
    const-string/jumbo v5, "roomid"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/GiftMessage;->mRoomId:Ljava/lang/String;

    .line 56
    const-string v5, "body"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    iput-object v5, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/GiftMessage;->mBody:Lorg/json/JSONObject;

    .line 57
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/model/data/Gifts;->getInstance()Lcom/youku/laifeng/libcuteroom/model/data/Gifts;

    move-result-object v5

    iget-object v6, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/GiftMessage;->mBody:Lorg/json/JSONObject;

    const-string v7, "g"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/youku/laifeng/libcuteroom/model/data/Gifts;->getGiftById(Ljava/lang/String;)Lcom/youku/laifeng/libcuteroom/model/data/Gifts$BeanGift;

    move-result-object v5

    invoke-virtual {v5}, Lcom/youku/laifeng/libcuteroom/model/data/Gifts$BeanGift;->getId()Ljava/lang/String;

    move-result-object v5

    const-string v6, "-1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 58
    iput-boolean v10, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/GiftMessage;->hasGift:Z

    .line 62
    :goto_2
    iget-object v5, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/GiftMessage;->mBody:Lorg/json/JSONObject;

    const-string v6, "q"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-le v5, v9, :cond_6

    .line 63
    const-string/jumbo v1, "\u9001\u51fa %1$s x %2$s %3$s"

    .line 64
    .local v1, "result":Ljava/lang/String;
    new-array v5, v12, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/GiftMessage;->mBody:Lorg/json/JSONObject;

    const-string v7, "q"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v10

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/model/data/Gifts;->getInstance()Lcom/youku/laifeng/libcuteroom/model/data/Gifts;

    move-result-object v6

    iget-object v7, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/GiftMessage;->mBody:Lorg/json/JSONObject;

    const-string v8, "g"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/youku/laifeng/libcuteroom/model/data/Gifts;->getGiftById(Ljava/lang/String;)Lcom/youku/laifeng/libcuteroom/model/data/Gifts$BeanGift;

    move-result-object v6

    invoke-virtual {v6}, Lcom/youku/laifeng/libcuteroom/model/data/Gifts$BeanGift;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "xingmeng_gift_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/GiftMessage;->mBody:Lorg/json/JSONObject;

    const-string v8, "g"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v11

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/GiftMessage;->mMessageDetail:Ljava/lang/String;

    .line 69
    :goto_3
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/model/data/RoomInfo;->getInstance()Lcom/youku/laifeng/libcuteroom/model/data/RoomInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/youku/laifeng/libcuteroom/model/data/RoomInfo;->getRoomInfo()Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanRoomInfo;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/model/data/RoomInfo;->getInstance()Lcom/youku/laifeng/libcuteroom/model/data/RoomInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/youku/laifeng/libcuteroom/model/data/RoomInfo;->getRoomInfo()Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanRoomInfo;

    move-result-object v5

    const-string v6, "id"

    invoke-virtual {v5, v6}, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanRoomInfo;->getAnchorInfoByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/GiftMessage;->mBody:Lorg/json/JSONObject;

    const-string v7, "i"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 70
    iput-boolean v9, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/GiftMessage;->mIsAnchor:Z

    .line 72
    :cond_3
    iget-boolean v5, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/GiftMessage;->mIsAnchor:Z

    if-eqz v5, :cond_4

    .line 73
    iget-object v5, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/GiftMessage;->mBody:Lorg/json/JSONObject;

    const-string v6, "q"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-le v5, v9, :cond_7

    .line 74
    const-string/jumbo v2, "\u56de\u8d60\u7ed9 %1$s\uff1a %2$s x %3$s %4$s"

    .line 75
    .local v2, "resultA":Ljava/lang/String;
    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/GiftMessage;->mBody:Lorg/json/JSONObject;

    const-string/jumbo v7, "tn"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v10

    iget-object v6, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/GiftMessage;->mBody:Lorg/json/JSONObject;

    const-string v7, "q"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/model/data/Gifts;->getInstance()Lcom/youku/laifeng/libcuteroom/model/data/Gifts;

    move-result-object v6

    iget-object v7, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/GiftMessage;->mBody:Lorg/json/JSONObject;

    const-string v8, "g"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/youku/laifeng/libcuteroom/model/data/Gifts;->getGiftById(Ljava/lang/String;)Lcom/youku/laifeng/libcuteroom/model/data/Gifts$BeanGift;

    move-result-object v6

    invoke-virtual {v6}, Lcom/youku/laifeng/libcuteroom/model/data/Gifts$BeanGift;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v11

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "xingmeng_gift_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/GiftMessage;->mBody:Lorg/json/JSONObject;

    const-string v8, "g"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v12

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/GiftMessage;->mMessageDetail:Ljava/lang/String;

    .line 81
    .end local v2    # "resultA":Ljava/lang/String;
    :cond_4
    :goto_4
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getLibInstance()Lcom/youku/laifeng/libcuteroom/LibAppApplication;

    move-result-object v5

    invoke-virtual {v5}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getUserInfo()Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getLibInstance()Lcom/youku/laifeng/libcuteroom/LibAppApplication;

    move-result-object v5

    invoke-virtual {v5}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getUserInfo()Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;->getId()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/GiftMessage;->mBody:Lorg/json/JSONObject;

    const-string v7, "i"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 82
    iput v11, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/GiftMessage;->mGetOrPost:I

    goto/16 :goto_1

    .line 60
    .end local v1    # "result":Ljava/lang/String;
    :cond_5
    iput-boolean v9, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/GiftMessage;->hasGift:Z

    goto/16 :goto_2

    .line 66
    :cond_6
    const-string/jumbo v1, "\u9001\u51fa %1$s %2$s"

    .line 67
    .restart local v1    # "result":Ljava/lang/String;
    new-array v5, v11, [Ljava/lang/Object;

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/model/data/Gifts;->getInstance()Lcom/youku/laifeng/libcuteroom/model/data/Gifts;

    move-result-object v6

    iget-object v7, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/GiftMessage;->mBody:Lorg/json/JSONObject;

    const-string v8, "g"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/youku/laifeng/libcuteroom/model/data/Gifts;->getGiftById(Ljava/lang/String;)Lcom/youku/laifeng/libcuteroom/model/data/Gifts$BeanGift;

    move-result-object v6

    invoke-virtual {v6}, Lcom/youku/laifeng/libcuteroom/model/data/Gifts$BeanGift;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v10

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "xingmeng_gift_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/GiftMessage;->mBody:Lorg/json/JSONObject;

    const-string v8, "g"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/GiftMessage;->mMessageDetail:Ljava/lang/String;

    goto/16 :goto_3

    .line 77
    :cond_7
    const-string/jumbo v2, "\u56de\u8d60\u7ed9 %1$s\uff1a%2$s %3$s"

    .line 78
    .restart local v2    # "resultA":Ljava/lang/String;
    new-array v5, v12, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/GiftMessage;->mBody:Lorg/json/JSONObject;

    const-string/jumbo v7, "tn"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v10

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/model/data/Gifts;->getInstance()Lcom/youku/laifeng/libcuteroom/model/data/Gifts;

    move-result-object v6

    iget-object v7, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/GiftMessage;->mBody:Lorg/json/JSONObject;

    const-string v8, "g"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/youku/laifeng/libcuteroom/model/data/Gifts;->getGiftById(Ljava/lang/String;)Lcom/youku/laifeng/libcuteroom/model/data/Gifts$BeanGift;

    move-result-object v6

    invoke-virtual {v6}, Lcom/youku/laifeng/libcuteroom/model/data/Gifts$BeanGift;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "xingmeng_gift_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/GiftMessage;->mBody:Lorg/json/JSONObject;

    const-string v8, "g"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v11

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/GiftMessage;->mMessageDetail:Ljava/lang/String;

    goto/16 :goto_4
.end method


# virtual methods
.method public getBodyArrayByKey(Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/GiftMessage;->mBody:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method public hasGift()Z
    .locals 1

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/GiftMessage;->hasGift:Z

    return v0
.end method
