.class public Lcom/tudou/detail/plugin/hls/PluginSmallHLS;
.super Lcom/youku/player/plugin/PluginOverlay;
.source "PluginSmallHLS.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/youku/player/plugin/PluginOverlay;-><init>(Landroid/content/Context;)V

    .line 13
    return-void
.end method


# virtual methods
.method public OnCurrentPositionChangeListener(I)V
    .locals 0
    .param p1, "currentPosition"    # I

    .prologue
    .line 61
    return-void
.end method

.method public OnPreparedListener()V
    .locals 0

    .prologue
    .line 37
    return-void
.end method

.method public OnSeekCompleteListener()V
    .locals 0

    .prologue
    .line 43
    return-void
.end method

.method public OnTimeoutListener()V
    .locals 0

    .prologue
    .line 55
    return-void
.end method

.method public OnVideoSizeChangedListener(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 49
    return-void
.end method

.method public back()V
    .locals 0

    .prologue
    .line 211
    return-void
.end method

.method public newVideo()V
    .locals 0

    .prologue
    .line 121
    return-void
.end method

.method public onADplaying()V
    .locals 0

    .prologue
    .line 193
    return-void
.end method

.method public onBufferingUpdateListener(I)V
    .locals 0
    .param p1, "percent"    # I

    .prologue
    .line 19
    return-void
.end method

.method public onClearUpDownFav()V
    .locals 0

    .prologue
    .line 103
    return-void
.end method

.method public onCompletionListener()V
    .locals 0

    .prologue
    .line 25
    return-void
.end method

.method public onDown()V
    .locals 0

    .prologue
    .line 97
    return-void
.end method

.method public onErrorListener(II)Z
    .locals 1
    .param p1, "what"    # I
    .param p2, "extra"    # I

    .prologue
    .line 30
    const/4 v0, 0x0

    return v0
.end method

.method public onFavor()V
    .locals 0

    .prologue
    .line 109
    return-void
.end method

.method public onLoadedListener()V
    .locals 0

    .prologue
    .line 67
    return-void
.end method

.method public onLoadingListener()V
    .locals 0

    .prologue
    .line 73
    return-void
.end method

.method public onMute(Z)V
    .locals 0
    .param p1, "mute"    # Z

    .prologue
    .line 139
    return-void
.end method

.method public onNotifyChangeVideoQuality()V
    .locals 0

    .prologue
    .line 79
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 151
    return-void
.end method

.method public onPlayNoRightVideo(Lcom/youku/player/goplay/GoplayException;)V
    .locals 0
    .param p1, "e"    # Lcom/youku/player/goplay/GoplayException;

    .prologue
    .line 181
    return-void
.end method

.method public onPlayReleateNoRightVideo()V
    .locals 0

    .prologue
    .line 187
    return-void
.end method

.method public onRealVideoStart()V
    .locals 0

    .prologue
    .line 175
    return-void
.end method

.method public onRealVideoStarted()V
    .locals 0

    .prologue
    .line 85
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 145
    return-void
.end method

.method public onUnFavor()V
    .locals 0

    .prologue
    .line 115
    return-void
.end method

.method public onUp()V
    .locals 0

    .prologue
    .line 91
    return-void
.end method

.method public onVideoChange()V
    .locals 0

    .prologue
    .line 157
    return-void
.end method

.method public onVideoInfoGetFail(Z)V
    .locals 0
    .param p1, "needRetry"    # Z

    .prologue
    .line 199
    return-void
.end method

.method public onVideoInfoGetted()V
    .locals 0

    .prologue
    .line 169
    return-void
.end method

.method public onVideoInfoGetting()V
    .locals 0

    .prologue
    .line 163
    return-void
.end method

.method public onVolumnDown()V
    .locals 0

    .prologue
    .line 133
    return-void
.end method

.method public onVolumnUp()V
    .locals 0

    .prologue
    .line 127
    return-void
.end method

.method public setVisible(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 205
    return-void
.end method
