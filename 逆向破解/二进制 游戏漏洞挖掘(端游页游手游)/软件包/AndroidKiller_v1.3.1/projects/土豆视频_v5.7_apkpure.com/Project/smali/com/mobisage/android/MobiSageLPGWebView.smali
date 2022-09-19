.class Lcom/mobisage/android/MobiSageLPGWebView;
.super Lcom/mobisage/android/MobiSageAdPageWebView;
.source "MobiSageLPGWebView.java"


# instance fields
.field private jsAgent:Lcom/mobisage/android/MobiSageJavascriptAgent;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/mobisage/android/IMobiSageAdViewListener;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/mobisage/android/IMobiSageAdViewListener;

    .prologue
    const/4 v1, 0x0

    .line 9
    invoke-direct {p0, p1}, Lcom/mobisage/android/MobiSageAdPageWebView;-><init>(Landroid/content/Context;)V

    .line 10
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mobisage/android/MobiSageLPGWebView;->setAnimationCacheEnabled(Z)V

    .line 11
    invoke-virtual {p0, v1}, Lcom/mobisage/android/MobiSageLPGWebView;->setVerticalScrollBarEnabled(Z)V

    .line 12
    invoke-virtual {p0, v1}, Lcom/mobisage/android/MobiSageLPGWebView;->setHorizontalScrollBarEnabled(Z)V

    .line 13
    invoke-virtual {p0}, Lcom/mobisage/android/MobiSageLPGWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    sget-object v1, Landroid/webkit/WebSettings$RenderPriority;->LOW:Landroid/webkit/WebSettings$RenderPriority;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setRenderPriority(Landroid/webkit/WebSettings$RenderPriority;)V

    .line 16
    new-instance v0, Lcom/mobisage/android/MobiSageJavascriptAgent;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p2}, Lcom/mobisage/android/MobiSageJavascriptAgent;-><init>(Landroid/content/Context;Lcom/mobisage/android/MobiSageAdView;Lcom/mobisage/android/IMobiSageAdViewListener;)V

    iput-object v0, p0, Lcom/mobisage/android/MobiSageLPGWebView;->jsAgent:Lcom/mobisage/android/MobiSageJavascriptAgent;

    .line 18
    iget-object v0, p0, Lcom/mobisage/android/MobiSageLPGWebView;->jsAgent:Lcom/mobisage/android/MobiSageJavascriptAgent;

    const-string v1, "ad"

    invoke-virtual {p0, v0, v1}, Lcom/mobisage/android/MobiSageLPGWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 56
    :try_start_0
    iget-object v0, p0, Lcom/mobisage/android/MobiSageLPGWebView;->jsAgent:Lcom/mobisage/android/MobiSageJavascriptAgent;

    invoke-virtual {v0}, Lcom/mobisage/android/MobiSageJavascriptAgent;->destoryJavascriptAgent()V

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mobisage/android/MobiSageLPGWebView;->jsAgent:Lcom/mobisage/android/MobiSageJavascriptAgent;

    .line 58
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mobisage/android/MobiSageLPGWebView;->clearCache(Z)V

    .line 59
    invoke-virtual {p0}, Lcom/mobisage/android/MobiSageLPGWebView;->freeMemory()V

    .line 60
    invoke-virtual {p0}, Lcom/mobisage/android/MobiSageLPGWebView;->destroyDrawingCache()V

    .line 61
    invoke-super {p0}, Lcom/mobisage/android/MobiSageAdPageWebView;->destroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :goto_0
    return-void

    .line 62
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
    .line 50
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 51
    return-void
.end method

.method public getCustomData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/mobisage/android/MobiSageLPGWebView;->jsAgent:Lcom/mobisage/android/MobiSageJavascriptAgent;

    iget-object v0, v0, Lcom/mobisage/android/MobiSageJavascriptAgent;->customData:Ljava/lang/String;

    return-object v0
.end method

.method public setAdGroupID(Ljava/lang/String;)V
    .locals 1
    .param p1, "adGroupID"    # Ljava/lang/String;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/mobisage/android/MobiSageLPGWebView;->jsAgent:Lcom/mobisage/android/MobiSageJavascriptAgent;

    iput-object p1, v0, Lcom/mobisage/android/MobiSageJavascriptAgent;->adGroupID:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public setAdID(Ljava/lang/String;)V
    .locals 1
    .param p1, "adID"    # Ljava/lang/String;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/mobisage/android/MobiSageLPGWebView;->jsAgent:Lcom/mobisage/android/MobiSageJavascriptAgent;

    iput-object p1, v0, Lcom/mobisage/android/MobiSageJavascriptAgent;->adID:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public setCustomData(Ljava/lang/String;)V
    .locals 1
    .param p1, "customData"    # Ljava/lang/String;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/mobisage/android/MobiSageLPGWebView;->jsAgent:Lcom/mobisage/android/MobiSageJavascriptAgent;

    iput-object p1, v0, Lcom/mobisage/android/MobiSageJavascriptAgent;->customData:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public setPublisherID(Ljava/lang/String;)V
    .locals 1
    .param p1, "publisherID"    # Ljava/lang/String;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/mobisage/android/MobiSageLPGWebView;->jsAgent:Lcom/mobisage/android/MobiSageJavascriptAgent;

    iput-object p1, v0, Lcom/mobisage/android/MobiSageJavascriptAgent;->publisherID:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 1
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/mobisage/android/MobiSageLPGWebView;->jsAgent:Lcom/mobisage/android/MobiSageJavascriptAgent;

    iput-object p1, v0, Lcom/mobisage/android/MobiSageJavascriptAgent;->token:Ljava/lang/String;

    .line 33
    return-void
.end method
