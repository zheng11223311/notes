.class Lcom/alipay/android/mini/window/sdk/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lcom/alipay/android/mini/window/sdk/l;


# direct methods
.method constructor <init>(Lcom/alipay/android/mini/window/sdk/l;)V
    .locals 0

    .prologue
    .line 702
    iput-object p1, p0, Lcom/alipay/android/mini/window/sdk/n;->a:Lcom/alipay/android/mini/window/sdk/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    .prologue
    .line 711
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/n;->a:Lcom/alipay/android/mini/window/sdk/l;

    invoke-static {v0}, Lcom/alipay/android/mini/window/sdk/l;->b(Lcom/alipay/android/mini/window/sdk/l;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 712
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/n;->a:Lcom/alipay/android/mini/window/sdk/l;

    invoke-static {p2}, Lcom/alipay/android/app/IAlixPay$Stub;->asInterface(Landroid/os/IBinder;)Lcom/alipay/android/app/IAlixPay;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/android/mini/window/sdk/l;->a(Lcom/alipay/android/mini/window/sdk/l;Lcom/alipay/android/app/IAlixPay;)Lcom/alipay/android/app/IAlixPay;

    .line 713
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/n;->a:Lcom/alipay/android/mini/window/sdk/l;

    invoke-static {v0}, Lcom/alipay/android/mini/window/sdk/l;->b(Lcom/alipay/android/mini/window/sdk/l;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 714
    monitor-exit v1

    .line 715
    return-void

    .line 714
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .prologue
    .line 706
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/n;->a:Lcom/alipay/android/mini/window/sdk/l;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alipay/android/mini/window/sdk/l;->a(Lcom/alipay/android/mini/window/sdk/l;Lcom/alipay/android/app/IAlixPay;)Lcom/alipay/android/app/IAlixPay;

    .line 707
    return-void
.end method
