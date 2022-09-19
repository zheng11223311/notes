.class public Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/HornMessage;
.super Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/MessageInfo;
.source "HornMessage.java"


# static fields
.field public static final BODY_ANCHOR_LEVEL:Ljava/lang/String; = "al"

.field public static final BODY_GUANFANG:Ljava/lang/String; = "gf"

.field public static final BODY_ID:Ljava/lang/String; = "i"

.field public static final BODY_LEVEL:Ljava/lang/String; = "l"

.field public static final BODY_MSG:Ljava/lang/String; = "m"

.field public static final BODY_NAME:Ljava/lang/String; = "n"

.field public static final BODY_TIME:Ljava/lang/String; = "t"

.field public static final BODY_XINGBIE:Ljava/lang/String; = "gd"

.field public static final HORN_MESSAGE:Ljava/lang/String; = "hornMessage"


# direct methods
.method public constructor <init>(Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/BigGiftMessage;)V
    .locals 12
    .param p1, "gift"    # Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/BigGiftMessage;

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 55
    invoke-direct {p0}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/MessageInfo;-><init>()V

    .line 56
    const/16 v4, 0x19

    iput v4, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/HornMessage;->type:I

    .line 57
    const-string/jumbo v4, "roomid"

    invoke-virtual {p1, v4}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/BigGiftMessage;->getBodyValueByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/HornMessage;->mRoomId:Ljava/lang/String;

    .line 58
    const-string v4, "r"

    invoke-virtual {p1, v4}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/BigGiftMessage;->getBodyValueByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v5, 0x64

    if-ge v4, v5, :cond_2

    .line 59
    const-string v4, "q"

    invoke-virtual {p1, v4}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/BigGiftMessage;->getBodyValueByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-le v4, v7, :cond_1

    .line 60
    const-string v4, "%1$s \u8d60\u9001\u7ed9 %2$s\uff1a %3$s x %4$s %5$s"

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "n"

    .line 61
    invoke-virtual {p1, v6}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/BigGiftMessage;->getBodyValueByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    const-string/jumbo v6, "tn"

    invoke-virtual {p1, v6}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/BigGiftMessage;->getBodyValueByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    const-string v6, "q"

    .line 62
    invoke-virtual {p1, v6}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/BigGiftMessage;->getBodyValueByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/model/data/Gifts;->getInstance()Lcom/youku/laifeng/libcuteroom/model/data/Gifts;

    move-result-object v6

    const-string v7, "g"

    invoke-virtual {p1, v7}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/BigGiftMessage;->getBodyValueByKey(Ljava/lang/String;)Ljava/lang/String;

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

    const-string v7, "g"

    invoke-virtual {p1, v7}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/BigGiftMessage;->getBodyValueByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v11

    .line 60
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/HornMessage;->mMessageDetail:Ljava/lang/String;

    .line 75
    :goto_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 77
    .local v2, "tmp":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v4, "roomid"

    const-string/jumbo v5, "roomid"

    invoke-virtual {p1, v5}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/BigGiftMessage;->getBodyValueByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 78
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 79
    .local v3, "tmp2":Lorg/json/JSONObject;
    const-string v4, "n"

    const-string v5, "n"

    invoke-virtual {p1, v5}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/BigGiftMessage;->getBodyValueByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 80
    const-string v4, "al"

    const-string v5, "g"

    invoke-virtual {p1, v5}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/BigGiftMessage;->getBodyValueByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 81
    const-string v4, "gd"

    const-string v5, "gd"

    invoke-virtual {p1, v5}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/BigGiftMessage;->getBodyValueByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 82
    const-string v4, "l"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 83
    const-string/jumbo v4, "t"

    const-string/jumbo v5, "t"

    invoke-virtual {p1, v5}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/BigGiftMessage;->getBodyValueByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 84
    const-string v4, "i"

    const-string/jumbo v5, "sendBigGift"

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 85
    const-string v4, "m"

    iget-object v5, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/HornMessage;->mMessageDetail:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 86
    const-string v4, "body"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 87
    iput-object v3, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/HornMessage;->mBody:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    .end local v3    # "tmp2":Lorg/json/JSONObject;
    :cond_0
    :goto_1
    return-void

    .line 64
    .end local v2    # "tmp":Lorg/json/JSONObject;
    :cond_1
    const-string v4, "%1$s \u8d60\u9001\u7ed9 %2$s\uff1a %3$s %4$s"

    new-array v5, v11, [Ljava/lang/Object;

    const-string v6, "n"

    .line 65
    invoke-virtual {p1, v6}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/BigGiftMessage;->getBodyValueByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    const-string/jumbo v6, "tn"

    invoke-virtual {p1, v6}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/BigGiftMessage;->getBodyValueByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    .line 66
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/model/data/Gifts;->getInstance()Lcom/youku/laifeng/libcuteroom/model/data/Gifts;

    move-result-object v6

    const-string v7, "g"

    invoke-virtual {p1, v7}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/BigGiftMessage;->getBodyValueByKey(Ljava/lang/String;)Ljava/lang/String;

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

    const-string v7, "g"

    invoke-virtual {p1, v7}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/BigGiftMessage;->getBodyValueByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v10

    .line 64
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/HornMessage;->mMessageDetail:Ljava/lang/String;

    goto/16 :goto_0

    .line 69
    :cond_2
    const-string v4, "%1$s \u5728 %2$s \u9891\u9053\u7206\u51fa %3$s %4$s %5$s \u500d\u5956\u52b1"

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "n"

    .line 70
    invoke-virtual {p1, v6}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/BigGiftMessage;->getBodyValueByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    const-string/jumbo v6, "tn"

    invoke-virtual {p1, v6}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/BigGiftMessage;->getBodyValueByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    .line 71
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/model/data/Gifts;->getInstance()Lcom/youku/laifeng/libcuteroom/model/data/Gifts;

    move-result-object v6

    const-string v7, "g"

    invoke-virtual {p1, v7}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/BigGiftMessage;->getBodyValueByKey(Ljava/lang/String;)Ljava/lang/String;

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

    const-string v7, "g"

    .line 72
    invoke-virtual {p1, v7}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/BigGiftMessage;->getBodyValueByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v10

    const-string v6, "r"

    invoke-virtual {p1, v6}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/BigGiftMessage;->getBodyValueByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v11

    .line 69
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 73
    .local v1, "result":Ljava/lang/String;
    iput-object v1, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/HornMessage;->mMessageDetail:Ljava/lang/String;

    goto/16 :goto_0

    .line 88
    .end local v1    # "result":Ljava/lang/String;
    .restart local v2    # "tmp":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 89
    .local v0, "e":Lorg/json/JSONException;
    sget-boolean v4, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_1
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 7
    .param p1, "src"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x7

    .line 28
    invoke-direct {p0}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/MessageInfo;-><init>()V

    .line 29
    const/16 v3, 0x19

    iput v3, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/HornMessage;->type:I

    .line 30
    const/4 v1, 0x0

    .line 32
    .local v1, "root":Lorg/json/JSONObject;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "root":Lorg/json/JSONObject;
    .local v2, "root":Lorg/json/JSONObject;
    move-object v1, v2

    .line 36
    .end local v2    # "root":Lorg/json/JSONObject;
    .restart local v1    # "root":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    if-nez v1, :cond_2

    .line 53
    :cond_1
    :goto_1
    return-void

    .line 33
    :catch_0
    move-exception v0

    .line 34
    .local v0, "e":Lorg/json/JSONException;
    sget-boolean v3, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 39
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_2
    const-string/jumbo v3, "roomid"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/HornMessage;->mRoomId:Ljava/lang/String;

    .line 40
    const-string v3, "body"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    iput-object v3, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/HornMessage;->mBody:Lorg/json/JSONObject;

    .line 41
    iget-object v3, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/HornMessage;->mBody:Lorg/json/JSONObject;

    const-string v4, "m"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/HornMessage;->mMessageDetail:Ljava/lang/String;

    .line 42
    iget-object v3, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/HornMessage;->mBody:Lorg/json/JSONObject;

    const-string v4, "n"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v6, :cond_4

    .line 43
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/HornMessage;->mBody:Lorg/json/JSONObject;

    const-string v5, "n"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "... : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/HornMessage;->mMessageDetail:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/HornMessage;->mMessageDetail:Ljava/lang/String;

    .line 47
    :goto_2
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getLibInstance()Lcom/youku/laifeng/libcuteroom/LibAppApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getUserInfo()Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getLibInstance()Lcom/youku/laifeng/libcuteroom/LibAppApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getUserInfo()Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;->getId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/HornMessage;->mBody:Lorg/json/JSONObject;

    const-string v5, "i"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 48
    const/4 v3, 0x2

    iput v3, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/HornMessage;->mGetOrPost:I

    .line 50
    :cond_3
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/model/data/RoomInfo;->getInstance()Lcom/youku/laifeng/libcuteroom/model/data/RoomInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/youku/laifeng/libcuteroom/model/data/RoomInfo;->getRoomInfo()Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanRoomInfo;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/model/data/RoomInfo;->getInstance()Lcom/youku/laifeng/libcuteroom/model/data/RoomInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/youku/laifeng/libcuteroom/model/data/RoomInfo;->getRoomInfo()Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanRoomInfo;

    move-result-object v3

    const-string v4, "id"

    invoke-virtual {v3, v4}, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanRoomInfo;->getAnchorInfoByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/HornMessage;->mBody:Lorg/json/JSONObject;

    const-string v5, "i"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 51
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/HornMessage;->mIsAnchor:Z

    goto/16 :goto_1

    .line 45
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/HornMessage;->mBody:Lorg/json/JSONObject;

    const-string v5, "n"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/HornMessage;->mMessageDetail:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/HornMessage;->mMessageDetail:Ljava/lang/String;

    goto :goto_2
.end method
