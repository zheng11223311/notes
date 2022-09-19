.class Lcom/mobisage/android/MobiSageAdWebChromeClient;
.super Landroid/webkit/WebChromeClient;
.source "MobiSageAdWebChromeClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mobisage/android/MobiSageAdWebChromeClient$VideoLoadingView;,
        Lcom/mobisage/android/MobiSageAdWebChromeClient$FullScreenHolder;
    }
.end annotation


# static fields
.field protected static final COVER_SCREEN_PARAMS:Landroid/widget/FrameLayout$LayoutParams;


# instance fields
.field private final activity:Landroid/app/Activity;

.field private mCustomView:Landroid/view/View;

.field private mCustomViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

.field private mFullscreenContainer:Landroid/widget/FrameLayout;

.field private mVideoProgressView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 33
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    sput-object v0, Lcom/mobisage/android/MobiSageAdWebChromeClient;->COVER_SCREEN_PARAMS:Landroid/widget/FrameLayout$LayoutParams;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/mobisage/android/MobiSageAdWebChromeClient;->activity:Landroid/app/Activity;

    .line 39
    return-void
.end method

.method private hideCustomView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 100
    iget-object v1, p0, Lcom/mobisage/android/MobiSageAdWebChromeClient;->mCustomView:Landroid/view/View;

    if-nez v1, :cond_0

    .line 108
    :goto_0
    return-void

    .line 102
    :cond_0
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/mobisage/android/MobiSageAdWebChromeClient;->setStatusBarVisibility(Z)V

    .line 103
    iget-object v1, p0, Lcom/mobisage/android/MobiSageAdWebChromeClient;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 104
    .local v0, "decor":Landroid/widget/FrameLayout;
    iget-object v1, p0, Lcom/mobisage/android/MobiSageAdWebChromeClient;->mFullscreenContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 105
    iput-object v2, p0, Lcom/mobisage/android/MobiSageAdWebChromeClient;->mFullscreenContainer:Landroid/widget/FrameLayout;

    .line 106
    iput-object v2, p0, Lcom/mobisage/android/MobiSageAdWebChromeClient;->mCustomView:Landroid/view/View;

    .line 107
    iget-object v1, p0, Lcom/mobisage/android/MobiSageAdWebChromeClient;->mCustomViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    invoke-interface {v1}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    goto :goto_0
.end method

.method private setStatusBarVisibility(Z)V
    .locals 3
    .param p1, "visible"    # Z

    .prologue
    const/16 v1, 0x400

    .line 111
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 112
    .local v0, "flag":I
    :goto_0
    iget-object v2, p0, Lcom/mobisage/android/MobiSageAdWebChromeClient;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/view/Window;->setFlags(II)V

    .line 114
    return-void

    .end local v0    # "flag":I
    :cond_0
    move v0, v1

    .line 111
    goto :goto_0
.end method

.method private showCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "callback"    # Landroid/webkit/WebChromeClient$CustomViewCallback;

    .prologue
    .line 81
    iget-object v1, p0, Lcom/mobisage/android/MobiSageAdWebChromeClient;->mCustomView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 82
    invoke-interface {p2}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    .line 93
    :goto_0
    return-void

    .line 85
    :cond_0
    iget-object v1, p0, Lcom/mobisage/android/MobiSageAdWebChromeClient;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 86
    iget-object v1, p0, Lcom/mobisage/android/MobiSageAdWebChromeClient;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 87
    .local v0, "decor":Landroid/widget/FrameLayout;
    new-instance v1, Lcom/mobisage/android/MobiSageAdWebChromeClient$FullScreenHolder;

    iget-object v2, p0, Lcom/mobisage/android/MobiSageAdWebChromeClient;->activity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/mobisage/android/MobiSageAdWebChromeClient$FullScreenHolder;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/mobisage/android/MobiSageAdWebChromeClient;->mFullscreenContainer:Landroid/widget/FrameLayout;

    .line 88
    iget-object v1, p0, Lcom/mobisage/android/MobiSageAdWebChromeClient;->mFullscreenContainer:Landroid/widget/FrameLayout;

    sget-object v2, Lcom/mobisage/android/MobiSageAdWebChromeClient;->COVER_SCREEN_PARAMS:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v1, p1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 89
    iget-object v1, p0, Lcom/mobisage/android/MobiSageAdWebChromeClient;->mFullscreenContainer:Landroid/widget/FrameLayout;

    sget-object v2, Lcom/mobisage/android/MobiSageAdWebChromeClient;->COVER_SCREEN_PARAMS:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 90
    iput-object p1, p0, Lcom/mobisage/android/MobiSageAdWebChromeClient;->mCustomView:Landroid/view/View;

    .line 91
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/mobisage/android/MobiSageAdWebChromeClient;->setStatusBarVisibility(Z)V

    .line 92
    iput-object p2, p0, Lcom/mobisage/android/MobiSageAdWebChromeClient;->mCustomViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    goto :goto_0
.end method


# virtual methods
.method public getVideoLoadingProgressView()Landroid/view/View;
    .locals 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/mobisage/android/MobiSageAdWebChromeClient;->mVideoProgressView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Lcom/mobisage/android/MobiSageAdWebChromeClient$VideoLoadingView;

    iget-object v1, p0, Lcom/mobisage/android/MobiSageAdWebChromeClient;->activity:Landroid/app/Activity;

    invoke-direct {v0, p0, v1}, Lcom/mobisage/android/MobiSageAdWebChromeClient$VideoLoadingView;-><init>(Lcom/mobisage/android/MobiSageAdWebChromeClient;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mobisage/android/MobiSageAdWebChromeClient;->mVideoProgressView:Landroid/view/View;

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/mobisage/android/MobiSageAdWebChromeClient;->mVideoProgressView:Landroid/view/View;

    return-object v0
.end method

.method public isCustomViewShowing()Z
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/mobisage/android/MobiSageAdWebChromeClient;->mCustomView:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V
    .locals 2
    .param p1, "origin"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/webkit/GeolocationPermissions$Callback;

    .prologue
    .line 74
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V

    .line 75
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-interface {p2, p1, v0, v1}, Landroid/webkit/GeolocationPermissions$Callback;->invoke(Ljava/lang/String;ZZ)V

    .line 76
    return-void
.end method

.method public onHideCustomView()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/mobisage/android/MobiSageAdWebChromeClient;->hideCustomView()V

    .line 64
    return-void
.end method

.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "result"    # Landroid/webkit/JsResult;

    .prologue
    .line 52
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result v0

    return v0
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "newProgress"    # I

    .prologue
    .line 68
    iget-object v0, p0, Lcom/mobisage/android/MobiSageAdWebChromeClient;->activity:Landroid/app/Activity;

    mul-int/lit8 v1, p2, 0x64

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setProgress(I)V

    .line 69
    return-void
.end method

.method public onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "callback"    # Landroid/webkit/WebChromeClient$CustomViewCallback;

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lcom/mobisage/android/MobiSageAdWebChromeClient;->showCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V

    .line 59
    return-void
.end method
