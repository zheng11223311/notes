.class public abstract Lcom/alibaba/cchannel/rpc/AbstractRPCServiceClient;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alibaba/cchannel/rpc/RPCServiceClient;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public assembleSid(Lcom/alibaba/cchannel/rpc/ServiceRequest;Z)V
    .locals 4

    sget-object v0, Lcom/alibaba/cchannel/session/plugin/SessionContext;->appContext:Lcom/alibaba/sdk/android/app/AppContext;

    const-class v1, Lcom/alibaba/cchannel/session/plugin/SessionService;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/alibaba/sdk/android/app/AppContext;->getService(Ljava/lang/Class;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/cchannel/session/plugin/SessionService;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/alibaba/cchannel/session/plugin/SessionService;->isInit()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "sessionService or provider isn\'t init!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string v1, "CCP:AbstractRPCServiceClient"

    const-string/jumbo v2, "session service and provider has init"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_2

    const-string v1, "CCP:AbstractRPCServiceClient"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "force init sid for request:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/alibaba/cchannel/rpc/utils/ThreadPoolFactory;->getMultiThreadPool()Lcom/alibaba/cchannel/rpc/utils/ThreadPoolFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/cchannel/rpc/utils/ThreadPoolFactory;->getExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Lcom/alibaba/cchannel/rpc/a;

    invoke-direct {v2, p0, v0, p2, p1}, Lcom/alibaba/cchannel/rpc/a;-><init>(Lcom/alibaba/cchannel/rpc/AbstractRPCServiceClient;Lcom/alibaba/cchannel/session/plugin/SessionService;ZLcom/alibaba/cchannel/rpc/ServiceRequest;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    const-wide/16 v2, 0x5

    :try_start_0
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2, v3, v1}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "sid is null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_3
    invoke-virtual {p1}, Lcom/alibaba/cchannel/rpc/ServiceRequest;->getSessionFilter()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Lcom/alibaba/cchannel/session/plugin/SessionService;->getSid(ZLjava/util/Map;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    invoke-virtual {p1, v0}, Lcom/alibaba/cchannel/rpc/ServiceRequest;->setSID(Ljava/lang/String;)Lcom/alibaba/cchannel/rpc/ServiceRequest;

    return-void
.end method
