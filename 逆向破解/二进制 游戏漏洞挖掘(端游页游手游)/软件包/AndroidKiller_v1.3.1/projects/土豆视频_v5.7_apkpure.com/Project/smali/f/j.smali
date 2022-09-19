.class public Lf/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "monitor"

.field public static final b:Ljava/lang/String; = "lbs"

.field public static final c:Ljava/lang/String; = "windowtemplate"

.field private static d:Lf/j;


# instance fields
.field private e:Landroid/content/Context;

.field private f:Ljava/util/HashMap;

.field private g:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lf/j;->f:Ljava/util/HashMap;

    .line 30
    return-void
.end method

.method public static a()Lf/j;
    .locals 2

    .prologue
    .line 33
    sget-object v0, Lf/j;->d:Lf/j;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lf/j;

    invoke-direct {v0}, Lf/j;-><init>()V

    sput-object v0, Lf/j;->d:Lf/j;

    .line 35
    sget-object v0, Lf/j;->d:Lf/j;

    invoke-static {}, Lh/b;->a()Lh/b;

    move-result-object v1

    invoke-virtual {v1}, Lh/b;->b()Landroid/content/Context;

    move-result-object v1

    iput-object v1, v0, Lf/j;->e:Landroid/content/Context;

    .line 37
    :cond_0
    sget-object v0, Lf/j;->d:Lf/j;

    return-object v0
.end method

.method private c(Ljava/lang/String;)Lf/f;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 74
    if-nez p1, :cond_1

    const-string v1, ""

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 83
    :cond_0
    :goto_0
    return-object v0

    .line 77
    :cond_1
    const-string v1, "monitor"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 78
    new-instance v0, Lf/k;

    iget-object v1, p0, Lf/j;->e:Landroid/content/Context;

    invoke-direct {v0, v1}, Lf/k;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 80
    :cond_2
    const-string v1, "lbs"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 81
    new-instance v0, Lf/i;

    iget-object v1, p0, Lf/j;->e:Landroid/content/Context;

    invoke-direct {v0, v1}, Lf/i;-><init>(Landroid/content/Context;)V

    goto :goto_0
.end method


# virtual methods
.method protected a(Lf/f;)V
    .locals 2

    .prologue
    .line 64
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lf/f;->g()Z

    move-result v0

    if-nez v0, :cond_1

    .line 71
    :cond_0
    :goto_0
    return-void

    .line 67
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    .line 68
    iget-object v1, p0, Lf/j;->f:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 69
    iget-object v1, p0, Lf/j;->f:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public declared-synchronized a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 41
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lf/j;->c(Ljava/lang/String;)Lf/f;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 42
    if-nez v0, :cond_0

    .line 50
    :goto_0
    monitor-exit p0

    return-void

    .line 45
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    .line 46
    iget-object v2, p0, Lf/j;->f:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 47
    iget-object v2, p0, Lf/j;->f:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    :cond_1
    iget-object v0, p0, Lf/j;->f:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/f;

    invoke-virtual {v0}, Lf/f;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 41
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()V
    .locals 2

    .prologue
    .line 53
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lf/j;->f:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/f;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    if-eqz v0, :cond_0

    .line 56
    :try_start_1
    invoke-virtual {v0}, Lf/f;->e()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 57
    :catch_0
    move-exception v0

    goto :goto_0

    .line 61
    :cond_1
    monitor-exit p0

    return-void

    .line 53
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 87
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 88
    iput-object p1, p0, Lf/j;->g:Ljava/lang/String;

    .line 90
    :cond_0
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lf/j;->g:Ljava/lang/String;

    return-object v0
.end method
