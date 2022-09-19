.class Lcom/alipay/android/mini/window/sdk/ab;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/mini/window/sdk/aa;


# direct methods
.method constructor <init>(Lcom/alipay/android/mini/window/sdk/aa;)V
    .locals 0

    .prologue
    .line 686
    iput-object p1, p0, Lcom/alipay/android/mini/window/sdk/ab;->a:Lcom/alipay/android/mini/window/sdk/aa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 690
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/ab;->a:Lcom/alipay/android/mini/window/sdk/aa;

    iget-object v0, v0, Lcom/alipay/android/mini/window/sdk/aa;->a:Lcom/alipay/android/mini/window/sdk/l;

    invoke-static {v0}, Lcom/alipay/android/mini/window/sdk/l;->j(Lcom/alipay/android/mini/window/sdk/l;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 691
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/ab;->a:Lcom/alipay/android/mini/window/sdk/aa;

    iget-object v0, v0, Lcom/alipay/android/mini/window/sdk/aa;->a:Lcom/alipay/android/mini/window/sdk/l;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alipay/android/mini/window/sdk/l;->a(Lcom/alipay/android/mini/window/sdk/l;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 692
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/ab;->a:Lcom/alipay/android/mini/window/sdk/aa;

    iget-object v0, v0, Lcom/alipay/android/mini/window/sdk/aa;->a:Lcom/alipay/android/mini/window/sdk/l;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alipay/android/mini/window/sdk/l;->a(Lcom/alipay/android/mini/window/sdk/l;Z)Z

    .line 693
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/ab;->a:Lcom/alipay/android/mini/window/sdk/aa;

    iget-object v0, v0, Lcom/alipay/android/mini/window/sdk/aa;->a:Lcom/alipay/android/mini/window/sdk/l;

    invoke-static {v0}, Lcom/alipay/android/mini/window/sdk/l;->a(Lcom/alipay/android/mini/window/sdk/l;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/mini/window/sdk/ab;->a:Lcom/alipay/android/mini/window/sdk/aa;

    iget-object v1, v1, Lcom/alipay/android/mini/window/sdk/aa;->a:Lcom/alipay/android/mini/window/sdk/l;

    invoke-static {v1}, Lcom/alipay/android/mini/window/sdk/l;->i(Lcom/alipay/android/mini/window/sdk/l;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 694
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/ab;->a:Lcom/alipay/android/mini/window/sdk/aa;

    iget-object v0, v0, Lcom/alipay/android/mini/window/sdk/aa;->a:Lcom/alipay/android/mini/window/sdk/l;

    invoke-static {v0}, Lcom/alipay/android/mini/window/sdk/l;->b(Lcom/alipay/android/mini/window/sdk/l;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 695
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/ab;->a:Lcom/alipay/android/mini/window/sdk/aa;

    iget-object v0, v0, Lcom/alipay/android/mini/window/sdk/aa;->a:Lcom/alipay/android/mini/window/sdk/l;

    invoke-static {v0}, Lcom/alipay/android/mini/window/sdk/l;->b(Lcom/alipay/android/mini/window/sdk/l;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 696
    monitor-exit v1

    .line 697
    return-void

    .line 696
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
