.class public abstract Lf/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Z

.field private c:Ljava/lang/Object;

.field private d:Ljava/lang/Runnable;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Lf/g;

    invoke-direct {v0, p0}, Lf/g;-><init>(Lf/f;)V

    iput-object v0, p0, Lf/f;->d:Ljava/lang/Runnable;

    .line 25
    iput-object p1, p0, Lf/f;->a:Landroid/content/Context;

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lf/f;->b:Z

    .line 27
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lf/f;->c:Ljava/lang/Object;

    .line 28
    return-void
.end method

.method static synthetic a(Lf/f;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lf/f;->c:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic a(Lf/f;Z)Z
    .locals 0

    .prologue
    .line 18
    iput-boolean p1, p0, Lf/f;->b:Z

    return p1
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 31
    iget-object v1, p0, Lf/f;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 32
    :try_start_0
    iget-boolean v0, p0, Lf/f;->b:Z

    if-eqz v0, :cond_0

    .line 33
    monitor-exit v1

    .line 38
    :goto_0
    return-void

    .line 35
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lf/f;->b:Z

    .line 36
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lf/f;->d:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 36
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public abstract a(Ljava/lang/Throwable;)V
.end method

.method protected final b()Z
    .locals 1

    .prologue
    .line 41
    invoke-static {}, Lb/b;->a()Lb/b;

    move-result-object v0

    invoke-virtual {v0}, Lb/b;->e()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final c()Z
    .locals 2

    .prologue
    .line 45
    iget-object v0, p0, Lf/f;->a:Landroid/content/Context;

    invoke-static {v0}, Lh/a;->b(Landroid/content/Context;)Lh/d;

    move-result-object v0

    .line 46
    sget-object v1, Lh/d;->a:Lh/d;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final d()Landroid/content/Context;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lf/f;->a:Landroid/content/Context;

    return-object v0
.end method

.method protected abstract e()V
.end method

.method protected abstract f()V
.end method

.method protected abstract g()Z
.end method
