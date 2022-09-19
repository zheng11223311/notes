.class public Lcom/alibaba/cchannel/CloudChannel;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/alibaba/cchannel/CloudChannel;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lcom/alibaba/cchannel/CloudChannelInitializeProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/alibaba/cchannel/CloudChannel;

    invoke-direct {v0}, Lcom/alibaba/cchannel/CloudChannel;-><init>()V

    sput-object v0, Lcom/alibaba/cchannel/CloudChannel;->a:Lcom/alibaba/cchannel/CloudChannel;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/alibaba/cchannel/CloudChannel;
    .locals 1

    sget-object v0, Lcom/alibaba/cchannel/CloudChannel;->a:Lcom/alibaba/cchannel/CloudChannel;

    return-object v0
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/cchannel/CloudChannel;->b:Landroid/content/Context;

    return-object v0
.end method

.method public getInitializeProvider()Lcom/alibaba/cchannel/CloudChannelInitializeProvider;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/cchannel/CloudChannel;->c:Lcom/alibaba/cchannel/CloudChannelInitializeProvider;

    return-object v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/cchannel/CloudChannel;->init(Landroid/content/Context;Lcom/alibaba/cchannel/core/task/RunnableCallback;)V

    return-void
.end method

.method public init(Landroid/content/Context;Lcom/alibaba/cchannel/Platform;Lcom/alibaba/cchannel/CloudChannelInitializeProvider;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/alibaba/cchannel/CloudChannel;->init(Landroid/content/Context;Lcom/alibaba/cchannel/Platform;Lcom/alibaba/cchannel/CloudChannelInitializeProvider;Lcom/alibaba/cchannel/core/task/RunnableCallback;)V

    return-void
.end method

.method public init(Landroid/content/Context;Lcom/alibaba/cchannel/Platform;Lcom/alibaba/cchannel/CloudChannelInitializeProvider;Lcom/alibaba/cchannel/core/task/RunnableCallback;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/alibaba/cchannel/Platform;",
            "Lcom/alibaba/cchannel/CloudChannelInitializeProvider;",
            "Lcom/alibaba/cchannel/core/task/RunnableCallback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/cchannel/CloudChannel;->init(Landroid/content/Context;Lcom/alibaba/cchannel/Platform;Lcom/alibaba/cchannel/CloudChannelInitializeProvider;Lcom/alibaba/cchannel/core/task/RunnableCallback;Ljava/lang/String;)V

    return-void
.end method

.method public init(Landroid/content/Context;Lcom/alibaba/cchannel/Platform;Lcom/alibaba/cchannel/CloudChannelInitializeProvider;Lcom/alibaba/cchannel/core/task/RunnableCallback;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/alibaba/cchannel/Platform;",
            "Lcom/alibaba/cchannel/CloudChannelInitializeProvider;",
            "Lcom/alibaba/cchannel/core/task/RunnableCallback",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "CCP"

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "CCP"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cloud Channel init platform:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",provider:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",callback:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-object p3, p0, Lcom/alibaba/cchannel/CloudChannel;->c:Lcom/alibaba/cchannel/CloudChannelInitializeProvider;

    iput-object p1, p0, Lcom/alibaba/cchannel/CloudChannel;->b:Landroid/content/Context;

    iget-object v0, p0, Lcom/alibaba/cchannel/CloudChannel;->b:Landroid/content/Context;

    const-string v1, "connection_info"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "PLATFORM_CACHE_KEY"

    invoke-virtual {p2}, Lcom/alibaba/cchannel/Platform;->code()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v1, "AUTH_CODE"

    invoke-interface {v0, v1, p5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "ENV"

    sget-object v2, Lcom/alibaba/cchannel/CloudChannelConstants;->ENV:Lcom/alibaba/cchannel/CloudChannelEnv;

    invoke-virtual {v2}, Lcom/alibaba/cchannel/CloudChannelEnv;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    new-instance v0, Lcom/alibaba/cchannel/core/security/ClientSideSecurityBoxForSecurityguard;

    invoke-direct {v0, p1, p2, p5}, Lcom/alibaba/cchannel/core/security/ClientSideSecurityBoxForSecurityguard;-><init>(Landroid/content/Context;Lcom/alibaba/cchannel/Platform;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/alibaba/cchannel/security/encryption/SecurityBoxHolder;->init(Lcom/alibaba/cchannel/security/encryption/SecurityBox;)V

    invoke-static {}, Lcom/alibaba/cchannel/security/encryption/SecurityBoxHolder;->getSecurityBox()Lcom/alibaba/cchannel/security/encryption/SecurityBox;

    move-result-object v0

    const-string v1, "platformKey"

    invoke-virtual {p2}, Lcom/alibaba/cchannel/Platform;->code()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alibaba/cchannel/security/encryption/SecurityBox;->storeCustomState(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public init(Landroid/content/Context;Lcom/alibaba/cchannel/core/task/RunnableCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/alibaba/cchannel/core/task/RunnableCallback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/alibaba/cchannel/CloudChannel;->init(Landroid/content/Context;Lcom/alibaba/cchannel/core/task/RunnableCallback;Ljava/lang/String;)V

    return-void
.end method

.method public init(Landroid/content/Context;Lcom/alibaba/cchannel/core/task/RunnableCallback;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/alibaba/cchannel/core/task/RunnableCallback",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    sget-object v2, Lcom/alibaba/cchannel/Platform;->ALIYUN:Lcom/alibaba/cchannel/Platform;

    new-instance v3, Lcom/alibaba/cchannel/a;

    invoke-direct {v3, p1}, Lcom/alibaba/cchannel/a;-><init>(Landroid/content/Context;)V

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/cchannel/CloudChannel;->init(Landroid/content/Context;Lcom/alibaba/cchannel/Platform;Lcom/alibaba/cchannel/CloudChannelInitializeProvider;Lcom/alibaba/cchannel/core/task/RunnableCallback;Ljava/lang/String;)V

    return-void
.end method
