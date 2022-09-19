.class public Lcom/alibaba/cchannel/rpc/plugin/lifecycle/RpcLifecycleAdapter;
.super Ljava/lang/Object;
.source "RpcLifecycleAdapter.java"

# interfaces
.implements Lcom/alibaba/sdk/android/plugin/PluginLifecycleAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public start(Lcom/alibaba/sdk/android/app/AppContext;Lcom/alibaba/sdk/android/plugin/PluginContext;)V
    .locals 4
    .param p1, "appContext"    # Lcom/alibaba/sdk/android/app/AppContext;
    .param p2, "pluginContext"    # Lcom/alibaba/sdk/android/plugin/PluginContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/sdk/android/plugin/PluginLifecycleException;
        }
    .end annotation

    .prologue
    .line 20
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Lcom/alibaba/cchannel/rpc/plugin/RpcService;

    aput-object v2, v0, v1

    new-instance v1, Lcom/alibaba/cchannel/rpc/plugin/impl/RpcServiceImpl;

    invoke-direct {v1}, Lcom/alibaba/cchannel/rpc/plugin/impl/RpcServiceImpl;-><init>()V

    const-string v2, "$isv_scope$"

    const-string/jumbo v3, "true"

    invoke-static {v2, v3}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {p1, v0, v1, v2}, Lcom/alibaba/sdk/android/app/AppContext;->registerService([Ljava/lang/Class;Ljava/lang/Object;Ljava/util/Map;)Lcom/alibaba/sdk/android/registry/ServiceRegistration;

    .line 22
    return-void
.end method

.method public stop(Lcom/alibaba/sdk/android/app/AppContext;Lcom/alibaba/sdk/android/plugin/PluginContext;)V
    .locals 0
    .param p1, "appContext"    # Lcom/alibaba/sdk/android/app/AppContext;
    .param p2, "pluginContext"    # Lcom/alibaba/sdk/android/plugin/PluginContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/sdk/android/plugin/PluginLifecycleException;
        }
    .end annotation

    .prologue
    .line 27
    return-void
.end method
