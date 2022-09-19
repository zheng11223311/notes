.class public Lcom/youdo/renderers/video/VideoAdRenderer;
.super Lcom/youdo/renderers/AdRenderer;


# static fields
.field private static final CLASSTAG:Ljava/lang/String; = "VideoAdRenderer"

.field private static HLSSupportVersion:I = 0x0

.field private static final PARAM_CLICK_DETECTION:Ljava/lang/String; = "renderer.video.clickDetection"

.field private static final PARAM_DESIRED_BITRATE:Ljava/lang/String; = "desiredBitrate"

.field private static final QUARTILE_CHECK_INTERVAL:J = 0x1f4L

.field private static STATE_DISPOSED:I

.field private static STATE_STARTED:I

.field private static STATE_STOPPED:I


# instance fields
.field private HLSDropped:Z

.field private assetUrl:Ljava/lang/String;

.field private clickHandledByPlayer:Z

.field private defaultImpressionSent:Z

.field private estimatedDuration:D

.field private impressionCountBeforeStart:I

.field private internalState:Ljava/util/concurrent/atomic/AtomicInteger;

.field private isPaused:Z

.field private quartilesSent:I

.field private renditionHeight:I

.field private renditionWidth:I

.field private final supportPreload:Z

.field private timeoutCountBeforeStart:I

.field private timeoutMillisecondsBeforeStart:D

.field private timer:Ljava/util/Timer;

.field private videoAdView:Lcom/youdo/renderers/video/VideoAdView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/youdo/renderers/video/VideoAdRenderer;->STATE_STARTED:I

    const/4 v0, 0x1

    sput v0, Lcom/youdo/renderers/video/VideoAdRenderer;->STATE_STOPPED:I

    const/4 v0, 0x2

    sput v0, Lcom/youdo/renderers/video/VideoAdRenderer;->STATE_DISPOSED:I

    const/16 v0, 0xb

    sput v0, Lcom/youdo/renderers/video/VideoAdRenderer;->HLSSupportVersion:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/widget/RelativeLayout;Lcom/youdo/ad/interfaces/IAdDataVO;Lcom/youdo/ad/interfaces/IAdApplicationContext;)V
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/youdo/renderers/AdRenderer;-><init>(Landroid/app/Activity;Landroid/widget/RelativeLayout;Lcom/youdo/ad/interfaces/IAdDataVO;Lcom/youdo/ad/interfaces/IAdApplicationContext;)V

    iput-boolean v0, p0, Lcom/youdo/renderers/video/VideoAdRenderer;->defaultImpressionSent:Z

    iput v0, p0, Lcom/youdo/renderers/video/VideoAdRenderer;->quartilesSent:I

    iput-boolean v0, p0, Lcom/youdo/renderers/video/VideoAdRenderer;->isPaused:Z

    iput v0, p0, Lcom/youdo/renderers/video/VideoAdRenderer;->impressionCountBeforeStart:I

    const-wide v2, 0x40c3880000000000L    # 10000.0

    iput-wide v2, p0, Lcom/youdo/renderers/video/VideoAdRenderer;->timeoutMillisecondsBeforeStart:D

    iput v0, p0, Lcom/youdo/renderers/video/VideoAdRenderer;->timeoutCountBeforeStart:I

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    iput-wide v2, p0, Lcom/youdo/renderers/video/VideoAdRenderer;->estimatedDuration:D

    iput-boolean v0, p0, Lcom/youdo/renderers/video/VideoAdRenderer;->clickHandledByPlayer:Z

    iput-boolean v0, p0, Lcom/youdo/renderers/video/VideoAdRenderer;->HLSDropped:Z

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xd

    if-le v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/youdo/renderers/video/VideoAdRenderer;->supportPreload:Z

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    sget v1, Lcom/youdo/renderers/video/VideoAdRenderer;->STATE_STARTED:I

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/youdo/renderers/video/VideoAdRenderer;->internalState:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method static synthetic access$000(Lcom/youdo/renderers/video/VideoAdRenderer;)Lcom/youdo/renderers/video/VideoAdView;
    .locals 1

    iget-object v0, p0, Lcom/youdo/renderers/video/VideoAdRenderer;->videoAdView:Lcom/youdo/renderers/video/VideoAdView;

    return-object v0
.end method

.method private preload()V
    .locals 0

    return-void
.end method

.method private startQuartileImpressionAndTimeoutTimer()V
    .locals 0

    return-void
.end method

.method private stopQuartileTimer()V
    .locals 2

    const-string v0, "VideoRenderer"

    const-string/jumbo v1, "stopQuartileTimer"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/youdo/renderers/video/VideoAdRenderer;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youdo/renderers/video/VideoAdRenderer;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iget-object v0, p0, Lcom/youdo/renderers/video/VideoAdRenderer;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/youdo/renderers/video/VideoAdRenderer;->timer:Ljava/util/Timer;

    :cond_0
    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    const/16 v0, 0x64

    return v0
.end method

.method public getWidth()I
    .locals 1

    const/16 v0, 0x64

    return v0
.end method

.method public load()V
    .locals 5

    const-string v0, "VideoAdRenderer"

    const-string v1, "init"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/youdo/renderers/AdRenderer;->load()V

    iget-wide v0, p0, Lcom/youdo/renderers/video/VideoAdRenderer;->timeoutMillisecondsBeforeStart:D

    const-wide v2, 0x407f400000000000L    # 500.0

    div-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/youdo/renderers/video/VideoAdRenderer;->timeoutCountBeforeStart:I

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    iput-wide v0, p0, Lcom/youdo/renderers/video/VideoAdRenderer;->estimatedDuration:D

    const/16 v0, 0x190

    iput v0, p0, Lcom/youdo/renderers/video/VideoAdRenderer;->renditionWidth:I

    const/16 v0, 0x12c

    iput v0, p0, Lcom/youdo/renderers/video/VideoAdRenderer;->renditionHeight:I

    const-string v0, ""

    iput-object v0, p0, Lcom/youdo/renderers/video/VideoAdRenderer;->assetUrl:Ljava/lang/String;

    iget-object v0, p0, Lcom/youdo/renderers/video/VideoAdRenderer;->assetUrl:Ljava/lang/String;

    :try_start_0
    const-string v1, "VideoAdRenderer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "assetUrl passed in: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/youdo/renderers/video/VideoAdRenderer;->assetUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/net/URI;

    iget-object v2, p0, Lcom/youdo/renderers/video/VideoAdRenderer;->assetUrl:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URI;->isAbsolute()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "INFO_KEY_ERROR_CODE"

    const-string v3, "ERROR_NULL_ASSET"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "INFO_KEY_ERROR_INFO"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "original assetUrl: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "INFO_KEY_EXTRA_INFO"

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/openad/events/XYDEvent;

    const-string v3, "EVENT_ERROR"

    invoke-direct {v1, v3, v2}, Lorg/openad/events/XYDEvent;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {p0, v1}, Lcom/youdo/renderers/video/VideoAdRenderer;->dispatchEvent(Lorg/openad/events/IXYDEvent;)V

    :goto_0
    return-void

    :cond_0
    const-string v2, "VideoAdRenderer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "converted to URI: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/youdo/renderers/video/VideoAdRenderer;->supportPreload:Z

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/youdo/renderers/video/VideoAdRenderer;->preload()V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v1, "VideoAdRenderer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "assetUrl fixed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/youdo/renderers/video/VideoAdRenderer;->assetUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/youdo/renderers/video/VideoAdRenderer;->assetUrl:Ljava/lang/String;

    if-nez v1, :cond_2

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "INFO_KEY_ERROR_CODE"

    const-string v3, "ERROR_NULL_ASSET"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "INFO_KEY_ERROR_INFO"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "original assetUrl: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", fixed assetUrl: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/youdo/renderers/video/VideoAdRenderer;->assetUrl:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v2, "INFO_KEY_EXTRA_INFO"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/openad/events/XYDEvent;

    const-string v2, "EVENT_ERROR"

    invoke-direct {v1, v2, v0}, Lorg/openad/events/XYDEvent;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {p0, v1}, Lcom/youdo/renderers/video/VideoAdRenderer;->dispatchEvent(Lorg/openad/events/IXYDEvent;)V

    goto/16 :goto_0

    :cond_1
    :try_start_1
    new-instance v1, Lorg/openad/events/XYDEvent;

    const-string v2, "EVENT_AD_LOADED"

    invoke-direct {v1, v2}, Lorg/openad/events/XYDEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/youdo/renderers/video/VideoAdRenderer;->dispatchEvent(Lorg/openad/events/IXYDEvent;)V
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/youdo/renderers/video/VideoAdRenderer;->supportPreload:Z

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/youdo/renderers/video/VideoAdRenderer;->preload()V

    goto/16 :goto_0

    :cond_3
    new-instance v0, Lorg/openad/events/XYDEvent;

    const-string v1, "EVENT_AD_LOADED"

    invoke-direct {v0, v1}, Lorg/openad/events/XYDEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/youdo/renderers/video/VideoAdRenderer;->dispatchEvent(Lorg/openad/events/IXYDEvent;)V

    goto/16 :goto_0
.end method

.method public onAdMuted()V
    .locals 0

    return-void
.end method

.method public onAdPaused()V
    .locals 2

    const-string v0, "VideoAdRenderer"

    const-string v1, "onAdPaused"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onAdResumed()V
    .locals 0

    return-void
.end method

.method public onAdRewind()V
    .locals 0

    return-void
.end method

.method public onAdUnMuted()V
    .locals 0

    return-void
.end method

.method public onAdVideoViewComplete()V
    .locals 0

    return-void
.end method

.method public onAdVideoViewError(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onAdViewClicked()V
    .locals 0

    return-void
.end method

.method public onAdViewLoaded()V
    .locals 0

    return-void
.end method

.method public onAdViewMediaPrepared()V
    .locals 2

    const-string v0, "VideoAdRenderer"

    const-string v1, "onAdViewMediaPrepared"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/youdo/renderers/video/VideoAdRenderer;->videoAdView:Lcom/youdo/renderers/video/VideoAdView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/youdo/renderers/video/VideoAdRenderer;->defaultImpressionSent:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/youdo/renderers/video/VideoAdRenderer;->isPaused:Z

    if-eqz v0, :cond_1

    const-string v0, "VideoAdRenderer"

    const-string/jumbo v1, "user paused slot before ad actually started"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youdo/renderers/video/VideoAdRenderer;->isPaused:Z

    iget-object v0, p0, Lcom/youdo/renderers/video/VideoAdRenderer;->videoAdView:Lcom/youdo/renderers/video/VideoAdView;

    invoke-virtual {v0}, Lcom/youdo/renderers/video/VideoAdView;->startPlayback()V

    goto :goto_0
.end method

.method public onAdViewStart()V
    .locals 2

    const-string v0, "VideoAdRenderer"

    const-string v1, "onAdViewStart"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/youdo/renderers/video/VideoAdRenderer;->startQuartileImpressionAndTimeoutTimer()V

    return-void
.end method

.method public onAdViewSurfaceDestroyed()V
    .locals 0

    return-void
.end method

.method public start()V
    .locals 3

    invoke-super {p0}, Lcom/youdo/renderers/AdRenderer;->start()V

    const-string v0, "VideoAdRenderer"

    const-string/jumbo v1, "start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youdo/renderers/video/VideoAdRenderer;->defaultImpressionSent:Z

    invoke-direct {p0}, Lcom/youdo/renderers/video/VideoAdRenderer;->startQuartileImpressionAndTimeoutTimer()V

    iget-boolean v0, p0, Lcom/youdo/renderers/video/VideoAdRenderer;->supportPreload:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youdo/renderers/video/VideoAdRenderer;->mAdUnitContainer:Landroid/widget/RelativeLayout;

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/youdo/renderers/video/VideoAdRenderer$1;

    invoke-direct {v2, p0, v0}, Lcom/youdo/renderers/video/VideoAdRenderer$1;-><init>(Lcom/youdo/renderers/video/VideoAdRenderer;Landroid/view/ViewGroup;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/youdo/renderers/video/VideoAdRenderer;->preload()V

    goto :goto_0
.end method
