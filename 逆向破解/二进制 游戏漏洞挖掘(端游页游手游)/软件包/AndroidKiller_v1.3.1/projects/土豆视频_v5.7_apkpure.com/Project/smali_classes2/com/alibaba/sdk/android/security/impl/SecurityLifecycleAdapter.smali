.class public Lcom/alibaba/sdk/android/security/impl/SecurityLifecycleAdapter;
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

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    sput-object p1, Lcom/alibaba/sdk/android/security/impl/f;->a:Lcom/alibaba/sdk/android/app/AppContext;

    invoke-interface {p2}, Lcom/alibaba/sdk/android/plugin/PluginContext;->getPluginConfigurations()Lcom/alibaba/sdk/android/plugin/config/PluginConfigurations;

    move-result-object v0

    sput-object v0, Lcom/alibaba/sdk/android/security/impl/f;->c:Lcom/alibaba/sdk/android/plugin/config/PluginConfigurations;

    const-class v0, Lcom/alibaba/sdk/android/executor/ExecutorService;

    invoke-interface {p1, v0, v2}, Lcom/alibaba/sdk/android/app/AppContext;->getService(Ljava/lang/Class;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/sdk/android/executor/ExecutorService;

    sput-object v0, Lcom/alibaba/sdk/android/security/impl/f;->b:Lcom/alibaba/sdk/android/executor/ExecutorService;

    sget-object v0, Lcom/alibaba/sdk/android/security/impl/CertificateManager;->INSTANCE:Lcom/alibaba/sdk/android/security/impl/CertificateManager;

    invoke-interface {p1}, Lcom/alibaba/sdk/android/app/AppContext;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/security/impl/CertificateManager;->init(Landroid/content/Context;)V

    new-array v0, v4, [Ljava/lang/Class;

    const-class v1, Lcom/alibaba/sdk/android/security/CertificateService;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/sdk/android/security/impl/CertificateManager;->INSTANCE:Lcom/alibaba/sdk/android/security/impl/CertificateManager;

    invoke-interface {p1, v0, v1, v2}, Lcom/alibaba/sdk/android/app/AppContext;->registerService([Ljava/lang/Class;Ljava/lang/Object;Ljava/util/Map;)Lcom/alibaba/sdk/android/registry/ServiceRegistration;

    sget-object v0, Lcom/alibaba/sdk/android/security/impl/a;->a:Lcom/alibaba/sdk/android/security/impl/a;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/security/impl/a;->a()V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Lcom/alibaba/sdk/android/initialization/InitializationHandler;

    aput-object v1, v0, v3

    const-class v1, Lcom/alibaba/sdk/android/security/AccessController;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/sdk/android/security/impl/a;->a:Lcom/alibaba/sdk/android/security/impl/a;

    invoke-interface {p1, v0, v1, v2}, Lcom/alibaba/sdk/android/app/AppContext;->registerService([Ljava/lang/Class;Ljava/lang/Object;Ljava/util/Map;)Lcom/alibaba/sdk/android/registry/ServiceRegistration;

    new-array v0, v4, [Ljava/lang/Class;

    const-class v1, Lcom/alibaba/sdk/android/security/SecurityService;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/sdk/android/security/impl/h;->a:Lcom/alibaba/sdk/android/security/SecurityService;

    invoke-interface {p1, v0, v1, v2}, Lcom/alibaba/sdk/android/app/AppContext;->registerService([Ljava/lang/Class;Ljava/lang/Object;Ljava/util/Map;)Lcom/alibaba/sdk/android/registry/ServiceRegistration;

    return-void
.end method

.method public stop(Lcom/alibaba/sdk/android/app/AppContext;Lcom/alibaba/sdk/android/plugin/PluginContext;)V
    .locals 0

    return-void
.end method
