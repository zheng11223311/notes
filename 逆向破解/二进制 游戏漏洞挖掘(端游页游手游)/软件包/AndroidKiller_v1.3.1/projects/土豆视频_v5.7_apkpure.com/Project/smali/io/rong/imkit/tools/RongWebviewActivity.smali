.class public Lio/rong/imkit/tools/RongWebviewActivity;
.super Landroid/app/Activity;
.source "RongWebviewActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/rong/imkit/tools/RongWebviewActivity$1;,
        Lio/rong/imkit/tools/RongWebviewActivity$RongWebviewClient;
    }
.end annotation


# instance fields
.field mPrevUrl:Ljava/lang/String;

.field mWebView:Lio/rong/common/RongWebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 39
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    .line 22
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    sget v2, Lio/rong/imkit/R$layout;->rc_ac_webview:I

    invoke-virtual {p0, v2}, Lio/rong/imkit/tools/RongWebviewActivity;->setContentView(I)V

    .line 24
    invoke-virtual {p0}, Lio/rong/imkit/tools/RongWebviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 25
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "url"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 26
    .local v1, "url":Ljava/lang/String;
    sget v2, Lio/rong/imkit/R$id;->rc_webview:I

    invoke-virtual {p0, v2}, Lio/rong/imkit/tools/RongWebviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lio/rong/common/RongWebView;

    iput-object v2, p0, Lio/rong/imkit/tools/RongWebviewActivity;->mWebView:Lio/rong/common/RongWebView;

    .line 27
    iget-object v2, p0, Lio/rong/imkit/tools/RongWebviewActivity;->mWebView:Lio/rong/common/RongWebView;

    invoke-virtual {v2, v4}, Lio/rong/common/RongWebView;->setVerticalScrollbarOverlay(Z)V

    .line 28
    iget-object v2, p0, Lio/rong/imkit/tools/RongWebviewActivity;->mWebView:Lio/rong/common/RongWebView;

    invoke-virtual {v2}, Lio/rong/common/RongWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 29
    iget-object v2, p0, Lio/rong/imkit/tools/RongWebviewActivity;->mWebView:Lio/rong/common/RongWebView;

    invoke-virtual {v2}, Lio/rong/common/RongWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 30
    iget-object v2, p0, Lio/rong/imkit/tools/RongWebviewActivity;->mWebView:Lio/rong/common/RongWebView;

    invoke-virtual {v2}, Lio/rong/common/RongWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 31
    iget-object v2, p0, Lio/rong/imkit/tools/RongWebviewActivity;->mWebView:Lio/rong/common/RongWebView;

    invoke-virtual {v2}, Lio/rong/common/RongWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 32
    iget-object v2, p0, Lio/rong/imkit/tools/RongWebviewActivity;->mWebView:Lio/rong/common/RongWebView;

    invoke-virtual {v2}, Lio/rong/common/RongWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 33
    iget-object v2, p0, Lio/rong/imkit/tools/RongWebviewActivity;->mWebView:Lio/rong/common/RongWebView;

    invoke-virtual {v2}, Lio/rong/common/RongWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 34
    iget-object v2, p0, Lio/rong/imkit/tools/RongWebviewActivity;->mWebView:Lio/rong/common/RongWebView;

    new-instance v3, Lio/rong/imkit/tools/RongWebviewActivity$RongWebviewClient;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lio/rong/imkit/tools/RongWebviewActivity$RongWebviewClient;-><init>(Lio/rong/imkit/tools/RongWebviewActivity;Lio/rong/imkit/tools/RongWebviewActivity$1;)V

    invoke-virtual {v2, v3}, Lio/rong/common/RongWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 35
    iput-object v1, p0, Lio/rong/imkit/tools/RongWebviewActivity;->mPrevUrl:Ljava/lang/String;

    .line 36
    iget-object v2, p0, Lio/rong/imkit/tools/RongWebviewActivity;->mWebView:Lio/rong/common/RongWebView;

    invoke-virtual {v2, v1}, Lio/rong/common/RongWebView;->loadUrl(Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 61
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lio/rong/imkit/tools/RongWebviewActivity;->mWebView:Lio/rong/common/RongWebView;

    invoke-virtual {v0}, Lio/rong/common/RongWebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lio/rong/imkit/tools/RongWebviewActivity;->mWebView:Lio/rong/common/RongWebView;

    invoke-virtual {v0}, Lio/rong/common/RongWebView;->goBack()V

    .line 63
    const/4 v0, 0x1

    .line 65
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method
