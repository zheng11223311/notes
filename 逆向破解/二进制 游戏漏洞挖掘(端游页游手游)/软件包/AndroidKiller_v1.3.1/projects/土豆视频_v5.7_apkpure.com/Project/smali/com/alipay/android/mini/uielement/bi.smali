.class Lcom/alipay/android/mini/uielement/bi;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/alipay/android/mini/uielement/bh;


# direct methods
.method constructor <init>(Lcom/alipay/android/mini/uielement/bh;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/alipay/android/mini/uielement/bi;->a:Lcom/alipay/android/mini/uielement/bh;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 81
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 82
    const/4 v0, 0x1

    return v0
.end method
