.class Lcom/alipay/android/app/pay/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/pay/CheckAccountTask;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/pay/CheckAccountTask;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/alipay/android/app/pay/a;->a:Lcom/alipay/android/app/pay/CheckAccountTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    .prologue
    .line 31
    iget-object v0, p0, Lcom/alipay/android/app/pay/a;->a:Lcom/alipay/android/app/pay/CheckAccountTask;

    invoke-static {v0}, Lcom/alipay/android/app/pay/CheckAccountTask;->access$000(Lcom/alipay/android/app/pay/CheckAccountTask;)Ljava/lang/Integer;

    move-result-object v1

    monitor-enter v1

    .line 32
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/pay/a;->a:Lcom/alipay/android/app/pay/CheckAccountTask;

    invoke-static {p2}, Lcom/alipay/android/app/pay/IAlixPay$Stub;->asInterface(Landroid/os/IBinder;)Lcom/alipay/android/app/pay/IAlixPay;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/android/app/pay/CheckAccountTask;->access$102(Lcom/alipay/android/app/pay/CheckAccountTask;Lcom/alipay/android/app/pay/IAlixPay;)Lcom/alipay/android/app/pay/IAlixPay;

    .line 33
    iget-object v0, p0, Lcom/alipay/android/app/pay/a;->a:Lcom/alipay/android/app/pay/CheckAccountTask;

    invoke-static {v0}, Lcom/alipay/android/app/pay/CheckAccountTask;->access$000(Lcom/alipay/android/app/pay/CheckAccountTask;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 34
    monitor-exit v1

    .line 35
    return-void

    .line 34
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
    .line 38
    iget-object v0, p0, Lcom/alipay/android/app/pay/a;->a:Lcom/alipay/android/app/pay/CheckAccountTask;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alipay/android/app/pay/CheckAccountTask;->access$102(Lcom/alipay/android/app/pay/CheckAccountTask;Lcom/alipay/android/app/pay/IAlixPay;)Lcom/alipay/android/app/pay/IAlixPay;

    .line 39
    return-void
.end method
