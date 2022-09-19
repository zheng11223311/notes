.class public Lcom/youdo/html5/VideoEnabledWebChromeClient;
.super Landroid/webkit/WebChromeClient;

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youdo/html5/VideoEnabledWebChromeClient$ToggledFullscreenCallback;
    }
.end annotation


# instance fields
.field private activityNonVideoView:Landroid/view/View;

.field private activityVideoView:Landroid/view/ViewGroup;

.field private isVideoFullscreen:Z

.field private loadingView:Landroid/view/View;

.field private toggledFullscreenCallback:Lcom/youdo/html5/VideoEnabledWebChromeClient$ToggledFullscreenCallback;

.field private videoViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

.field private videoViewContainer:Landroid/widget/FrameLayout;

.field private webView:Lcom/youdo/html5/VideoEnabledWebView;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    iput-object v0, p0, Lcom/youdo/html5/VideoEnabledWebChromeClient;->activityNonVideoView:Landroid/view/View;

    iput-object v0, p0, Lcom/youdo/html5/VideoEnabledWebChromeClient;->activityVideoView:Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/youdo/html5/VideoEnabledWebChromeClient;->videoViewContainer:Landroid/widget/FrameLayout;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Landroid/view/ViewGroup;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    iput-object v0, p0, Lcom/youdo/html5/VideoEnabledWebChromeClient;->activityNonVideoView:Landroid/view/View;

    iput-object v0, p0, Lcom/youdo/html5/VideoEnabledWebChromeClient;->activityVideoView:Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/youdo/html5/VideoEnabledWebChromeClient;->videoViewContainer:Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/youdo/html5/VideoEnabledWebChromeClient;->activityNonVideoView:Landroid/view/View;

    iput-object p2, p0, Lcom/youdo/html5/VideoEnabledWebChromeClient;->activityVideoView:Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/youdo/html5/VideoEnabledWebChromeClient;->loadingView:Landroid/view/View;

    iput-object v0, p0, Lcom/youdo/html5/VideoEnabledWebChromeClient;->webView:Lcom/youdo/html5/VideoEnabledWebView;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youdo/html5/VideoEnabledWebChromeClient;->isVideoFullscreen:Z

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    iput-object v0, p0, Lcom/youdo/html5/VideoEnabledWebChromeClient;->activityNonVideoView:Landroid/view/View;

    iput-object v0, p0, Lcom/youdo/html5/VideoEnabledWebChromeClient;->activityVideoView:Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/youdo/html5/VideoEnabledWebChromeClient;->videoViewContainer:Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/youdo/html5/VideoEnabledWebChromeClient;->activityNonVideoView:Landroid/view/View;

    iput-object p2, p0, Lcom/youdo/html5/VideoEnabledWebChromeClient;->activityVideoView:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/youdo/html5/VideoEnabledWebChromeClient;->loadingView:Landroid/view/View;

    iput-object v0, p0, Lcom/youdo/html5/VideoEnabledWebChromeClient;->webView:Lcom/youdo/html5/VideoEnabledWebView;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youdo/html5/VideoEnabledWebChromeClient;->isVideoFullscreen:Z

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/View;Lcom/youdo/html5/VideoEnabledWebView;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    iput-object v0, p0, Lcom/youdo/html5/VideoEnabledWebChromeClient;->activityNonVideoView:Landroid/view/View;

    iput-object v0, p0, Lcom/youdo/html5/VideoEnabledWebChromeClient;->activityVideoView:Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/youdo/html5/VideoEnabledWebChromeClient;->videoViewContainer:Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/youdo/html5/VideoEnabledWebChromeClient;->activityNonVideoView:Landroid/view/View;

    iput-object p2, p0, Lcom/youdo/html5/VideoEnabledWebChromeClient;->activityVideoView:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/youdo/html5/VideoEnabledWebChromeClient;->loadingView:Landroid/view/View;

    iput-object p4, p0, Lcom/youdo/html5/VideoEnabledWebChromeClient;->webView:Lcom/youdo/html5/VideoEnabledWebView;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youdo/html5/VideoEnabledWebChromeClient;->isVideoFullscreen:Z

    return-void
.end method

.method public constructor <init>(Lcom/youdo/html5/VideoEnabledWebView;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    iput-object v0, p0, Lcom/youdo/html5/VideoEnabledWebChromeClient;->activityNonVideoView:Landroid/view/View;

    iput-object v0, p0, Lcom/youdo/html5/VideoEnabledWebChromeClient;->activityVideoView:Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/youdo/html5/VideoEnabledWebChromeClient;->videoViewContainer:Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/youdo/html5/VideoEnabledWebChromeClient;->webView:Lcom/youdo/html5/VideoEnabledWebView;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youdo/html5/VideoEnabledWebChromeClient;->isVideoFullscreen:Z

    return-void
.end method


# virtual methods
.method public getVideoLoadingProgressView()Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/youdo/html5/VideoEnabledWebChromeClient;->loadingView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youdo/html5/VideoEnabledWebChromeClient;->loadingView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/youdo/html5/VideoEnabledWebChromeClient;->loadingView:Landroid/view/View;

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Landroid/webkit/WebChromeClient;->getVideoLoadingProgressView()Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public isVideoFullscreen()Z
    .locals 1

    iget-boolean v0, p0, Lcom/youdo/html5/VideoEnabledWebChromeClient;->isVideoFullscreen:Z

    return v0
.end method

.method public onBackPressed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/youdo/html5/VideoEnabledWebChromeClient;->isVideoFullscreen:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/youdo/html5/VideoEnabledWebChromeClient;->onHideCustomView()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 0

    invoke-virtual {p0}, Lcom/youdo/html5/VideoEnabledWebChromeClient;->onHideCustomView()V

    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onHideCustomView()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/youdo/html5/VideoEnabledWebChromeClient;->isVideoFullscreen:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/youdo/html5/VideoEnabledWebChromeClient;->videoViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youdo/html5/VideoEnabledWebChromeClient;->videoViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".chromium."

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/youdo/html5/VideoEnabledWebChromeClient;->videoViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    invoke-interface {v0}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    :cond_0
    iput-boolean v2, p0, Lcom/youdo/html5/VideoEnabledWebChromeClient;->isVideoFullscreen:Z

    iput-object v3, p0, Lcom/youdo/html5/VideoEnabledWebChromeClient;->videoViewContainer:Landroid/widget/FrameLayout;

    iput-object v3, p0, Lcom/youdo/html5/VideoEnabledWebChromeClient;->videoViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    iget-object v0, p0, Lcom/youdo/html5/VideoEnabledWebChromeClient;->toggledFullscreenCallback:Lcom/youdo/html5/VideoEnabledWebChromeClient$ToggledFullscreenCallback;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/youdo/html5/VideoEnabledWebChromeClient;->toggledFullscreenCallback:Lcom/youdo/html5/VideoEnabledWebChromeClient$ToggledFullscreenCallback;

    invoke-interface {v0, v2}, Lcom/youdo/html5/VideoEnabledWebChromeClient$ToggledFullscreenCallback;->toggledFullscreen(Z)V

    :cond_1
    return-void
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2

    iget-object v0, p0, Lcom/youdo/html5/VideoEnabledWebChromeClient;->loadingView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youdo/html5/VideoEnabledWebChromeClient;->loadingView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onShowCustomView(Landroid/view/View;ILandroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 0

    invoke-virtual {p0, p1, p3}, Lcom/youdo/html5/VideoEnabledWebChromeClient;->onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V

    return-void
.end method

.method public onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 3

    const/4 v2, 0x1

    instance-of v0, p1, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    check-cast p1, Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    iput-boolean v2, p0, Lcom/youdo/html5/VideoEnabledWebChromeClient;->isVideoFullscreen:Z

    iput-object p1, p0, Lcom/youdo/html5/VideoEnabledWebChromeClient;->videoViewContainer:Landroid/widget/FrameLayout;

    iput-object p2, p0, Lcom/youdo/html5/VideoEnabledWebChromeClient;->videoViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    instance-of v1, v0, Landroid/widget/VideoView;

    if-eqz v1, :cond_2

    check-cast v0, Landroid/widget/VideoView;

    invoke-virtual {v0, p0}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    invoke-virtual {v0, p0}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    invoke-virtual {v0, p0}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/youdo/html5/VideoEnabledWebChromeClient;->toggledFullscreenCallback:Lcom/youdo/html5/VideoEnabledWebChromeClient$ToggledFullscreenCallback;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/youdo/html5/VideoEnabledWebChromeClient;->toggledFullscreenCallback:Lcom/youdo/html5/VideoEnabledWebChromeClient$ToggledFullscreenCallback;

    invoke-interface {v0, v2}, Lcom/youdo/html5/VideoEnabledWebChromeClient$ToggledFullscreenCallback;->toggledFullscreen(Z)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/youdo/html5/VideoEnabledWebChromeClient;->webView:Lcom/youdo/html5/VideoEnabledWebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youdo/html5/VideoEnabledWebChromeClient;->webView:Lcom/youdo/html5/VideoEnabledWebView;

    invoke-virtual {v0}, Lcom/youdo/html5/VideoEnabledWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getJavaScriptEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "javascript:"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "var _ytrp_html5_video_last;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "var _ytrp_html5_video = document.getElementsByTagName(\'video\')[0];"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "if (_ytrp_html5_video != undefined && _ytrp_html5_video != _ytrp_html5_video_last) {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_ytrp_html5_video_last = _ytrp_html5_video;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "function _ytrp_html5_video_ended() {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_VideoEnabledWebView.notifyVideoEnd();"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "function _ytrp_html5_video_low_profile() {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_VideoEnabledWebView.notifyVideoLowProfile();"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_ytrp_html5_video.addEventListener(\'ended\', _ytrp_html5_video_ended);"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_ytrp_html5_video.addEventListener(\'play\', _ytrp_html5_video_low_profile);"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_ytrp_html5_video.addEventListener(\'durationchange\', _ytrp_html5_video_low_profile);"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/youdo/html5/VideoEnabledWebChromeClient;->webView:Lcom/youdo/html5/VideoEnabledWebView;

    invoke-virtual {v1, v0}, Lcom/youdo/html5/VideoEnabledWebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public setOnToggledFullscreen(Lcom/youdo/html5/VideoEnabledWebChromeClient$ToggledFullscreenCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/youdo/html5/VideoEnabledWebChromeClient;->toggledFullscreenCallback:Lcom/youdo/html5/VideoEnabledWebChromeClient$ToggledFullscreenCallback;

    return-void
.end method
