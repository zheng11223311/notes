.class Lcom/alipay/android/mini/window/sdk/r;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic a:Lr/a;

.field final synthetic b:Lb/e;

.field final synthetic c:Lcom/alipay/android/mini/window/sdk/l;


# direct methods
.method constructor <init>(Lcom/alipay/android/mini/window/sdk/l;Lr/a;Lb/e;)V
    .locals 0

    .prologue
    .line 431
    iput-object p1, p0, Lcom/alipay/android/mini/window/sdk/r;->c:Lcom/alipay/android/mini/window/sdk/l;

    iput-object p2, p0, Lcom/alipay/android/mini/window/sdk/r;->a:Lr/a;

    iput-object p3, p0, Lcom/alipay/android/mini/window/sdk/r;->b:Lb/e;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 433
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/r;->a:Lr/a;

    invoke-virtual {v0}, Lr/a;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/mini/util/a;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 440
    iget-object v1, p0, Lcom/alipay/android/mini/window/sdk/r;->c:Lcom/alipay/android/mini/window/sdk/l;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-static {v1, v0}, Lcom/alipay/android/mini/window/sdk/l;->a(Lcom/alipay/android/mini/window/sdk/l;Ljava/lang/String;)Ljava/lang/String;

    .line 441
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/r;->c:Lcom/alipay/android/mini/window/sdk/l;

    invoke-static {v0}, Lcom/alipay/android/mini/window/sdk/l;->d(Lcom/alipay/android/mini/window/sdk/l;)V

    .line 442
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/r;->c:Lcom/alipay/android/mini/window/sdk/l;

    invoke-static {v0}, Lcom/alipay/android/mini/window/sdk/l;->b(Lcom/alipay/android/mini/window/sdk/l;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 444
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/r;->c:Lcom/alipay/android/mini/window/sdk/l;

    invoke-static {v0}, Lcom/alipay/android/mini/window/sdk/l;->b(Lcom/alipay/android/mini/window/sdk/l;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 448
    :goto_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 449
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/r;->c:Lcom/alipay/android/mini/window/sdk/l;

    invoke-static {v0}, Lcom/alipay/android/mini/window/sdk/l;->e(Lcom/alipay/android/mini/window/sdk/l;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 450
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/r;->c:Lcom/alipay/android/mini/window/sdk/l;

    iget-object v1, p0, Lcom/alipay/android/mini/window/sdk/r;->b:Lb/e;

    invoke-static {v0, v1}, Lcom/alipay/android/mini/window/sdk/l;->a(Lcom/alipay/android/mini/window/sdk/l;Lb/e;)V

    .line 456
    :goto_1
    return-void

    .line 445
    :catch_0
    move-exception v0

    .line 446
    :try_start_2
    invoke-static {v0}, Lj/h;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 448
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 452
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/r;->b:Lb/e;

    invoke-interface {v0}, Lb/e;->c()Lb/g;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/mini/window/sdk/r;->c:Lcom/alipay/android/mini/window/sdk/l;

    invoke-static {v1}, Lcom/alipay/android/mini/window/sdk/l;->c(Lcom/alipay/android/mini/window/sdk/l;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lb/g;->a(Ljava/lang/String;)V

    .line 454
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/r;->b:Lb/e;

    invoke-interface {v0}, Lb/e;->c()Lb/g;

    move-result-object v0

    invoke-virtual {v0}, Lb/g;->l()Z

    goto :goto_1
.end method
