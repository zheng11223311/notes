.class public Lcom/youdo/html5/VideoEnabledWebView;
.super Landroid/webkit/WebView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youdo/html5/VideoEnabledWebView$JavascriptInterface;
    }
.end annotation


# instance fields
.field private addedJavascriptInterface:Z

.field private videoEnabledWebChromeClient:Lcom/youdo/html5/VideoEnabledWebChromeClient;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youdo/html5/VideoEnabledWebView;->addedJavascriptInterface:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youdo/html5/VideoEnabledWebView;->addedJavascriptInterface:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youdo/html5/VideoEnabledWebView;->addedJavascriptInterface:Z

    return-void
.end method

.method static synthetic access$000(Lcom/youdo/html5/VideoEnabledWebView;)Lcom/youdo/html5/VideoEnabledWebChromeClient;
    .locals 1

    iget-object v0, p0, Lcom/youdo/html5/VideoEnabledWebView;->videoEnabledWebChromeClient:Lcom/youdo/html5/VideoEnabledWebChromeClient;

    return-object v0
.end method

.method private addJavascriptInterface()V
    .locals 2

    iget-boolean v0, p0, Lcom/youdo/html5/VideoEnabledWebView;->addedJavascriptInterface:Z

    if-nez v0, :cond_0

    new-instance v0, Lcom/youdo/html5/VideoEnabledWebView$JavascriptInterface;

    invoke-direct {v0, p0}, Lcom/youdo/html5/VideoEnabledWebView$JavascriptInterface;-><init>(Lcom/youdo/html5/VideoEnabledWebView;)V

    const-string v1, "_VideoEnabledWebView"

    invoke-super {p0, v0, v1}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youdo/html5/VideoEnabledWebView;->addedJavascriptInterface:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/youdo/html5/VideoEnabledWebView;->addJavascriptInterface()V

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/youdo/html5/VideoEnabledWebView;->addJavascriptInterface()V

    invoke-super/range {p0 .. p5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/youdo/html5/VideoEnabledWebView;->addJavascriptInterface()V

    invoke-super {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public loadUrl(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/youdo/html5/VideoEnabledWebView;->addJavascriptInterface()V

    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public setWebChromeClient(Landroid/webkit/WebChromeClient;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/youdo/html5/VideoEnabledWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    instance-of v0, p1, Lcom/youdo/html5/VideoEnabledWebChromeClient;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/youdo/html5/VideoEnabledWebChromeClient;

    iput-object v0, p0, Lcom/youdo/html5/VideoEnabledWebView;->videoEnabledWebChromeClient:Lcom/youdo/html5/VideoEnabledWebChromeClient;

    :cond_0
    invoke-super {p0, p1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    return-void
.end method
