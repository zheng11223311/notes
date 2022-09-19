.class public Lcom/alipay/android/mini/uielement/bh;
.super Lcom/alipay/android/mini/uielement/c;
.source "SourceFile"


# instance fields
.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/alipay/android/mini/uielement/c;-><init>()V

    .line 37
    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Landroid/app/Activity;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/android/app/exception/AppErrorException;
        }
    .end annotation

    .prologue
    .line 26
    check-cast p2, Landroid/webkit/WebView;

    invoke-virtual {p0, p1, p2}, Lcom/alipay/android/mini/uielement/bh;->a(Landroid/app/Activity;Landroid/webkit/WebView;)V

    return-void
.end method

.method protected a(Landroid/app/Activity;Landroid/webkit/WebView;)V
    .locals 3

    .prologue
    .line 62
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/bh;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 63
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/bh;->f:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/alipay/android/mini/util/n;->b(Ljava/lang/String;Landroid/app/Activity;)I

    move-result v0

    .line 67
    :goto_0
    iget-object v1, p0, Lcom/alipay/android/mini/uielement/bh;->e:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 68
    iget-object v1, p0, Lcom/alipay/android/mini/uielement/bh;->e:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/alipay/android/mini/util/n;->a(Ljava/lang/String;Landroid/app/Activity;)I

    move-result v1

    .line 72
    :goto_1
    invoke-virtual {p2}, Landroid/webkit/WebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 73
    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 74
    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 75
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/bh;->g:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/webkit/WebView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 76
    invoke-virtual {p2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 77
    invoke-virtual {p2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 78
    new-instance v0, Lcom/alipay/android/mini/uielement/bi;

    invoke-direct {v0, p0}, Lcom/alipay/android/mini/uielement/bi;-><init>(Lcom/alipay/android/mini/uielement/bh;)V

    invoke-virtual {p2, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 85
    new-instance v0, Lcom/alipay/android/mini/uielement/bj;

    invoke-direct {v0, p0, p1}, Lcom/alipay/android/mini/uielement/bj;-><init>(Lcom/alipay/android/mini/uielement/bh;Landroid/app/Activity;)V

    invoke-virtual {p2, v0}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 95
    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/bh;->k()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/bh;->k()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 98
    :cond_0
    return-void

    .line 65
    :cond_1
    const/4 v0, -0x1

    goto :goto_0

    .line 70
    :cond_2
    const/4 v1, -0x2

    goto :goto_1
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 1

    .prologue
    .line 41
    invoke-super {p0, p1}, Lcom/alipay/android/mini/uielement/c;->a(Lorg/json/JSONObject;)V

    .line 42
    const-string v0, "height"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/mini/uielement/bh;->e:Ljava/lang/String;

    .line 43
    const-string/jumbo v0, "width"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/mini/uielement/bh;->f:Ljava/lang/String;

    .line 44
    const-string v0, "alt"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/mini/uielement/bh;->g:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public e()I
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    return v0
.end method

.method public h()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/bh;->x()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public i()V
    .locals 0

    .prologue
    .line 107
    invoke-super {p0}, Lcom/alipay/android/mini/uielement/c;->i()V

    .line 108
    return-void
.end method

.method protected z()I
    .locals 1

    .prologue
    .line 49
    const-string v0, "mini_ui_webview"

    invoke-static {v0}, Lj/i;->f(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
