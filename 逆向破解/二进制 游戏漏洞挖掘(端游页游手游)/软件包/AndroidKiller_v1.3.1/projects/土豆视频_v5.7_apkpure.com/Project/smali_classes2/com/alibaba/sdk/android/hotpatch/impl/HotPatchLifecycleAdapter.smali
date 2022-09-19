.class public Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchLifecycleAdapter;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alibaba/sdk/android/plugin/PluginLifecycleAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public start(Lcom/alibaba/sdk/android/app/AppContext;Lcom/alibaba/sdk/android/plugin/PluginContext;)V
    .locals 5

    const/4 v4, -0x1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p2}, Lcom/alibaba/sdk/android/plugin/PluginContext;->getPluginConfigurations()Lcom/alibaba/sdk/android/plugin/config/PluginConfigurations;

    move-result-object v1

    const-string v2, "disable_alarm"

    invoke-interface {v1, v2}, Lcom/alibaba/sdk/android/plugin/config/PluginConfigurations;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, "disable_alarm"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string v2, "alarm_delay_seconds"

    invoke-interface {v1, v2, v4}, Lcom/alibaba/sdk/android/plugin/config/PluginConfigurations;->getIntValue(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v4, :cond_1

    const-string v2, "alarm_delay_seconds"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_2

    sget-object v1, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;->INSTANCE:Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;

    invoke-virtual {v1, v0}, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;->saveProperties(Ljava/util/Map;)V

    :cond_2
    return-void
.end method

.method public stop(Lcom/alibaba/sdk/android/app/AppContext;Lcom/alibaba/sdk/android/plugin/PluginContext;)V
    .locals 0

    return-void
.end method
