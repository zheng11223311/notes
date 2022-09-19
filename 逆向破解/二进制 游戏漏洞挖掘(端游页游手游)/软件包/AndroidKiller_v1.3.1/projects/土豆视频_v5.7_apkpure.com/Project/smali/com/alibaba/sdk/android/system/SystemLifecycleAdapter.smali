.class public Lcom/alibaba/sdk/android/system/SystemLifecycleAdapter;
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
    .locals 9

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v0, "plugin.vendor"

    const-string/jumbo v1, "security"

    invoke-static {v0, v1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    const-class v0, Lcom/alibaba/sdk/android/plugin/config/PluginSystemConfigurations;

    invoke-interface {p1, v0}, Lcom/alibaba/sdk/android/app/AppContext;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/sdk/android/plugin/config/PluginSystemConfigurations;

    sput-object v0, Lcom/alibaba/sdk/android/system/a;->c:Lcom/alibaba/sdk/android/plugin/config/PluginSystemConfigurations;

    const-class v0, Lcom/alibaba/sdk/android/security/SecurityGuardService;

    invoke-interface {p1, v0, v1}, Lcom/alibaba/sdk/android/app/AppContext;->getService(Ljava/lang/Class;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/sdk/android/security/SecurityGuardService;

    sput-object v0, Lcom/alibaba/sdk/android/system/a;->b:Lcom/alibaba/sdk/android/security/SecurityGuardService;

    sput-object p1, Lcom/alibaba/sdk/android/system/a;->g:Lcom/alibaba/sdk/android/app/AppContext;

    const-class v0, Lcom/alibaba/sdk/android/security/CertificateService;

    invoke-interface {p1, v0, v1}, Lcom/alibaba/sdk/android/app/AppContext;->getService(Ljava/lang/Class;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/sdk/android/security/CertificateService;

    sput-object v0, Lcom/alibaba/sdk/android/system/a;->f:Lcom/alibaba/sdk/android/security/CertificateService;

    const-class v0, Lcom/alibaba/sdk/android/ut/UserTrackerService;

    invoke-interface {p1, v0, v8}, Lcom/alibaba/sdk/android/app/AppContext;->getService(Ljava/lang/Class;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/sdk/android/ut/UserTrackerService;

    sput-object v0, Lcom/alibaba/sdk/android/system/a;->e:Lcom/alibaba/sdk/android/ut/UserTrackerService;

    const-class v0, Lcom/alibaba/sdk/android/executor/ExecutorService;

    invoke-interface {p1, v0, v8}, Lcom/alibaba/sdk/android/app/AppContext;->getService(Ljava/lang/Class;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/sdk/android/executor/ExecutorService;

    sput-object v0, Lcom/alibaba/sdk/android/system/a;->h:Lcom/alibaba/sdk/android/executor/ExecutorService;

    const-class v0, Lcom/alibaba/sdk/android/security/AccessController;

    invoke-interface {p1, v0, v1}, Lcom/alibaba/sdk/android/app/AppContext;->getService(Ljava/lang/Class;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/sdk/android/security/AccessController;

    sput-object v0, Lcom/alibaba/sdk/android/system/a;->a:Lcom/alibaba/sdk/android/security/AccessController;

    const-class v0, Lcom/alibaba/sdk/android/security/SecurityService;

    invoke-interface {p1, v0, v1}, Lcom/alibaba/sdk/android/app/AppContext;->getService(Ljava/lang/Class;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/sdk/android/security/SecurityService;

    sput-object v0, Lcom/alibaba/sdk/android/system/a;->d:Lcom/alibaba/sdk/android/security/SecurityService;

    invoke-interface {p2}, Lcom/alibaba/sdk/android/plugin/PluginContext;->getPluginConfigurations()Lcom/alibaba/sdk/android/plugin/config/PluginConfigurations;

    move-result-object v0

    invoke-interface {p1}, Lcom/alibaba/sdk/android/app/AppContext;->getEnvironment()Lcom/alibaba/sdk/android/Environment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/Environment;->name()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_TOP_GATEWAY_URL"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alibaba/sdk/android/plugin/config/PluginConfigurations;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/alibaba/sdk/android/system/a;->i:Ljava/lang/String;

    const/4 v1, 0x4

    new-array v1, v1, [[Ljava/lang/String;

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, ".taobao.com"

    aput-object v3, v2, v6

    const-string v3, ".tmall.com"

    aput-object v3, v2, v7

    const-string v3, ".tmall.hk"

    aput-object v3, v2, v4

    aput-object v2, v1, v6

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, ".taobao.com"

    aput-object v3, v2, v6

    const-string v3, ".tmall.com"

    aput-object v3, v2, v7

    const-string v3, ".tmall.hk"

    aput-object v3, v2, v4

    aput-object v2, v1, v7

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, ".taobao.com"

    aput-object v3, v2, v6

    const-string v3, ".tmall.com"

    aput-object v3, v2, v7

    const-string v3, ".tmall.hk"

    aput-object v3, v2, v4

    aput-object v2, v1, v4

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, ".tbsandbox.com"

    aput-object v3, v2, v6

    aput-object v2, v1, v5

    invoke-interface {p1}, Lcom/alibaba/sdk/android/app/AppContext;->getEnvironment()Lcom/alibaba/sdk/android/Environment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/sdk/android/Environment;->ordinal()I

    move-result v2

    aget-object v1, v1, v2

    sput-object v1, Lcom/alibaba/sdk/android/system/a;->l:[Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "http://"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/alibaba/sdk/android/ConfigManager;->INIT_SERVER_HOST:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/rs.htm"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/alibaba/sdk/android/system/a;->j:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "http://"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/alibaba/sdk/android/ConfigManager;->INIT_SERVER_HOST:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/logout.htm"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/alibaba/sdk/android/system/a;->k:Ljava/lang/String;

    sget-object v1, Lcom/alibaba/sdk/android/web/a/a;->a:Lcom/alibaba/sdk/android/web/a/a;

    invoke-static {}, Lcom/alibaba/sdk/android/web/a/a;->b()V

    new-instance v1, Lcom/alibaba/sdk/android/initialization/impl/DefaultInitializationServiceClientImpl;

    invoke-direct {v1, p1}, Lcom/alibaba/sdk/android/initialization/impl/DefaultInitializationServiceClientImpl;-><init>(Lcom/alibaba/sdk/android/app/AppContext;)V

    const-string v2, "disableQueryCellLocation"

    invoke-interface {v0, v2, v6}, Lcom/alibaba/sdk/android/plugin/config/PluginConfigurations;->getBooleanValue(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v1, Lcom/alibaba/sdk/android/initialization/impl/DefaultInitializationServiceClientImpl;->disableQueryCellLocation:Z

    new-array v2, v7, [Ljava/lang/Class;

    const-class v3, Lcom/alibaba/sdk/android/initialization/InitializationServiceClient;

    aput-object v3, v2, v6

    invoke-interface {p1, v2, v1, v8}, Lcom/alibaba/sdk/android/app/AppContext;->registerService([Ljava/lang/Class;Ljava/lang/Object;Ljava/util/Map;)Lcom/alibaba/sdk/android/registry/ServiceRegistration;

    new-array v2, v7, [Ljava/lang/Class;

    const-class v3, Lcom/alibaba/sdk/android/initialization/InitializationHandler;

    aput-object v3, v2, v6

    sget-object v3, Lcom/alibaba/sdk/android/session/impl/CredentialManager;->INSTANCE:Lcom/alibaba/sdk/android/session/impl/CredentialManager;

    invoke-virtual {v3, v6}, Lcom/alibaba/sdk/android/session/impl/CredentialManager;->getSessionInitHandler(Z)Lcom/alibaba/sdk/android/initialization/InitializationHandler;

    move-result-object v3

    invoke-interface {p1, v2, v3, v8}, Lcom/alibaba/sdk/android/app/AppContext;->registerService([Ljava/lang/Class;Ljava/lang/Object;Ljava/util/Map;)Lcom/alibaba/sdk/android/registry/ServiceRegistration;

    new-array v2, v7, [Ljava/lang/Class;

    const-class v3, Lcom/alibaba/sdk/android/initialization/InitializationHandler;

    aput-object v3, v2, v6

    new-instance v3, Lcom/alibaba/sdk/android/initialization/impl/a;

    invoke-direct {v3}, Lcom/alibaba/sdk/android/initialization/impl/a;-><init>()V

    invoke-interface {p1, v2, v3, v8}, Lcom/alibaba/sdk/android/app/AppContext;->registerService([Ljava/lang/Class;Ljava/lang/Object;Ljava/util/Map;)Lcom/alibaba/sdk/android/registry/ServiceRegistration;

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/initialization/impl/DefaultInitializationServiceClientImpl;->request()V

    sget-object v1, Lcom/alibaba/sdk/android/rpc/a/a;->a:Lcom/alibaba/sdk/android/rpc/a/a;

    invoke-static {}, Lcom/alibaba/sdk/android/rpc/a/a;->a()V

    const-string v1, "$isv_scope$"

    const-string/jumbo v2, "true"

    invoke-static {v1, v2}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/Class;

    const-class v3, Lcom/alibaba/sdk/android/rpc/RpcService;

    aput-object v3, v2, v6

    sget-object v3, Lcom/alibaba/sdk/android/rpc/a/a;->a:Lcom/alibaba/sdk/android/rpc/a/a;

    invoke-interface {p1, v2, v3, v8}, Lcom/alibaba/sdk/android/app/AppContext;->registerService([Ljava/lang/Class;Ljava/lang/Object;Ljava/util/Map;)Lcom/alibaba/sdk/android/registry/ServiceRegistration;

    new-array v2, v7, [Ljava/lang/Class;

    const-class v3, Lcom/alibaba/sdk/android/top/TopService;

    aput-object v3, v2, v6

    new-instance v3, Lcom/alibaba/sdk/android/top/a/a;

    invoke-direct {v3}, Lcom/alibaba/sdk/android/top/a/a;-><init>()V

    invoke-interface {p1, v2, v3, v1}, Lcom/alibaba/sdk/android/app/AppContext;->registerService([Ljava/lang/Class;Ljava/lang/Object;Ljava/util/Map;)Lcom/alibaba/sdk/android/registry/ServiceRegistration;

    new-array v1, v7, [Ljava/lang/Class;

    const-class v2, Lcom/alibaba/sdk/android/web/H5WebPageService;

    aput-object v2, v1, v6

    new-instance v2, Lcom/alibaba/sdk/android/web/a/b;

    invoke-direct {v2}, Lcom/alibaba/sdk/android/web/a/b;-><init>()V

    invoke-interface {p1, v1, v2, v8}, Lcom/alibaba/sdk/android/app/AppContext;->registerService([Ljava/lang/Class;Ljava/lang/Object;Ljava/util/Map;)Lcom/alibaba/sdk/android/registry/ServiceRegistration;

    new-array v1, v7, [Ljava/lang/Class;

    const-class v2, Lcom/alibaba/sdk/android/session/SessionService;

    aput-object v2, v1, v6

    new-instance v2, Lcom/alibaba/sdk/android/session/impl/SessionServiceImpl;

    sget-object v3, Lcom/alibaba/sdk/android/session/impl/CredentialManager;->INSTANCE:Lcom/alibaba/sdk/android/session/impl/CredentialManager;

    invoke-direct {v2, v3}, Lcom/alibaba/sdk/android/session/impl/SessionServiceImpl;-><init>(Lcom/alibaba/sdk/android/session/impl/CredentialManager;)V

    invoke-interface {p1, v1, v2, v8}, Lcom/alibaba/sdk/android/app/AppContext;->registerService([Ljava/lang/Class;Ljava/lang/Object;Ljava/util/Map;)Lcom/alibaba/sdk/android/registry/ServiceRegistration;

    new-array v1, v7, [Ljava/lang/Class;

    const-class v2, Lcom/alibaba/sdk/android/web/CookieService;

    aput-object v2, v1, v6

    sget-object v2, Lcom/alibaba/sdk/android/web/a/a;->a:Lcom/alibaba/sdk/android/web/a/a;

    invoke-interface {p1, v1, v2, v8}, Lcom/alibaba/sdk/android/app/AppContext;->registerService([Ljava/lang/Class;Ljava/lang/Object;Ljava/util/Map;)Lcom/alibaba/sdk/android/registry/ServiceRegistration;

    sget-object v1, Lcom/alibaba/sdk/android/session/impl/CredentialManager;->INSTANCE:Lcom/alibaba/sdk/android/session/impl/CredentialManager;

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/session/impl/CredentialManager;->getCredentialManagerPolicy()Lcom/alibaba/sdk/android/session/impl/CredentialManagerPolicy;

    move-result-object v1

    const-string/jumbo v2, "sidForceRefreshInterval"

    const-wide/16 v4, 0x2710

    invoke-interface {v0, v2, v4, v5}, Lcom/alibaba/sdk/android/plugin/config/PluginConfigurations;->getLongValue(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/alibaba/sdk/android/session/impl/CredentialManagerPolicy;->sidForceRefreshInterval:J

    new-array v1, v7, [Ljava/lang/Class;

    const-class v2, Lcom/alibaba/sdk/android/session/CredentialService;

    aput-object v2, v1, v6

    sget-object v2, Lcom/alibaba/sdk/android/session/impl/CredentialManager;->INSTANCE:Lcom/alibaba/sdk/android/session/impl/CredentialManager;

    const-string/jumbo v3, "scop"

    const-string/jumbo v4, "system"

    invoke-static {v3, v4}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {p1, v1, v2, v3}, Lcom/alibaba/sdk/android/app/AppContext;->registerService([Ljava/lang/Class;Ljava/lang/Object;Ljava/util/Map;)Lcom/alibaba/sdk/android/registry/ServiceRegistration;

    new-array v1, v7, [Ljava/lang/Class;

    const-class v2, Lcom/alibaba/sdk/android/webview/handler/OverrideURLHandler;

    aput-object v2, v1, v6

    new-instance v2, Lcom/alibaba/sdk/android/webview/handler/b;

    invoke-direct {v2}, Lcom/alibaba/sdk/android/webview/handler/b;-><init>()V

    invoke-interface {p1, v1, v2, v8}, Lcom/alibaba/sdk/android/app/AppContext;->registerService([Ljava/lang/Class;Ljava/lang/Object;Ljava/util/Map;)Lcom/alibaba/sdk/android/registry/ServiceRegistration;

    new-array v1, v7, [Ljava/lang/Class;

    const-class v2, Lcom/alibaba/sdk/android/webview/handler/OverrideURLHandler;

    aput-object v2, v1, v6

    new-instance v2, Lcom/alibaba/sdk/android/webview/handler/a;

    invoke-direct {v2}, Lcom/alibaba/sdk/android/webview/handler/a;-><init>()V

    invoke-interface {p1, v1, v2, v8}, Lcom/alibaba/sdk/android/app/AppContext;->registerService([Ljava/lang/Class;Ljava/lang/Object;Ljava/util/Map;)Lcom/alibaba/sdk/android/registry/ServiceRegistration;

    const-string v1, "disableLocationService"

    invoke-interface {v0, v1, v6}, Lcom/alibaba/sdk/android/plugin/config/PluginConfigurations;->getBooleanValue(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "disableNativeLocationServiceProvider"

    invoke-interface {v0, v1, v6}, Lcom/alibaba/sdk/android/plugin/config/PluginConfigurations;->getBooleanValue(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    new-array v0, v7, [Ljava/lang/Class;

    const-class v1, Lcom/alibaba/sdk/android/location/LocationServiceProvider;

    aput-object v1, v0, v6

    new-instance v1, Lcom/alibaba/sdk/android/location/a/b;

    invoke-direct {v1}, Lcom/alibaba/sdk/android/location/a/b;-><init>()V

    const-string v2, "location_provider"

    const-string v3, "native"

    invoke-static {v2, v3}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {p1, v0, v1, v2}, Lcom/alibaba/sdk/android/app/AppContext;->registerService([Ljava/lang/Class;Ljava/lang/Object;Ljava/util/Map;)Lcom/alibaba/sdk/android/registry/ServiceRegistration;

    :cond_0
    new-array v0, v7, [Ljava/lang/Class;

    const-class v1, Lcom/alibaba/sdk/android/location/LocationService;

    aput-object v1, v0, v6

    new-instance v1, Lcom/alibaba/sdk/android/location/a/a;

    invoke-direct {v1}, Lcom/alibaba/sdk/android/location/a/a;-><init>()V

    invoke-interface {p1, v0, v1, v8}, Lcom/alibaba/sdk/android/app/AppContext;->registerService([Ljava/lang/Class;Ljava/lang/Object;Ljava/util/Map;)Lcom/alibaba/sdk/android/registry/ServiceRegistration;

    :cond_1
    return-void
.end method

.method public stop(Lcom/alibaba/sdk/android/app/AppContext;Lcom/alibaba/sdk/android/plugin/PluginContext;)V
    .locals 0

    return-void
.end method
