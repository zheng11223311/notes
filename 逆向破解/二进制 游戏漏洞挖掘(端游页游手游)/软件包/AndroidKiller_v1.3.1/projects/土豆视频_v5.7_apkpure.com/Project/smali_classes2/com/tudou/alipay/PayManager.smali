.class public final Lcom/tudou/alipay/PayManager;
.super Ljava/lang/Object;
.source "PayManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tudou/alipay/PayManager$AlipayResult;
    }
.end annotation


# static fields
.field public static final ALIPAY_PAY_FAIL:I = 0x44d

.field public static final ALIPAY_PAY_QUERY_FAIL:I = 0x44e

.field public static final ALIPAY_PAY_SUCCESS:I = 0x44c

.field public static final OPEN_VIP_FAILED:I = 0x7d2

.field public static final OPEN_VIP_SUCCESS:I = 0x7d1

.field public static final QUERY_TRADE_TIME:I = 0x3c

.field private static final REQUEST_DOPAYURL_FAIL:I = 0x65

.field private static final REQUEST_DOPAYURL_SUCCESS:I = 0x64

.field public static final TAG:Ljava/lang/String;

.field public static final WXAPP_PAY_SUCCESS:Ljava/lang/String; = "0"

.field private static mInstance:Lcom/tudou/alipay/PayManager;

.field private static final mInstanceSync:Ljava/lang/Object;


# instance fields
.field private activity:Landroid/app/Activity;

.field private doPayRequest:Lcom/youku/network/IHttpRequest;

.field private doTradeRequest:Lcom/youku/network/IHttpRequest;

.field private handler:Landroid/os/Handler;

.field private isAliPaying:Z

.field private isGetingData:Z

.field private isGetingTradeData:Z

.field private mDoPayData:Lcom/tudou/alipay/entity/DoPayData;

.field private mHandler:Landroid/os/Handler;

.field private mIWXAPI:Lcom/tencent/mm/sdk/openapi/IWXAPI;

.field private mIsBuyFilm:Z

.field private mPayTask:Lcom/alipay/android/app/pay/PayTask;

.field private mResultChecker:Lcom/tudou/alipay/data/ResultChecker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/tudou/alipay/PayManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tudou/alipay/PayManager;->TAG:Ljava/lang/String;

    .line 55
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/tudou/alipay/PayManager;->mInstanceSync:Ljava/lang/Object;

    .line 57
    const/4 v0, 0x0

    sput-object v0, Lcom/tudou/alipay/PayManager;->mInstance:Lcom/tudou/alipay/PayManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-boolean v1, p0, Lcom/tudou/alipay/PayManager;->isGetingData:Z

    .line 60
    iput-object v0, p0, Lcom/tudou/alipay/PayManager;->doPayRequest:Lcom/youku/network/IHttpRequest;

    .line 61
    iput-object v0, p0, Lcom/tudou/alipay/PayManager;->mDoPayData:Lcom/tudou/alipay/entity/DoPayData;

    .line 63
    iput-object v0, p0, Lcom/tudou/alipay/PayManager;->activity:Landroid/app/Activity;

    .line 64
    iput-object v0, p0, Lcom/tudou/alipay/PayManager;->handler:Landroid/os/Handler;

    .line 66
    iput-boolean v1, p0, Lcom/tudou/alipay/PayManager;->isGetingTradeData:Z

    .line 67
    iput-object v0, p0, Lcom/tudou/alipay/PayManager;->doTradeRequest:Lcom/youku/network/IHttpRequest;

    .line 69
    iput-object v0, p0, Lcom/tudou/alipay/PayManager;->mResultChecker:Lcom/tudou/alipay/data/ResultChecker;

    .line 71
    iput-boolean v1, p0, Lcom/tudou/alipay/PayManager;->isAliPaying:Z

    .line 73
    iput-object v0, p0, Lcom/tudou/alipay/PayManager;->mIWXAPI:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    .line 75
    iput-object v0, p0, Lcom/tudou/alipay/PayManager;->mPayTask:Lcom/alipay/android/app/pay/PayTask;

    .line 77
    iput-boolean v1, p0, Lcom/tudou/alipay/PayManager;->mIsBuyFilm:Z

    .line 89
    new-instance v0, Lcom/tudou/alipay/PayManager$1;

    invoke-direct {v0, p0}, Lcom/tudou/alipay/PayManager$1;-><init>(Lcom/tudou/alipay/PayManager;)V

    iput-object v0, p0, Lcom/tudou/alipay/PayManager;->mHandler:Landroid/os/Handler;

    .line 716
    return-void
.end method

.method static synthetic access$000(Lcom/tudou/alipay/PayManager;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/alipay/PayManager;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/tudou/alipay/PayManager;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/tudou/alipay/PayManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/alipay/PayManager;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/tudou/alipay/PayManager;->performPay()V

    return-void
.end method

.method static synthetic access$1002(Lcom/tudou/alipay/PayManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/tudou/alipay/PayManager;
    .param p1, "x1"    # Z

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/tudou/alipay/PayManager;->isGetingData:Z

    return p1
.end method

.method static synthetic access$1102(Lcom/tudou/alipay/PayManager;Lcom/youku/network/IHttpRequest;)Lcom/youku/network/IHttpRequest;
    .locals 0
    .param p0, "x0"    # Lcom/tudou/alipay/PayManager;
    .param p1, "x1"    # Lcom/youku/network/IHttpRequest;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/tudou/alipay/PayManager;->doPayRequest:Lcom/youku/network/IHttpRequest;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/tudou/alipay/PayManager;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/alipay/PayManager;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/tudou/alipay/PayManager;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/tudou/alipay/PayManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/tudou/alipay/PayManager;
    .param p1, "x1"    # Z

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/tudou/alipay/PayManager;->isGetingTradeData:Z

    return p1
.end method

.method static synthetic access$1402(Lcom/tudou/alipay/PayManager;Lcom/youku/network/IHttpRequest;)Lcom/youku/network/IHttpRequest;
    .locals 0
    .param p0, "x0"    # Lcom/tudou/alipay/PayManager;
    .param p1, "x1"    # Lcom/youku/network/IHttpRequest;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/tudou/alipay/PayManager;->doTradeRequest:Lcom/youku/network/IHttpRequest;

    return-object p1
.end method

.method static synthetic access$200(Lcom/tudou/alipay/PayManager;Lcom/tudou/alipay/PayManager$AlipayResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/alipay/PayManager;
    .param p1, "x1"    # Lcom/tudou/alipay/PayManager$AlipayResult;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/tudou/alipay/PayManager;->handlePayResult(Lcom/tudou/alipay/PayManager$AlipayResult;)V

    return-void
.end method

.method static synthetic access$300(Lcom/tudou/alipay/PayManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/alipay/PayManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/tudou/alipay/PayManager;->handleWXAppPayResult(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/tudou/alipay/PayManager;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/alipay/PayManager;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/tudou/alipay/PayManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$502(Lcom/tudou/alipay/PayManager;Lcom/alipay/android/app/pay/PayTask;)Lcom/alipay/android/app/pay/PayTask;
    .locals 0
    .param p0, "x0"    # Lcom/tudou/alipay/PayManager;
    .param p1, "x1"    # Lcom/alipay/android/app/pay/PayTask;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/tudou/alipay/PayManager;->mPayTask:Lcom/alipay/android/app/pay/PayTask;

    return-object p1
.end method

.method static synthetic access$602(Lcom/tudou/alipay/PayManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/tudou/alipay/PayManager;
    .param p1, "x1"    # Z

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/tudou/alipay/PayManager;->isAliPaying:Z

    return p1
.end method

.method static synthetic access$900(Lcom/tudou/alipay/PayManager;)Lcom/tudou/alipay/entity/DoPayData;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/alipay/PayManager;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/tudou/alipay/PayManager;->mDoPayData:Lcom/tudou/alipay/entity/DoPayData;

    return-object v0
.end method

.method static synthetic access$902(Lcom/tudou/alipay/PayManager;Lcom/tudou/alipay/entity/DoPayData;)Lcom/tudou/alipay/entity/DoPayData;
    .locals 0
    .param p0, "x0"    # Lcom/tudou/alipay/PayManager;
    .param p1, "x1"    # Lcom/tudou/alipay/entity/DoPayData;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/tudou/alipay/PayManager;->mDoPayData:Lcom/tudou/alipay/entity/DoPayData;

    return-object p1
.end method

.method private cancelDoPayRequest()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 417
    iget-object v0, p0, Lcom/tudou/alipay/PayManager;->doPayRequest:Lcom/youku/network/IHttpRequest;

    if-eqz v0, :cond_0

    .line 418
    iget-object v0, p0, Lcom/tudou/alipay/PayManager;->doPayRequest:Lcom/youku/network/IHttpRequest;

    invoke-interface {v0}, Lcom/youku/network/IHttpRequest;->cancel()V

    .line 419
    iput-object v2, p0, Lcom/tudou/alipay/PayManager;->doPayRequest:Lcom/youku/network/IHttpRequest;

    .line 421
    :cond_0
    iget-object v0, p0, Lcom/tudou/alipay/PayManager;->mPayTask:Lcom/alipay/android/app/pay/PayTask;

    if-eqz v0, :cond_1

    .line 422
    iget-object v0, p0, Lcom/tudou/alipay/PayManager;->mPayTask:Lcom/alipay/android/app/pay/PayTask;

    invoke-virtual {v0, v3}, Lcom/alipay/android/app/pay/PayTask;->cancel(Z)Z

    .line 423
    iput-object v2, p0, Lcom/tudou/alipay/PayManager;->mPayTask:Lcom/alipay/android/app/pay/PayTask;

    .line 425
    :cond_1
    iput-object v2, p0, Lcom/tudou/alipay/PayManager;->mDoPayData:Lcom/tudou/alipay/entity/DoPayData;

    .line 426
    iput-boolean v1, p0, Lcom/tudou/alipay/PayManager;->isGetingData:Z

    .line 427
    iput-boolean v1, p0, Lcom/tudou/alipay/PayManager;->isAliPaying:Z

    .line 428
    iget-object v0, p0, Lcom/tudou/alipay/PayManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 429
    iget-object v0, p0, Lcom/tudou/alipay/PayManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 430
    iget-object v0, p0, Lcom/tudou/alipay/PayManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 431
    iget-object v0, p0, Lcom/tudou/alipay/PayManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 432
    return-void
.end method

.method private cancelTradeRequest()V
    .locals 1

    .prologue
    .line 676
    iget-object v0, p0, Lcom/tudou/alipay/PayManager;->doTradeRequest:Lcom/youku/network/IHttpRequest;

    if-eqz v0, :cond_0

    .line 677
    iget-object v0, p0, Lcom/tudou/alipay/PayManager;->doTradeRequest:Lcom/youku/network/IHttpRequest;

    invoke-interface {v0}, Lcom/youku/network/IHttpRequest;->cancel()V

    .line 678
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tudou/alipay/PayManager;->doTradeRequest:Lcom/youku/network/IHttpRequest;

    .line 680
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tudou/alipay/PayManager;->isGetingTradeData:Z

    .line 681
    return-void
.end method

.method private createIWXAPI()V
    .locals 1

    .prologue
    .line 684
    iget-object v0, p0, Lcom/tudou/alipay/PayManager;->mIWXAPI:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    if-nez v0, :cond_0

    .line 689
    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/tudou/alipay/PayManager;
    .locals 2

    .prologue
    .line 80
    sget-object v1, Lcom/tudou/alipay/PayManager;->mInstanceSync:Ljava/lang/Object;

    monitor-enter v1

    .line 81
    :try_start_0
    sget-object v0, Lcom/tudou/alipay/PayManager;->mInstance:Lcom/tudou/alipay/PayManager;

    if-eqz v0, :cond_0

    .line 82
    sget-object v0, Lcom/tudou/alipay/PayManager;->mInstance:Lcom/tudou/alipay/PayManager;

    monitor-exit v1

    .line 86
    :goto_0
    return-object v0

    .line 84
    :cond_0
    new-instance v0, Lcom/tudou/alipay/PayManager;

    invoke-direct {v0}, Lcom/tudou/alipay/PayManager;-><init>()V

    sput-object v0, Lcom/tudou/alipay/PayManager;->mInstance:Lcom/tudou/alipay/PayManager;

    .line 85
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    sget-object v0, Lcom/tudou/alipay/PayManager;->mInstance:Lcom/tudou/alipay/PayManager;

    goto :goto_0

    .line 85
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private handlePayResult(Lcom/tudou/alipay/PayManager$AlipayResult;)V
    .locals 6
    .param p1, "mAlipayResult"    # Lcom/tudou/alipay/PayManager$AlipayResult;

    .prologue
    const/16 v5, 0x44d

    const/4 v4, 0x0

    .line 231
    sget-object v1, Lcom/tudou/alipay/PayManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handlePayResult...AlipayResult:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/tudou/alipay/PayManager$AlipayResult;->access$700(Lcom/tudou/alipay/PayManager$AlipayResult;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 234
    :cond_0
    iget-object v1, p0, Lcom/tudou/alipay/PayManager;->handler:Landroid/os/Handler;

    if-eqz v1, :cond_1

    .line 235
    iget-object v1, p0, Lcom/tudou/alipay/PayManager;->mDoPayData:Lcom/tudou/alipay/entity/DoPayData;

    if-nez v1, :cond_2

    const-string v0, ""

    .line 237
    .local v0, "trade_id":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/tudou/alipay/PayManager;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v5, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 238
    sget-object v1, Lcom/tudou/alipay/PayManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handlePayResult...sendMessage:ALIPAY_PAY_FAIL,trade_id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    .end local v0    # "trade_id":Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 235
    :cond_2
    iget-object v1, p0, Lcom/tudou/alipay/PayManager;->mDoPayData:Lcom/tudou/alipay/entity/DoPayData;

    invoke-virtual {v1}, Lcom/tudou/alipay/entity/DoPayData;->getTrade_id()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 243
    :cond_3
    new-instance v1, Lcom/tudou/alipay/data/ResultChecker;

    invoke-static {p1}, Lcom/tudou/alipay/PayManager$AlipayResult;->access$700(Lcom/tudou/alipay/PayManager$AlipayResult;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/tudou/alipay/data/ResultChecker;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/tudou/alipay/PayManager;->mResultChecker:Lcom/tudou/alipay/data/ResultChecker;

    .line 244
    iget-object v1, p0, Lcom/tudou/alipay/PayManager;->mResultChecker:Lcom/tudou/alipay/data/ResultChecker;

    invoke-static {p1}, Lcom/tudou/alipay/PayManager$AlipayResult;->access$800(Lcom/tudou/alipay/PayManager$AlipayResult;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tudou/alipay/data/ResultChecker;->isPayOk(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 246
    iget-boolean v1, p0, Lcom/tudou/alipay/PayManager;->mIsBuyFilm:Z

    if-nez v1, :cond_4

    .line 247
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v1

    iget-object v2, p0, Lcom/tudou/alipay/PayManager;->mDoPayData:Lcom/tudou/alipay/entity/DoPayData;

    invoke-virtual {v2}, Lcom/tudou/alipay/entity/DoPayData;->getTrade_id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/youku/vo/UserBean;->setLastTradeId(Ljava/lang/String;)V

    .line 248
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/youku/vo/UserBean;->setLastTradeTime(J)V

    .line 250
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/youku/vo/UserBean;->setLastTradeStatus(Z)V

    .line 255
    :goto_2
    iget-object v1, p0, Lcom/tudou/alipay/PayManager;->handler:Landroid/os/Handler;

    if-eqz v1, :cond_1

    .line 256
    iget-object v1, p0, Lcom/tudou/alipay/PayManager;->handler:Landroid/os/Handler;

    const/16 v2, 0x44c

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    .line 252
    :cond_4
    iput-boolean v4, p0, Lcom/tudou/alipay/PayManager;->mIsBuyFilm:Z

    goto :goto_2

    .line 267
    :cond_5
    iget-object v1, p0, Lcom/tudou/alipay/PayManager;->handler:Landroid/os/Handler;

    if-eqz v1, :cond_1

    .line 268
    iget-object v1, p0, Lcom/tudou/alipay/PayManager;->mDoPayData:Lcom/tudou/alipay/entity/DoPayData;

    if-nez v1, :cond_6

    const-string v0, ""

    .line 270
    .restart local v0    # "trade_id":Ljava/lang/String;
    :goto_3
    iget-object v1, p0, Lcom/tudou/alipay/PayManager;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v5, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 272
    sget-object v1, Lcom/tudou/alipay/PayManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handlePayResult...sendMessage:ALIPAY_PAY_FAIL,trade_id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 268
    .end local v0    # "trade_id":Ljava/lang/String;
    :cond_6
    iget-object v1, p0, Lcom/tudou/alipay/PayManager;->mDoPayData:Lcom/tudou/alipay/entity/DoPayData;

    invoke-virtual {v1}, Lcom/tudou/alipay/entity/DoPayData;->getTrade_id()Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method private handleWXAppPayResult(Ljava/lang/String;)V
    .locals 4
    .param p1, "errCode"    # Ljava/lang/String;

    .prologue
    .line 282
    sget-object v1, Lcom/tudou/alipay/PayManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleWXAppPayResult...errCode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    const-string v1, "0"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 285
    iget-object v1, p0, Lcom/tudou/alipay/PayManager;->mDoPayData:Lcom/tudou/alipay/entity/DoPayData;

    if-nez v1, :cond_1

    const-string v1, ""

    :goto_0
    invoke-direct {p0, v1}, Lcom/tudou/alipay/PayManager;->requestTradeUrl(Ljava/lang/String;)V

    .line 296
    :cond_0
    :goto_1
    return-void

    .line 285
    :cond_1
    iget-object v1, p0, Lcom/tudou/alipay/PayManager;->mDoPayData:Lcom/tudou/alipay/entity/DoPayData;

    invoke-virtual {v1}, Lcom/tudou/alipay/entity/DoPayData;->getTrade_id()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 287
    :cond_2
    iget-object v1, p0, Lcom/tudou/alipay/PayManager;->handler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 288
    iget-object v1, p0, Lcom/tudou/alipay/PayManager;->mDoPayData:Lcom/tudou/alipay/entity/DoPayData;

    if-nez v1, :cond_3

    const-string v0, ""

    .line 290
    .local v0, "trade_id":Ljava/lang/String;
    :goto_2
    iget-object v1, p0, Lcom/tudou/alipay/PayManager;->handler:Landroid/os/Handler;

    const/16 v2, 0x44d

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 291
    sget-object v1, Lcom/tudou/alipay/PayManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleWXAppPayResult...sendMessage:ALIPAY_PAY_FAIL,trade_id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 288
    .end local v0    # "trade_id":Ljava/lang/String;
    :cond_3
    iget-object v1, p0, Lcom/tudou/alipay/PayManager;->mDoPayData:Lcom/tudou/alipay/entity/DoPayData;

    invoke-virtual {v1}, Lcom/tudou/alipay/entity/DoPayData;->getTrade_id()Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method private performAlipay()V
    .locals 3

    .prologue
    .line 175
    sget-object v0, Lcom/tudou/alipay/PayManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "performAlipay().isAliPaying:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/tudou/alipay/PayManager;->isAliPaying:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    iget-boolean v0, p0, Lcom/tudou/alipay/PayManager;->isAliPaying:Z

    if-nez v0, :cond_0

    .line 178
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tudou/alipay/PayManager;->isAliPaying:Z

    .line 180
    new-instance v0, Lcom/alipay/android/app/pay/PayTask;

    iget-object v1, p0, Lcom/tudou/alipay/PayManager;->activity:Landroid/app/Activity;

    new-instance v2, Lcom/tudou/alipay/PayManager$2;

    invoke-direct {v2, p0}, Lcom/tudou/alipay/PayManager$2;-><init>(Lcom/tudou/alipay/PayManager;)V

    invoke-direct {v0, v1, v2}, Lcom/alipay/android/app/pay/PayTask;-><init>(Landroid/app/Activity;Lcom/alipay/android/app/pay/PayTask$OnPayListener;)V

    iput-object v0, p0, Lcom/tudou/alipay/PayManager;->mPayTask:Lcom/alipay/android/app/pay/PayTask;

    .line 218
    iget-object v0, p0, Lcom/tudou/alipay/PayManager;->mPayTask:Lcom/alipay/android/app/pay/PayTask;

    iget-object v1, p0, Lcom/tudou/alipay/PayManager;->mDoPayData:Lcom/tudou/alipay/entity/DoPayData;

    invoke-virtual {v1}, Lcom/tudou/alipay/entity/DoPayData;->getChannel_params()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/pay/PayTask;->pay(Ljava/lang/String;)V

    .line 220
    sget-object v0, Lcom/tudou/alipay/PayManager;->TAG:Ljava/lang/String;

    const-string v1, "performAlipay().mPayTask.pay().start"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    :cond_0
    return-void
.end method

.method private performPay()V
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/tudou/alipay/PayManager;->mDoPayData:Lcom/tudou/alipay/entity/DoPayData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tudou/alipay/PayManager;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 124
    const-string v0, "103"

    iget-object v1, p0, Lcom/tudou/alipay/PayManager;->mDoPayData:Lcom/tudou/alipay/entity/DoPayData;

    invoke-virtual {v1}, Lcom/tudou/alipay/entity/DoPayData;->getPay_channel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 126
    invoke-direct {p0}, Lcom/tudou/alipay/PayManager;->performWXApp()V

    .line 131
    :cond_0
    :goto_0
    return-void

    .line 128
    :cond_1
    invoke-direct {p0}, Lcom/tudou/alipay/PayManager;->performAlipay()V

    goto :goto_0
.end method

.method private performWXApp()V
    .locals 2

    .prologue
    .line 143
    sget-object v0, Lcom/tudou/alipay/PayManager;->TAG:Ljava/lang/String;

    const-string v1, "performWXApp()"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    return-void
.end method

.method private removeIWXAPI()V
    .locals 1

    .prologue
    .line 692
    iget-object v0, p0, Lcom/tudou/alipay/PayManager;->mIWXAPI:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    if-eqz v0, :cond_0

    .line 696
    :cond_0
    return-void
.end method

.method private requestDoPayUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "jsonString"    # Ljava/lang/String;
    .param p3, "pay_channel"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 357
    sget-object v1, Lcom/tudou/alipay/PayManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestDoPayUrl().pay_channel:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",url:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    invoke-direct {p0}, Lcom/tudou/alipay/PayManager;->cancelDoPayRequest()V

    .line 362
    iget-object v1, p0, Lcom/tudou/alipay/PayManager;->activity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/youku/widget/YoukuLoading;->show(Landroid/content/Context;)V

    .line 364
    iput-boolean v4, p0, Lcom/tudou/alipay/PayManager;->isGetingData:Z

    .line 366
    const-class v1, Lcom/youku/network/IHttpRequest;

    invoke-static {v1, v4}, Lcom/youku/service/YoukuService;->getService(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/network/IHttpRequest;

    iput-object v1, p0, Lcom/tudou/alipay/PayManager;->doPayRequest:Lcom/youku/network/IHttpRequest;

    .line 368
    new-instance v0, Lcom/youku/network/HttpIntent;

    const-string v1, "POST"

    invoke-direct {v0, p1, v1, v4, p2}, Lcom/youku/network/HttpIntent;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 370
    .local v0, "httpIntent":Lcom/youku/network/HttpIntent;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/youku/network/HttpIntent;->setCache(Z)Lcom/youku/network/HttpIntent;

    .line 371
    iget-object v1, p0, Lcom/tudou/alipay/PayManager;->doPayRequest:Lcom/youku/network/IHttpRequest;

    new-instance v2, Lcom/tudou/alipay/PayManager$4;

    invoke-direct {v2, p0, p3}, Lcom/tudou/alipay/PayManager$4;-><init>(Lcom/tudou/alipay/PayManager;Ljava/lang/String;)V

    invoke-interface {v1, v0, v2}, Lcom/youku/network/IHttpRequest;->request(Lcom/youku/network/HttpIntent;Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;)V

    .line 411
    return-void
.end method

.method private requestPayVodUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "jsonString"    # Ljava/lang/String;
    .param p3, "pay_channel"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 299
    sget-object v1, Lcom/tudou/alipay/PayManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestPayVodUrl().pay_channel:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",url:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    invoke-direct {p0}, Lcom/tudou/alipay/PayManager;->cancelDoPayRequest()V

    .line 302
    iget-object v1, p0, Lcom/tudou/alipay/PayManager;->activity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/youku/widget/YoukuLoading;->show(Landroid/content/Context;)V

    .line 303
    const-class v1, Lcom/youku/network/IHttpRequest;

    invoke-static {v1, v4}, Lcom/youku/service/YoukuService;->getService(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/network/IHttpRequest;

    iput-object v1, p0, Lcom/tudou/alipay/PayManager;->doPayRequest:Lcom/youku/network/IHttpRequest;

    .line 305
    new-instance v0, Lcom/youku/network/HttpIntent;

    const-string v1, "POST"

    invoke-direct {v0, p1, v1, v4, p2}, Lcom/youku/network/HttpIntent;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 307
    .local v0, "httpIntent":Lcom/youku/network/HttpIntent;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/youku/network/HttpIntent;->setCache(Z)Lcom/youku/network/HttpIntent;

    .line 308
    iget-object v1, p0, Lcom/tudou/alipay/PayManager;->doPayRequest:Lcom/youku/network/IHttpRequest;

    new-instance v2, Lcom/tudou/alipay/PayManager$3;

    invoke-direct {v2, p0, p3}, Lcom/tudou/alipay/PayManager$3;-><init>(Lcom/tudou/alipay/PayManager;Ljava/lang/String;)V

    invoke-interface {v1, v0, v2}, Lcom/youku/network/IHttpRequest;->request(Lcom/youku/network/HttpIntent;Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;)V

    .line 349
    return-void
.end method

.method private requestTradeUrl(Ljava/lang/String;)V
    .locals 9
    .param p1, "trade_id"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 551
    sget-object v4, Lcom/tudou/alipay/PayManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "requestTradeUrl:trade_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    invoke-direct {p0}, Lcom/tudou/alipay/PayManager;->cancelTradeRequest()V

    .line 557
    iput-boolean v7, p0, Lcom/tudou/alipay/PayManager;->isGetingTradeData:Z

    .line 559
    const-class v4, Lcom/youku/network/IHttpRequest;

    invoke-static {v4, v7}, Lcom/youku/service/YoukuService;->getService(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/youku/network/IHttpRequest;

    iput-object v4, p0, Lcom/tudou/alipay/PayManager;->doTradeRequest:Lcom/youku/network/IHttpRequest;

    .line 560
    invoke-static {p1}, Lcom/youku/http/TudouURLContainer;->getTradeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 561
    .local v3, "url":Ljava/lang/String;
    const-string v4, "?"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v8, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 562
    .local v2, "uri":Ljava/lang/String;
    const-string v4, "?"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 564
    .local v1, "json":Ljava/lang/String;
    new-instance v0, Lcom/youku/network/HttpIntent;

    const-string v4, "POST"

    invoke-direct {v0, v2, v4, v7, v1}, Lcom/youku/network/HttpIntent;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 566
    .local v0, "httpIntent":Lcom/youku/network/HttpIntent;
    invoke-virtual {v0, v8}, Lcom/youku/network/HttpIntent;->setCache(Z)Lcom/youku/network/HttpIntent;

    .line 567
    iget-object v4, p0, Lcom/tudou/alipay/PayManager;->doTradeRequest:Lcom/youku/network/IHttpRequest;

    new-instance v5, Lcom/tudou/alipay/PayManager$5;

    invoke-direct {v5, p0}, Lcom/tudou/alipay/PayManager$5;-><init>(Lcom/tudou/alipay/PayManager;)V

    invoke-interface {v4, v0, v5}, Lcom/youku/network/IHttpRequest;->request(Lcom/youku/network/HttpIntent;Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;)V

    .line 670
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 699
    sget-object v0, Lcom/tudou/alipay/PayManager;->TAG:Ljava/lang/String;

    const-string v1, "clear()"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 700
    invoke-static {}, Lcom/youku/widget/YoukuLoading;->dismiss()V

    .line 701
    invoke-direct {p0}, Lcom/tudou/alipay/PayManager;->cancelTradeRequest()V

    .line 702
    invoke-direct {p0}, Lcom/tudou/alipay/PayManager;->cancelDoPayRequest()V

    .line 703
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tudou/alipay/PayManager;->isAliPaying:Z

    .line 704
    iput-object v2, p0, Lcom/tudou/alipay/PayManager;->mResultChecker:Lcom/tudou/alipay/data/ResultChecker;

    .line 705
    invoke-direct {p0}, Lcom/tudou/alipay/PayManager;->removeIWXAPI()V

    .line 706
    iput-object v2, p0, Lcom/tudou/alipay/PayManager;->activity:Landroid/app/Activity;

    .line 707
    iget-object v0, p0, Lcom/tudou/alipay/PayManager;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 708
    iget-object v0, p0, Lcom/tudou/alipay/PayManager;->handler:Landroid/os/Handler;

    const/16 v1, 0x44c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 709
    iget-object v0, p0, Lcom/tudou/alipay/PayManager;->handler:Landroid/os/Handler;

    const/16 v1, 0x44d

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 710
    iget-object v0, p0, Lcom/tudou/alipay/PayManager;->handler:Landroid/os/Handler;

    const/16 v1, 0x44e

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 711
    iput-object v2, p0, Lcom/tudou/alipay/PayManager;->handler:Landroid/os/Handler;

    .line 713
    :cond_0
    sput-object v2, Lcom/tudou/alipay/PayManager;->mInstance:Lcom/tudou/alipay/PayManager;

    .line 714
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
    .line 467
    iput-object p1, p0, Lcom/tudou/alipay/PayManager;->activity:Landroid/app/Activity;

    .line 468
    iput-object p2, p0, Lcom/tudou/alipay/PayManager;->handler:Landroid/os/Handler;

    .line 470
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    if-gtz p4, :cond_1

    .line 471
    :cond_0
    iget-object v1, p0, Lcom/tudou/alipay/PayManager;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x65

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 480
    :goto_0
    return-void

    .line 473
    :cond_1
    const-string v3, "100"

    move-object v1, p3

    move v2, p4

    move-wide/from16 v4, p5

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    invoke-static/range {v1 .. v8}, Lcom/youku/http/TudouURLContainer;->getVipDoPayUrl(Ljava/lang/String;ILjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 476
    .local v10, "url":Ljava/lang/String;
    const/4 v1, 0x0

    const-string v2, "?"

    invoke-virtual {v10, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v10, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 477
    .local v9, "uri":Ljava/lang/String;
    const-string v1, "?"

    invoke-virtual {v10, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v10, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 478
    .local v0, "json":Ljava/lang/String;
    const-string v1, "100"

    invoke-direct {p0, v9, v0, v1}, Lcom/tudou/alipay/PayManager;->requestDoPayUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public doRequestTrade(Landroid/app/Activity;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "trade_id"    # Ljava/lang/String;

    .prologue
    .line 529
    sget-object v0, Lcom/tudou/alipay/PayManager;->TAG:Ljava/lang/String;

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

    .line 531
    iput-object p1, p0, Lcom/tudou/alipay/PayManager;->activity:Landroid/app/Activity;

    .line 532
    iput-object p2, p0, Lcom/tudou/alipay/PayManager;->handler:Landroid/os/Handler;

    .line 534
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v0

    if-nez v0, :cond_1

    .line 535
    const v0, 0x7f0d043a

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(I)V

    .line 542
    :cond_0
    :goto_0
    return-void

    .line 539
    :cond_1
    invoke-static {}, Lcom/tudou/alipay/util/AlipayUtils;->checkCallEvent()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/tudou/alipay/PayManager;->isGetingTradeData:Z

    if-nez v0, :cond_0

    .line 540
    invoke-direct {p0, p3}, Lcom/tudou/alipay/PayManager;->requestTradeUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public payVod(Landroid/app/Activity;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "show_id"    # Ljava/lang/String;
    .param p4, "price"    # Ljava/lang/String;
    .param p5, "channel"    # Ljava/lang/String;

    .prologue
    .line 483
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/tudou/alipay/PayManager;->mIsBuyFilm:Z

    .line 484
    iput-object p1, p0, Lcom/tudou/alipay/PayManager;->activity:Landroid/app/Activity;

    .line 485
    iput-object p2, p0, Lcom/tudou/alipay/PayManager;->handler:Landroid/os/Handler;

    .line 486
    invoke-static {p3, p4, p5}, Lcom/youku/http/TudouURLContainer;->getPayVodUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 487
    .local v2, "url":Ljava/lang/String;
    const/4 v3, 0x0

    const-string v4, "?"

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 488
    .local v1, "uri":Ljava/lang/String;
    const-string v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 489
    .local v0, "json":Ljava/lang/String;
    const-string v3, "100"

    invoke-direct {p0, v1, v0, v3}, Lcom/tudou/alipay/PayManager;->requestPayVodUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    return-void
.end method

.method public performGiftAlipay(Ljava/lang/String;Landroid/app/Activity;Landroid/os/Handler;)V
    .locals 3
    .param p1, "channelData"    # Ljava/lang/String;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    .line 734
    const-string v0, "byron"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "performGiftAlipay().isAliPaying:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/tudou/alipay/PayManager;->isAliPaying:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 735
    const-string v0, "byron"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "performGiftAlipay(): channelData = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 736
    new-instance v0, Lcom/alipay/android/app/pay/PayTask;

    new-instance v1, Lcom/tudou/alipay/PayManager$6;

    invoke-direct {v1, p0, p3}, Lcom/tudou/alipay/PayManager$6;-><init>(Lcom/tudou/alipay/PayManager;Landroid/os/Handler;)V

    invoke-direct {v0, p2, v1}, Lcom/alipay/android/app/pay/PayTask;-><init>(Landroid/app/Activity;Lcom/alipay/android/app/pay/PayTask$OnPayListener;)V

    iput-object v0, p0, Lcom/tudou/alipay/PayManager;->mPayTask:Lcom/alipay/android/app/pay/PayTask;

    .line 777
    iget-object v0, p0, Lcom/tudou/alipay/PayManager;->mPayTask:Lcom/alipay/android/app/pay/PayTask;

    invoke-virtual {v0, p1}, Lcom/alipay/android/app/pay/PayTask;->pay(Ljava/lang/String;)V

    .line 778
    const-string v0, "byron"

    const-string v1, "performGiftAlipay(): start"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 779
    return-void
.end method

.method public performWXAppPayErrCode(Ljava/lang/String;)V
    .locals 3
    .param p1, "errCode"    # Ljava/lang/String;

    .prologue
    .line 134
    sget-object v0, Lcom/tudou/alipay/PayManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "performWXAppPayErrCode().errCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",activity:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tudou/alipay/PayManager;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/tudou/alipay/PayManager;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/tudou/alipay/PayManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 140
    :cond_0
    return-void
.end method
