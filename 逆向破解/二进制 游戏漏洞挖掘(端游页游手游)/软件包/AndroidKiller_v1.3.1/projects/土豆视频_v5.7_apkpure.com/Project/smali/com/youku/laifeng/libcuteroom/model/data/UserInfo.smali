.class public Lcom/youku/laifeng/libcuteroom/model/data/UserInfo;
.super Ljava/lang/Object;
.source "UserInfo.java"


# static fields
.field private static final CODE:Ljava/lang/String; = "code"

.field private static final DATA:Ljava/lang/String; = "data"

.field public static final DATA_ANCHOR_LEVEL:Ljava/lang/String; = "anchorLevel"

.field public static final DATA_ATTENTION:Ljava/lang/String; = "attention"

.field public static final DATA_BAN_SPEAK:Ljava/lang/String; = "banSpeak"

.field public static final DATA_BIRTHDAY:Ljava/lang/String; = "birthday"

.field public static final DATA_CITY:Ljava/lang/String; = "city"

.field public static final DATA_COINS:Ljava/lang/String; = "coins"

.field public static final DATA_FACE_URL:Ljava/lang/String; = "faceUrl"

.field public static final DATA_GENDER:Ljava/lang/String; = "gender"

.field public static final DATA_HAS_EXP:Ljava/lang/String; = "hasExp"

.field public static final DATA_ID:Ljava/lang/String; = "id"

.field public static final DATA_IS_ANCHOR:Ljava/lang/String; = "isAnchor"

.field public static final DATA_KICK_OUT:Ljava/lang/String; = "kickOut"

.field public static final DATA_LOGINED:Ljava/lang/String; = "logined"

.field public static final DATA_NEED_EXP:Ljava/lang/String; = "needExp"

.field public static final DATA_NEW_FEEDS:Ljava/lang/String; = "newFeeds"

.field public static final DATA_NICKNAME:Ljava/lang/String; = "nickName"

.field public static final DATA_NOBLE_LEVEL:Ljava/lang/String; = "guizuLevel"

.field public static final DATA_POST_URL:Ljava/lang/String; = "posterUrl"

.field private static final MESSAGE:Ljava/lang/String; = "message"

.field private static final RESP:Ljava/lang/String; = "response"

.field private static instance:Lcom/youku/laifeng/libcuteroom/model/data/UserInfo;

.field private static final mMutex:Ljava/lang/Object;


# instance fields
.field private code:Ljava/lang/String;

.field private data:Lorg/json/JSONObject;

.field private message:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    sput-object v0, Lcom/youku/laifeng/libcuteroom/model/data/UserInfo;->instance:Lcom/youku/laifeng/libcuteroom/model/data/UserInfo;

    .line 20
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/youku/laifeng/libcuteroom/model/data/UserInfo;->mMutex:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/UserInfo;->code:Ljava/lang/String;

    .line 46
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/UserInfo;->message:Ljava/lang/String;

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/UserInfo;->data:Lorg/json/JSONObject;

    .line 70
    return-void
.end method

.method public static getInstance()Lcom/youku/laifeng/libcuteroom/model/data/UserInfo;
    .locals 2

    .prologue
    .line 58
    sget-object v0, Lcom/youku/laifeng/libcuteroom/model/data/UserInfo;->instance:Lcom/youku/laifeng/libcuteroom/model/data/UserInfo;

    if-nez v0, :cond_1

    .line 59
    sget-object v1, Lcom/youku/laifeng/libcuteroom/model/data/UserInfo;->mMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 60
    :try_start_0
    sget-object v0, Lcom/youku/laifeng/libcuteroom/model/data/UserInfo;->instance:Lcom/youku/laifeng/libcuteroom/model/data/UserInfo;

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Lcom/youku/laifeng/libcuteroom/model/data/UserInfo;

    invoke-direct {v0}, Lcom/youku/laifeng/libcuteroom/model/data/UserInfo;-><init>()V

    sput-object v0, Lcom/youku/laifeng/libcuteroom/model/data/UserInfo;->instance:Lcom/youku/laifeng/libcuteroom/model/data/UserInfo;

    .line 63
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    :cond_1
    sget-object v0, Lcom/youku/laifeng/libcuteroom/model/data/UserInfo;->instance:Lcom/youku/laifeng/libcuteroom/model/data/UserInfo;

    return-object v0

    .line 63
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public builderBeanUserInfo(Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceListener;)Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;
    .locals 26
    .param p1, "cb"    # Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceListener;

    .prologue
    .line 145
    new-instance v2, Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;

    invoke-direct {v2}, Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;-><init>()V

    .line 146
    .local v2, "bean":Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/utils/FileUtils;->readData()[Ljava/lang/String;

    move-result-object v24

    .line 147
    .local v24, "user":[Ljava/lang/String;
    if-eqz v24, :cond_0

    move-object/from16 v0, v24

    array-length v3, v0

    const/16 v4, 0x12

    if-ne v3, v4, :cond_0

    .line 148
    new-instance v2, Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;

    .end local v2    # "bean":Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;
    const/4 v3, 0x0

    aget-object v3, v24, v3

    const/4 v4, 0x1

    aget-object v4, v24, v4

    const/4 v5, 0x2

    aget-object v5, v24, v5

    const/4 v6, 0x3

    aget-object v6, v24, v6

    const/4 v7, 0x4

    aget-object v7, v24, v7

    const/4 v8, 0x5

    aget-object v8, v24, v8

    const/4 v9, 0x6

    aget-object v9, v24, v9

    const/4 v10, 0x7

    aget-object v10, v24, v10

    const/16 v11, 0x8

    aget-object v11, v24, v11

    const/16 v12, 0x9

    aget-object v12, v24, v12

    const/16 v13, 0xa

    aget-object v13, v24, v13

    const/16 v14, 0xb

    aget-object v14, v24, v14

    const/16 v15, 0xc

    aget-object v15, v24, v15

    const/16 v16, 0xd

    aget-object v16, v24, v16

    const/16 v17, 0xe

    aget-object v17, v24, v17

    const/16 v18, 0xf

    aget-object v18, v24, v18

    const/16 v19, 0x10

    aget-object v19, v24, v19

    const/16 v20, 0x11

    aget-object v20, v24, v20

    invoke-direct/range {v2 .. v20}, Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    .restart local v2    # "bean":Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/youku/laifeng/libcuteroom/model/data/UserInfo;->data:Lorg/json/JSONObject;

    if-nez v3, :cond_1

    .line 168
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;->getLoader()Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;

    move-result-object v3

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/utils/RestAPI;->getInstance()Lcom/youku/laifeng/libcuteroom/utils/RestAPI;

    move-result-object v4

    iget-object v4, v4, Lcom/youku/laifeng/libcuteroom/utils/RestAPI;->USER_INFO_GET:Ljava/lang/String;

    const/4 v5, 0x0

    const/16 v6, 0x10

    invoke-virtual {v3, v4, v5, v6}, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;->getResposne(Ljava/lang/String;Ljava/lang/String;I)Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;

    move-result-object v23

    .line 169
    .local v23, "resp":Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;
    invoke-virtual/range {v23 .. v23}, Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;->getExtraData()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SUCCESS"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 170
    invoke-virtual/range {v23 .. v23}, Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;->getBody()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/youku/laifeng/libcuteroom/model/data/UserInfo;->updateUserInfo(Ljava/lang/String;)V

    .line 185
    .end local v23    # "resp":Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/youku/laifeng/libcuteroom/model/data/UserInfo;->data:Lorg/json/JSONObject;

    invoke-virtual {v3}, Lorg/json/JSONObject;->length()I

    move-result v3

    if-nez v3, :cond_5

    move-object/from16 v21, v2

    .line 206
    .end local v2    # "bean":Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;
    .local v21, "bean":Ljava/lang/Object;
    :goto_0
    return-object v21

    .line 172
    .end local v21    # "bean":Ljava/lang/Object;
    .restart local v2    # "bean":Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;
    .restart local v23    # "resp":Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;
    :cond_2
    invoke-virtual/range {v23 .. v23}, Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;->getRespStatusCode()I

    move-result v3

    const/16 v4, 0xc8

    if-ne v3, v4, :cond_3

    .line 175
    :cond_3
    if-eqz p1, :cond_4

    .line 177
    :try_start_0
    invoke-virtual/range {v23 .. v23}, Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v23 .. v23}, Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;->getRespStatusCode()I

    move-result v4

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-interface {v0, v3, v4, v1}, Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceListener;->onErrorReciveDirectListener(Ljava/lang/String;ILcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_1
    move-object/from16 v21, v2

    .line 182
    .restart local v21    # "bean":Ljava/lang/Object;
    goto :goto_0

    .line 178
    .end local v21    # "bean":Ljava/lang/Object;
    :catch_0
    move-exception v22

    .line 179
    .local v22, "e":Landroid/os/RemoteException;
    sget-boolean v3, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v3, :cond_4

    invoke-virtual/range {v22 .. v22}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 188
    .end local v22    # "e":Landroid/os/RemoteException;
    .end local v23    # "resp":Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;
    :cond_5
    new-instance v2, Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;

    .end local v2    # "bean":Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/youku/laifeng/libcuteroom/model/data/UserInfo;->data:Lorg/json/JSONObject;

    const-string v4, "id"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/youku/laifeng/libcuteroom/model/data/UserInfo;->data:Lorg/json/JSONObject;

    const-string v5, "nickName"

    .line 189
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/youku/laifeng/libcuteroom/model/data/UserInfo;->data:Lorg/json/JSONObject;

    const-string v6, "faceUrl"

    .line 190
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/youku/laifeng/libcuteroom/model/data/UserInfo;->data:Lorg/json/JSONObject;

    const-string v7, "guizuLevel"

    .line 191
    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/youku/laifeng/libcuteroom/model/data/UserInfo;->data:Lorg/json/JSONObject;

    const-string v8, "hasExp"

    .line 192
    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/youku/laifeng/libcuteroom/model/data/UserInfo;->data:Lorg/json/JSONObject;

    const-string v9, "needExp"

    .line 193
    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/youku/laifeng/libcuteroom/model/data/UserInfo;->data:Lorg/json/JSONObject;

    const-string v10, "anchorLevel"

    .line 194
    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/youku/laifeng/libcuteroom/model/data/UserInfo;->data:Lorg/json/JSONObject;

    const-string v11, "isAnchor"

    .line 195
    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/youku/laifeng/libcuteroom/model/data/UserInfo;->data:Lorg/json/JSONObject;

    const-string v12, "logined"

    .line 196
    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/youku/laifeng/libcuteroom/model/data/UserInfo;->data:Lorg/json/JSONObject;

    const-string v13, "coins"

    .line 197
    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/youku/laifeng/libcuteroom/model/data/UserInfo;->data:Lorg/json/JSONObject;

    const-string v14, "banSpeak"

    .line 198
    invoke-virtual {v13, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/youku/laifeng/libcuteroom/model/data/UserInfo;->data:Lorg/json/JSONObject;

    const-string v15, "kickOut"

    .line 199
    invoke-virtual {v14, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/youku/laifeng/libcuteroom/model/data/UserInfo;->data:Lorg/json/JSONObject;

    const-string v16, "gender"

    .line 200
    invoke-virtual/range {v15 .. v16}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/libcuteroom/model/data/UserInfo;->data:Lorg/json/JSONObject;

    move-object/from16 v16, v0

    const-string v17, "city"

    .line 201
    invoke-virtual/range {v16 .. v17}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/libcuteroom/model/data/UserInfo;->data:Lorg/json/JSONObject;

    move-object/from16 v17, v0

    const-string v18, "birthday"

    .line 202
    invoke-virtual/range {v17 .. v18}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/libcuteroom/model/data/UserInfo;->data:Lorg/json/JSONObject;

    move-object/from16 v18, v0

    const-string v19, "posterUrl"

    .line 203
    invoke-virtual/range {v18 .. v19}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/libcuteroom/model/data/UserInfo;->data:Lorg/json/JSONObject;

    move-object/from16 v19, v0

    const-string v20, "attention"

    .line 204
    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/libcuteroom/model/data/UserInfo;->data:Lorg/json/JSONObject;

    move-object/from16 v20, v0

    const-string v25, "newFeeds"

    .line 205
    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v2 .. v20}, Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .restart local v2    # "bean":Lcom/youku/laifeng/libcuteroom/model/data/BeanUserInfo;
    move-object/from16 v21, v2

    .line 206
    .restart local v21    # "bean":Ljava/lang/Object;
    goto/16 :goto_0
.end method

.method public clearUserInfo()V
    .locals 1

    .prologue
    .line 73
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/UserInfo;->code:Ljava/lang/String;

    .line 74
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/UserInfo;->message:Ljava/lang/String;

    .line 75
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/UserInfo;->data:Lorg/json/JSONObject;

    .line 76
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/utils/FileUtils;->clearData()V

    .line 77
    return-void
.end method

.method public getCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/UserInfo;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/UserInfo;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getuserDataInfoByKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/UserInfo;->data:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/UserInfo;->data:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 124
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateUserInfo(Ljava/lang/String;)V
    .locals 25
    .param p1, "src"    # Ljava/lang/String;

    .prologue
    .line 80
    const/16 v21, 0x0

    .line 82
    .local v21, "resp":Lorg/json/JSONObject;
    :try_start_0
    new-instance v22, Lorg/json/JSONObject;

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v21    # "resp":Lorg/json/JSONObject;
    .local v22, "resp":Lorg/json/JSONObject;
    move-object/from16 v21, v22

    .line 86
    .end local v22    # "resp":Lorg/json/JSONObject;
    .restart local v21    # "resp":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    const-string/jumbo v2, "response"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v23

    .line 87
    .local v23, "root":Lorg/json/JSONObject;
    const-string v2, "code"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/youku/laifeng/libcuteroom/model/data/UserInfo;->code:Ljava/lang/String;

    .line 88
    const-string v2, "message"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/youku/laifeng/libcuteroom/model/data/UserInfo;->message:Ljava/lang/String;

    .line 89
    const-string v2, "data"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/youku/laifeng/libcuteroom/model/data/UserInfo;->data:Lorg/json/JSONObject;

    .line 90
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/youku/laifeng/libcuteroom/model/data/UserInfo;->data:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 91
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/youku/laifeng/libcuteroom/model/data/UserInfo;->data:Lorg/json/JSONObject;

    const-string v3, "id"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/youku/laifeng/libcuteroom/model/data/UserInfo;->data:Lorg/json/JSONObject;

    const-string v4, "nickName"

    .line 92
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/youku/laifeng/libcuteroom/model/data/UserInfo;->data:Lorg/json/JSONObject;

    const-string v5, "faceUrl"

    .line 93
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/youku/laifeng/libcuteroom/model/data/UserInfo;->data:Lorg/json/JSONObject;

    const-string v6, "guizuLevel"

    .line 94
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/youku/laifeng/libcuteroom/model/data/UserInfo;->data:Lorg/json/JSONObject;

    const-string v7, "hasExp"

    .line 95
    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/youku/laifeng/libcuteroom/model/data/UserInfo;->data:Lorg/json/JSONObject;

    const-string v8, "needExp"

    .line 96
    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/youku/laifeng/libcuteroom/model/data/UserInfo;->data:Lorg/json/JSONObject;

    const-string v9, "anchorLevel"

    .line 97
    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/youku/laifeng/libcuteroom/model/data/UserInfo;->data:Lorg/json/JSONObject;

    const-string v10, "isAnchor"

    .line 98
    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/youku/laifeng/libcuteroom/model/data/UserInfo;->data:Lorg/json/JSONObject;

    const-string v11, "logined"

    .line 99
    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/youku/laifeng/libcuteroom/model/data/UserInfo;->data:Lorg/json/JSONObject;

    const-string v12, "coins"

    .line 100
    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/youku/laifeng/libcuteroom/model/data/UserInfo;->data:Lorg/json/JSONObject;

    const-string v13, "banSpeak"

    .line 101
    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/youku/laifeng/libcuteroom/model/data/UserInfo;->data:Lorg/json/JSONObject;

    const-string v14, "kickOut"

    .line 102
    invoke-virtual {v13, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/youku/laifeng/libcuteroom/model/data/UserInfo;->data:Lorg/json/JSONObject;

    const-string v15, "gender"

    .line 103
    invoke-virtual {v14, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/youku/laifeng/libcuteroom/model/data/UserInfo;->data:Lorg/json/JSONObject;

    const-string v16, "city"

    .line 104
    invoke-virtual/range {v15 .. v16}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/libcuteroom/model/data/UserInfo;->data:Lorg/json/JSONObject;

    move-object/from16 v16, v0

    const-string v17, "birthday"

    .line 105
    invoke-virtual/range {v16 .. v17}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/libcuteroom/model/data/UserInfo;->data:Lorg/json/JSONObject;

    move-object/from16 v17, v0

    const-string v18, "posterUrl"

    .line 106
    invoke-virtual/range {v17 .. v18}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/libcuteroom/model/data/UserInfo;->data:Lorg/json/JSONObject;

    move-object/from16 v18, v0

    const-string v19, "attention"

    .line 107
    invoke-virtual/range {v18 .. v19}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/laifeng/libcuteroom/model/data/UserInfo;->data:Lorg/json/JSONObject;

    move-object/from16 v19, v0

    const-string v24, "newFeeds"

    .line 108
    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 91
    invoke-static/range {v2 .. v19}, Lcom/youku/laifeng/libcuteroom/utils/FileUtils;->writeData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    :cond_1
    return-void

    .line 83
    .end local v23    # "root":Lorg/json/JSONObject;
    :catch_0
    move-exception v20

    .line 84
    .local v20, "e":Lorg/json/JSONException;
    sget-boolean v2, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v2, :cond_0

    invoke-virtual/range {v20 .. v20}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public updateUserInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 129
    iget-object v2, p0, Lcom/youku/laifeng/libcuteroom/model/data/UserInfo;->data:Lorg/json/JSONObject;

    if-nez v2, :cond_0

    .line 130
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;->getLoader()Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;

    move-result-object v2

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/utils/RestAPI;->getInstance()Lcom/youku/laifeng/libcuteroom/utils/RestAPI;

    move-result-object v3

    iget-object v3, v3, Lcom/youku/laifeng/libcuteroom/utils/RestAPI;->USER_INFO_GET:Ljava/lang/String;

    const/4 v4, 0x0

    const/16 v5, 0x10

    invoke-virtual {v2, v3, v4, v5}, Lcom/youku/laifeng/libcuteroom/model/loader/DataLoader;->getResposne(Ljava/lang/String;Ljava/lang/String;I)Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;

    move-result-object v1

    .line 131
    .local v1, "resp":Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;
    invoke-virtual {v1}, Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;->getExtraData()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SUCCESS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 132
    invoke-virtual {v1}, Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;->getBody()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/youku/laifeng/libcuteroom/model/data/UserInfo;->updateUserInfo(Ljava/lang/String;)V

    .line 138
    .end local v1    # "resp":Lcom/youku/laifeng/libcuteroom/model/data/BeanHttpResponse;
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/youku/laifeng/libcuteroom/model/data/UserInfo;->data:Lorg/json/JSONObject;

    invoke-virtual {v2, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    :cond_1
    :goto_0
    return-void

    .line 139
    :catch_0
    move-exception v0

    .line 140
    .local v0, "e":Lorg/json/JSONException;
    sget-boolean v2, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public updateUserInfoByKey(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 114
    :try_start_0
    iget-object v1, p0, Lcom/youku/laifeng/libcuteroom/model/data/UserInfo;->data:Lorg/json/JSONObject;

    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    :cond_0
    :goto_0
    return-void

    .line 115
    :catch_0
    move-exception v0

    .line 116
    .local v0, "e":Lorg/json/JSONException;
    sget-boolean v1, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
