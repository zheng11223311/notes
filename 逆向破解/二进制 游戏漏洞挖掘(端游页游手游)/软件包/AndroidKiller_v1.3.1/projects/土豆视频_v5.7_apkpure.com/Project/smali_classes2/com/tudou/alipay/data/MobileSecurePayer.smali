.class public Lcom/tudou/alipay/data/MobileSecurePayer;
.super Ljava/lang/Object;
.source "MobileSecurePayer.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MobileSecurePayer"


# instance fields
.field private isCancel:Z

.field lock:Ljava/lang/Integer;

.field private mActivity:Landroid/app/Activity;

.field mAlixPay:Lcom/alipay/android/app/IAlixPay;

.field private mAlixPayConnection:Landroid/content/ServiceConnection;

.field private mCallback:Lcom/alipay/android/app/IRemoteServiceCallback;

.field mbPaying:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/alipay/data/MobileSecurePayer;->lock:Ljava/lang/Integer;

    .line 35
    iput-object v2, p0, Lcom/tudou/alipay/data/MobileSecurePayer;->mAlixPay:Lcom/alipay/android/app/IAlixPay;

    .line 36
    iput-boolean v1, p0, Lcom/tudou/alipay/data/MobileSecurePayer;->mbPaying:Z

    .line 38
    iput-object v2, p0, Lcom/tudou/alipay/data/MobileSecurePayer;->mActivity:Landroid/app/Activity;

    .line 40
    iput-boolean v1, p0, Lcom/tudou/alipay/data/MobileSecurePayer;->isCancel:Z

    .line 43
    new-instance v0, Lcom/tudou/alipay/data/MobileSecurePayer$1;

    invoke-direct {v0, p0}, Lcom/tudou/alipay/data/MobileSecurePayer$1;-><init>(Lcom/tudou/alipay/data/MobileSecurePayer;)V

    iput-object v0, p0, Lcom/tudou/alipay/data/MobileSecurePayer;->mAlixPayConnection:Landroid/content/ServiceConnection;

    .line 189
    new-instance v0, Lcom/tudou/alipay/data/MobileSecurePayer$3;

    invoke-direct {v0, p0}, Lcom/tudou/alipay/data/MobileSecurePayer$3;-><init>(Lcom/tudou/alipay/data/MobileSecurePayer;)V

    iput-object v0, p0, Lcom/tudou/alipay/data/MobileSecurePayer;->mCallback:Lcom/alipay/android/app/IRemoteServiceCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/tudou/alipay/data/MobileSecurePayer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/tudou/alipay/data/MobileSecurePayer;

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/tudou/alipay/data/MobileSecurePayer;->isCancel:Z

    return v0
.end method

.method static synthetic access$100(Lcom/tudou/alipay/data/MobileSecurePayer;)Lcom/alipay/android/app/IRemoteServiceCallback;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/alipay/data/MobileSecurePayer;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/tudou/alipay/data/MobileSecurePayer;->mCallback:Lcom/alipay/android/app/IRemoteServiceCallback;

    return-object v0
.end method

.method static synthetic access$200(Lcom/tudou/alipay/data/MobileSecurePayer;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/alipay/data/MobileSecurePayer;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/tudou/alipay/data/MobileSecurePayer;->unbindService()V

    return-void
.end method

.method static synthetic access$300(Lcom/tudou/alipay/data/MobileSecurePayer;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/alipay/data/MobileSecurePayer;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/tudou/alipay/data/MobileSecurePayer;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method private unbindService()V
    .locals 3

    .prologue
    .line 162
    const-string v1, "MobileSecurePayer"

    const-string v2, "unbindService()"

    invoke-static {v1, v2}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/tudou/alipay/data/MobileSecurePayer;->mbPaying:Z

    .line 168
    iget-object v1, p0, Lcom/tudou/alipay/data/MobileSecurePayer;->mAlixPay:Lcom/alipay/android/app/IAlixPay;

    if-eqz v1, :cond_0

    .line 170
    :try_start_0
    iget-object v1, p0, Lcom/tudou/alipay/data/MobileSecurePayer;->mAlixPay:Lcom/alipay/android/app/IAlixPay;

    iget-object v2, p0, Lcom/tudou/alipay/data/MobileSecurePayer;->mCallback:Lcom/alipay/android/app/IRemoteServiceCallback;

    invoke-interface {v1, v2}, Lcom/alipay/android/app/IAlixPay;->unregisterCallback(Lcom/alipay/android/app/IRemoteServiceCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/tudou/alipay/data/MobileSecurePayer;->mActivity:Landroid/app/Activity;

    if-eqz v1, :cond_1

    .line 177
    :try_start_1
    iget-object v1, p0, Lcom/tudou/alipay/data/MobileSecurePayer;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/tudou/alipay/data/MobileSecurePayer;->mAlixPayConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 181
    :goto_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/tudou/alipay/data/MobileSecurePayer;->mActivity:Landroid/app/Activity;

    .line 183
    :cond_1
    return-void

    .line 171
    :catch_0
    move-exception v0

    .line 172
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 178
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 179
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 241
    const-string v0, "MobileSecurePayer"

    const-string v1, "cancel()"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tudou/alipay/data/MobileSecurePayer;->isCancel:Z

    .line 243
    iget-object v1, p0, Lcom/tudou/alipay/data/MobileSecurePayer;->lock:Ljava/lang/Integer;

    monitor-enter v1

    .line 244
    :try_start_0
    iget-object v0, p0, Lcom/tudou/alipay/data/MobileSecurePayer;->lock:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 245
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 246
    invoke-direct {p0}, Lcom/tudou/alipay/data/MobileSecurePayer;->unbindService()V

    .line 247
    return-void

    .line 245
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public pay(Ljava/lang/String;Landroid/os/Handler;ILandroid/app/Activity;)Z
    .locals 4
    .param p1, "strOrderInfo"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/os/Handler;
    .param p3, "myWhat"    # I
    .param p4, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v0, 0x1

    .line 76
    iget-boolean v1, p0, Lcom/tudou/alipay/data/MobileSecurePayer;->mbPaying:Z

    if-eqz v1, :cond_0

    .line 77
    const/4 v0, 0x0

    .line 158
    :goto_0
    return v0

    .line 80
    :cond_0
    iput-boolean v0, p0, Lcom/tudou/alipay/data/MobileSecurePayer;->mbPaying:Z

    .line 82
    iput-object p4, p0, Lcom/tudou/alipay/data/MobileSecurePayer;->mActivity:Landroid/app/Activity;

    .line 86
    iget-object v1, p0, Lcom/tudou/alipay/data/MobileSecurePayer;->mAlixPay:Lcom/alipay/android/app/IAlixPay;

    if-nez v1, :cond_1

    .line 90
    sget-object v1, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/tudou/alipay/util/AlipayUtils;->isWalletExist(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 91
    const-string v1, "MobileSecurePayer"

    const-string v2, "bindService:com.eg.android.AlipayGphone.IAlixPay"

    invoke-static {v1, v2}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    iget-object v1, p0, Lcom/tudou/alipay/data/MobileSecurePayer;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.eg.android.AlipayGphone.IAlixPay"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/tudou/alipay/data/MobileSecurePayer;->mAlixPayConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 105
    :cond_1
    :goto_1
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/tudou/alipay/data/MobileSecurePayer$2;

    invoke-direct {v2, p0, p1, p3, p2}, Lcom/tudou/alipay/data/MobileSecurePayer$2;-><init>(Lcom/tudou/alipay/data/MobileSecurePayer;Ljava/lang/String;ILandroid/os/Handler;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 96
    :cond_2
    const-string v1, "MobileSecurePayer"

    const-string v2, "bindService:com.alipay.android.app.IAlixPay"

    invoke-static {v1, v2}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    iget-object v1, p0, Lcom/tudou/alipay/data/MobileSecurePayer;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.alipay.android.app.IAlixPay"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/tudou/alipay/data/MobileSecurePayer;->mAlixPayConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    goto :goto_1
.end method
