.class final Lf/i;
.super Lf/f;
.source "SourceFile"


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lf/f;-><init>(Landroid/content/Context;)V

    .line 23
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 59
    invoke-static {}, Lf/c;->a()Lf/c;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lf/c;->f(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method protected e()V
    .locals 0

    .prologue
    .line 32
    invoke-static {}, Lcom/alipay/mobilesecuritysdk/face/SecurityClientMobile;->stop()V

    .line 33
    return-void
.end method

.method protected f()V
    .locals 1

    .prologue
    .line 43
    invoke-static {}, Li/b;->i()Ljava/util/List;

    move-result-object v0

    .line 44
    if-eqz v0, :cond_0

    .line 45
    const-string v0, "call lbs sdk"

    invoke-static {v0}, Lj/h;->d(Ljava/lang/String;)V

    .line 46
    sget-boolean v0, Lcom/alipay/android/app/pay/b;->g:Z

    invoke-static {v0}, Lcom/alipay/mobilesecuritysdk/face/SecurityClientMobile;->setDebug(Z)V

    .line 50
    :cond_0
    return-void
.end method

.method protected g()Z
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    return v0
.end method
