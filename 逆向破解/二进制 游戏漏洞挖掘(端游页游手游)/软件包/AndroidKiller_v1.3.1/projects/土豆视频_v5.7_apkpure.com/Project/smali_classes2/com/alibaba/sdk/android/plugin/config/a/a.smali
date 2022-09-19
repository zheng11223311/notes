.class public final Lcom/alibaba/sdk/android/plugin/config/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alibaba/sdk/android/plugin/config/PluginConfigurations;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/alibaba/sdk/android/plugin/config/PluginSystemConfigurations;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/sdk/android/registry/ServiceRegistration;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/alibaba/sdk/android/plugin/PluginInfo;Lcom/alibaba/sdk/android/plugin/config/PluginSystemConfigurations;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/sdk/android/plugin/config/a/a;->c:Ljava/util/List;

    iget-object v0, p1, Lcom/alibaba/sdk/android/plugin/PluginInfo;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/sdk/android/plugin/config/a/a;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/alibaba/sdk/android/plugin/config/a/a;->b:Lcom/alibaba/sdk/android/plugin/config/PluginSystemConfigurations;

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-nez p2, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/alibaba/sdk/android/plugin/config/a/a;->b:Lcom/alibaba/sdk/android/plugin/config/PluginSystemConfigurations;

    invoke-interface {v0, p1, p2}, Lcom/alibaba/sdk/android/plugin/config/PluginSystemConfigurations;->getPluginProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/sdk/android/plugin/config/a/a;->b:Lcom/alibaba/sdk/android/plugin/config/PluginSystemConfigurations;

    invoke-interface {v0, p2}, Lcom/alibaba/sdk/android/plugin/config/PluginSystemConfigurations;->getGlobalProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/alibaba/sdk/android/plugin/config/a/a;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/sdk/android/registry/ServiceRegistration;

    invoke-interface {v0}, Lcom/alibaba/sdk/android/registry/ServiceRegistration;->unregister()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/sdk/android/plugin/config/a/a;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public final getBooleanValue(Ljava/lang/String;Z)Z
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sdk/android/plugin/config/a/a;->a:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/alibaba/sdk/android/plugin/config/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return p2

    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p2

    goto :goto_0
.end method

.method public final getDoubleValue(Ljava/lang/String;D)D
    .locals 2

    iget-object v0, p0, Lcom/alibaba/sdk/android/plugin/config/a/a;->a:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/alibaba/sdk/android/plugin/config/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-wide p2

    :cond_0
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p2

    goto :goto_0
.end method

.method public final getFloatValue(Ljava/lang/String;F)F
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sdk/android/plugin/config/a/a;->a:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/alibaba/sdk/android/plugin/config/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return p2

    :cond_0
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p2

    goto :goto_0
.end method

.method public final getIntValue(Ljava/lang/String;I)I
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sdk/android/plugin/config/a/a;->a:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/alibaba/sdk/android/plugin/config/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return p2

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    goto :goto_0
.end method

.method public final getLongValue(Ljava/lang/String;J)J
    .locals 2

    iget-object v0, p0, Lcom/alibaba/sdk/android/plugin/config/a/a;->a:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/alibaba/sdk/android/plugin/config/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-wide p2

    :cond_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p2

    goto :goto_0
.end method

.method public final getStringValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sdk/android/plugin/config/a/a;->a:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/alibaba/sdk/android/plugin/config/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sdk/android/plugin/config/a/a;->a:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/alibaba/sdk/android/plugin/config/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-object p2

    :cond_0
    move-object p2, v0

    goto :goto_0
.end method

.method public final registerPropertyChangeListener(Lcom/alibaba/sdk/android/config/PropertyChangeListener;)Lcom/alibaba/sdk/android/registry/ServiceRegistration;
    .locals 5

    const-string v0, "plugin.vendor"

    iget-object v1, p0, Lcom/alibaba/sdk/android/plugin/config/a/a;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    sget-object v1, Lcom/alibaba/sdk/android/b/a;->e:Lcom/alibaba/sdk/android/registry/a;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Lcom/alibaba/sdk/android/config/PropertyChangeListener;

    aput-object v4, v2, v3

    invoke-interface {v1, v2, p1, v0}, Lcom/alibaba/sdk/android/registry/a;->a([Ljava/lang/Class;Ljava/lang/Object;Ljava/util/Map;)Lcom/alibaba/sdk/android/registry/ServiceRegistration;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/sdk/android/plugin/config/a/a;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public final unregisterPropertyChangeListener(Lcom/alibaba/sdk/android/registry/ServiceRegistration;)V
    .locals 0

    invoke-interface {p1}, Lcom/alibaba/sdk/android/registry/ServiceRegistration;->unregister()V

    return-void
.end method
