.class public Lcom/youku/player/grey/GreyConfig;
.super Ljava/lang/Object;
.source "GreyConfig.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static instance:Lcom/youku/player/grey/GreyConfig;


# instance fields
.field private isRunning:Z

.field private request:Lcom/youku/player/network/IHttpRequest;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/youku/player/LogTag;->TAG_GREY:Ljava/lang/String;

    sput-object v0, Lcom/youku/player/grey/GreyConfig;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/youku/player/grey/GreyConfig;->request:Lcom/youku/player/network/IHttpRequest;

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youku/player/grey/GreyConfig;->isRunning:Z

    .line 28
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/youku/player/grey/GreyConfig;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/youku/player/grey/GreyConfig;)Lcom/youku/player/network/IHttpRequest;
    .locals 1
    .param p0, "x0"    # Lcom/youku/player/grey/GreyConfig;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/youku/player/grey/GreyConfig;->request:Lcom/youku/player/network/IHttpRequest;

    return-object v0
.end method

.method public static declared-synchronized getInstance()Lcom/youku/player/grey/GreyConfig;
    .locals 2

    .prologue
    .line 31
    const-class v1, Lcom/youku/player/grey/GreyConfig;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/youku/player/grey/GreyConfig;->instance:Lcom/youku/player/grey/GreyConfig;

    if-nez v0, :cond_0

    new-instance v0, Lcom/youku/player/grey/GreyConfig;

    invoke-direct {v0}, Lcom/youku/player/grey/GreyConfig;-><init>()V

    sput-object v0, Lcom/youku/player/grey/GreyConfig;->instance:Lcom/youku/player/grey/GreyConfig;

    .line 32
    :cond_0
    sget-object v0, Lcom/youku/player/grey/GreyConfig;->instance:Lcom/youku/player/grey/GreyConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 31
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private requestData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "pid"    # Ljava/lang/String;
    .param p2, "YoukuVer"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 57
    iput-boolean v3, p0, Lcom/youku/player/grey/GreyConfig;->isRunning:Z

    .line 58
    const-class v2, Lcom/youku/player/network/IHttpRequest;

    invoke-static {v2, v3}, Lcom/youku/player/network/YoukuService;->getService(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/player/network/IHttpRequest;

    iput-object v2, p0, Lcom/youku/player/grey/GreyConfig;->request:Lcom/youku/player/network/IHttpRequest;

    .line 59
    invoke-static {}, Lcom/youku/player/config/MediaPlayerConfiguration;->getInstance()Lcom/youku/player/config/MediaPlayerConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lcom/youku/player/config/MediaPlayerConfiguration;->getVersionCode()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, p2, v2}, Lcom/youku/player/util/URLContainer;->getGreyInitURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 61
    .local v1, "url":Ljava/lang/String;
    sget-object v2, Lcom/youku/player/grey/GreyConfig;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    new-instance v0, Lcom/youku/player/network/HttpIntent;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/youku/player/network/HttpIntent;-><init>(Ljava/lang/String;Z)V

    .line 64
    .local v0, "httpIntent":Lcom/youku/player/network/HttpIntent;
    iget-object v2, p0, Lcom/youku/player/grey/GreyConfig;->request:Lcom/youku/player/network/IHttpRequest;

    new-instance v3, Lcom/youku/player/grey/GreyConfig$1;

    invoke-direct {v3, p0}, Lcom/youku/player/grey/GreyConfig$1;-><init>(Lcom/youku/player/grey/GreyConfig;)V

    invoke-interface {v2, v0, v3}, Lcom/youku/player/network/IHttpRequest;->request(Lcom/youku/player/network/HttpIntent;Lcom/youku/player/network/IHttpRequest$IHttpRequestCallBack;)V

    .line 89
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youku/player/grey/GreyConfig;->isRunning:Z

    .line 52
    iput-object v1, p0, Lcom/youku/player/grey/GreyConfig;->request:Lcom/youku/player/network/IHttpRequest;

    .line 53
    sput-object v1, Lcom/youku/player/grey/GreyConfig;->instance:Lcom/youku/player/grey/GreyConfig;

    .line 54
    return-void
.end method

.method public doRequestData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "pid"    # Ljava/lang/String;
    .param p2, "ver"    # Ljava/lang/String;

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/youku/player/grey/GreyConfig;->isRunning:Z

    if-nez v0, :cond_0

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/youku/player/grey/GreyConfig;->requestData(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    :cond_0
    return-void
.end method

.method public stopRequest()V
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/youku/player/grey/GreyConfig;->request:Lcom/youku/player/network/IHttpRequest;

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/youku/player/grey/GreyConfig;->request:Lcom/youku/player/network/IHttpRequest;

    invoke-interface {v0}, Lcom/youku/player/network/IHttpRequest;->cancel()V

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/youku/player/grey/GreyConfig;->request:Lcom/youku/player/network/IHttpRequest;

    .line 47
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youku/player/grey/GreyConfig;->isRunning:Z

    .line 48
    return-void
.end method
