.class public Lcom/alipay/android/app/pay/CheckAccountTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/app/pay/CheckAccountTask$OnCheckListener;
    }
.end annotation


# instance fields
.field private activity:Landroid/app/Activity;

.field private alixPay:Lcom/alipay/android/app/pay/IAlixPay;

.field private lock:Ljava/lang/Integer;

.field private onCheckListener:Lcom/alipay/android/app/pay/CheckAccountTask$OnCheckListener;

.field private serviceConnection:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/alipay/android/app/pay/CheckAccountTask$OnCheckListener;)V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 23
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/pay/CheckAccountTask;->lock:Ljava/lang/Integer;

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/pay/CheckAccountTask;->alixPay:Lcom/alipay/android/app/pay/IAlixPay;

    .line 28
    new-instance v0, Lcom/alipay/android/app/pay/a;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/pay/a;-><init>(Lcom/alipay/android/app/pay/CheckAccountTask;)V

    iput-object v0, p0, Lcom/alipay/android/app/pay/CheckAccountTask;->serviceConnection:Landroid/content/ServiceConnection;

    .line 43
    iput-object p1, p0, Lcom/alipay/android/app/pay/CheckAccountTask;->activity:Landroid/app/Activity;

    .line 44
    iput-object p2, p0, Lcom/alipay/android/app/pay/CheckAccountTask;->onCheckListener:Lcom/alipay/android/app/pay/CheckAccountTask$OnCheckListener;

    .line 45
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/android/app/pay/CheckAccountTask;)Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/alipay/android/app/pay/CheckAccountTask;->lock:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$102(Lcom/alipay/android/app/pay/CheckAccountTask;Lcom/alipay/android/app/pay/IAlixPay;)Lcom/alipay/android/app/pay/IAlixPay;
    .locals 0

    .prologue
    .line 20
    iput-object p1, p0, Lcom/alipay/android/app/pay/CheckAccountTask;->alixPay:Lcom/alipay/android/app/pay/IAlixPay;

    return-object p1
.end method


# virtual methods
.method public checkAccountIfExist()V
    .locals 3

    .prologue
    .line 52
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, ""

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/pay/CheckAccountTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 53
    return-void
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 62
    .line 70
    iget-object v1, p0, Lcom/alipay/android/app/pay/CheckAccountTask;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 72
    iget-object v1, p0, Lcom/alipay/android/app/pay/CheckAccountTask;->alixPay:Lcom/alipay/android/app/pay/IAlixPay;

    if-nez v1, :cond_0

    .line 73
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/alipay/android/app/MspService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 74
    iget-object v3, p0, Lcom/alipay/android/app/pay/CheckAccountTask;->serviceConnection:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 79
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/alipay/android/app/pay/CheckAccountTask;->lock:Ljava/lang/Integer;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 80
    :try_start_1
    iget-object v1, p0, Lcom/alipay/android/app/pay/CheckAccountTask;->alixPay:Lcom/alipay/android/app/pay/IAlixPay;

    if-nez v1, :cond_1

    .line 81
    iget-object v1, p0, Lcom/alipay/android/app/pay/CheckAccountTask;->lock:Ljava/lang/Integer;

    const-wide/16 v4, 0x1388

    invoke-virtual {v1, v4, v5}, Ljava/lang/Object;->wait(J)V

    .line 82
    :cond_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 84
    :try_start_2
    iget-object v1, p0, Lcom/alipay/android/app/pay/CheckAccountTask;->alixPay:Lcom/alipay/android/app/pay/IAlixPay;

    if-nez v1, :cond_2

    .line 85
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v0

    .line 92
    iget-object v1, p0, Lcom/alipay/android/app/pay/CheckAccountTask;->serviceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 95
    :goto_0
    return-object v0

    .line 82
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 89
    :catch_0
    move-exception v1

    .line 90
    :try_start_5
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 92
    iget-object v1, p0, Lcom/alipay/android/app/pay/CheckAccountTask;->serviceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 95
    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 88
    :cond_2
    :try_start_6
    iget-object v1, p0, Lcom/alipay/android/app/pay/CheckAccountTask;->alixPay:Lcom/alipay/android/app/pay/IAlixPay;

    invoke-interface {v1}, Lcom/alipay/android/app/pay/IAlixPay;->checkAccountIfExist()Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result v0

    .line 92
    iget-object v1, p0, Lcom/alipay/android/app/pay/CheckAccountTask;->serviceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    goto :goto_1

    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/alipay/android/app/pay/CheckAccountTask;->serviceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    throw v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 20
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/alipay/android/app/pay/CheckAccountTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2

    .prologue
    .line 100
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 101
    iget-object v0, p0, Lcom/alipay/android/app/pay/CheckAccountTask;->onCheckListener:Lcom/alipay/android/app/pay/CheckAccountTask$OnCheckListener;

    if-nez v0, :cond_0

    .line 104
    :goto_0
    return-void

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/pay/CheckAccountTask;->onCheckListener:Lcom/alipay/android/app/pay/CheckAccountTask$OnCheckListener;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/alipay/android/app/pay/CheckAccountTask$OnCheckListener;->check(Z)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 20
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/alipay/android/app/pay/CheckAccountTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
