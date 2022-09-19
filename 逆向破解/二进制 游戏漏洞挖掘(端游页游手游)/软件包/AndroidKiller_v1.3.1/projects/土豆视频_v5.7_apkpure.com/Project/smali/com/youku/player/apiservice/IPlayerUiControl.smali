.class public interface abstract Lcom/youku/player/apiservice/IPlayerUiControl;
.super Ljava/lang/Object;
.source "IPlayerUiControl.java"

# interfaces
.implements Lcom/youku/player/apiservice/ActivityCallback;
.implements Lcom/youku/player/util/DeviceOrientationHelper$OrientationChangeCallback;


# virtual methods
.method public abstract addDanmaku(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lmaster/flame/danmaku/danmaku/model/LiveDanmakuInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract addPlugins()V
.end method

.method public abstract canShowPluginChangeQuality()Z
.end method

.method public abstract changeConfiguration(Landroid/content/res/Configuration;)V
.end method

.method public abstract clearSubtitle()V
.end method

.method public abstract clearUpDownFav()V
.end method

.method public abstract closeDanmaku()V
.end method

.method public abstract detectPlugin()V
.end method

.method public abstract dissmissPauseAD()V
.end method

.method public abstract getDanmakuManager()Lcom/youku/player/danmaku/IDanmakuManager;
.end method

.method public abstract getMediaPlayerDelegate()Lcom/youku/player/plugin/MediaPlayerDelegate;
.end method

.method public abstract getPluginManager()Lcom/youku/player/plugin/PluginManager;
.end method

.method public abstract getSubtitleOperate()Lcom/youku/player/subtitle/SubtitleOperate;
.end method

.method public abstract getUserCallback()Lcom/youku/player/apiservice/IUserCallback;
.end method

.method public abstract getVideoId()Ljava/lang/String;
.end method

.method public abstract getYoukuPlayerView()Lcom/youku/player/base/YoukuPlayerView;
.end method

.method public abstract goFullScreen()V
.end method

.method public abstract goSmall()V
.end method

.method public abstract goVerticalFullScreen()V
.end method

.method public abstract hideInteractivePopWindow()V
.end method

.method public abstract hideTipsPlugin()V
.end method

.method public abstract hideWebView()V
.end method

.method public abstract initDanmakuManager(Ljava/lang/String;IZ)V
.end method

.method public abstract initLayoutView()V
.end method

.method public abstract initPlayerPart()V
.end method

.method public abstract isDanmakuClosed()Z
.end method

.method public abstract isMidAdShowing()Z
.end method

.method public abstract isOnPause()Z
.end method

.method public abstract isVerticalFullScreen()Z
.end method

.method public abstract isWebViewShown()Z
.end method

.method public abstract onDownloadSubtitle(Lcom/youku/player/subtitle/DownloadedSubtitle;I)V
.end method

.method public abstract onParseNoRightVideoSuccess()V
.end method

.method public abstract onPayClick()V
.end method

.method public abstract openDanmaku()V
.end method

.method public abstract playCompleteGoSmall()V
.end method

.method public abstract removeHandlerMessage()V
.end method

.method public abstract resizeMediaPlayer(I)V
.end method

.method public abstract sendDanmaku(IIILjava/lang/String;)V
.end method

.method public abstract sendDanmaku(Lmaster/flame/danmaku/danmaku/model/LiveDanmakuInfo;)V
.end method

.method public abstract setAdState(Lcom/youku/player/ad/AdState;)V
.end method

.method public abstract setOnPause(Z)V
.end method

.method public abstract setOrientionDisable()V
.end method

.method public abstract setOrientionEnable()V
.end method

.method public abstract setPauseBeforeLoaded(Z)V
.end method

.method public abstract setPluginHolderPaddingZero()V
.end method

.method public abstract setScreenChangeListener(Lcom/youku/player/apiservice/ScreenChangeListener;)V
.end method

.method public abstract setUserCallback(Lcom/youku/player/apiservice/IUserCallback;)V
.end method

.method public abstract setmPluginFullScreenPlay(Lcom/youku/player/plugin/PluginOverlay;)V
.end method

.method public abstract setmPluginSmallScreenPlay(Lcom/youku/player/plugin/PluginOverlay;)V
.end method

.method public abstract showSmoothChangeQualityTip(Z)V
.end method

.method public abstract showWebView(ILandroid/support/v4/app/Fragment;)V
.end method

.method public abstract unHideTipsPlugin()V
.end method

.method public abstract updatePlugin(I)V
.end method

.method public abstract updateVideoId(Ljava/lang/String;)V
.end method
