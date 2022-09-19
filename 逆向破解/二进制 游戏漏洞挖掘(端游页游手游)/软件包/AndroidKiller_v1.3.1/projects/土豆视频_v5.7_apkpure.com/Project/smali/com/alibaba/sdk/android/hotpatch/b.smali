.class final Lcom/alibaba/sdk/android/hotpatch/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/alibaba/sdk/android/hotpatch/HotPatchBroadcastReceiver;


# direct methods
.method constructor <init>(Lcom/alibaba/sdk/android/hotpatch/HotPatchBroadcastReceiver;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/hotpatch/b;->b:Lcom/alibaba/sdk/android/hotpatch/HotPatchBroadcastReceiver;

    iput-object p2, p0, Lcom/alibaba/sdk/android/hotpatch/b;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    :try_start_0
    sget-object v0, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;->INSTANCE:Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;

    iget-object v0, v0, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;->appContext:Lcom/alibaba/sdk/android/app/AppContext;

    sget-object v1, Lcom/alibaba/sdk/android/security/impl/CertificateManager;->INSTANCE:Lcom/alibaba/sdk/android/security/impl/CertificateManager;

    iget-object v2, p0, Lcom/alibaba/sdk/android/hotpatch/b;->a:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/alibaba/sdk/android/security/impl/CertificateManager;->init(Landroid/content/Context;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Lcom/alibaba/sdk/android/security/CertificateService;

    aput-object v3, v1, v2

    sget-object v2, Lcom/alibaba/sdk/android/security/impl/CertificateManager;->INSTANCE:Lcom/alibaba/sdk/android/security/impl/CertificateManager;

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/sdk/android/app/AppContext;->registerService([Ljava/lang/Class;Ljava/lang/Object;Ljava/util/Map;)Lcom/alibaba/sdk/android/registry/ServiceRegistration;

    new-instance v1, Lcom/alibaba/sdk/android/initialization/impl/DefaultInitializationServiceClientImpl;

    const-string v2, "init_key_hotpatch"

    invoke-direct {v1, v0, v2}, Lcom/alibaba/sdk/android/initialization/impl/DefaultInitializationServiceClientImpl;-><init>(Lcom/alibaba/sdk/android/app/AppContext;Ljava/lang/String;)V

    const-string v0, "hotpatch"

    const-string v2, "Now the broadcast is sending the hotpatch request"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/alibaba/sdk/android/initialization/InitializationHandler;

    const/4 v2, 0x0

    new-instance v3, Lcom/alibaba/sdk/android/hotpatch/e;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/alibaba/sdk/android/hotpatch/e;-><init>(Z)V

    aput-object v3, v0, v2

    invoke-interface {v1, v0}, Lcom/alibaba/sdk/android/initialization/InitializationServiceClient;->request([Lcom/alibaba/sdk/android/initialization/InitializationHandler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
