.class public Lcom/alipay/android/mini/uielement/u;
.super Lcom/alipay/android/mini/uielement/a;
.source "SourceFile"


# instance fields
.field private b:Ljava/lang/String;

.field private c:Z

.field private e:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/alipay/android/mini/uielement/a;-><init>()V

    .line 37
    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;Landroid/app/Activity;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/android/app/exception/AppErrorException;
        }
    .end annotation

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/alipay/android/mini/uielement/u;->c:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 62
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 64
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/u;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/u;->e:Ljava/lang/String;

    new-instance v1, Lcom/alipay/android/mini/uielement/v;

    invoke-direct {v1, p0, p1}, Lcom/alipay/android/mini/uielement/v;-><init>(Lcom/alipay/android/mini/uielement/u;Landroid/view/ViewGroup;)V

    invoke-static {v0, v1}, Lcom/alipay/android/mini/util/n;->a(Ljava/lang/String;Lk/a;)V

    .line 90
    :cond_0
    return-void

    .line 61
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 41
    invoke-super {p0, p1}, Lcom/alipay/android/mini/uielement/a;->a(Lorg/json/JSONObject;)V

    .line 42
    const-string v0, "image"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/mini/uielement/u;->e:Ljava/lang/String;

    .line 43
    const-string v0, "name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/mini/uielement/u;->b:Ljava/lang/String;

    .line 44
    const-string v0, "display"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/android/mini/uielement/u;->c:Z

    .line 45
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/u;->b:Ljava/lang/String;

    return-object v0
.end method

.method public i()V
    .locals 0

    .prologue
    .line 101
    invoke-super {p0}, Lcom/alipay/android/mini/uielement/a;->i()V

    .line 103
    return-void
.end method

.method protected j()I
    .locals 1

    .prologue
    .line 49
    const-string v0, "mini_ui_component"

    invoke-static {v0}, Lj/i;->f(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
