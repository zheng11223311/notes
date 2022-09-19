.class final Lcom/alibaba/sdk/android/registry/a/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# instance fields
.field final synthetic a:Ljava/lang/Class;

.field final synthetic b:Ljava/util/Map;

.field final synthetic c:Lcom/alibaba/sdk/android/registry/a/b;


# direct methods
.method constructor <init>(Lcom/alibaba/sdk/android/registry/a/b;Ljava/lang/Class;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/registry/a/d;->c:Lcom/alibaba/sdk/android/registry/a/b;

    iput-object p2, p0, Lcom/alibaba/sdk/android/registry/a/d;->a:Ljava/lang/Class;

    iput-object p3, p0, Lcom/alibaba/sdk/android/registry/a/d;->b:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-object v0, p0, Lcom/alibaba/sdk/android/registry/a/d;->c:Lcom/alibaba/sdk/android/registry/a/b;

    invoke-static {v0}, Lcom/alibaba/sdk/android/registry/a/b;->a(Lcom/alibaba/sdk/android/registry/a/b;)Lcom/alibaba/sdk/android/registry/a;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/sdk/android/registry/a/d;->a:Ljava/lang/Class;

    iget-object v2, p0, Lcom/alibaba/sdk/android/registry/a/d;->b:Ljava/util/Map;

    invoke-interface {v0, v1, v2}, Lcom/alibaba/sdk/android/registry/a;->a(Ljava/lang/Class;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p2, v0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method
