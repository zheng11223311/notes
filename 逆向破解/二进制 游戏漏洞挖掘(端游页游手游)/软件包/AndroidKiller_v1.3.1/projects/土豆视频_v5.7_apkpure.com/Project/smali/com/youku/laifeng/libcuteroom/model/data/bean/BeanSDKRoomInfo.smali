.class public Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanSDKRoomInfo;
.super Lcom/youku/laifeng/libcuteroom/model/data/AbsData;
.source "BeanSDKRoomInfo.java"


# static fields
.field public static final ANCHOR_ATTENTIONED:Ljava/lang/String; = "attentioned"

.field public static final ANCHOR_ATTENTION_NUMBER:Ljava/lang/String; = "an"

.field public static final ANCHOR_FACE_URL:Ljava/lang/String; = "faceUrl"

.field public static final ANCHOR_GUIZU_LEVEL:Ljava/lang/String; = "ul"

.field public static final ANCHOR_ID:Ljava/lang/String; = "aid"

.field public static final ANCHOR_LEVEL:Ljava/lang/String; = "al"

.field public static final ANCHOR_NICKNAME:Ljava/lang/String; = "nn"

.field public static final ANCHOR_ON_NUMBER:Ljava/lang/String; = "onNum"

.field public static final ROOM_GATE:Ljava/lang/String; = "gate"

.field public static final ROOM_GUARD_ID_LIST:Ljava/lang/String; = "psIds"

.field public static final ROOM_ID:Ljava/lang/String; = "rid"

.field public static final ROOM_IM:Ljava/lang/String; = "im"

.field public static final ROOM_NEXT_TIME:Ljava/lang/String; = "ns"

.field public static final ROOM_THEME:Ljava/lang/String; = "theme"

.field public static final ROOM_TOKEN:Ljava/lang/String; = "token"

.field public static final ROOM_TYPE:Ljava/lang/String; = "type"

.field public static final ROOM_USER_ROOM_BAN_SPEAK:Ljava/lang/String; = "roomBanSpeak"

.field public static final ROOM_USER_ROOM_KICK_OUT:Ljava/lang/String; = "roomKickOut"

.field public static final ROOM_USER_ROOM_NICK_OUT_MSG:Ljava/lang/String; = "roomKickOutMsg"

.field public static final ROOT:Ljava/lang/String; = "response"

.field public static final ROOT_CODE:Ljava/lang/String; = "code"

.field public static final ROOT_DATA:Ljava/lang/String; = "data"

.field public static final ROOT_MESSAGE:Ljava/lang/String; = "message"


# instance fields
.field private mResultCode:Ljava/lang/String;

.field private mResultMsg:Ljava/lang/String;

.field private mRoomInfo:Lorg/json/JSONObject;

.field private mTiefenInfo:Lorg/json/JSONArray;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 48
    invoke-direct {p0}, Lcom/youku/laifeng/libcuteroom/model/data/AbsData;-><init>()V

    .line 43
    iput-object v1, p0, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanSDKRoomInfo;->mRoomInfo:Lorg/json/JSONObject;

    .line 44
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanSDKRoomInfo;->mResultCode:Ljava/lang/String;

    .line 45
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanSDKRoomInfo;->mResultMsg:Ljava/lang/String;

    .line 46
    iput-object v1, p0, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanSDKRoomInfo;->mTiefenInfo:Lorg/json/JSONArray;

    .line 50
    return-void
.end method


# virtual methods
.method public getResultCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanSDKRoomInfo;->mResultCode:Ljava/lang/String;

    return-object v0
.end method

.method public getResultMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanSDKRoomInfo;->mResultMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getRoomInfoByKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x4

    const/4 v5, 0x0

    .line 53
    iget-object v4, p0, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanSDKRoomInfo;->mRoomInfo:Lorg/json/JSONObject;

    if-eqz v4, :cond_b

    .line 54
    const-string v4, "im"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 55
    iget-object v4, p0, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanSDKRoomInfo;->mRoomInfo:Lorg/json/JSONObject;

    invoke-virtual {v4, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 56
    .local v1, "strIM":Ljava/lang/String;
    invoke-static {v1}, Lcom/youku/laifeng/libcuteroom/utils/Utils;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v1, v3

    .line 91
    .end local v1    # "strIM":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    .line 59
    .restart local v1    # "strIM":Ljava/lang/String;
    :cond_1
    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "HTTP"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "http"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 62
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "http://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 65
    .end local v1    # "strIM":Ljava/lang/String;
    :cond_2
    const-string v4, "gate"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 66
    iget-object v4, p0, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanSDKRoomInfo;->mRoomInfo:Lorg/json/JSONObject;

    invoke-virtual {v4, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, "strGate":Ljava/lang/String;
    invoke-static {v0}, Lcom/youku/laifeng/libcuteroom/utils/Utils;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    move-object v1, v3

    .line 68
    goto :goto_0

    .line 70
    :cond_3
    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "HTTP"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "http"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    move-object v1, v0

    .line 71
    goto :goto_0

    .line 73
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "http://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 76
    .end local v0    # "strGate":Ljava/lang/String;
    :cond_6
    iget-object v4, p0, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanSDKRoomInfo;->mRoomInfo:Lorg/json/JSONObject;

    invoke-virtual {v4, p1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 77
    .local v2, "tmp":Ljava/lang/Object;
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_7

    .line 78
    iget-object v3, p0, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanSDKRoomInfo;->mRoomInfo:Lorg/json/JSONObject;

    invoke-virtual {v3, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 79
    :cond_7
    instance-of v4, v2, Ljava/lang/Boolean;

    if-eqz v4, :cond_9

    .line 80
    check-cast v2, Ljava/lang/Boolean;

    .end local v2    # "tmp":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 81
    const-string/jumbo v1, "true"

    goto/16 :goto_0

    .line 83
    :cond_8
    const-string v1, "false"

    goto/16 :goto_0

    .line 85
    .restart local v2    # "tmp":Ljava/lang/Object;
    :cond_9
    instance-of v4, v2, Ljava/lang/Integer;

    if-eqz v4, :cond_a

    .line 86
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 87
    :cond_a
    instance-of v4, v2, Ljava/lang/Long;

    if-eqz v4, :cond_b

    .line 88
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .end local v2    # "tmp":Ljava/lang/Object;
    :cond_b
    move-object v1, v3

    .line 91
    goto/16 :goto_0
.end method

.method public getTiefenUserList()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 95
    iget-object v3, p0, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanSDKRoomInfo;->mTiefenInfo:Lorg/json/JSONArray;

    if-eqz v3, :cond_0

    .line 96
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 97
    .local v2, "tiefenList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanSDKRoomInfo;->mTiefenInfo:Lorg/json/JSONArray;

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 98
    iget-object v3, p0, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanSDKRoomInfo;->mTiefenInfo:Lorg/json/JSONArray;

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v1

    .line 99
    .local v1, "tiefen":Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 103
    .end local v0    # "i":I
    .end local v1    # "tiefen":Ljava/lang/String;
    .end local v2    # "tiefenList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    const/4 v2, 0x0

    :cond_1
    return-object v2
.end method

.method public parser(Ljava/lang/String;)V
    .locals 4
    .param p1, "source"    # Ljava/lang/String;

    .prologue
    .line 116
    const/4 v1, 0x0

    .line 118
    .local v1, "response":Lorg/json/JSONObject;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "response"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 122
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 123
    const-string v2, "code"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanSDKRoomInfo;->mResultCode:Ljava/lang/String;

    .line 124
    const-string v2, "message"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanSDKRoomInfo;->mResultMsg:Ljava/lang/String;

    .line 125
    const-string v2, "data"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    iput-object v2, p0, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanSDKRoomInfo;->mRoomInfo:Lorg/json/JSONObject;

    .line 126
    iget-object v2, p0, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanSDKRoomInfo;->mRoomInfo:Lorg/json/JSONObject;

    const-string v3, "psIds"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    iput-object v2, p0, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanSDKRoomInfo;->mTiefenInfo:Lorg/json/JSONArray;

    .line 128
    :cond_1
    return-void

    .line 119
    :catch_0
    move-exception v0

    .line 120
    .local v0, "e":Lorg/json/JSONException;
    sget-boolean v2, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
