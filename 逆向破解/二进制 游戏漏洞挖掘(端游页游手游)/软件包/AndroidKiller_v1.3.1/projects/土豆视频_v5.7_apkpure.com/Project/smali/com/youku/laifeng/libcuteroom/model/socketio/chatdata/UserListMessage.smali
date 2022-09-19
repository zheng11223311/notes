.class public Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserListMessage;
.super Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/MessageInfo;
.source "UserListMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserListMessage$UserItem;
    }
.end annotation


# static fields
.field public static final BATCH:Ljava/lang/String; = "batch"

.field public static final DATA:Ljava/lang/String; = "data"

.field public static final EVENT_USER_LIST:Ljava/lang/String; = "userlist"

.field public static final TAG:Ljava/lang/String;

.field public static final TARGET_USER_ID:Ljava/lang/String; = "targetuserid"

.field private static mInstance:Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserListMessage;

.field private static mMutex:Ljava/lang/Object;


# instance fields
.field private batch:Ljava/lang/String;

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserListMessage$UserItem;",
            ">;"
        }
    .end annotation
.end field

.field private mMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserListMessage$UserItem;",
            ">;"
        }
    .end annotation
.end field

.field private mTableHeadUserItem:Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserListMessage$UserItem;

.field private targetUserId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserListMessage;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserListMessage;->TAG:Ljava/lang/String;

    .line 32
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserListMessage;->mMutex:Ljava/lang/Object;

    .line 33
    const/4 v0, 0x0

    sput-object v0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserListMessage;->mInstance:Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserListMessage;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-direct {p0}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/MessageInfo;-><init>()V

    .line 22
    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserListMessage;->targetUserId:Ljava/lang/String;

    .line 23
    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserListMessage;->batch:Ljava/lang/String;

    .line 24
    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserListMessage;->mList:Ljava/util/List;

    .line 25
    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserListMessage;->mMap:Ljava/util/Map;

    .line 30
    new-instance v0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserListMessage$UserItem;

    invoke-direct {v0, p0}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserListMessage$UserItem;-><init>(Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserListMessage;)V

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserListMessage;->mTableHeadUserItem:Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserListMessage$UserItem;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserListMessage;->mList:Ljava/util/List;

    .line 38
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserListMessage;->mList:Ljava/util/List;

    iget-object v1, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserListMessage;->mTableHeadUserItem:Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserListMessage$UserItem;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserListMessage;->mMap:Ljava/util/Map;

    .line 41
    return-void
.end method

.method public static getInstance()Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserListMessage;
    .locals 2

    .prologue
    .line 44
    sget-object v0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserListMessage;->mInstance:Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserListMessage;

    if-nez v0, :cond_1

    .line 45
    sget-object v1, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserListMessage;->mMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 46
    :try_start_0
    sget-object v0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserListMessage;->mInstance:Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserListMessage;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserListMessage;

    invoke-direct {v0}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserListMessage;-><init>()V

    sput-object v0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserListMessage;->mInstance:Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserListMessage;

    .line 49
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    :cond_1
    sget-object v0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserListMessage;->mInstance:Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserListMessage;

    return-object v0

    .line 49
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public clean()V
    .locals 2

    .prologue
    .line 108
    const-string v0, "0"

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserListMessage;->batch:Ljava/lang/String;

    .line 109
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserListMessage;->mRoomId:Ljava/lang/String;

    .line 110
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserListMessage;->targetUserId:Ljava/lang/String;

    .line 111
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserListMessage;->mMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 112
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserListMessage;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 114
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserListMessage;->mList:Ljava/util/List;

    iget-object v1, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserListMessage;->mTableHeadUserItem:Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserListMessage$UserItem;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    return-void
.end method

.method public getBatch()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserListMessage;->batch:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserListMessage;->targetUserId:Ljava/lang/String;

    return-object v0
.end method

.method public getmList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserListMessage$UserItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 64
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserListMessage;->mList:Ljava/util/List;

    return-object v0
.end method

.method public refreshUserList(Ljava/lang/String;)V
    .locals 9
    .param p1, "args"    # Ljava/lang/String;

    .prologue
    .line 69
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 70
    .local v5, "tmp":Lorg/json/JSONObject;
    const-string/jumbo v7, "targetuserid"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserListMessage;->targetUserId:Ljava/lang/String;

    .line 71
    const-string/jumbo v7, "roomid"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserListMessage;->mRoomId:Ljava/lang/String;

    .line 72
    const-string v7, "batch"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserListMessage;->batch:Ljava/lang/String;

    .line 73
    const-string v7, "data"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 74
    .local v1, "arrStr":Ljava/lang/String;
    const-string v7, ""

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 105
    .end local v1    # "arrStr":Ljava/lang/String;
    .end local v5    # "tmp":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-void

    .line 77
    .restart local v1    # "arrStr":Ljava/lang/String;
    .restart local v5    # "tmp":Lorg/json/JSONObject;
    :cond_1
    const-string v7, "data"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 78
    .local v0, "arr":Lorg/json/JSONArray;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v3, v7, :cond_0

    .line 79
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 80
    .local v4, "item":Lorg/json/JSONObject;
    iget-object v7, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserListMessage;->mMap:Ljava/util/Map;

    const-string/jumbo v8, "uid"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 78
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 83
    :cond_2
    new-instance v6, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserListMessage$UserItem;

    invoke-direct {v6, p0}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserListMessage$UserItem;-><init>(Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserListMessage;)V

    .line 84
    .local v6, "userItem":Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserListMessage$UserItem;
    const-string/jumbo v7, "uid"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserListMessage$UserItem;->access$002(Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserListMessage$UserItem;Ljava/lang/String;)Ljava/lang/String;

    .line 85
    const-string/jumbo v7, "zip"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v6, v7}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserListMessage$UserItem;->access$102(Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserListMessage$UserItem;I)I

    .line 86
    const-string v7, "authority"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserListMessage$UserItem;->access$202(Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserListMessage$UserItem;Ljava/lang/String;)Ljava/lang/String;

    .line 87
    const-string v7, "orid"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserListMessage$UserItem;->access$302(Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserListMessage$UserItem;Ljava/lang/String;)Ljava/lang/String;

    .line 88
    const-string v7, "alivetm"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserListMessage$UserItem;->access$402(Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserListMessage$UserItem;Ljava/lang/String;)Ljava/lang/String;

    .line 89
    const-string v7, "level"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserListMessage$UserItem;->access$502(Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserListMessage$UserItem;Ljava/lang/String;)Ljava/lang/String;

    .line 90
    const-string v7, "anchorLevel"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserListMessage$UserItem;->access$602(Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserListMessage$UserItem;Ljava/lang/String;)Ljava/lang/String;

    .line 91
    const-string v7, "avtarURL"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserListMessage$UserItem;->access$702(Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserListMessage$UserItem;Ljava/lang/String;)Ljava/lang/String;

    .line 92
    const-string v7, "nickname"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserListMessage$UserItem;->access$802(Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserListMessage$UserItem;Ljava/lang/String;)Ljava/lang/String;

    .line 93
    const-string v7, "muted"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserListMessage$UserItem;->access$902(Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserListMessage$UserItem;Ljava/lang/String;)Ljava/lang/String;

    .line 94
    const-string v7, "defaultEndpointType"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserListMessage$UserItem;->access$1002(Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserListMessage$UserItem;Ljava/lang/String;)Ljava/lang/String;

    .line 95
    const-string v7, "gender"

    const-string v8, "0"

    invoke-virtual {v4, v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserListMessage$UserItem;->access$1102(Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserListMessage$UserItem;Ljava/lang/String;)Ljava/lang/String;

    .line 96
    const-string v7, "experience"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserListMessage$UserItem;->access$1202(Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserListMessage$UserItem;Ljava/lang/String;)Ljava/lang/String;

    .line 97
    const-string v7, "enterRoomTime"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserListMessage$UserItem;->access$1302(Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserListMessage$UserItem;Ljava/lang/String;)Ljava/lang/String;

    .line 98
    iget-object v7, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserListMessage;->mMap:Ljava/util/Map;

    invoke-static {v6}, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserListMessage$UserItem;->access$000(Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserListMessage$UserItem;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    iget-object v7, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserListMessage;->mList:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 102
    .end local v0    # "arr":Lorg/json/JSONArray;
    .end local v1    # "arrStr":Ljava/lang/String;
    .end local v3    # "i":I
    .end local v4    # "item":Lorg/json/JSONObject;
    .end local v5    # "tmp":Lorg/json/JSONObject;
    .end local v6    # "userItem":Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/UserListMessage$UserItem;
    :catch_0
    move-exception v2

    .line 103
    .local v2, "e":Ljava/lang/Exception;
    sget-boolean v7, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v7, :cond_0

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method
