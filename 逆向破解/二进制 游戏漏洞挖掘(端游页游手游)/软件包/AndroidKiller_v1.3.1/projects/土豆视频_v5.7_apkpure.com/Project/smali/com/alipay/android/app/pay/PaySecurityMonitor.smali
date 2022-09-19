.class public Lcom/alipay/android/app/pay/PaySecurityMonitor;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static paySecurityMonitor:Lcom/alipay/android/app/pay/PaySecurityMonitor;


# instance fields
.field private isRunning:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/app/pay/PaySecurityMonitor;->isRunning:Z

    .line 16
    return-void
.end method

.method public static getInstance()Lcom/alipay/android/app/pay/PaySecurityMonitor;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/alipay/android/app/pay/PaySecurityMonitor;->paySecurityMonitor:Lcom/alipay/android/app/pay/PaySecurityMonitor;

    if-nez v0, :cond_0

    .line 20
    new-instance v0, Lcom/alipay/android/app/pay/PaySecurityMonitor;

    invoke-direct {v0}, Lcom/alipay/android/app/pay/PaySecurityMonitor;-><init>()V

    sput-object v0, Lcom/alipay/android/app/pay/PaySecurityMonitor;->paySecurityMonitor:Lcom/alipay/android/app/pay/PaySecurityMonitor;

    .line 22
    :cond_0
    sget-object v0, Lcom/alipay/android/app/pay/PaySecurityMonitor;->paySecurityMonitor:Lcom/alipay/android/app/pay/PaySecurityMonitor;

    return-object v0
.end method


# virtual methods
.method public monitor(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 29
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/alipay/android/app/pay/PaySecurityMonitor;->isRunning:Z

    if-eqz v0, :cond_0

    .line 55
    :cond_0
    return-void
.end method
