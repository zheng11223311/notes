.class public abstract Lcom/punchbox/report/g;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/punchbox/v4/m/b;",
        "Params:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private c:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/punchbox/report/g;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/punchbox/report/g;->a:Ljava/lang/String;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/punchbox/report/g;->b:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(I)Ljava/lang/String;
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "err"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v1, "result"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string/jumbo v1, "ver"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static synthetic a(Lcom/punchbox/report/g;Lcom/punchbox/v4/l/c;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/punchbox/report/g;->a(Lcom/punchbox/v4/l/c;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/punchbox/v4/l/c;)Ljava/lang/String;
    .locals 7

    const/4 v6, -0x1

    sget-object v0, Lcom/punchbox/report/g;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "submit to server url "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/punchbox/v4/l/c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/punchbox/report/g;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/punchbox/v4/i/b;->a(Landroid/content/Context;)Lcom/punchbox/v4/i/b;

    move-result-object v0

    invoke-virtual {p1}, Lcom/punchbox/v4/l/c;->c()Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {p1}, Lcom/punchbox/v4/l/c;->b()Ljava/lang/String;

    move-result-object v3

    const-string v1, ""

    :try_start_0
    const-class v1, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/punchbox/v4/l/c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/punchbox/v4/l/c;->d()Lorg/apache/http/HttpEntity;

    move-result-object v4

    invoke-virtual/range {v0 .. v5}, Lcom/punchbox/v4/i/b;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/HttpEntity;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/punchbox/report/g;->a(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-direct {p0, v6}, Lcom/punchbox/report/g;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/punchbox/report/g;Lcom/punchbox/v4/l/c;Lcom/punchbox/v4/m/b;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/punchbox/report/g;->a(Lcom/punchbox/v4/l/c;Lcom/punchbox/v4/m/b;)V

    return-void
.end method

.method private a(Lcom/punchbox/v4/l/c;Lcom/punchbox/v4/m/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/punchbox/v4/l/c;",
            "TT;)V"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/punchbox/v4/m/b;->a()Lcom/punchbox/v4/m/d;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/punchbox/v4/l/c;->e()[Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/punchbox/v4/m/b;->a(Lcom/punchbox/v4/m/d;[Ljava/lang/Long;)V

    goto :goto_0
.end method


# virtual methods
.method protected varargs abstract a([Ljava/lang/Object;)Lcom/punchbox/v4/l/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)",
            "Lcom/punchbox/v4/l/c;"
        }
    .end annotation
.end method

.method protected abstract b(Ljava/lang/String;)Lcom/punchbox/v4/m/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation
.end method

.method protected varargs abstract b([Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)Z"
        }
    .end annotation
.end method

.method public varargs c([Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)V"
        }
    .end annotation

    sget-object v0, Lcom/punchbox/report/g;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/punchbox/report/i;

    invoke-direct {v1, p0, p1}, Lcom/punchbox/report/i;-><init>(Lcom/punchbox/report/g;[Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public varargs d([Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)V"
        }
    .end annotation

    sget-object v0, Lcom/punchbox/report/g;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/punchbox/report/h;

    invoke-direct {v1, p0, p1}, Lcom/punchbox/report/h;-><init>(Lcom/punchbox/report/g;[Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
