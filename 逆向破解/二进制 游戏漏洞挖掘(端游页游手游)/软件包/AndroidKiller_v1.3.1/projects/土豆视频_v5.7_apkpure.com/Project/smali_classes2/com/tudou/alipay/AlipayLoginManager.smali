.class public Lcom/tudou/alipay/AlipayLoginManager;
.super Ljava/lang/Object;
.source "AlipayLoginManager.java"


# static fields
.field private static final APPID:Ljava/lang/String; = "2013081500000849"

.field private static final PID:Ljava/lang/String; = "2088701288111700"

.field private static final PRODUCTID:Ljava/lang/String; = "WAP_FAST_LOGIN"

.field private static final REDIRECTURI:Ljava/lang/String; = "authresult://com.android.auth.callback:80"

.field private static mInstance:Lcom/tudou/alipay/AlipayLoginManager;

.field private static final mInstanceSync:Ljava/lang/Object;


# instance fields
.field private mActivity:Landroid/app/Activity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x0

    sput-object v0, Lcom/tudou/alipay/AlipayLoginManager;->mInstance:Lcom/tudou/alipay/AlipayLoginManager;

    .line 17
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/tudou/alipay/AlipayLoginManager;->mInstanceSync:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tudou/alipay/AlipayLoginManager;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method private doAlipayLogin()V
    .locals 0

    .prologue
    .line 46
    return-void
.end method

.method public static getInstance()Lcom/tudou/alipay/AlipayLoginManager;
    .locals 2

    .prologue
    .line 22
    sget-object v1, Lcom/tudou/alipay/AlipayLoginManager;->mInstanceSync:Ljava/lang/Object;

    monitor-enter v1

    .line 23
    :try_start_0
    sget-object v0, Lcom/tudou/alipay/AlipayLoginManager;->mInstance:Lcom/tudou/alipay/AlipayLoginManager;

    if-eqz v0, :cond_0

    .line 24
    sget-object v0, Lcom/tudou/alipay/AlipayLoginManager;->mInstance:Lcom/tudou/alipay/AlipayLoginManager;

    monitor-exit v1

    .line 28
    :goto_0
    return-object v0

    .line 26
    :cond_0
    new-instance v0, Lcom/tudou/alipay/AlipayLoginManager;

    invoke-direct {v0}, Lcom/tudou/alipay/AlipayLoginManager;-><init>()V

    sput-object v0, Lcom/tudou/alipay/AlipayLoginManager;->mInstance:Lcom/tudou/alipay/AlipayLoginManager;

    .line 27
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    sget-object v0, Lcom/tudou/alipay/AlipayLoginManager;->mInstance:Lcom/tudou/alipay/AlipayLoginManager;

    goto :goto_0

    .line 27
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 49
    iput-object v0, p0, Lcom/tudou/alipay/AlipayLoginManager;->mActivity:Landroid/app/Activity;

    .line 50
    sput-object v0, Lcom/tudou/alipay/AlipayLoginManager;->mInstance:Lcom/tudou/alipay/AlipayLoginManager;

    .line 51
    return-void
.end method

.method public doLogin(Landroid/app/Activity;)V
    .locals 1
    .param p1, "mActivity"    # Landroid/app/Activity;

    .prologue
    .line 33
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v0

    if-nez v0, :cond_0

    .line 34
    const v0, 0x7f0d02bc

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(I)V

    .line 41
    :goto_0
    return-void

    .line 38
    :cond_0
    iput-object p1, p0, Lcom/tudou/alipay/AlipayLoginManager;->mActivity:Landroid/app/Activity;

    .line 40
    invoke-direct {p0}, Lcom/tudou/alipay/AlipayLoginManager;->doAlipayLogin()V

    goto :goto_0
.end method
