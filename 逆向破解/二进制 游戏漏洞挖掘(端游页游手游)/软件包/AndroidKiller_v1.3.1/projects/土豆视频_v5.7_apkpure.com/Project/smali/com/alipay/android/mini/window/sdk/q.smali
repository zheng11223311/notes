.class Lcom/alipay/android/mini/window/sdk/q;
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
    .line 388
    iput-object p1, p0, Lcom/alipay/android/mini/window/sdk/q;->c:Lcom/alipay/android/mini/window/sdk/l;

    iput-object p2, p0, Lcom/alipay/android/mini/window/sdk/q;->a:Lr/a;

    iput-object p3, p0, Lcom/alipay/android/mini/window/sdk/q;->b:Lb/e;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 391
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/q;->a:Lr/a;

    invoke-virtual {v0}, Lr/a;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/mini/util/a;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 393
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/alipay/android/mini/window/sdk/q;->c:Lcom/alipay/android/mini/window/sdk/l;

    invoke-static {v2}, Lcom/alipay/android/mini/window/sdk/l;->a(Lcom/alipay/android/mini/window/sdk/l;)Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 395
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 396
    const/4 v3, 0x0

    aget-object v3, v0, v3

    .line 397
    const-string/jumbo v4, "url"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    array-length v3, v0

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 400
    aget-object v0, v0, v5

    .line 401
    const-string v3, "cookie"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    :cond_0
    const-string v0, "from_mcashier"

    invoke-virtual {v2, v0, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 406
    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 410
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/q;->c:Lcom/alipay/android/mini/window/sdk/l;

    invoke-static {v0}, Lcom/alipay/android/mini/window/sdk/l;->a(Lcom/alipay/android/mini/window/sdk/l;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 412
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/q;->c:Lcom/alipay/android/mini/window/sdk/l;

    invoke-static {v0}, Lcom/alipay/android/mini/window/sdk/l;->b(Lcom/alipay/android/mini/window/sdk/l;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 414
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/q;->c:Lcom/alipay/android/mini/window/sdk/l;

    invoke-static {v0}, Lcom/alipay/android/mini/window/sdk/l;->b(Lcom/alipay/android/mini/window/sdk/l;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 418
    :goto_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 419
    invoke-static {}, Lcom/alipay/android/app/i;->b()Ljava/lang/String;

    move-result-object v0

    .line 420
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 421
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/q;->c:Lcom/alipay/android/mini/window/sdk/l;

    invoke-static {v0}, Lcom/alipay/android/mini/window/sdk/l;->c(Lcom/alipay/android/mini/window/sdk/l;)Ljava/lang/String;

    move-result-object v0

    .line 424
    :cond_1
    iget-object v1, p0, Lcom/alipay/android/mini/window/sdk/q;->b:Lb/e;

    invoke-interface {v1}, Lb/e;->c()Lb/g;

    move-result-object v1

    invoke-virtual {v1, v0}, Lb/g;->a(Ljava/lang/String;)V

    .line 425
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/q;->b:Lb/e;

    invoke-interface {v0}, Lb/e;->c()Lb/g;

    move-result-object v0

    invoke-virtual {v0}, Lb/g;->l()Z

    .line 426
    return-void

    .line 415
    :catch_0
    move-exception v0

    .line 416
    :try_start_2
    invoke-static {v0}, Lj/h;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 418
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
