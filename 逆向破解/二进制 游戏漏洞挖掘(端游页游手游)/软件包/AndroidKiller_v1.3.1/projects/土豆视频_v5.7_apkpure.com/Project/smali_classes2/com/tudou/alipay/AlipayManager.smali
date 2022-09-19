.class public final Lcom/tudou/alipay/AlipayManager;
.super Ljava/lang/Object;
.source "AlipayManager.java"


# static fields
.field public static final ALIPAY_PAY_FAIL:I = 0x44d

.field public static final ALIPAY_PAY_QUERY_FAIL:I = 0x44e

.field public static final ALIPAY_PAY_SUCCESS:I = 0x44c

.field private static final REQUEST_DOPAYURL_FAIL:I = 0x65

.field private static final REQUEST_DOPAYURL_SUCCESS:I = 0x64

.field public static final TAG:Ljava/lang/String;

.field private static mInstance:Lcom/tudou/alipay/AlipayManager;

.field private static final mInstanceSync:Ljava/lang/Object;


# instance fields
.field private activity:Landroid/app/Activity;

.field private doPayRequest:Lcom/youku/network/IHttpRequest;

.field private doTradeRequest:Lcom/youku/network/IHttpRequest;

.field private handler:Landroid/os/Handler;

.field private isGetingData:Z

.field private isGetingTradeData:Z

.field private isRegPackageInstallReceiver:Z

.field private mDoPayData:Lcom/tudou/alipay/entity/DoPayData;

.field private mHandler:Landroid/os/Handler;

.field private mMobileSecurePayer:Lcom/tudou/alipay/data/MobileSecurePayer;

.field private mPackageInstallationListener:Landroid/content/BroadcastReceiver;

.field private mResultChecker:Lcom/tudou/alipay/data/ResultChecker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lcom/tudou/alipay/AlipayManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tudou/alipay/AlipayManager;->TAG:Ljava/lang/String;

    .line 44
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/tudou/alipay/AlipayManager;->mInstanceSync:Ljava/lang/Object;

    .line 46
    const/4 v0, 0x0

    sput-object v0, Lcom/tudou/alipay/AlipayManager;->mInstance:Lcom/tudou/alipay/AlipayManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-boolean v1, p0, Lcom/tudou/alipay/AlipayManager;->isRegPackageInstallReceiver:Z

    .line 48
    iput-boolean v1, p0, Lcom/tudou/alipay/AlipayManager;->isGetingData:Z

    .line 49
    iput-object v0, p0, Lcom/tudou/alipay/AlipayManager;->doPayRequest:Lcom/youku/network/IHttpRequest;

    .line 50
    iput-object v0, p0, Lcom/tudou/alipay/AlipayManager;->mDoPayData:Lcom/tudou/alipay/entity/DoPayData;

    .line 52
    iput-object v0, p0, Lcom/tudou/alipay/AlipayManager;->activity:Landroid/app/Activity;

    .line 53
    iput-object v0, p0, Lcom/tudou/alipay/AlipayManager;->handler:Landroid/os/Handler;

    .line 55
    iput-boolean v1, p0, Lcom/tudou/alipay/AlipayManager;->isGetingTradeData:Z

    .line 56
    iput-object v0, p0, Lcom/tudou/alipay/AlipayManager;->doTradeRequest:Lcom/youku/network/IHttpRequest;

    .line 58
    iput-object v0, p0, Lcom/tudou/alipay/AlipayManager;->mMobileSecurePayer:Lcom/tudou/alipay/data/MobileSecurePayer;

    .line 59
    iput-object v0, p0, Lcom/tudou/alipay/AlipayManager;->mResultChecker:Lcom/tudou/alipay/data/ResultChecker;

    .line 71
    new-instance v0, Lcom/tudou/alipay/AlipayManager$1;

    invoke-direct {v0, p0}, Lcom/tudou/alipay/AlipayManager$1;-><init>(Lcom/tudou/alipay/AlipayManager;)V

    iput-object v0, p0, Lcom/tudou/alipay/AlipayManager;->mHandler:Landroid/os/Handler;

    .line 300
    new-instance v0, Lcom/tudou/alipay/AlipayManager$3;

    invoke-direct {v0, p0}, Lcom/tudou/alipay/AlipayManager$3;-><init>(Lcom/tudou/alipay/AlipayManager;)V

    iput-object v0, p0, Lcom/tudou/alipay/AlipayManager;->mPackageInstallationListener:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/tudou/alipay/AlipayManager;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/alipay/AlipayManager;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/tudou/alipay/AlipayManager;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/tudou/alipay/AlipayManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/alipay/AlipayManager;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/tudou/alipay/AlipayManager;->doPerformPay()V

    return-void
.end method

.method static synthetic access$200(Lcom/tudou/alipay/AlipayManager;)Lcom/tudou/alipay/entity/DoPayData;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/alipay/AlipayManager;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/tudou/alipay/AlipayManager;->mDoPayData:Lcom/tudou/alipay/entity/DoPayData;

    return-object v0
.end method

.method static synthetic access$202(Lcom/tudou/alipay/AlipayManager;Lcom/tudou/alipay/entity/DoPayData;)Lcom/tudou/alipay/entity/DoPayData;
    .locals 0
    .param p0, "x0"    # Lcom/tudou/alipay/AlipayManager;
    .param p1, "x1"    # Lcom/tudou/alipay/entity/DoPayData;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/tudou/alipay/AlipayManager;->mDoPayData:Lcom/tudou/alipay/entity/DoPayData;

    return-object p1
.end method

.method static synthetic access$300(Lcom/tudou/alipay/AlipayManager;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/alipay/AlipayManager;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/tudou/alipay/AlipayManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$402(Lcom/tudou/alipay/AlipayManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/tudou/alipay/AlipayManager;
    .param p1, "x1"    # Z

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/tudou/alipay/AlipayManager;->isGetingData:Z

    return p1
.end method

.method static synthetic access$502(Lcom/tudou/alipay/AlipayManager;Lcom/youku/network/IHttpRequest;)Lcom/youku/network/IHttpRequest;
    .locals 0
    .param p0, "x0"    # Lcom/tudou/alipay/AlipayManager;
    .param p1, "x1"    # Lcom/youku/network/IHttpRequest;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/tudou/alipay/AlipayManager;->doPayRequest:Lcom/youku/network/IHttpRequest;

    return-object p1
.end method

.method static synthetic access$600(Lcom/tudou/alipay/AlipayManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/alipay/AlipayManager;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/tudou/alipay/AlipayManager;->performPay()V

    return-void
.end method

.method private cancelDoPayRequest()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 217
    iget-object v0, p0, Lcom/tudou/alipay/AlipayManager;->doPayRequest:Lcom/youku/network/IHttpRequest;

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/tudou/alipay/AlipayManager;->doPayRequest:Lcom/youku/network/IHttpRequest;

    invoke-interface {v0}, Lcom/youku/network/IHttpRequest;->cancel()V

    .line 219
    iput-object v2, p0, Lcom/tudou/alipay/AlipayManager;->doPayRequest:Lcom/youku/network/IHttpRequest;

    .line 221
    :cond_0
    iput-object v2, p0, Lcom/tudou/alipay/AlipayManager;->mDoPayData:Lcom/tudou/alipay/entity/DoPayData;

    .line 222
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tudou/alipay/AlipayManager;->isGetingData:Z

    .line 223
    iget-object v0, p0, Lcom/tudou/alipay/AlipayManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 224
    iget-object v0, p0, Lcom/tudou/alipay/AlipayManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 225
    iget-object v0, p0, Lcom/tudou/alipay/AlipayManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 226
    iget-object v0, p0, Lcom/tudou/alipay/AlipayManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 227
    return-void
.end method

.method private cancelTradeRequest()V
    .locals 1

    .prologue
    .line 450
    iget-object v0, p0, Lcom/tudou/alipay/AlipayManager;->doTradeRequest:Lcom/youku/network/IHttpRequest;

    if-eqz v0, :cond_0

    .line 451
    iget-object v0, p0, Lcom/tudou/alipay/AlipayManager;->doTradeRequest:Lcom/youku/network/IHttpRequest;

    invoke-interface {v0}, Lcom/youku/network/IHttpRequest;->cancel()V

    .line 452
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tudou/alipay/AlipayManager;->doTradeRequest:Lcom/youku/network/IHttpRequest;

    .line 454
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tudou/alipay/AlipayManager;->isGetingTradeData:Z

    .line 455
    return-void
.end method

.method private doPerformPay()V
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/tudou/alipay/AlipayManager;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/tudou/alipay/util/AlipayUtils;->checkMobileSecurePayInstall(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    invoke-direct {p0}, Lcom/tudou/alipay/AlipayManager;->performPay()V

    .line 115
    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/tudou/alipay/AlipayManager;
    .locals 2

    .prologue
    .line 62
    sget-object v1, Lcom/tudou/alipay/AlipayManager;->mInstanceSync:Ljava/lang/Object;

    monitor-enter v1

    .line 63
    :try_start_0
    sget-object v0, Lcom/tudou/alipay/AlipayManager;->mInstance:Lcom/tudou/alipay/AlipayManager;

    if-eqz v0, :cond_0

    .line 64
    sget-object v0, Lcom/tudou/alipay/AlipayManager;->mInstance:Lcom/tudou/alipay/AlipayManager;

    monitor-exit v1

    .line 68
    :goto_0
    return-object v0

    .line 66
    :cond_0
    new-instance v0, Lcom/tudou/alipay/AlipayManager;

    invoke-direct {v0}, Lcom/tudou/alipay/AlipayManager;-><init>()V

    sput-object v0, Lcom/tudou/alipay/AlipayManager;->mInstance:Lcom/tudou/alipay/AlipayManager;

    .line 67
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    sget-object v0, Lcom/tudou/alipay/AlipayManager;->mInstance:Lcom/tudou/alipay/AlipayManager;

    goto :goto_0

    .line 67
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private performPay()V
    .locals 5

    .prologue
    .line 102
    iget-object v0, p0, Lcom/tudou/alipay/AlipayManager;->mDoPayData:Lcom/tudou/alipay/entity/DoPayData;

    if-eqz v0, :cond_0

    .line 103
    new-instance v0, Lcom/tudou/alipay/data/MobileSecurePayer;

    invoke-direct {v0}, Lcom/tudou/alipay/data/MobileSecurePayer;-><init>()V

    iput-object v0, p0, Lcom/tudou/alipay/AlipayManager;->mMobileSecurePayer:Lcom/tudou/alipay/data/MobileSecurePayer;

    .line 104
    iget-object v0, p0, Lcom/tudou/alipay/AlipayManager;->mMobileSecurePayer:Lcom/tudou/alipay/data/MobileSecurePayer;

    iget-object v1, p0, Lcom/tudou/alipay/AlipayManager;->mDoPayData:Lcom/tudou/alipay/entity/DoPayData;

    invoke-virtual {v1}, Lcom/tudou/alipay/entity/DoPayData;->getChannel_params()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/tudou/alipay/AlipayManager;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/tudou/alipay/AlipayManager;->activity:Landroid/app/Activity;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/tudou/alipay/data/MobileSecurePayer;->pay(Ljava/lang/String;Landroid/os/Handler;ILandroid/app/Activity;)Z

    .line 106
    iget-object v0, p0, Lcom/tudou/alipay/AlipayManager;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/youku/widget/YoukuLoading;->show(Landroid/content/Context;)V

    .line 108
    :cond_0
    return-void
.end method

.method private registerPackageInstallReceiver()V
    .locals 4

    .prologue
    .line 313
    iget-boolean v2, p0, Lcom/tudou/alipay/AlipayManager;->isRegPackageInstallReceiver:Z

    if-nez v2, :cond_0

    sget-object v2, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    if-eqz v2, :cond_0

    .line 314
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 315
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v2, "package"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 317
    :try_start_0
    sget-object v2, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/tudou/alipay/AlipayManager;->mPackageInstallationListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 322
    :goto_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/tudou/alipay/AlipayManager;->isRegPackageInstallReceiver:Z

    .line 324
    .end local v1    # "filter":Landroid/content/IntentFilter;
    :cond_0
    return-void

    .line 319
    .restart local v1    # "filter":Landroid/content/IntentFilter;
    :catch_0
    move-exception v0

    .line 320
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private requestDoPayUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "jsonString"    # Ljava/lang/String;
    .param p3, "pay_channel"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 164
    sget-object v1, Lcom/tudou/alipay/AlipayManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestDoPayUrl().url:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " jsonString = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    invoke-direct {p0}, Lcom/tudou/alipay/AlipayManager;->cancelDoPayRequest()V

    .line 168
    iget-object v1, p0, Lcom/tudou/alipay/AlipayManager;->activity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/youku/widget/YoukuLoading;->show(Landroid/content/Context;)V

    .line 170
    iput-boolean v4, p0, Lcom/tudou/alipay/AlipayManager;->isGetingData:Z

    .line 172
    const-class v1, Lcom/youku/network/IHttpRequest;

    invoke-static {v1, v4}, Lcom/youku/service/YoukuService;->getService(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/network/IHttpRequest;

    iput-object v1, p0, Lcom/tudou/alipay/AlipayManager;->doPayRequest:Lcom/youku/network/IHttpRequest;

    .line 173
    new-instance v0, Lcom/youku/network/HttpIntent;

    const-string v1, "POST"

    invoke-direct {v0, p1, v1, v4, p2}, Lcom/youku/network/HttpIntent;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 175
    .local v0, "httpIntent":Lcom/youku/network/HttpIntent;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/youku/network/HttpIntent;->setCache(Z)Lcom/youku/network/HttpIntent;

    .line 176
    iget-object v1, p0, Lcom/tudou/alipay/AlipayManager;->doPayRequest:Lcom/youku/network/IHttpRequest;

    new-instance v2, Lcom/tudou/alipay/AlipayManager$2;

    invoke-direct {v2, p0, p3}, Lcom/tudou/alipay/AlipayManager$2;-><init>(Lcom/tudou/alipay/AlipayManager;Ljava/lang/String;)V

    invoke-interface {v1, v0, v2}, Lcom/youku/network/IHttpRequest;->request(Lcom/youku/network/HttpIntent;Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;)V

    .line 211
    return-void
.end method

.method private unregisterPackageInstallReceiver()V
    .locals 3

    .prologue
    .line 327
    iget-boolean v1, p0, Lcom/tudou/alipay/AlipayManager;->isRegPackageInstallReceiver:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 329
    :try_start_0
    sget-object v1, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/tudou/alipay/AlipayManager;->mPackageInstallationListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 333
    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/tudou/alipay/AlipayManager;->isRegPackageInstallReceiver:Z

    .line 335
    :cond_0
    return-void

    .line 330
    :catch_0
    move-exception v0

    .line 331
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 458
    sget-object v0, Lcom/tudou/alipay/AlipayManager;->TAG:Ljava/lang/String;

    const-string v1, "clear()"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    invoke-static {}, Lcom/youku/widget/YoukuLoading;->dismiss()V

    .line 460
    invoke-direct {p0}, Lcom/tudou/alipay/AlipayManager;->unregisterPackageInstallReceiver()V

    .line 461
    invoke-direct {p0}, Lcom/tudou/alipay/AlipayManager;->cancelTradeRequest()V

    .line 462
    invoke-direct {p0}, Lcom/tudou/alipay/AlipayManager;->cancelDoPayRequest()V

    .line 463
    iget-object v0, p0, Lcom/tudou/alipay/AlipayManager;->mMobileSecurePayer:Lcom/tudou/alipay/data/MobileSecurePayer;

    if-eqz v0, :cond_0

    .line 464
    iget-object v0, p0, Lcom/tudou/alipay/AlipayManager;->mMobileSecurePayer:Lcom/tudou/alipay/data/MobileSecurePayer;

    invoke-virtual {v0}, Lcom/tudou/alipay/data/MobileSecurePayer;->cancel()V

    .line 465
    iput-object v2, p0, Lcom/tudou/alipay/AlipayManager;->mMobileSecurePayer:Lcom/tudou/alipay/data/MobileSecurePayer;

    .line 467
    :cond_0
    iput-object v2, p0, Lcom/tudou/alipay/AlipayManager;->mResultChecker:Lcom/tudou/alipay/data/ResultChecker;

    .line 468
    iput-object v2, p0, Lcom/tudou/alipay/AlipayManager;->activity:Landroid/app/Activity;

    .line 469
    iget-object v0, p0, Lcom/tudou/alipay/AlipayManager;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 470
    iget-object v0, p0, Lcom/tudou/alipay/AlipayManager;->handler:Landroid/os/Handler;

    const/16 v1, 0x44c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 471
    iget-object v0, p0, Lcom/tudou/alipay/AlipayManager;->handler:Landroid/os/Handler;

    const/16 v1, 0x44d

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 472
    iget-object v0, p0, Lcom/tudou/alipay/AlipayManager;->handler:Landroid/os/Handler;

    const/16 v1, 0x44e

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 473
    iput-object v2, p0, Lcom/tudou/alipay/AlipayManager;->handler:Landroid/os/Handler;

    .line 475
    :cond_1
    sput-object v2, Lcom/tudou/alipay/AlipayManager;->mInstance:Lcom/tudou/alipay/AlipayManager;

    .line 476
    return-void
.end method

.method public doPay(Landroid/app/Activity;Landroid/os/Handler;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "price"    # Ljava/lang/String;
    .param p4, "periods"    # I
    .param p5, "time_span"    # J
    .param p7, "ps_id"    # Ljava/lang/String;
    .param p8, "desc"    # Ljava/lang/String;
    .param p9, "discount"    # Ljava/lang/String;

    .prologue
    .line 274
    sget-object v1, Lcom/tudou/alipay/AlipayManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doPay:price="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",periods:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    iput-object p1, p0, Lcom/tudou/alipay/AlipayManager;->activity:Landroid/app/Activity;

    .line 277
    iput-object p2, p0, Lcom/tudou/alipay/AlipayManager;->handler:Landroid/os/Handler;

    .line 279
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v1

    if-nez v1, :cond_1

    .line 280
    const v1, 0x7f0d043a

    invoke-static {v1}, Lcom/youku/util/Util;->showTips(I)V

    .line 298
    :cond_0
    :goto_0
    return-void

    .line 284
    :cond_1
    invoke-direct {p0}, Lcom/tudou/alipay/AlipayManager;->registerPackageInstallReceiver()V

    .line 286
    invoke-static {}, Lcom/tudou/alipay/util/AlipayUtils;->checkCallEvent()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/tudou/alipay/AlipayManager;->isGetingData:Z

    if-nez v1, :cond_0

    .line 288
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    if-gtz p4, :cond_3

    .line 289
    :cond_2
    iget-object v1, p0, Lcom/tudou/alipay/AlipayManager;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x65

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 291
    :cond_3
    const-string v3, "100"

    move-object v1, p3

    move v2, p4

    move-wide/from16 v4, p5

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    invoke-static/range {v1 .. v8}, Lcom/youku/http/TudouURLContainer;->getVipDoPayUrl(Ljava/lang/String;ILjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 293
    .local v10, "url":Ljava/lang/String;
    const/4 v1, 0x0

    const-string v2, "?"

    invoke-virtual {v10, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v10, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 294
    .local v9, "uri":Ljava/lang/String;
    const-string v1, "?"

    invoke-virtual {v10, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v10, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 295
    .local v0, "json":Ljava/lang/String;
    const-string v1, "100"

    invoke-direct {p0, v9, v0, v1}, Lcom/tudou/alipay/AlipayManager;->requestDoPayUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public doRequestTrade(Landroid/app/Activity;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "trade_id"    # Ljava/lang/String;

    .prologue
    .line 347
    sget-object v0, Lcom/tudou/alipay/AlipayManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doRequestTrade:trade_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    iput-object p1, p0, Lcom/tudou/alipay/AlipayManager;->activity:Landroid/app/Activity;

    .line 350
    iput-object p2, p0, Lcom/tudou/alipay/AlipayManager;->handler:Landroid/os/Handler;

    .line 352
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v0

    if-nez v0, :cond_1

    .line 353
    const v0, 0x7f0d043a

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(I)V

    .line 360
    :cond_0
    :goto_0
    return-void

    .line 357
    :cond_1
    invoke-static {}, Lcom/tudou/alipay/util/AlipayUtils;->checkCallEvent()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/tudou/alipay/AlipayManager;->isGetingTradeData:Z

    if-nez v0, :cond_0

    goto :goto_0
.end method
