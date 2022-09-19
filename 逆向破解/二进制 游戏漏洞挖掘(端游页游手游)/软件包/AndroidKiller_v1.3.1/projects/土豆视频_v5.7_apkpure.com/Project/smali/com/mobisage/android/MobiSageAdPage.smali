.class Lcom/mobisage/android/MobiSageAdPage;
.super Lcom/mobisage/android/MobiSageLPGWebView;
.source "MobiSageAdPage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mobisage/android/MobiSageAdPage$1;,
        Lcom/mobisage/android/MobiSageAdPage$MobiSageLPGClient;
    }
.end annotation


# instance fields
.field activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 28
    invoke-direct {p0, p1, v6}, Lcom/mobisage/android/MobiSageLPGWebView;-><init>(Landroid/content/Context;Lcom/mobisage/android/IMobiSageAdViewListener;)V

    .line 30
    invoke-virtual {p0}, Lcom/mobisage/android/MobiSageAdPage;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 31
    invoke-virtual {p0}, Lcom/mobisage/android/MobiSageAdPage;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 32
    invoke-virtual {p0, v5}, Lcom/mobisage/android/MobiSageAdPage;->setHorizontalScrollBarEnabled(Z)V

    .line 33
    invoke-virtual {p0, v5}, Lcom/mobisage/android/MobiSageAdPage;->setVerticalScrollBarEnabled(Z)V

    .line 34
    invoke-virtual {p0}, Lcom/mobisage/android/MobiSageAdPage;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    sget-object v4, Landroid/webkit/WebSettings$RenderPriority;->NORMAL:Landroid/webkit/WebSettings$RenderPriority;

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setRenderPriority(Landroid/webkit/WebSettings$RenderPriority;)V

    .line 35
    invoke-virtual {p0}, Lcom/mobisage/android/MobiSageAdPage;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    .line 36
    invoke-virtual {p0}, Lcom/mobisage/android/MobiSageAdPage;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 37
    invoke-virtual {p0}, Lcom/mobisage/android/MobiSageAdPage;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 38
    invoke-virtual {p0}, Lcom/mobisage/android/MobiSageAdPage;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    .line 39
    invoke-virtual {p0}, Lcom/mobisage/android/MobiSageAdPage;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 40
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    .line 41
    invoke-virtual {p0}, Lcom/mobisage/android/MobiSageAdPage;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    .line 42
    invoke-virtual {p0}, Lcom/mobisage/android/MobiSageAdPage;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 43
    invoke-virtual {p0}, Lcom/mobisage/android/MobiSageAdPage;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 44
    invoke-virtual {p0}, Lcom/mobisage/android/MobiSageAdPage;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 45
    invoke-virtual {p0}, Lcom/mobisage/android/MobiSageAdPage;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 46
    const-string v3, "pid"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mobisage/android/MobiSageAdPage;->setPublisherID(Ljava/lang/String;)V

    .line 48
    const-string v3, "adid"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 49
    .local v0, "aid":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/mobisage/android/MobiSageAdPage;->setAdID(Ljava/lang/String;)V

    .line 50
    const-string v3, "adgroupid"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 51
    .local v1, "gid":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/mobisage/android/MobiSageAdPage;->setAdGroupID(Ljava/lang/String;)V

    .line 52
    const-string/jumbo v3, "token"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 53
    .local v2, "token":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/mobisage/android/MobiSageAdPage;->setToken(Ljava/lang/String;)V

    .line 55
    const-string v3, "customdata"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 56
    const-string v3, "customdata"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mobisage/android/MobiSageAdPage;->setCustomData(Ljava/lang/String;)V

    .line 57
    :cond_0
    new-instance v3, Lcom/mobisage/android/MobiSageAdPage$MobiSageLPGClient;

    invoke-direct {v3, p0, v6}, Lcom/mobisage/android/MobiSageAdPage$MobiSageLPGClient;-><init>(Lcom/mobisage/android/MobiSageAdPage;Lcom/mobisage/android/MobiSageAdPage$1;)V

    invoke-virtual {p0, v3}, Lcom/mobisage/android/MobiSageAdPage;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 58
    iput-object p1, p0, Lcom/mobisage/android/MobiSageAdPage;->activity:Landroid/app/Activity;

    .line 62
    const-string v3, "lpg"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mobisage/android/MobiSageAdPage;->loadUrl(Ljava/lang/String;)V

    .line 63
    return-void
.end method
