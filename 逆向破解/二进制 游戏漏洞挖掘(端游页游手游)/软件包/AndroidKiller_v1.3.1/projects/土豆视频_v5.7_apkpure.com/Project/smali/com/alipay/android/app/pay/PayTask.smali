.class public Lcom/alipay/android/app/pay/PayTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/app/pay/PayTask$a;,
        Lcom/alipay/android/app/pay/PayTask$OnPayListener;
    }
.end annotation


# instance fields
.field private activity:Landroid/app/Activity;

.field private alixPay:Lcom/alipay/android/app/pay/IAlixPay;

.field private callback:Lcom/alipay/android/app/pay/IAlixPayCallback;

.field private lock:Ljava/lang/Object;

.field private onPayListener:Lcom/alipay/android/app/pay/PayTask$OnPayListener;

.field private serviceConnection:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/alipay/android/app/pay/PayTask$OnPayListener;)V
    .locals 1

    .prologue
    .line 89
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 22
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/pay/PayTask;->lock:Ljava/lang/Object;

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/pay/PayTask;->alixPay:Lcom/alipay/android/app/pay/IAlixPay;

    .line 26
    new-instance v0, Lcom/alipay/android/app/pay/d;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/pay/d;-><init>(Lcom/alipay/android/app/pay/PayTask;)V

    iput-object v0, p0, Lcom/alipay/android/app/pay/PayTask;->callback:Lcom/alipay/android/app/pay/IAlixPayCallback;

    .line 55
    new-instance v0, Lcom/alipay/android/app/pay/e;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/pay/e;-><init>(Lcom/alipay/android/app/pay/PayTask;)V

    iput-object v0, p0, Lcom/alipay/android/app/pay/PayTask;->serviceConnection:Landroid/content/ServiceConnection;

    .line 90
    iput-object p1, p0, Lcom/alipay/android/app/pay/PayTask;->activity:Landroid/app/Activity;

    .line 91
    iput-object p2, p0, Lcom/alipay/android/app/pay/PayTask;->onPayListener:Lcom/alipay/android/app/pay/PayTask$OnPayListener;

    .line 92
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/android/app/pay/PayTask;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/alipay/android/app/pay/PayTask;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alipay/android/app/pay/PayTask;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/alipay/android/app/pay/PayTask;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$202(Lcom/alipay/android/app/pay/PayTask;Lcom/alipay/android/app/pay/IAlixPay;)Lcom/alipay/android/app/pay/IAlixPay;
    .locals 0

    .prologue
    .line 17
    iput-object p1, p0, Lcom/alipay/android/app/pay/PayTask;->alixPay:Lcom/alipay/android/app/pay/IAlixPay;

    return-object p1
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Lcom/alipay/android/app/pay/MspResult;
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 100
    const/4 v1, 0x0

    aget-object v1, p1, v1

    .line 108
    iget-object v2, p0, Lcom/alipay/android/app/pay/PayTask;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 112
    iget-object v3, p0, Lcom/alipay/android/app/pay/PayTask;->alixPay:Lcom/alipay/android/app/pay/IAlixPay;

    if-nez v3, :cond_0

    .line 113
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/alipay/android/app/MspService;

    invoke-direct {v3, v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 114
    iget-object v4, p0, Lcom/alipay/android/app/pay/PayTask;->serviceConnection:Landroid/content/ServiceConnection;

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 119
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/alipay/android/app/pay/PayTask;->lock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 120
    :try_start_1
    iget-object v4, p0, Lcom/alipay/android/app/pay/PayTask;->alixPay:Lcom/alipay/android/app/pay/IAlixPay;

    if-nez v4, :cond_1

    .line 121
    iget-object v4, p0, Lcom/alipay/android/app/pay/PayTask;->lock:Ljava/lang/Object;

    const-wide/16 v6, 0x1388

    invoke-virtual {v4, v6, v7}, Ljava/lang/Object;->wait(J)V

    .line 122
    :cond_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 124
    :try_start_2
    iget-object v3, p0, Lcom/alipay/android/app/pay/PayTask;->alixPay:Lcom/alipay/android/app/pay/IAlixPay;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v3, :cond_2

    .line 145
    iget-object v1, p0, Lcom/alipay/android/app/pay/PayTask;->serviceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 148
    :goto_0
    return-object v0

    .line 122
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

    .line 142
    :catch_0
    move-exception v1

    .line 143
    :try_start_5
    invoke-static {v1}, Lj/h;->a(Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 145
    iget-object v1, p0, Lcom/alipay/android/app/pay/PayTask;->serviceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 148
    :goto_1
    new-instance v1, Lcom/alipay/android/app/pay/MspResult;

    invoke-direct {v1, v0}, Lcom/alipay/android/app/pay/MspResult;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    .line 128
    :cond_2
    :try_start_6
    iget-object v3, p0, Lcom/alipay/android/app/pay/PayTask;->callback:Lcom/alipay/android/app/pay/IAlixPayCallback;

    if-eqz v3, :cond_3

    .line 129
    iget-object v3, p0, Lcom/alipay/android/app/pay/PayTask;->alixPay:Lcom/alipay/android/app/pay/IAlixPay;

    iget-object v4, p0, Lcom/alipay/android/app/pay/PayTask;->callback:Lcom/alipay/android/app/pay/IAlixPayCallback;

    invoke-interface {v3, v4}, Lcom/alipay/android/app/pay/IAlixPay;->registerCallback(Lcom/alipay/android/app/pay/IAlixPayCallback;)V

    .line 132
    :cond_3
    const-string v3, "http"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 133
    iget-object v3, p0, Lcom/alipay/android/app/pay/PayTask;->alixPay:Lcom/alipay/android/app/pay/IAlixPay;

    invoke-interface {v3, v1}, Lcom/alipay/android/app/pay/IAlixPay;->payWithURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 137
    :goto_2
    invoke-static {v0}, Lj/h;->b(Ljava/lang/String;)V

    .line 139
    iget-object v1, p0, Lcom/alipay/android/app/pay/PayTask;->callback:Lcom/alipay/android/app/pay/IAlixPayCallback;

    if-eqz v1, :cond_4

    .line 140
    iget-object v1, p0, Lcom/alipay/android/app/pay/PayTask;->alixPay:Lcom/alipay/android/app/pay/IAlixPay;

    iget-object v3, p0, Lcom/alipay/android/app/pay/PayTask;->callback:Lcom/alipay/android/app/pay/IAlixPayCallback;

    invoke-interface {v1, v3}, Lcom/alipay/android/app/pay/IAlixPay;->unregisterCallback(Lcom/alipay/android/app/pay/IAlixPayCallback;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 145
    :cond_4
    iget-object v1, p0, Lcom/alipay/android/app/pay/PayTask;->serviceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    goto :goto_1

    .line 135
    :cond_5
    :try_start_7
    iget-object v3, p0, Lcom/alipay/android/app/pay/PayTask;->alixPay:Lcom/alipay/android/app/pay/IAlixPay;

    invoke-interface {v3, v1}, Lcom/alipay/android/app/pay/IAlixPay;->pay(Ljava/lang/String;)Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-result-object v0

    goto :goto_2

    .line 145
    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/alipay/android/app/pay/PayTask;->serviceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    throw v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 17
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/alipay/android/app/pay/PayTask;->doInBackground([Ljava/lang/String;)Lcom/alipay/android/app/pay/MspResult;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/alipay/android/app/pay/MspResult;)V
    .locals 7

    .prologue
    .line 153
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 154
    iget-object v0, p0, Lcom/alipay/android/app/pay/PayTask;->onPayListener:Lcom/alipay/android/app/pay/PayTask$OnPayListener;

    if-nez v0, :cond_0

    .line 177
    :goto_0
    return-void

    .line 157
    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p1, Lcom/alipay/android/app/pay/MspResult;->a:Ljava/lang/String;

    const-string v1, "9000"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 158
    iget-object v0, p0, Lcom/alipay/android/app/pay/PayTask;->onPayListener:Lcom/alipay/android/app/pay/PayTask$OnPayListener;

    instance-of v0, v0, Lcom/alipay/android/app/pay/PayTask$a;

    if-eqz v0, :cond_1

    .line 159
    iget-object v0, p0, Lcom/alipay/android/app/pay/PayTask;->onPayListener:Lcom/alipay/android/app/pay/PayTask$OnPayListener;

    check-cast v0, Lcom/alipay/android/app/pay/PayTask$a;

    iget-object v1, p0, Lcom/alipay/android/app/pay/PayTask;->activity:Landroid/app/Activity;

    iget-object v2, p1, Lcom/alipay/android/app/pay/MspResult;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/android/app/pay/MspResult;->c:Ljava/lang/String;

    iget-object v4, p1, Lcom/alipay/android/app/pay/MspResult;->b:Ljava/lang/String;

    iget-object v5, p1, Lcom/alipay/android/app/pay/MspResult;->d:Ljava/lang/String;

    iget-object v6, p1, Lcom/alipay/android/app/pay/MspResult;->e:Ljava/lang/String;

    invoke-interface/range {v0 .. v6}, Lcom/alipay/android/app/pay/PayTask$a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 162
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/pay/PayTask;->onPayListener:Lcom/alipay/android/app/pay/PayTask$OnPayListener;

    iget-object v1, p0, Lcom/alipay/android/app/pay/PayTask;->activity:Landroid/app/Activity;

    iget-object v2, p1, Lcom/alipay/android/app/pay/MspResult;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/android/app/pay/MspResult;->c:Ljava/lang/String;

    iget-object v4, p1, Lcom/alipay/android/app/pay/MspResult;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/alipay/android/app/pay/PayTask$OnPayListener;->onPaySuccess(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 166
    :cond_2
    iget-object v0, p0, Lcom/alipay/android/app/pay/PayTask;->onPayListener:Lcom/alipay/android/app/pay/PayTask$OnPayListener;

    instance-of v0, v0, Lcom/alipay/android/app/pay/PayTask$a;

    if-eqz v0, :cond_8

    .line 167
    iget-object v0, p0, Lcom/alipay/android/app/pay/PayTask;->onPayListener:Lcom/alipay/android/app/pay/PayTask$OnPayListener;

    check-cast v0, Lcom/alipay/android/app/pay/PayTask$a;

    iget-object v1, p0, Lcom/alipay/android/app/pay/PayTask;->activity:Landroid/app/Activity;

    if-nez p1, :cond_3

    const-string v2, "6001"

    :goto_1
    if-nez p1, :cond_4

    const-string/jumbo v3, "\u64cd\u4f5c\u5df2\u7ecf\u53d6\u6d88\u3002"

    :goto_2
    if-nez p1, :cond_5

    const-string v4, ""

    :goto_3
    if-nez p1, :cond_6

    const-string v5, ""

    :goto_4
    if-nez p1, :cond_7

    const-string v6, ""

    :goto_5
    invoke-interface/range {v0 .. v6}, Lcom/alipay/android/app/pay/PayTask$a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v2, p1, Lcom/alipay/android/app/pay/MspResult;->a:Ljava/lang/String;

    goto :goto_1

    :cond_4
    iget-object v3, p1, Lcom/alipay/android/app/pay/MspResult;->c:Ljava/lang/String;

    goto :goto_2

    :cond_5
    iget-object v4, p1, Lcom/alipay/android/app/pay/MspResult;->b:Ljava/lang/String;

    goto :goto_3

    :cond_6
    iget-object v5, p1, Lcom/alipay/android/app/pay/MspResult;->d:Ljava/lang/String;

    goto :goto_4

    :cond_7
    iget-object v6, p1, Lcom/alipay/android/app/pay/MspResult;->e:Ljava/lang/String;

    goto :goto_5

    .line 172
    :cond_8
    iget-object v3, p0, Lcom/alipay/android/app/pay/PayTask;->onPayListener:Lcom/alipay/android/app/pay/PayTask$OnPayListener;

    iget-object v4, p0, Lcom/alipay/android/app/pay/PayTask;->activity:Landroid/app/Activity;

    if-nez p1, :cond_9

    const-string v0, "6001"

    move-object v2, v0

    :goto_6
    if-nez p1, :cond_a

    const-string/jumbo v0, "\u64cd\u4f5c\u5df2\u7ecf\u53d6\u6d88\u3002"

    move-object v1, v0

    :goto_7
    if-nez p1, :cond_b

    const-string v0, ""

    :goto_8
    invoke-interface {v3, v4, v2, v1, v0}, Lcom/alipay/android/app/pay/PayTask$OnPayListener;->onPayFailed(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_9
    iget-object v0, p1, Lcom/alipay/android/app/pay/MspResult;->a:Ljava/lang/String;

    move-object v2, v0

    goto :goto_6

    :cond_a
    iget-object v0, p1, Lcom/alipay/android/app/pay/MspResult;->c:Ljava/lang/String;

    move-object v1, v0

    goto :goto_7

    :cond_b
    iget-object v0, p1, Lcom/alipay/android/app/pay/MspResult;->b:Ljava/lang/String;

    goto :goto_8
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 17
    check-cast p1, Lcom/alipay/android/app/pay/MspResult;

    invoke-virtual {p0, p1}, Lcom/alipay/android/app/pay/PayTask;->onPostExecute(Lcom/alipay/android/app/pay/MspResult;)V

    return-void
.end method

.method public pay(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 95
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/pay/PayTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 96
    return-void
.end method
