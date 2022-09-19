.class public Lcom/alibaba/cchannel/session/plugin/impl/SessionServiceImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alibaba/cchannel/session/plugin/SessionService;


# instance fields
.field private provider:Lcom/alibaba/cchannel/CloudChannelInitializeProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSid(ZLjava/util/Map;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alibaba/cchannel/session/plugin/impl/SessionServiceImpl;->provider:Lcom/alibaba/cchannel/CloudChannelInitializeProvider;

    invoke-interface {v0, p1, p2}, Lcom/alibaba/cchannel/CloudChannelInitializeProvider;->init(ZLjava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public init()V
    .locals 4

    :try_start_0
    new-instance v0, Lcom/alibaba/cchannel/session/plugin/impl/a;

    invoke-direct {v0, p0}, Lcom/alibaba/cchannel/session/plugin/impl/a;-><init>(Lcom/alibaba/cchannel/session/plugin/impl/SessionServiceImpl;)V

    iput-object v0, p0, Lcom/alibaba/cchannel/session/plugin/impl/SessionServiceImpl;->provider:Lcom/alibaba/cchannel/CloudChannelInitializeProvider;

    invoke-static {}, Lcom/alibaba/cchannel/CloudChannel;->getInstance()Lcom/alibaba/cchannel/CloudChannel;

    move-result-object v0

    sget-object v1, Lcom/alibaba/cchannel/session/plugin/SessionContext;->appContext:Lcom/alibaba/sdk/android/app/AppContext;

    invoke-interface {v1}, Lcom/alibaba/sdk/android/app/AppContext;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/alibaba/cchannel/Platform;->TAOBAO:Lcom/alibaba/cchannel/Platform;

    iget-object v3, p0, Lcom/alibaba/cchannel/session/plugin/impl/SessionServiceImpl;->provider:Lcom/alibaba/cchannel/CloudChannelInitializeProvider;

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/cchannel/CloudChannel;->init(Landroid/content/Context;Lcom/alibaba/cchannel/Platform;Lcom/alibaba/cchannel/CloudChannelInitializeProvider;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isInit()Z
    .locals 1

    iget-object v0, p0, Lcom/alibaba/cchannel/session/plugin/impl/SessionServiceImpl;->provider:Lcom/alibaba/cchannel/CloudChannelInitializeProvider;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
