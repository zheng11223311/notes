.class Lcom/mobisage/android/MobiSageAdWebView;
.super Lcom/mobisage/android/MobiSageWebView;
.source "MobiSageAdWebView.java"


# instance fields
.field private jsAgent:Lcom/mobisage/android/MobiSageJavascriptAgent;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/mobisage/android/MobiSageAdView;Lcom/mobisage/android/IMobiSageAdViewListener;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adView"    # Lcom/mobisage/android/MobiSageAdView;
    .param p3, "listener"    # Lcom/mobisage/android/IMobiSageAdViewListener;

    .prologue
    const/4 v1, 0x0

    .line 13
    invoke-direct {p0, p1}, Lcom/mobisage/android/MobiSageWebView;-><init>(Landroid/content/Context;)V

    .line 14
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mobisage/android/MobiSageAdWebView;->setAnimationCacheEnabled(Z)V

    .line 15
    invoke-virtual {p0, v1}, Lcom/mobisage/android/MobiSageAdWebView;->setVerticalScrollBarEnabled(Z)V

    .line 16
    invoke-virtual {p0, v1}, Lcom/mobisage/android/MobiSageAdWebView;->setHorizontalScrollBarEnabled(Z)V

    .line 19
    invoke-virtual {p0}, Lcom/mobisage/android/MobiSageAdWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    sget-object v1, Landroid/webkit/WebSettings$RenderPriority;->HIGH:Landroid/webkit/WebSettings$RenderPriority;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setRenderPriority(Landroid/webkit/WebSettings$RenderPriority;)V

    .line 21
    new-instance v0, Lcom/mobisage/android/MobiSageJavascriptAgent;

    invoke-direct {v0, p1, p2, p3}, Lcom/mobisage/android/MobiSageJavascriptAgent;-><init>(Landroid/content/Context;Lcom/mobisage/android/MobiSageAdView;Lcom/mobisage/android/IMobiSageAdViewListener;)V

    iput-object v0, p0, Lcom/mobisage/android/MobiSageAdWebView;->jsAgent:Lcom/mobisage/android/MobiSageJavascriptAgent;

    .line 23
    iget-object v0, p0, Lcom/mobisage/android/MobiSageAdWebView;->jsAgent:Lcom/mobisage/android/MobiSageJavascriptAgent;

    const-string v1, "ad"

    invoke-virtual {p0, v0, v1}, Lcom/mobisage/android/MobiSageAdWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    new-instance v0, Lcom/mobisage/android/MobiSageAdWebView$1;

    invoke-direct {v0, p0}, Lcom/mobisage/android/MobiSageAdWebView$1;-><init>(Lcom/mobisage/android/MobiSageAdWebView;)V

    invoke-virtual {p0, v0}, Lcom/mobisage/android/MobiSageAdWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 32
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    .line 65
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 66
    const-string v0, "ad"

    invoke-virtual {p0, v0}, Lcom/mobisage/android/MobiSageAdWebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/mobisage/android/MobiSageAdWebView;->jsAgent:Lcom/mobisage/android/MobiSageJavascriptAgent;

    invoke-virtual {v0}, Lcom/mobisage/android/MobiSageJavascriptAgent;->destoryJavascriptAgent()V

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mobisage/android/MobiSageAdWebView;->jsAgent:Lcom/mobisage/android/MobiSageJavascriptAgent;

    .line 70
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mobisage/android/MobiSageAdWebView;->clearCache(Z)V

    .line 71
    invoke-virtual {p0}, Lcom/mobisage/android/MobiSageAdWebView;->freeMemory()V

    .line 72
    invoke-virtual {p0}, Lcom/mobisage/android/MobiSageAdWebView;->destroyDrawingCache()V

    .line 73
    invoke-super {p0}, Lcom/mobisage/android/MobiSageWebView;->destroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    :goto_0
    return-void

    .line 74
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 59
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 60
    return-void
.end method

.method public setAdGroupID(Ljava/lang/String;)V
    .locals 1
    .param p1, "adGroupID"    # Ljava/lang/String;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/mobisage/android/MobiSageAdWebView;->jsAgent:Lcom/mobisage/android/MobiSageJavascriptAgent;

    iput-object p1, v0, Lcom/mobisage/android/MobiSageJavascriptAgent;->adGroupID:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public setAdID(Ljava/lang/String;)V
    .locals 1
    .param p1, "adID"    # Ljava/lang/String;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/mobisage/android/MobiSageAdWebView;->jsAgent:Lcom/mobisage/android/MobiSageJavascriptAgent;

    iput-object p1, v0, Lcom/mobisage/android/MobiSageJavascriptAgent;->adID:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public setCustomData(Ljava/lang/String;)V
    .locals 1
    .param p1, "customData"    # Ljava/lang/String;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/mobisage/android/MobiSageAdWebView;->jsAgent:Lcom/mobisage/android/MobiSageJavascriptAgent;

    iput-object p1, v0, Lcom/mobisage/android/MobiSageJavascriptAgent;->customData:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public setPublisherID(Ljava/lang/String;)V
    .locals 1
    .param p1, "publisherID"    # Ljava/lang/String;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/mobisage/android/MobiSageAdWebView;->jsAgent:Lcom/mobisage/android/MobiSageJavascriptAgent;

    iput-object p1, v0, Lcom/mobisage/android/MobiSageJavascriptAgent;->publisherID:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 1
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/mobisage/android/MobiSageAdWebView;->jsAgent:Lcom/mobisage/android/MobiSageJavascriptAgent;

    iput-object p1, v0, Lcom/mobisage/android/MobiSageJavascriptAgent;->token:Ljava/lang/String;

    .line 46
    return-void
.end method
