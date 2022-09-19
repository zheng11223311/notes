.class public Lcom/youku/laifeng/libcuteroom/model/loader/VoteLoader;
.super Ljava/lang/Object;
.source "VoteLoader.java"


# static fields
.field private static instance:Lcom/youku/laifeng/libcuteroom/model/loader/VoteLoader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    sput-object v0, Lcom/youku/laifeng/libcuteroom/model/loader/VoteLoader;->instance:Lcom/youku/laifeng/libcuteroom/model/loader/VoteLoader;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method public static getInstance()Lcom/youku/laifeng/libcuteroom/model/loader/VoteLoader;
    .locals 2

    .prologue
    .line 31
    sget-object v0, Lcom/youku/laifeng/libcuteroom/model/loader/VoteLoader;->instance:Lcom/youku/laifeng/libcuteroom/model/loader/VoteLoader;

    if-nez v0, :cond_1

    .line 32
    const-class v1, Lcom/youku/laifeng/libcuteroom/model/loader/VoteLoader;

    monitor-enter v1

    .line 33
    :try_start_0
    sget-object v0, Lcom/youku/laifeng/libcuteroom/model/loader/VoteLoader;->instance:Lcom/youku/laifeng/libcuteroom/model/loader/VoteLoader;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lcom/youku/laifeng/libcuteroom/model/loader/VoteLoader;

    invoke-direct {v0}, Lcom/youku/laifeng/libcuteroom/model/loader/VoteLoader;-><init>()V

    sput-object v0, Lcom/youku/laifeng/libcuteroom/model/loader/VoteLoader;->instance:Lcom/youku/laifeng/libcuteroom/model/loader/VoteLoader;

    .line 36
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    :cond_1
    sget-object v0, Lcom/youku/laifeng/libcuteroom/model/loader/VoteLoader;->instance:Lcom/youku/laifeng/libcuteroom/model/loader/VoteLoader;

    return-object v0

    .line 36
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public GetVoteList(Ljava/lang/String;Lcom/youku/laifeng/libcuteroom/model/listener/OnGetVoteListListener;)V
    .locals 7
    .param p1, "roomId"    # Ljava/lang/String;
    .param p2, "l"    # Lcom/youku/laifeng/libcuteroom/model/listener/OnGetVoteListListener;

    .prologue
    .line 43
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 44
    .local v0, "args":Lorg/json/JSONObject;
    const-string/jumbo v2, "roomId"

    invoke-virtual {v0, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 45
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getLibInstance()Lcom/youku/laifeng/libcuteroom/LibAppApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getRestAPIService()Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerService;

    move-result-object v2

    new-instance v3, Lcom/youku/laifeng/libcuteroom/model/loader/VoteLoader$1;

    invoke-direct {v3, p0, p2}, Lcom/youku/laifeng/libcuteroom/model/loader/VoteLoader$1;-><init>(Lcom/youku/laifeng/libcuteroom/model/loader/VoteLoader;Lcom/youku/laifeng/libcuteroom/model/listener/OnGetVoteListListener;)V

    .line 60
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/utils/RestAPI;->getInstance()Lcom/youku/laifeng/libcuteroom/utils/RestAPI;

    move-result-object v4

    iget-object v4, v4, Lcom/youku/laifeng/libcuteroom/utils/RestAPI;->SDK_GET_VOTE_LIST:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x10

    .line 45
    invoke-interface {v2, v3, v4, v5, v6}, Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerService;->directRequestDataByAsyn(Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceListener;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/youku/laifeng/libcuteroom/exception/ServiceException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    .line 68
    .end local v0    # "args":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 61
    :catch_0
    move-exception v1

    .line 62
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 63
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 64
    .local v1, "e":Lcom/youku/laifeng/libcuteroom/exception/ServiceException;
    invoke-virtual {v1}, Lcom/youku/laifeng/libcuteroom/exception/ServiceException;->printStackTrace()V

    goto :goto_0

    .line 65
    .end local v1    # "e":Lcom/youku/laifeng/libcuteroom/exception/ServiceException;
    :catch_2
    move-exception v1

    .line 66
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public GetVoteOption(Ljava/lang/String;Lcom/youku/laifeng/libcuteroom/model/listener/OnGetVoteOptionsListener;)V
    .locals 7
    .param p1, "voteId"    # Ljava/lang/String;
    .param p2, "l"    # Lcom/youku/laifeng/libcuteroom/model/listener/OnGetVoteOptionsListener;

    .prologue
    .line 72
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 73
    .local v0, "args":Lorg/json/JSONObject;
    const-string/jumbo v2, "voteId"

    invoke-virtual {v0, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 74
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getLibInstance()Lcom/youku/laifeng/libcuteroom/LibAppApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getRestAPIService()Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerService;

    move-result-object v2

    new-instance v3, Lcom/youku/laifeng/libcuteroom/model/loader/VoteLoader$2;

    invoke-direct {v3, p0, p2}, Lcom/youku/laifeng/libcuteroom/model/loader/VoteLoader$2;-><init>(Lcom/youku/laifeng/libcuteroom/model/loader/VoteLoader;Lcom/youku/laifeng/libcuteroom/model/listener/OnGetVoteOptionsListener;)V

    .line 89
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/utils/RestAPI;->getInstance()Lcom/youku/laifeng/libcuteroom/utils/RestAPI;

    move-result-object v4

    iget-object v4, v4, Lcom/youku/laifeng/libcuteroom/utils/RestAPI;->SDK_GET_VOTE_OPTIONS:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x10

    .line 74
    invoke-interface {v2, v3, v4, v5, v6}, Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerService;->directRequestDataByAsyn(Lcom/youku/laifeng/libcuteroom/model/port/service/IDataManagerServiceListener;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/youku/laifeng/libcuteroom/exception/ServiceException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    .line 97
    .end local v0    # "args":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 90
    :catch_0
    move-exception v1

    .line 91
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 92
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 93
    .local v1, "e":Lcom/youku/laifeng/libcuteroom/exception/ServiceException;
    invoke-virtual {v1}, Lcom/youku/laifeng/libcuteroom/exception/ServiceException;->printStackTrace()V

    goto :goto_0

    .line 94
    .end local v1    # "e":Lcom/youku/laifeng/libcuteroom/exception/ServiceException;
    :catch_2
    move-exception v1

    .line 95
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
