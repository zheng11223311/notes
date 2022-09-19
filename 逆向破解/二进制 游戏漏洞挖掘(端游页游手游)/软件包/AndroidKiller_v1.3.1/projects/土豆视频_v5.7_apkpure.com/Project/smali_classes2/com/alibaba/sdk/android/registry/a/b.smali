.class public final Lcom/alibaba/sdk/android/registry/a/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alibaba/sdk/android/registry/a;


# static fields
.field private static final a:Ljava/lang/reflect/InvocationHandler;


# instance fields
.field private b:Lcom/alibaba/sdk/android/registry/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/alibaba/sdk/android/registry/a/c;

    invoke-direct {v0}, Lcom/alibaba/sdk/android/registry/a/c;-><init>()V

    sput-object v0, Lcom/alibaba/sdk/android/registry/a/b;->a:Ljava/lang/reflect/InvocationHandler;

    return-void
.end method

.method public constructor <init>(Lcom/alibaba/sdk/android/registry/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alibaba/sdk/android/registry/a/b;->b:Lcom/alibaba/sdk/android/registry/a;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/sdk/android/registry/a/b;)Lcom/alibaba/sdk/android/registry/a;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sdk/android/registry/a/b;->b:Lcom/alibaba/sdk/android/registry/a;

    return-object v0
.end method


# virtual methods
.method public final a([Ljava/lang/Class;Ljava/lang/Object;Ljava/util/Map;)Lcom/alibaba/sdk/android/registry/ServiceRegistration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/alibaba/sdk/android/registry/ServiceRegistration;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alibaba/sdk/android/registry/a/b;->b:Lcom/alibaba/sdk/android/registry/a;

    invoke-interface {v0, p1, p2, p3}, Lcom/alibaba/sdk/android/registry/a;->a([Ljava/lang/Class;Ljava/lang/Object;Ljava/util/Map;)Lcom/alibaba/sdk/android/registry/ServiceRegistration;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/alibaba/sdk/android/registry/ServiceRegistration;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sdk/android/registry/a/b;->b:Lcom/alibaba/sdk/android/registry/a;

    invoke-interface {v0, p1}, Lcom/alibaba/sdk/android/registry/a;->a(Lcom/alibaba/sdk/android/registry/ServiceRegistration;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/Class;Ljava/util/Map;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alibaba/sdk/android/registry/a/b;->b:Lcom/alibaba/sdk/android/registry/a;

    invoke-interface {v0, p1, p2}, Lcom/alibaba/sdk/android/registry/a;->a(Ljava/lang/Class;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    if-eqz p2, :cond_0

    const-string v0, "$isv_scope$"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "true"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    new-instance v2, Lcom/alibaba/sdk/android/registry/a/d;

    invoke-direct {v2, p0, p1, p2}, Lcom/alibaba/sdk/android/registry/a/d;-><init>(Lcom/alibaba/sdk/android/registry/a/b;Ljava/lang/Class;Ljava/util/Map;)V

    invoke-static {v0, v1, v2}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public final b(Ljava/lang/Class;Ljava/util/Map;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)[TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alibaba/sdk/android/registry/a/b;->b:Lcom/alibaba/sdk/android/registry/a;

    invoke-interface {v0, p1, p2}, Lcom/alibaba/sdk/android/registry/a;->b(Ljava/lang/Class;Ljava/util/Map;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
