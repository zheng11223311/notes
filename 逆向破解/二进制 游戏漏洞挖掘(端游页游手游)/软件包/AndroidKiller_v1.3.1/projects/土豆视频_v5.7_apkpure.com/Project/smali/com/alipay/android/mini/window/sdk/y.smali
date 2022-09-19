.class Lcom/alipay/android/mini/window/sdk/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/mini/window/sdk/x;


# direct methods
.method constructor <init>(Lcom/alipay/android/mini/window/sdk/x;)V
    .locals 0

    .prologue
    .line 637
    iput-object p1, p0, Lcom/alipay/android/mini/window/sdk/y;->a:Lcom/alipay/android/mini/window/sdk/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 642
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/y;->a:Lcom/alipay/android/mini/window/sdk/x;

    iget-object v0, v0, Lcom/alipay/android/mini/window/sdk/x;->a:Lcom/alipay/android/mini/window/sdk/l;

    invoke-static {v0}, Lcom/alipay/android/mini/window/sdk/l;->a(Lcom/alipay/android/mini/window/sdk/l;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/mini/window/sdk/y;->a:Lcom/alipay/android/mini/window/sdk/x;

    iget-object v1, v1, Lcom/alipay/android/mini/window/sdk/x;->a:Lcom/alipay/android/mini/window/sdk/l;

    invoke-static {v1}, Lcom/alipay/android/mini/window/sdk/l;->i(Lcom/alipay/android/mini/window/sdk/l;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 643
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/y;->a:Lcom/alipay/android/mini/window/sdk/x;

    iget-object v0, v0, Lcom/alipay/android/mini/window/sdk/x;->a:Lcom/alipay/android/mini/window/sdk/l;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alipay/android/mini/window/sdk/l;->a(Lcom/alipay/android/mini/window/sdk/l;Z)Z

    .line 644
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/y;->a:Lcom/alipay/android/mini/window/sdk/x;

    iget-object v0, v0, Lcom/alipay/android/mini/window/sdk/x;->a:Lcom/alipay/android/mini/window/sdk/l;

    invoke-static {v0}, Lcom/alipay/android/mini/window/sdk/l;->c(Lcom/alipay/android/mini/window/sdk/l;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/app/i;->a(Ljava/lang/String;)V

    .line 645
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/y;->a:Lcom/alipay/android/mini/window/sdk/x;

    iget-object v0, v0, Lcom/alipay/android/mini/window/sdk/x;->a:Lcom/alipay/android/mini/window/sdk/l;

    invoke-static {v0}, Lcom/alipay/android/mini/window/sdk/l;->b(Lcom/alipay/android/mini/window/sdk/l;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 647
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/y;->a:Lcom/alipay/android/mini/window/sdk/x;

    iget-object v0, v0, Lcom/alipay/android/mini/window/sdk/x;->a:Lcom/alipay/android/mini/window/sdk/l;

    invoke-static {v0}, Lcom/alipay/android/mini/window/sdk/l;->b(Lcom/alipay/android/mini/window/sdk/l;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 651
    :goto_0
    :try_start_1
    monitor-exit v1

    .line 652
    return-void

    .line 648
    :catch_0
    move-exception v0

    .line 649
    invoke-static {v0}, Lj/h;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 651
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
