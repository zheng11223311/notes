.class Lcom/alipay/android/app/pay/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/pay/PayTask;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/pay/PayTask;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/alipay/android/app/pay/e;->a:Lcom/alipay/android/app/pay/PayTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    .prologue
    .line 59
    iget-object v0, p0, Lcom/alipay/android/app/pay/e;->a:Lcom/alipay/android/app/pay/PayTask;

    invoke-static {v0}, Lcom/alipay/android/app/pay/PayTask;->access$100(Lcom/alipay/android/app/pay/PayTask;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 60
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/pay/e;->a:Lcom/alipay/android/app/pay/PayTask;

    invoke-static {p2}, Lcom/alipay/android/app/pay/IAlixPay$Stub;->asInterface(Landroid/os/IBinder;)Lcom/alipay/android/app/pay/IAlixPay;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/android/app/pay/PayTask;->access$202(Lcom/alipay/android/app/pay/PayTask;Lcom/alipay/android/app/pay/IAlixPay;)Lcom/alipay/android/app/pay/IAlixPay;

    .line 61
    const-string/jumbo v0, "serviceConnected"

    invoke-static {v0}, Lj/h;->d(Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/alipay/android/app/pay/e;->a:Lcom/alipay/android/app/pay/PayTask;

    invoke-static {v0}, Lcom/alipay/android/app/pay/PayTask;->access$100(Lcom/alipay/android/app/pay/PayTask;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 63
    monitor-exit v1

    .line 64
    return-void

    .line 63
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
    .line 67
    iget-object v0, p0, Lcom/alipay/android/app/pay/e;->a:Lcom/alipay/android/app/pay/PayTask;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alipay/android/app/pay/PayTask;->access$202(Lcom/alipay/android/app/pay/PayTask;Lcom/alipay/android/app/pay/IAlixPay;)Lcom/alipay/android/app/pay/IAlixPay;

    .line 68
    return-void
.end method
