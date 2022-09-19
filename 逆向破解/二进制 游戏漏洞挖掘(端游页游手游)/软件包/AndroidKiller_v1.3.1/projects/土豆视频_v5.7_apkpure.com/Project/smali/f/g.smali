.class Lf/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lf/f;


# direct methods
.method constructor <init>(Lf/f;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lf/g;->a:Lf/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 66
    :try_start_0
    invoke-static {}, Lf/b;->a()V

    .line 67
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 68
    iget-object v0, p0, Lf/g;->a:Lf/f;

    invoke-virtual {v0}, Lf/f;->f()V

    .line 69
    invoke-static {}, Lf/j;->a()Lf/j;

    move-result-object v0

    iget-object v1, p0, Lf/g;->a:Lf/f;

    invoke-virtual {v0, v1}, Lf/j;->a(Lf/f;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 73
    iget-object v0, p0, Lf/g;->a:Lf/f;

    invoke-static {v0}, Lf/f;->a(Lf/f;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 74
    :try_start_1
    iget-object v0, p0, Lf/g;->a:Lf/f;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lf/f;->a(Lf/f;Z)Z

    .line 75
    monitor-exit v1

    .line 77
    :goto_0
    return-void

    .line 75
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 70
    :catch_0
    move-exception v0

    .line 71
    :try_start_2
    invoke-static {v0}, Lj/h;->a(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 73
    iget-object v0, p0, Lf/g;->a:Lf/f;

    invoke-static {v0}, Lf/f;->a(Lf/f;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 74
    :try_start_3
    iget-object v0, p0, Lf/g;->a:Lf/f;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lf/f;->a(Lf/f;Z)Z

    .line 75
    monitor-exit v1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 73
    :catchall_2
    move-exception v0

    iget-object v1, p0, Lf/g;->a:Lf/f;

    invoke-static {v1}, Lf/f;->a(Lf/f;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 74
    :try_start_4
    iget-object v2, p0, Lf/g;->a:Lf/f;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lf/f;->a(Lf/f;Z)Z

    .line 75
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    throw v0

    :catchall_3
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v0
.end method
