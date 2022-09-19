.class public Lcom/alipay/android/mini/uielement/bf;
.super Lcom/alipay/android/mini/uielement/a;
.source "SourceFile"


# instance fields
.field b:Ljava/lang/Object;

.field private c:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/alipay/android/mini/uielement/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Landroid/view/ViewGroup;Landroid/app/Activity;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/android/app/exception/AppErrorException;
        }
    .end annotation

    .prologue
    .line 113
    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 1

    .prologue
    .line 37
    invoke-super {p0, p1}, Lcom/alipay/android/mini/uielement/a;->a(Lorg/json/JSONObject;)V

    .line 38
    const-string v0, "image"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    const-string v0, "image"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/mini/uielement/bf;->c:Ljava/lang/String;

    .line 42
    :cond_0
    const-string v0, "color"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 43
    const-string v0, "color"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/mini/uielement/bf;->e:Ljava/lang/String;

    .line 45
    :cond_1
    return-void
.end method

.method protected j()I
    .locals 1

    .prologue
    .line 99
    const-string v0, "mini_ui_block"

    invoke-static {v0}, Lj/i;->f(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public l()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/bf;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 55
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/bf;->c:Ljava/lang/String;

    new-instance v1, Lcom/alipay/android/mini/uielement/bg;

    invoke-direct {v1, p0}, Lcom/alipay/android/mini/uielement/bg;-><init>(Lcom/alipay/android/mini/uielement/bf;)V

    invoke-static {v0, v1}, Lcom/alipay/android/mini/util/n;->a(Ljava/lang/String;Lk/a;)V

    .line 89
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/bf;->b:Ljava/lang/Object;

    return-object v0

    .line 84
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/bf;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/bf;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/android/mini/uielement/bf;->b:Ljava/lang/Object;

    goto :goto_0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    const-string v0, ""

    return-object v0
.end method
