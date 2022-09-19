.class public Lcom/alipay/android/mini/uielement/ap;
.super Lcom/alipay/android/mini/uielement/c;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/alipay/android/mini/uielement/c;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Landroid/app/Activity;Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/android/app/exception/AppErrorException;
        }
    .end annotation

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/ap;->v()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 49
    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/ap;->v()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/alipay/android/mini/uielement/aq;

    invoke-direct {v1, p0, p2}, Lcom/alipay/android/mini/uielement/aq;-><init>(Lcom/alipay/android/mini/uielement/ap;Landroid/view/View;)V

    invoke-static {v0, v1}, Lcom/alipay/android/mini/util/n;->a(Ljava/lang/String;Lk/a;)V

    .line 84
    :cond_0
    return-void
.end method

.method public e()I
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    return v0
.end method

.method public h()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    return-object v0
.end method

.method protected z()I
    .locals 1

    .prologue
    .line 33
    const-string v0, "mini_ui_line"

    invoke-static {v0}, Lj/i;->f(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
