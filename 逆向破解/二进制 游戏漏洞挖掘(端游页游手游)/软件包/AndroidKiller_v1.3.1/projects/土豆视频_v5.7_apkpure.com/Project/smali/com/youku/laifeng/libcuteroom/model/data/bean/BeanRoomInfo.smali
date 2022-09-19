.class public Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanRoomInfo;
.super Lcom/youku/laifeng/libcuteroom/model/data/AbsData;
.source "BeanRoomInfo.java"


# static fields
.field public static final ANCHOR:Ljava/lang/String; = "anchor"

.field public static final ANCHOR_AGE:Ljava/lang/String; = "age"

.field public static final ANCHOR_BIRTHDAY:Ljava/lang/String; = "birthday"

.field public static final ANCHOR_FACE_URL:Ljava/lang/String; = "faceUrl"

.field public static final ANCHOR_FANS_NUM:Ljava/lang/String; = "fansNum"

.field public static final ANCHOR_GENDER:Ljava/lang/String; = "gender"

.field public static final ANCHOR_GIFT_NUM:Ljava/lang/String; = "giftNum"

.field public static final ANCHOR_GUIZULEVEL:Ljava/lang/String; = "guizuLevel"

.field public static final ANCHOR_HAD_BEANS:Ljava/lang/String; = "hadBeans"

.field public static final ANCHOR_ID:Ljava/lang/String; = "id"

.field public static final ANCHOR_LEVEL:Ljava/lang/String; = "level"

.field public static final ANCHOR_NEED_BEANS:Ljava/lang/String; = "needBeans"

.field public static final ANCHOR_NEXT_SHOW:Ljava/lang/String; = "nextShow"

.field public static final ANCHOR_NICKNAME:Ljava/lang/String; = "nickName"

.field public static final ANCHOR_POSTER_URL:Ljava/lang/String; = "posterUrl"

.field public static final ANCHOR_QQ:Ljava/lang/String; = "qq"

.field public static final ANCHOR_SCREENTIME:Ljava/lang/String; = "screenTime"

.field public static final ANCHOR_STAR:Ljava/lang/String; = "star"

.field public static final ANCHOR_TIME:Ljava/lang/String; = "time"

.field public static final ANCHOR_WX:Ljava/lang/String; = "wx"

.field public static final ROOM:Ljava/lang/String; = "room"

.field public static final ROOM_GATE:Ljava/lang/String; = "gate"

.field public static final ROOM_ID:Ljava/lang/String; = "id"

.field public static final ROOM_IM:Ljava/lang/String; = "im"

.field public static final ROOM_NOTICE:Ljava/lang/String; = "notice"

.field public static final ROOM_ROLL_CONTENT:Ljava/lang/String; = "content"

.field public static final ROOM_ROLL_ID:Ljava/lang/String; = "id"

.field public static final ROOM_ROLL_MSG:Ljava/lang/String; = "rollMsg"

.field public static final ROOM_ROLL_STATUS:Ljava/lang/String; = "status"

.field public static final ROOM_ROLL_TITLE:Ljava/lang/String; = "title"

.field public static final ROOM_SHOW_ID:Ljava/lang/String; = "showId"

.field public static final ROOM_SHOW_TYPE:Ljava/lang/String; = "type"

.field public static final ROOM_THEME:Ljava/lang/String; = "theme"

.field public static final ROOM_TOKEN:Ljava/lang/String; = "token"

.field public static final ROOM_TYPE:Ljava/lang/String; = "type"

.field public static final ROOM_USER:Ljava/lang/String; = "roomUser"

.field public static final ROOM_USER_ROOM_BAN_SPEAK:Ljava/lang/String; = "roomBanSpeak"

.field public static final ROOM_USER_ROOM_KICK_OUT:Ljava/lang/String; = "roomKickOut"

.field public static final ROOM_USER_ROOM_NICK_OUT_MSG:Ljava/lang/String; = "roomKickOutMsg"

.field public static final ROOT:Ljava/lang/String; = "response"

.field public static final ROOT_CODE:Ljava/lang/String; = "code"

.field public static final ROOT_DATA:Ljava/lang/String; = "data"

.field public static final ROOT_MESSAGE:Ljava/lang/String; = "message"

.field public static final SCREEN:Ljava/lang/String; = "screen"

.field public static final SCREEN_GIFT_NUM:Ljava/lang/String; = "giftNum"

.field public static final SCREEN_HOT:Ljava/lang/String; = "hot"

.field public static final SCREEN_ID:Ljava/lang/String; = "id"

.field public static final SCREEN_INLINE_NUM:Ljava/lang/String; = "onlineNum"

.field public static final USER:Ljava/lang/String; = "user"

.field public static final USER_ANCHOR_LEVEL:Ljava/lang/String; = "anchorLevel"

.field public static final USER_ATTENTION:Ljava/lang/String; = "attention"

.field public static final USER_BAN_SPEAK:Ljava/lang/String; = "banSpeak"

.field public static final USER_COINS:Ljava/lang/String; = "coins"

.field public static final USER_FACE_URL:Ljava/lang/String; = "faceUrl"

.field public static final USER_GENDER:Ljava/lang/String; = "gender"

.field public static final USER_ID:Ljava/lang/String; = "id"

.field public static final USER_IS_ANCHOR:Ljava/lang/String; = "isAnchor"

.field public static final USER_KICK_OUT:Ljava/lang/String; = "kickOut"

.field public static final USER_LOGINED:Ljava/lang/String; = "logined"

.field public static final USER_NICKNAME:Ljava/lang/String; = "nickName"

.field public static final USER_NOBLE_LEVEL:Ljava/lang/String; = "nobleLevel"


# instance fields
.field private mAnchor:Lorg/json/JSONObject;

.field private mResultCode:Ljava/lang/String;

.field private mResultMsg:Ljava/lang/String;

.field private mRoom:Lorg/json/JSONObject;

.field private mRoomUser:Lorg/json/JSONObject;

.field private mScreen:Lorg/json/JSONObject;

.field private mUser:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 89
    invoke-direct {p0}, Lcom/youku/laifeng/libcuteroom/model/data/AbsData;-><init>()V

    .line 81
    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanRoomInfo;->mAnchor:Lorg/json/JSONObject;

    .line 82
    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanRoomInfo;->mUser:Lorg/json/JSONObject;

    .line 83
    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanRoomInfo;->mRoom:Lorg/json/JSONObject;

    .line 84
    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanRoomInfo;->mScreen:Lorg/json/JSONObject;

    .line 85
    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanRoomInfo;->mRoomUser:Lorg/json/JSONObject;

    .line 86
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanRoomInfo;->mResultCode:Ljava/lang/String;

    .line 87
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanRoomInfo;->mResultMsg:Ljava/lang/String;

    .line 91
    return-void
.end method


# virtual methods
.method public getAnchorInfoByKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 94
    iget-object v1, p0, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanRoomInfo;->mAnchor:Lorg/json/JSONObject;

    if-eqz v1, :cond_3

    .line 95
    iget-object v1, p0, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanRoomInfo;->mAnchor:Lorg/json/JSONObject;

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 96
    .local v0, "tmp":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 97
    iget-object v1, p0, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanRoomInfo;->mAnchor:Lorg/json/JSONObject;

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 108
    .end local v0    # "tmp":Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 98
    .restart local v0    # "tmp":Ljava/lang/Object;
    :cond_0
    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    .line 99
    check-cast v0, Ljava/lang/Boolean;

    .end local v0    # "tmp":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 100
    const-string/jumbo v1, "true"

    goto :goto_0

    .line 102
    :cond_1
    const-string v1, "false"

    goto :goto_0

    .line 104
    .restart local v0    # "tmp":Ljava/lang/Object;
    :cond_2
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_3

    .line 105
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 108
    .end local v0    # "tmp":Ljava/lang/Object;
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getResultCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanRoomInfo;->mResultCode:Ljava/lang/String;

    return-object v0
.end method

.method public getResultMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanRoomInfo;->mResultMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getRoomInfoByKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x4

    const/4 v5, 0x0

    .line 130
    iget-object v4, p0, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanRoomInfo;->mRoom:Lorg/json/JSONObject;

    if-eqz v4, :cond_a

    .line 131
    const-string v4, "im"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 132
    iget-object v4, p0, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanRoomInfo;->mRoom:Lorg/json/JSONObject;

    invoke-virtual {v4, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 133
    .local v1, "strIM":Ljava/lang/String;
    invoke-static {v1}, Lcom/youku/laifeng/libcuteroom/utils/Utils;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v1, v3

    .line 166
    .end local v1    # "strIM":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    .line 136
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

    .line 139
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

    .line 142
    .end local v1    # "strIM":Ljava/lang/String;
    :cond_2
    const-string v4, "gate"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 143
    iget-object v4, p0, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanRoomInfo;->mRoom:Lorg/json/JSONObject;

    invoke-virtual {v4, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 144
    .local v0, "strGate":Ljava/lang/String;
    invoke-static {v0}, Lcom/youku/laifeng/libcuteroom/utils/Utils;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    move-object v1, v3

    .line 145
    goto :goto_0

    .line 147
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

    .line 148
    goto :goto_0

    .line 150
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

    .line 153
    .end local v0    # "strGate":Ljava/lang/String;
    :cond_6
    iget-object v4, p0, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanRoomInfo;->mRoom:Lorg/json/JSONObject;

    invoke-virtual {v4, p1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 154
    .local v2, "tmp":Ljava/lang/Object;
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_7

    .line 155
    iget-object v3, p0, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanRoomInfo;->mRoom:Lorg/json/JSONObject;

    invoke-virtual {v3, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 156
    :cond_7
    instance-of v4, v2, Ljava/lang/Boolean;

    if-eqz v4, :cond_9

    .line 157
    check-cast v2, Ljava/lang/Boolean;

    .end local v2    # "tmp":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 158
    const-string/jumbo v1, "true"

    goto/16 :goto_0

    .line 160
    :cond_8
    const-string v1, "false"

    goto/16 :goto_0

    .line 162
    .restart local v2    # "tmp":Ljava/lang/Object;
    :cond_9
    instance-of v4, v2, Ljava/lang/Integer;

    if-eqz v4, :cond_a

    .line 163
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .end local v2    # "tmp":Ljava/lang/Object;
    :cond_a
    move-object v1, v3

    .line 166
    goto/16 :goto_0
.end method

.method public getRoomUserInfoByKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 188
    iget-object v1, p0, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanRoomInfo;->mRoomUser:Lorg/json/JSONObject;

    if-eqz v1, :cond_3

    .line 189
    iget-object v1, p0, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanRoomInfo;->mRoomUser:Lorg/json/JSONObject;

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 190
    .local v0, "tmp":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 191
    iget-object v1, p0, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanRoomInfo;->mRoomUser:Lorg/json/JSONObject;

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 202
    .end local v0    # "tmp":Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 192
    .restart local v0    # "tmp":Ljava/lang/Object;
    :cond_0
    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    .line 193
    check-cast v0, Ljava/lang/Boolean;

    .end local v0    # "tmp":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 194
    const-string/jumbo v1, "true"

    goto :goto_0

    .line 196
    :cond_1
    const-string v1, "false"

    goto :goto_0

    .line 198
    .restart local v0    # "tmp":Ljava/lang/Object;
    :cond_2
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_3

    .line 199
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 202
    .end local v0    # "tmp":Ljava/lang/Object;
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getScreenInfoByKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 170
    iget-object v1, p0, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanRoomInfo;->mScreen:Lorg/json/JSONObject;

    if-eqz v1, :cond_3

    .line 171
    iget-object v1, p0, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanRoomInfo;->mScreen:Lorg/json/JSONObject;

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 172
    .local v0, "tmp":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 173
    iget-object v1, p0, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanRoomInfo;->mScreen:Lorg/json/JSONObject;

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 184
    .end local v0    # "tmp":Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 174
    .restart local v0    # "tmp":Ljava/lang/Object;
    :cond_0
    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    .line 175
    check-cast v0, Ljava/lang/Boolean;

    .end local v0    # "tmp":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 176
    const-string/jumbo v1, "true"

    goto :goto_0

    .line 178
    :cond_1
    const-string v1, "false"

    goto :goto_0

    .line 180
    .restart local v0    # "tmp":Ljava/lang/Object;
    :cond_2
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_3

    .line 181
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 184
    .end local v0    # "tmp":Ljava/lang/Object;
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getUserInfoByKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 112
    iget-object v1, p0, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanRoomInfo;->mUser:Lorg/json/JSONObject;

    if-eqz v1, :cond_3

    .line 113
    iget-object v1, p0, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanRoomInfo;->mUser:Lorg/json/JSONObject;

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 114
    .local v0, "tmp":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 115
    iget-object v1, p0, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanRoomInfo;->mUser:Lorg/json/JSONObject;

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 126
    .end local v0    # "tmp":Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 116
    .restart local v0    # "tmp":Ljava/lang/Object;
    :cond_0
    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    .line 117
    check-cast v0, Ljava/lang/Boolean;

    .end local v0    # "tmp":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 118
    const-string/jumbo v1, "true"

    goto :goto_0

    .line 120
    :cond_1
    const-string v1, "false"

    goto :goto_0

    .line 122
    .restart local v0    # "tmp":Ljava/lang/Object;
    :cond_2
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_3

    .line 123
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 126
    .end local v0    # "tmp":Ljava/lang/Object;
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public parser(Ljava/lang/String;)V
    .locals 5
    .param p1, "source"    # Ljava/lang/String;

    .prologue
    .line 215
    const/4 v2, 0x0

    .line 217
    .local v2, "response":Lorg/json/JSONObject;
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "response"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 221
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 222
    const-string v3, "code"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanRoomInfo;->mResultCode:Ljava/lang/String;

    .line 223
    const-string v3, "message"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanRoomInfo;->mResultMsg:Ljava/lang/String;

    .line 224
    const-string v3, "data"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 225
    .local v0, "data":Lorg/json/JSONObject;
    const-string v3, "anchor"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    iput-object v3, p0, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanRoomInfo;->mAnchor:Lorg/json/JSONObject;

    .line 226
    const-string/jumbo v3, "user"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    iput-object v3, p0, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanRoomInfo;->mUser:Lorg/json/JSONObject;

    .line 227
    const-string/jumbo v3, "room"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    iput-object v3, p0, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanRoomInfo;->mRoom:Lorg/json/JSONObject;

    .line 228
    const-string/jumbo v3, "screen"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    iput-object v3, p0, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanRoomInfo;->mScreen:Lorg/json/JSONObject;

    .line 229
    const-string/jumbo v3, "roomUser"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    iput-object v3, p0, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanRoomInfo;->mRoomUser:Lorg/json/JSONObject;

    .line 231
    .end local v0    # "data":Lorg/json/JSONObject;
    :cond_1
    return-void

    .line 218
    :catch_0
    move-exception v1

    .line 219
    .local v1, "e":Lorg/json/JSONException;
    sget-boolean v3, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
