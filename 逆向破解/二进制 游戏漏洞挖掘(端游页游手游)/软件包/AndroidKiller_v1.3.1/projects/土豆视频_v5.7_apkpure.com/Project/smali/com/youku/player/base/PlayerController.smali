.class public Lcom/youku/player/base/PlayerController;
.super Ljava/lang/Object;
.source "PlayerController.java"

# interfaces
.implements Lcom/youku/player/util/DetailMessage;
.implements Lcom/youku/player/apiservice/IPlayerUiControl;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# static fields
.field private static final DEVELOPER_MODE:Z = false

.field private static TAG:Ljava/lang/String; = null

.field public static final TAG_GLOBAL:Ljava/lang/String; = "YoukuBaseActivity"

.field protected static handler:Landroid/os/Handler;

.field private static interActionWebView:Lcom/youku/player/ui/widget/InteractionWebView;

.field public static isHighEnd:Z

.field private static mCreateTime:I


# instance fields
.field private DELAY_TIME:I

.field private am:Landroid/media/AudioManager;

.field private currentSound:I

.field public id:Ljava/lang/String;

.field private isLogin:Z

.field private isMute:Z

.field private isVerticalFullScreen:Z

.field protected keyCounter:Lcom/youku/player/reporter/KeyCounter;

.field private layoutHandler:Landroid/os/Handler;

.field mActivity:Landroid/support/v4/app/FragmentActivity;

.field protected mChangeQualityPlugin:Lcom/youku/player/plugin/PluginChangeQuality;

.field private mDanmakuManager:Lcom/youku/player/danmaku/IDanmakuManager;

.field public mImageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

.field private mIsOnNewIntent:Z

.field private mMediaPlayerInit:Lcom/youku/player/base/MediaPlayerInit;

.field protected mPaytipPlugin:Lcom/youku/player/plugin/PluginPayTip;

.field private mPlayerAdControl:Lcom/youku/player/ad/PlayerAdControl;

.field private mPluginFullScreenPlay:Lcom/youku/player/plugin/PluginOverlay;

.field mPluginSmallScreenPlay:Lcom/youku/player/plugin/PluginOverlay;

.field private mScreenChangeListener:Lcom/youku/player/apiservice/ScreenChangeListener;

.field private mSubtitleOperate:Lcom/youku/player/subtitle/SubtitleOperate;

.field private mUserCallback:Lcom/youku/player/apiservice/IUserCallback;

.field public mYoukuPlayerView:Lcom/youku/player/base/YoukuPlayerView;

.field mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

.field public onPause:Z

.field private orientationHelper:Lcom/youku/player/util/DeviceOrientationHelper;

.field private pauseBeforeLoaded:Z

.field player_holder:Landroid/widget/FrameLayout;

.field pluginManager:Lcom/youku/player/plugin/PluginManager;

.field surfaceHolder:Landroid/view/SurfaceHolder;

.field surfaceView:Lcom/youku/player/NewSurfaceView;

.field public youkuContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 118
    new-instance v0, Lcom/youku/player/base/PlayerController$1;

    invoke-direct {v0}, Lcom/youku/player/base/PlayerController$1;-><init>()V

    sput-object v0, Lcom/youku/player/base/PlayerController;->handler:Landroid/os/Handler;

    .line 123
    sget-object v0, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    sput-object v0, Lcom/youku/player/base/PlayerController;->TAG:Ljava/lang/String;

    .line 126
    const/4 v0, 0x0

    sput-object v0, Lcom/youku/player/base/PlayerController;->interActionWebView:Lcom/youku/player/ui/widget/InteractionWebView;

    return-void
.end method

.method constructor <init>(Landroid/support/v4/app/FragmentActivity;Lcom/youku/player/base/YoukuPlayerView;)V
    .locals 4
    .param p1, "activity"    # Landroid/support/v4/app/FragmentActivity;
    .param p2, "youkuPlayerView"    # Lcom/youku/player/base/YoukuPlayerView;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-boolean v2, p0, Lcom/youku/player/base/PlayerController;->mIsOnNewIntent:Z

    .line 107
    const/16 v1, 0x1f4

    iput v1, p0, Lcom/youku/player/base/PlayerController;->DELAY_TIME:I

    .line 109
    iput-object v3, p0, Lcom/youku/player/base/PlayerController;->keyCounter:Lcom/youku/player/reporter/KeyCounter;

    .line 146
    iput-object v3, p0, Lcom/youku/player/base/PlayerController;->mSubtitleOperate:Lcom/youku/player/subtitle/SubtitleOperate;

    .line 691
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/youku/player/base/PlayerController;->layoutHandler:Landroid/os/Handler;

    .line 1015
    iput-boolean v2, p0, Lcom/youku/player/base/PlayerController;->isMute:Z

    .line 1288
    iput-boolean v2, p0, Lcom/youku/player/base/PlayerController;->pauseBeforeLoaded:Z

    .line 173
    iput-object p1, p0, Lcom/youku/player/base/PlayerController;->mActivity:Landroid/support/v4/app/FragmentActivity;

    .line 174
    iput-object p2, p0, Lcom/youku/player/base/PlayerController;->mYoukuPlayerView:Lcom/youku/player/base/YoukuPlayerView;

    .line 175
    new-instance v1, Lcom/youku/player/plugin/PluginManager;

    iget-object v2, p0, Lcom/youku/player/base/PlayerController;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {v1, v2}, Lcom/youku/player/plugin/PluginManager;-><init>(Landroid/support/v4/app/FragmentActivity;)V

    iput-object v1, p0, Lcom/youku/player/base/PlayerController;->pluginManager:Lcom/youku/player/plugin/PluginManager;

    .line 176
    new-instance v1, Lcom/youku/player/ad/PlayerAdControl;

    iget-object v2, p0, Lcom/youku/player/base/PlayerController;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {v1, v2}, Lcom/youku/player/ad/PlayerAdControl;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/youku/player/base/PlayerController;->mPlayerAdControl:Lcom/youku/player/ad/PlayerAdControl;

    .line 177
    new-instance v1, Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v2, p0, Lcom/youku/player/base/PlayerController;->mActivity:Landroid/support/v4/app/FragmentActivity;

    iget-object v3, p0, Lcom/youku/player/base/PlayerController;->mPlayerAdControl:Lcom/youku/player/ad/PlayerAdControl;

    invoke-direct {v1, v2, p0, v3}, Lcom/youku/player/plugin/MediaPlayerDelegate;-><init>(Landroid/support/v4/app/FragmentActivity;Lcom/youku/player/apiservice/IPlayerUiControl;Lcom/youku/player/apiservice/IPlayerAdControl;)V

    iput-object v1, p0, Lcom/youku/player/base/PlayerController;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    .line 179
    const/4 v1, 0x4

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    .line 183
    .local v0, "keyary":[I
    new-instance v1, Lcom/youku/player/reporter/KeyCounter;

    invoke-direct {v1, v0}, Lcom/youku/player/reporter/KeyCounter;-><init>([I)V

    iput-object v1, p0, Lcom/youku/player/base/PlayerController;->keyCounter:Lcom/youku/player/reporter/KeyCounter;

    .line 184
    return-void

    .line 179
    nop

    :array_0
    .array-data 4
        0x18
        0x18
        0x19
        0x19
    .end array-data
.end method

.method static synthetic access$000(Lcom/youku/player/base/PlayerController;)Lcom/youku/player/ad/PlayerAdControl;
    .locals 1
    .param p0, "x0"    # Lcom/youku/player/base/PlayerController;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mPlayerAdControl:Lcom/youku/player/ad/PlayerAdControl;

    return-object v0
.end method

.method static synthetic access$100(Lcom/youku/player/base/PlayerController;)Lcom/youku/player/plugin/PluginOverlay;
    .locals 1
    .param p0, "x0"    # Lcom/youku/player/base/PlayerController;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mPluginFullScreenPlay:Lcom/youku/player/plugin/PluginOverlay;

    return-object v0
.end method

.method private callPluginBack()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 451
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mPluginSmallScreenPlay:Lcom/youku/player/plugin/PluginOverlay;

    if-eqz v0, :cond_0

    .line 452
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mPluginSmallScreenPlay:Lcom/youku/player/plugin/PluginOverlay;

    invoke-virtual {v0}, Lcom/youku/player/plugin/PluginOverlay;->back()V

    .line 454
    :cond_0
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mPluginFullScreenPlay:Lcom/youku/player/plugin/PluginOverlay;

    if-eqz v0, :cond_1

    .line 455
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mPluginFullScreenPlay:Lcom/youku/player/plugin/PluginOverlay;

    invoke-virtual {v0}, Lcom/youku/player/plugin/PluginOverlay;->back()V

    .line 458
    :cond_1
    iget-boolean v0, p0, Lcom/youku/player/base/PlayerController;->pauseBeforeLoaded:Z

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/youku/player/base/PlayerController;->mIsOnNewIntent:Z

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mPlayerAdControl:Lcom/youku/player/ad/PlayerAdControl;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mPlayerAdControl:Lcom/youku/player/ad/PlayerAdControl;

    invoke-virtual {v0}, Lcom/youku/player/ad/PlayerAdControl;->isImageAdShowing()Z

    move-result v0

    if-nez v0, :cond_9

    :cond_2
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mPlayerAdControl:Lcom/youku/player/ad/PlayerAdControl;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mPlayerAdControl:Lcom/youku/player/ad/PlayerAdControl;

    invoke-virtual {v0}, Lcom/youku/player/ad/PlayerAdControl;->isSuggestLoginDialogShowing()Z

    move-result v0

    if-nez v0, :cond_9

    :cond_3
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-boolean v0, v0, Lcom/youku/player/module/VideoUrlInfo;->isHLS:Z

    if-nez v0, :cond_9

    :cond_4
    invoke-static {}, Lcom/youku/player/util/PlayerUtil;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/youku/player/base/PlayerController;->isLogin:Z

    if-eqz v0, :cond_9

    :cond_5
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->isAdvShowFinished()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v0}, Lcom/youku/player/module/VideoUrlInfo;->isDRMVideo()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/youku/libmanager/SoUpgradeManager;->getInstance()Lcom/youku/libmanager/SoUpgradeManager;

    move-result-object v0

    const-string v1, "libWasabiJni.so"

    invoke-virtual {v0, v1}, Lcom/youku/libmanager/SoUpgradeManager;->isSoDownloaded(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_6
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v0}, Lcom/youku/player/module/VideoUrlInfo;->getVipError()I

    move-result v0

    if-nez v0, :cond_9

    :cond_7
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "ifautoplay"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-boolean v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isPlayCalled:Z

    if-eqz v0, :cond_9

    .line 470
    :cond_8
    const-string v0, "PlayFlow"

    const-string v1, "+++++++++++++++++++++++++++++++++++++++++++++++++ callPluginBack onError"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->pluginManager:Lcom/youku/player/plugin/PluginManager;

    const/16 v1, 0x3ef

    invoke-virtual {v0, v1, v3}, Lcom/youku/player/plugin/PluginManager;->onError(II)Z

    .line 474
    :cond_9
    iput-boolean v3, p0, Lcom/youku/player/base/PlayerController;->pauseBeforeLoaded:Z

    .line 475
    iput-boolean v3, p0, Lcom/youku/player/base/PlayerController;->mIsOnNewIntent:Z

    .line 476
    invoke-static {}, Lcom/youku/player/util/PlayerUtil;->isLogin()Z

    move-result v0

    iput-boolean v0, p0, Lcom/youku/player/base/PlayerController;->isLogin:Z

    .line 477
    return-void
.end method

.method public static getCurrentFormat()I
    .locals 1

    .prologue
    .line 1199
    sget-boolean v0, Lcom/youku/player/base/PlayerController;->isHighEnd:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method private getIntentData()V
    .locals 4

    .prologue
    .line 1324
    iget-object v2, p0, Lcom/youku/player/base/PlayerController;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1325
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1326
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "video_id"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1327
    .local v1, "tidString":Ljava/lang/String;
    iput-object v1, p0, Lcom/youku/player/base/PlayerController;->id:Ljava/lang/String;

    .line 1329
    .end local v1    # "tidString":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private initMediaPlayer()V
    .locals 5

    .prologue
    .line 331
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mMediaPlayerInit:Lcom/youku/player/base/MediaPlayerInit;

    if-nez v0, :cond_0

    .line 332
    new-instance v0, Lcom/youku/player/base/MediaPlayerInit;

    iget-object v1, p0, Lcom/youku/player/base/PlayerController;->mActivity:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/youku/player/base/PlayerController;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-direct {v0, v1, v2}, Lcom/youku/player/base/MediaPlayerInit;-><init>(Landroid/app/Activity;Lcom/youku/player/plugin/MediaPlayerDelegate;)V

    iput-object v0, p0, Lcom/youku/player/base/PlayerController;->mMediaPlayerInit:Lcom/youku/player/base/MediaPlayerInit;

    .line 334
    :cond_0
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mPlayerAdControl:Lcom/youku/player/ad/PlayerAdControl;

    if-eqz v0, :cond_1

    .line 335
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mPlayerAdControl:Lcom/youku/player/ad/PlayerAdControl;

    iget-object v1, p0, Lcom/youku/player/base/PlayerController;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0, p0, v1}, Lcom/youku/player/ad/PlayerAdControl;->createAdPlugins(Lcom/youku/player/apiservice/IPlayerUiControl;Lcom/youku/player/plugin/MediaPlayerDelegate;)V

    .line 337
    :cond_1
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mMediaPlayerInit:Lcom/youku/player/base/MediaPlayerInit;

    iget-object v1, p0, Lcom/youku/player/base/PlayerController;->mPlayerAdControl:Lcom/youku/player/ad/PlayerAdControl;

    iget-object v2, p0, Lcom/youku/player/base/PlayerController;->mPlayerAdControl:Lcom/youku/player/ad/PlayerAdControl;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/youku/player/ad/PlayerAdControl;->getVideoADCallBack(I)Lcom/youku/player/apiservice/IAdPlayerCallback;

    move-result-object v2

    iget-object v3, p0, Lcom/youku/player/base/PlayerController;->mPlayerAdControl:Lcom/youku/player/ad/PlayerAdControl;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/youku/player/ad/PlayerAdControl;->getVideoADCallBack(I)Lcom/youku/player/apiservice/IAdPlayerCallback;

    move-result-object v3

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/youku/player/base/MediaPlayerInit;->execute(Lcom/youku/player/apiservice/IPlayerUiControl;Lcom/youku/player/apiservice/IPlayerAdControl;Lcom/youku/player/apiservice/IAdPlayerCallback;Lcom/youku/player/apiservice/IAdPlayerCallback;)V

    .line 339
    return-void
.end method

.method private initPlayAndSurface()V
    .locals 2

    .prologue
    .line 309
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mYoukuPlayerView:Lcom/youku/player/base/YoukuPlayerView;

    iget-object v0, v0, Lcom/youku/player/base/YoukuPlayerView;->surfaceView:Lcom/youku/player/NewSurfaceView;

    iput-object v0, p0, Lcom/youku/player/base/PlayerController;->surfaceView:Lcom/youku/player/NewSurfaceView;

    .line 310
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mYoukuPlayerView:Lcom/youku/player/base/YoukuPlayerView;

    iget-object v1, p0, Lcom/youku/player/base/PlayerController;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iput-object v1, v0, Lcom/youku/player/base/YoukuPlayerView;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    .line 311
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-static {}, Lcom/youku/player/BaseMediaPlayer;->getInstance()Lcom/youku/player/BaseMediaPlayer;

    move-result-object v1

    iput-object v1, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mediaPlayer:Lcom/youku/player/BaseMediaPlayer;

    .line 312
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->surfaceView:Lcom/youku/player/NewSurfaceView;

    invoke-virtual {v0}, Lcom/youku/player/NewSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/player/base/PlayerController;->surfaceHolder:Landroid/view/SurfaceHolder;

    .line 313
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->surfaceHolder:Landroid/view/SurfaceHolder;

    iget-object v1, p0, Lcom/youku/player/base/PlayerController;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->mediaPlayer:Lcom/youku/player/BaseMediaPlayer;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 314
    sget-boolean v0, Lcom/youku/player/base/PlayerController;->isHighEnd:Z

    if-nez v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->surfaceHolder:Landroid/view/SurfaceHolder;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 316
    :cond_0
    return-void
.end method

.method private initSound()V
    .locals 2

    .prologue
    .line 1020
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mActivity:Landroid/support/v4/app/FragmentActivity;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/youku/player/base/PlayerController;->am:Landroid/media/AudioManager;

    .line 1021
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->am:Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iput v0, p0, Lcom/youku/player/base/PlayerController;->currentSound:I

    .line 1022
    return-void
.end method

.method private isLocalPlay()Z
    .locals 2

    .prologue
    .line 1317
    sget-boolean v0, Lcom/youku/player/goplay/Profile;->USE_SYSTEM_PLAYER:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v0, :cond_1

    const-string v0, "local"

    iget-object v1, p0, Lcom/youku/player/base/PlayerController;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v1, v1, Lcom/youku/player/module/VideoUrlInfo;->playType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setFav()V
    .locals 2

    .prologue
    .line 1297
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v0, :cond_0

    .line 1299
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/youku/player/module/VideoUrlInfo;->isFaved:Z

    .line 1301
    :cond_0
    return-void
.end method

.method private setPlayerSmall()V
    .locals 2

    .prologue
    .line 823
    sget-object v0, Lcom/youku/player/base/PlayerController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setPlayerSmall"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 824
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isFullScreen:Z

    .line 825
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v0, :cond_0

    .line 826
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    sget-object v1, Lcom/youku/player/plugin/Orientation;->VERTICAL:Lcom/youku/player/plugin/Orientation;

    iput-object v1, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->currentOriention:Lcom/youku/player/plugin/Orientation;

    .line 827
    :cond_0
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mScreenChangeListener:Lcom/youku/player/apiservice/ScreenChangeListener;

    invoke-interface {v0}, Lcom/youku/player/apiservice/ScreenChangeListener;->onSmallscreenListener()V

    .line 828
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 829
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mPlayerAdControl:Lcom/youku/player/ad/PlayerAdControl;

    invoke-virtual {v0}, Lcom/youku/player/ad/PlayerAdControl;->isInteractiveAdShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 830
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mPlayerAdControl:Lcom/youku/player/ad/PlayerAdControl;

    invoke-virtual {v0}, Lcom/youku/player/ad/PlayerAdControl;->dismissInteractiveAD()V

    .line 831
    iget-boolean v0, p0, Lcom/youku/player/base/PlayerController;->onPause:Z

    if-nez v0, :cond_1

    .line 832
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->startByInteractiveAd()V

    .line 835
    :cond_1
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v0}, Lcom/youku/player/util/PlayerUtil;->isYoukuTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 837
    invoke-virtual {p0}, Lcom/youku/player/base/PlayerController;->setPluginHolderPaddingZero()V

    .line 838
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mPlayerAdControl:Lcom/youku/player/ad/PlayerAdControl;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/youku/player/base/PlayerController;->onPause:Z

    if-nez v0, :cond_2

    .line 839
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mPlayerAdControl:Lcom/youku/player/ad/PlayerAdControl;

    invoke-virtual {v0}, Lcom/youku/player/ad/PlayerAdControl;->imageAdOnOrientChange()V

    .line 847
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/youku/player/base/PlayerController;->hideWebView()V

    .line 849
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mSubtitleOperate:Lcom/youku/player/subtitle/SubtitleOperate;

    if-eqz v0, :cond_3

    .line 850
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mSubtitleOperate:Lcom/youku/player/subtitle/SubtitleOperate;

    invoke-virtual {v0}, Lcom/youku/player/subtitle/SubtitleOperate;->dismissSubtitle()V

    .line 852
    :cond_3
    return-void

    .line 842
    :cond_4
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mYoukuPlayerView:Lcom/youku/player/base/YoukuPlayerView;

    invoke-virtual {v0}, Lcom/youku/player/base/YoukuPlayerView;->setVerticalLayout()V

    .line 843
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v0, :cond_2

    .line 844
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->orientationHelper:Lcom/youku/player/util/DeviceOrientationHelper;

    invoke-virtual {v0}, Lcom/youku/player/util/DeviceOrientationHelper;->enableListener()V

    goto :goto_0
.end method

.method public static startActivity(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1203
    const/4 v0, -0x1

    invoke-static {p0, p1, v0}, Lcom/youku/player/base/PlayerController;->startActivityForResult(Landroid/content/Context;Landroid/content/Intent;I)V

    .line 1204
    return-void
.end method

.method public static startActivityForResult(Landroid/content/Context;Landroid/content/Intent;I)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I

    .prologue
    .line 1208
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1209
    invoke-static {p0}, Lcom/youku/player/ui/widget/YoukuAnimation;->activityOpen(Landroid/content/Context;)V

    .line 1210
    return-void
.end method

.method private volumeDown()Z
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 1042
    iget-boolean v2, p0, Lcom/youku/player/base/PlayerController;->isMute:Z

    if-nez v2, :cond_1

    .line 1043
    iget-object v1, p0, Lcom/youku/player/base/PlayerController;->am:Landroid/media/AudioManager;

    const/4 v2, -0x1

    invoke-virtual {v1, v4, v2, v3}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    .line 1053
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/youku/player/base/PlayerController;->pluginManager:Lcom/youku/player/plugin/PluginManager;

    invoke-virtual {v1}, Lcom/youku/player/plugin/PluginManager;->onVolumnDown()V

    .line 1054
    return v3

    .line 1047
    :cond_1
    iget v2, p0, Lcom/youku/player/base/PlayerController;->currentSound:I

    if-ltz v2, :cond_0

    .line 1048
    iget v2, p0, Lcom/youku/player/base/PlayerController;->currentSound:I

    add-int/lit8 v0, v2, -0x1

    .line 1049
    .local v0, "destSound":I
    iget-object v2, p0, Lcom/youku/player/base/PlayerController;->am:Landroid/media/AudioManager;

    if-ltz v0, :cond_2

    .end local v0    # "destSound":I
    :goto_1
    invoke-virtual {v2, v4, v0, v1}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_0

    .restart local v0    # "destSound":I
    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method private volumeUp()Z
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x1

    .line 1025
    iget-boolean v0, p0, Lcom/youku/player/base/PlayerController;->isMute:Z

    if-nez v0, :cond_1

    .line 1026
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->am:Landroid/media/AudioManager;

    invoke-virtual {v0, v4, v3, v3}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    .line 1037
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->pluginManager:Lcom/youku/player/plugin/PluginManager;

    invoke-virtual {v0}, Lcom/youku/player/plugin/PluginManager;->onVolumnUp()V

    .line 1038
    return v3

    .line 1030
    :cond_1
    iget v0, p0, Lcom/youku/player/base/PlayerController;->currentSound:I

    if-ltz v0, :cond_0

    .line 1031
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->am:Landroid/media/AudioManager;

    iget v1, p0, Lcom/youku/player/base/PlayerController;->currentSound:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/youku/player/base/PlayerController;->am:Landroid/media/AudioManager;

    invoke-virtual {v2, v4}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v4, v1, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_0
.end method


# virtual methods
.method public addDanmaku(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lmaster/flame/danmaku/danmaku/model/LiveDanmakuInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1497
    .local p1, "liveDanmakuInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lmaster/flame/danmaku/danmaku/model/LiveDanmakuInfo;>;"
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mDanmakuManager:Lcom/youku/player/danmaku/IDanmakuManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mDanmakuManager:Lcom/youku/player/danmaku/IDanmakuManager;

    invoke-interface {v0}, Lcom/youku/player/danmaku/IDanmakuManager;->isHls()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1498
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mDanmakuManager:Lcom/youku/player/danmaku/IDanmakuManager;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lcom/youku/player/danmaku/IDanmakuManager;->addDanmaku(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1500
    :cond_0
    return-void
.end method

.method public addPlugins()V
    .locals 2

    .prologue
    .line 272
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mActivity:Landroid/support/v4/app/FragmentActivity;

    new-instance v1, Lcom/youku/player/base/PlayerController$2;

    invoke-direct {v1, p0}, Lcom/youku/player/base/PlayerController$2;-><init>(Lcom/youku/player/base/PlayerController;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 305
    return-void
.end method

.method public canShowPluginChangeQuality()Z
    .locals 2

    .prologue
    .line 1401
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mPlayerAdControl:Lcom/youku/player/ad/PlayerAdControl;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/youku/player/ad/PlayerAdControl;->getPlugin(I)Lcom/youku/player/plugin/PluginOverlay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/player/plugin/PluginOverlay;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mPaytipPlugin:Lcom/youku/player/plugin/PluginPayTip;

    invoke-virtual {v0}, Lcom/youku/player/plugin/PluginPayTip;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public changeConfiguration(Landroid/content/res/Configuration;)V
    .locals 8
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x7

    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 624
    sget v3, Lcom/youku/player/goplay/Profile;->from:I

    if-ne v4, v3, :cond_1

    .line 689
    :cond_0
    :goto_0
    return-void

    .line 627
    :cond_1
    iget-object v3, p0, Lcom/youku/player/base/PlayerController;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v4, :cond_4

    move v0, v1

    .line 628
    .local v0, "island":Z
    :goto_1
    sget-object v3, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isLand:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    if-nez v0, :cond_3

    iget-object v3, p0, Lcom/youku/player/base/PlayerController;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v3, v3, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v3, :cond_a

    const-string v3, "local"

    iget-object v4, p0, Lcom/youku/player/base/PlayerController;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v4, v4, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v4}, Lcom/youku/player/module/VideoUrlInfo;->getPlayType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/youku/player/base/PlayerController;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v3, v3, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-boolean v3, v3, Lcom/youku/player/module/VideoUrlInfo;->isHLS:Z

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/youku/player/config/MediaPlayerConfiguration;->getInstance()Lcom/youku/player/config/MediaPlayerConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Lcom/youku/player/config/MediaPlayerConfiguration;->livePortrait()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    iget-boolean v3, p0, Lcom/youku/player/base/PlayerController;->isVerticalFullScreen:Z

    if-eqz v3, :cond_a

    .line 634
    :cond_3
    sget-object v3, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isTablet:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/youku/player/base/PlayerController;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v5}, Lcom/youku/player/util/PlayerUtil;->isYoukuTablet(Landroid/content/Context;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    sget-object v3, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isVerticalFullScreen:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/youku/player/base/PlayerController;->isVerticalFullScreen:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    iget-object v3, p0, Lcom/youku/player/base/PlayerController;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v3}, Lcom/youku/player/util/PlayerUtil;->isYoukuTablet(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 638
    iget-object v1, p0, Lcom/youku/player/base/PlayerController;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->closeOptionsMenu()V

    .line 639
    invoke-virtual {p0}, Lcom/youku/player/base/PlayerController;->setPlayerFullScreen()V

    .line 640
    iget-object v1, p0, Lcom/youku/player/base/PlayerController;->mPlayerAdControl:Lcom/youku/player/ad/PlayerAdControl;

    invoke-virtual {v1}, Lcom/youku/player/ad/PlayerAdControl;->changeConfiguration()V

    .line 641
    sget-object v1, Lcom/youku/player/base/PlayerController;->handler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 642
    sget-object v1, Lcom/youku/player/base/PlayerController;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/youku/player/base/PlayerController$4;

    invoke-direct {v2, p0}, Lcom/youku/player/base/PlayerController$4;-><init>(Lcom/youku/player/base/PlayerController;)V

    const-wide/16 v4, 0x64

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .end local v0    # "island":Z
    :cond_4
    move v0, v2

    .line 627
    goto/16 :goto_1

    .line 655
    .restart local v0    # "island":Z
    :cond_5
    iget-object v3, p0, Lcom/youku/player/base/PlayerController;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-boolean v3, v3, Lcom/youku/player/plugin/MediaPlayerDelegate;->isFullScreen:Z

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/youku/player/base/PlayerController;->mActivity:Landroid/support/v4/app/FragmentActivity;

    iget-object v4, p0, Lcom/youku/player/base/PlayerController;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-static {v3, v4}, Lcom/youku/player/util/PlayerUtil;->isYoukuHlsTablet(Landroid/content/Context;Lcom/youku/player/plugin/MediaPlayerDelegate;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 656
    :cond_6
    invoke-virtual {p0}, Lcom/youku/player/base/PlayerController;->setPlayerFullScreen()V

    .line 688
    :goto_2
    iget-object v1, p0, Lcom/youku/player/base/PlayerController;->mPlayerAdControl:Lcom/youku/player/ad/PlayerAdControl;

    invoke-virtual {v1}, Lcom/youku/player/ad/PlayerAdControl;->changeConfiguration()V

    goto/16 :goto_0

    .line 658
    :cond_7
    iget-object v3, p0, Lcom/youku/player/base/PlayerController;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v3, v2}, Landroid/support/v4/app/FragmentActivity;->setRequestedOrientation(I)V

    .line 659
    invoke-direct {p0}, Lcom/youku/player/base/PlayerController;->setPlayerSmall()V

    .line 660
    iget-object v2, p0, Lcom/youku/player/base/PlayerController;->mScreenChangeListener:Lcom/youku/player/apiservice/ScreenChangeListener;

    invoke-interface {v2}, Lcom/youku/player/apiservice/ScreenChangeListener;->setPadHorizontalLayout()V

    .line 661
    iget-object v2, p0, Lcom/youku/player/base/PlayerController;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v2}, Lcom/youku/player/plugin/MediaPlayerDelegate;->isAdvShowFinished()Z

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, p0, Lcom/youku/player/base/PlayerController;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-boolean v2, v2, Lcom/youku/player/plugin/MediaPlayerDelegate;->isADShowing:Z

    if-eqz v2, :cond_8

    .line 662
    invoke-virtual {p0, v1}, Lcom/youku/player/base/PlayerController;->updatePlugin(I)V

    .line 668
    :goto_3
    sget-object v1, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    const-string/jumbo v2, "\u5e73\u677f\u53bb\u6a2a\u5c4f\u5c0f\u64ad\u653e"

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 669
    iget-object v1, p0, Lcom/youku/player/base/PlayerController;->layoutHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    goto :goto_2

    .line 663
    :cond_8
    iget-object v1, p0, Lcom/youku/player/base/PlayerController;->mPlayerAdControl:Lcom/youku/player/ad/PlayerAdControl;

    invoke-virtual {v1}, Lcom/youku/player/ad/PlayerAdControl;->isMidAdShowing()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 664
    invoke-virtual {p0, v7}, Lcom/youku/player/base/PlayerController;->updatePlugin(I)V

    goto :goto_3

    .line 666
    :cond_9
    invoke-virtual {p0, v6}, Lcom/youku/player/base/PlayerController;->updatePlugin(I)V

    goto :goto_3

    .line 673
    :cond_a
    invoke-direct {p0}, Lcom/youku/player/base/PlayerController;->setPlayerSmall()V

    .line 674
    sget-object v3, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    const-string v4, "goSmall"

    invoke-static {v3, v4}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 675
    iget-object v3, p0, Lcom/youku/player/base/PlayerController;->mActivity:Landroid/support/v4/app/FragmentActivity;

    iget-object v4, p0, Lcom/youku/player/base/PlayerController;->mPlayerAdControl:Lcom/youku/player/ad/PlayerAdControl;

    invoke-virtual {v4, v1}, Lcom/youku/player/ad/PlayerAdControl;->getPlugin(I)Lcom/youku/player/plugin/PluginOverlay;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/youku/player/util/PlayerUtil;->showSystemUI(Landroid/content/Context;Lcom/youku/player/plugin/PluginOverlay;)V

    .line 676
    iget-object v3, p0, Lcom/youku/player/base/PlayerController;->orientationHelper:Lcom/youku/player/util/DeviceOrientationHelper;

    iput-boolean v2, v3, Lcom/youku/player/util/DeviceOrientationHelper;->fromUser:Z

    .line 677
    iget-object v3, p0, Lcom/youku/player/base/PlayerController;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v3}, Lcom/youku/player/plugin/MediaPlayerDelegate;->isAdvShowFinished()Z

    move-result v3

    if-nez v3, :cond_b

    iget-object v3, p0, Lcom/youku/player/base/PlayerController;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-boolean v3, v3, Lcom/youku/player/plugin/MediaPlayerDelegate;->isADShowing:Z

    if-eqz v3, :cond_b

    .line 678
    invoke-virtual {p0, v1}, Lcom/youku/player/base/PlayerController;->updatePlugin(I)V

    .line 685
    :goto_4
    iget-object v1, p0, Lcom/youku/player/base/PlayerController;->player_holder:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 686
    sget-object v1, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    const-string/jumbo v2, "\u53bb\u7ad6\u5c4f\u5c0f\u64ad\u653e"

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 679
    :cond_b
    iget-object v1, p0, Lcom/youku/player/base/PlayerController;->mPlayerAdControl:Lcom/youku/player/ad/PlayerAdControl;

    invoke-virtual {v1}, Lcom/youku/player/ad/PlayerAdControl;->isMidAdShowing()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 680
    invoke-virtual {p0, v7}, Lcom/youku/player/base/PlayerController;->updatePlugin(I)V

    goto :goto_4

    .line 682
    :cond_c
    invoke-virtual {p0, v6}, Lcom/youku/player/base/PlayerController;->updatePlugin(I)V

    goto :goto_4
.end method

.method public clearSubtitle()V
    .locals 1

    .prologue
    .line 157
    invoke-static {}, Lcom/youku/player/subtitle/SubtitleManager;->clearAllSubtitle()V

    .line 158
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mSubtitleOperate:Lcom/youku/player/subtitle/SubtitleOperate;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mSubtitleOperate:Lcom/youku/player/subtitle/SubtitleOperate;

    invoke-virtual {v0}, Lcom/youku/player/subtitle/SubtitleOperate;->clearSubtitle()V

    .line 160
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/youku/player/base/PlayerController;->mSubtitleOperate:Lcom/youku/player/subtitle/SubtitleOperate;

    .line 162
    :cond_0
    return-void
.end method

.method public clearUpDownFav()V
    .locals 1

    .prologue
    .line 1304
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->pluginManager:Lcom/youku/player/plugin/PluginManager;

    if-eqz v0, :cond_0

    .line 1305
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->pluginManager:Lcom/youku/player/plugin/PluginManager;

    invoke-virtual {v0}, Lcom/youku/player/plugin/PluginManager;->clearUpDownFav()V

    .line 1306
    :cond_0
    return-void
.end method

.method public closeDanmaku()V
    .locals 1

    .prologue
    .line 1491
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mDanmakuManager:Lcom/youku/player/danmaku/IDanmakuManager;

    if-eqz v0, :cond_0

    .line 1492
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mDanmakuManager:Lcom/youku/player/danmaku/IDanmakuManager;

    invoke-interface {v0}, Lcom/youku/player/danmaku/IDanmakuManager;->closeDanmaku()V

    .line 1494
    :cond_0
    return-void
.end method

.method public detectPlugin()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1263
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->pluginManager:Lcom/youku/player/plugin/PluginManager;

    if-nez v0, :cond_1

    .line 1281
    :cond_0
    :goto_0
    return-void

    .line 1266
    :cond_1
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-boolean v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isFullScreen:Z

    if-eqz v0, :cond_3

    .line 1267
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mPluginFullScreenPlay:Lcom/youku/player/plugin/PluginOverlay;

    if-nez v0, :cond_2

    .line 1269
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->pluginManager:Lcom/youku/player/plugin/PluginManager;

    iget-object v1, p0, Lcom/youku/player/base/PlayerController;->mPluginSmallScreenPlay:Lcom/youku/player/plugin/PluginOverlay;

    iget-object v2, p0, Lcom/youku/player/base/PlayerController;->player_holder:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1, v2}, Lcom/youku/player/plugin/PluginManager;->addPlugin(Lcom/youku/player/plugin/PluginOverlay;Landroid/view/ViewGroup;)V

    .line 1270
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mPluginSmallScreenPlay:Lcom/youku/player/plugin/PluginOverlay;

    iput-boolean v3, v0, Lcom/youku/player/plugin/PluginOverlay;->pluginEnable:Z

    goto :goto_0

    .line 1273
    :cond_2
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->pluginManager:Lcom/youku/player/plugin/PluginManager;

    iget-object v1, p0, Lcom/youku/player/base/PlayerController;->mPluginFullScreenPlay:Lcom/youku/player/plugin/PluginOverlay;

    iget-object v2, p0, Lcom/youku/player/base/PlayerController;->player_holder:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1, v2}, Lcom/youku/player/plugin/PluginManager;->addPlugin(Lcom/youku/player/plugin/PluginOverlay;Landroid/view/ViewGroup;)V

    .line 1274
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1278
    :cond_3
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->pluginManager:Lcom/youku/player/plugin/PluginManager;

    iget-object v1, p0, Lcom/youku/player/base/PlayerController;->mPluginSmallScreenPlay:Lcom/youku/player/plugin/PluginOverlay;

    iget-object v2, p0, Lcom/youku/player/base/PlayerController;->player_holder:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1, v2}, Lcom/youku/player/plugin/PluginManager;->addPlugin(Lcom/youku/player/plugin/PluginOverlay;Landroid/view/ViewGroup;)V

    .line 1279
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mPluginSmallScreenPlay:Lcom/youku/player/plugin/PluginOverlay;

    iput-boolean v3, v0, Lcom/youku/player/plugin/PluginOverlay;->pluginEnable:Z

    goto :goto_0
.end method

.method public dissmissPauseAD()V
    .locals 1

    .prologue
    .line 1442
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mPlayerAdControl:Lcom/youku/player/ad/PlayerAdControl;

    if-eqz v0, :cond_0

    .line 1443
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mPlayerAdControl:Lcom/youku/player/ad/PlayerAdControl;

    invoke-virtual {v0}, Lcom/youku/player/ad/PlayerAdControl;->dismissPauseAD()V

    .line 1445
    :cond_0
    return-void
.end method

.method public getDanmakuManager()Lcom/youku/player/danmaku/IDanmakuManager;
    .locals 1

    .prologue
    .line 1507
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mDanmakuManager:Lcom/youku/player/danmaku/IDanmakuManager;

    return-object v0
.end method

.method public getMediaPlayerDelegate()Lcom/youku/player/plugin/MediaPlayerDelegate;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    return-object v0
.end method

.method public getPlayerAdControl()Lcom/youku/player/apiservice/IPlayerAdControl;
    .locals 1

    .prologue
    .line 1546
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mPlayerAdControl:Lcom/youku/player/ad/PlayerAdControl;

    return-object v0
.end method

.method public getPluginManager()Lcom/youku/player/plugin/PluginManager;
    .locals 1

    .prologue
    .line 1537
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->pluginManager:Lcom/youku/player/plugin/PluginManager;

    return-object v0
.end method

.method public getSubtitleOperate()Lcom/youku/player/subtitle/SubtitleOperate;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mSubtitleOperate:Lcom/youku/player/subtitle/SubtitleOperate;

    return-object v0
.end method

.method public getUserCallback()Lcom/youku/player/apiservice/IUserCallback;
    .locals 1

    .prologue
    .line 1563
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mUserCallback:Lcom/youku/player/apiservice/IUserCallback;

    return-object v0
.end method

.method public getVideoId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1462
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getYoukuPlayerView()Lcom/youku/player/base/YoukuPlayerView;
    .locals 1

    .prologue
    .line 1542
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mYoukuPlayerView:Lcom/youku/player/base/YoukuPlayerView;

    return-object v0
.end method

.method public goFullScreen()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 779
    sget-object v0, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    const-string v1, "goFullScreen"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 780
    invoke-static {}, Lcom/baseproject/utils/UIUtils;->hasGingerbread()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "video_lock"

    invoke-static {v0, v2}, Lcom/youku/player/util/PlayerPreference;->getPreferenceBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_3

    .line 783
    sget-object v0, Lcom/youku/player/LogTag;->TAG_ORIENTATION:Ljava/lang/String;

    const-string/jumbo v1, "setPlayerFullScreen SCREEN_ORIENTATION_SENSOR_LANDSCAPE"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 785
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mActivity:Landroid/support/v4/app/FragmentActivity;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setRequestedOrientation(I)V

    .line 789
    :goto_0
    iput-boolean v2, p0, Lcom/youku/player/base/PlayerController;->isVerticalFullScreen:Z

    .line 790
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v0, :cond_0

    .line 791
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isFullScreen:Z

    .line 792
    :cond_0
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v0}, Lcom/youku/player/util/PlayerUtil;->isYoukuTablet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 794
    :cond_1
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/youku/player/base/PlayerController;->changeConfiguration(Landroid/content/res/Configuration;)V

    .line 796
    :cond_2
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->orientationHelper:Lcom/youku/player/util/DeviceOrientationHelper;

    invoke-virtual {v0}, Lcom/youku/player/util/DeviceOrientationHelper;->isFromUser()V

    .line 797
    return-void

    .line 787
    :cond_3
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentActivity;->setRequestedOrientation(I)V

    goto :goto_0
.end method

.method public goSmall()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 855
    sget-object v0, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    const-string v1, "goSmall"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 856
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v0, :cond_0

    .line 857
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iput-boolean v2, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isFullScreen:Z

    .line 858
    :cond_0
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v0}, Lcom/youku/player/util/PlayerUtil;->isYoukuTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 859
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/youku/player/base/PlayerController;->changeConfiguration(Landroid/content/res/Configuration;)V

    .line 871
    :cond_1
    :goto_0
    return-void

    .line 861
    :cond_2
    iget-boolean v0, p0, Lcom/youku/player/base/PlayerController;->isVerticalFullScreen:Z

    if-eqz v0, :cond_3

    .line 862
    iput-boolean v2, p0, Lcom/youku/player/base/PlayerController;->isVerticalFullScreen:Z

    .line 863
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    invoke-virtual {p0, v0}, Lcom/youku/player/base/PlayerController;->changeConfiguration(Landroid/content/res/Configuration;)V

    .line 865
    :cond_3
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mActivity:Landroid/support/v4/app/FragmentActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setRequestedOrientation(I)V

    .line 866
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->orientationHelper:Lcom/youku/player/util/DeviceOrientationHelper;

    if-eqz v0, :cond_1

    .line 867
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->orientationHelper:Lcom/youku/player/util/DeviceOrientationHelper;

    invoke-virtual {v0}, Lcom/youku/player/util/DeviceOrientationHelper;->enableListener()V

    .line 868
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->orientationHelper:Lcom/youku/player/util/DeviceOrientationHelper;

    invoke-virtual {v0}, Lcom/youku/player/util/DeviceOrientationHelper;->isFromUser()V

    goto :goto_0
.end method

.method public goVerticalFullScreen()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 801
    sget-object v0, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    const-string v1, "goVerticalFullScreen"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 802
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v0, :cond_0

    .line 803
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-boolean v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isFullScreen:Z

    if-eqz v0, :cond_1

    .line 804
    invoke-virtual {p0}, Lcom/youku/player/base/PlayerController;->goSmall()V

    .line 805
    iput-boolean v2, p0, Lcom/youku/player/base/PlayerController;->isVerticalFullScreen:Z

    .line 806
    const-string v0, "local"

    iget-object v1, p0, Lcom/youku/player/base/PlayerController;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v1}, Lcom/youku/player/module/VideoUrlInfo;->getPlayType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 808
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    invoke-virtual {p0, v0}, Lcom/youku/player/base/PlayerController;->changeConfiguration(Landroid/content/res/Configuration;)V

    .line 814
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->orientationHelper:Lcom/youku/player/util/DeviceOrientationHelper;

    invoke-virtual {v0}, Lcom/youku/player/util/DeviceOrientationHelper;->isFromUser()V

    .line 815
    return-void

    .line 810
    :cond_1
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iput-boolean v2, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isFullScreen:Z

    .line 811
    iput-boolean v2, p0, Lcom/youku/player/base/PlayerController;->isVerticalFullScreen:Z

    .line 812
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    invoke-virtual {p0, v0}, Lcom/youku/player/base/PlayerController;->changeConfiguration(Landroid/content/res/Configuration;)V

    goto :goto_0
.end method

.method public hideInteractivePopWindow()V
    .locals 0

    .prologue
    .line 776
    return-void
.end method

.method public hideTipsPlugin()V
    .locals 2

    .prologue
    .line 1374
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mPlayerAdControl:Lcom/youku/player/ad/PlayerAdControl;

    if-eqz v0, :cond_0

    .line 1375
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mPlayerAdControl:Lcom/youku/player/ad/PlayerAdControl;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/youku/player/ad/PlayerAdControl;->setInvestigateAdHide(Z)V

    .line 1377
    :cond_0
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mPaytipPlugin:Lcom/youku/player/plugin/PluginPayTip;

    if-eqz v0, :cond_1

    .line 1378
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mPaytipPlugin:Lcom/youku/player/plugin/PluginPayTip;

    invoke-virtual {v0}, Lcom/youku/player/plugin/PluginPayTip;->hide()V

    .line 1380
    :cond_1
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mChangeQualityPlugin:Lcom/youku/player/plugin/PluginChangeQuality;

    if-eqz v0, :cond_2

    .line 1381
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mChangeQualityPlugin:Lcom/youku/player/plugin/PluginChangeQuality;

    invoke-virtual {v0}, Lcom/youku/player/plugin/PluginChangeQuality;->hide()V

    .line 1383
    :cond_2
    return-void
.end method

.method public hideWebView()V
    .locals 2

    .prologue
    .line 764
    sget-object v0, Lcom/youku/player/base/PlayerController;->interActionWebView:Lcom/youku/player/ui/widget/InteractionWebView;

    if-eqz v0, :cond_0

    .line 765
    sget-object v0, Lcom/youku/player/base/PlayerController;->interActionWebView:Lcom/youku/player/ui/widget/InteractionWebView;

    invoke-virtual {v0}, Lcom/youku/player/ui/widget/InteractionWebView;->hideWebView()V

    .line 766
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->player_holder:Landroid/widget/FrameLayout;

    sget-object v1, Lcom/youku/player/base/PlayerController;->interActionWebView:Lcom/youku/player/ui/widget/InteractionWebView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 767
    const/4 v0, 0x0

    sput-object v0, Lcom/youku/player/base/PlayerController;->interActionWebView:Lcom/youku/player/ui/widget/InteractionWebView;

    .line 768
    invoke-virtual {p0}, Lcom/youku/player/base/PlayerController;->unHideTipsPlugin()V

    .line 770
    :cond_0
    return-void
.end method

.method public initDanmakuManager(Ljava/lang/String;IZ)V
    .locals 6
    .param p1, "vid"    # Ljava/lang/String;
    .param p2, "cid"    # I
    .param p3, "isCached"    # Z

    .prologue
    .line 1511
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mDanmakuManager:Lcom/youku/player/danmaku/IDanmakuManager;

    if-nez v0, :cond_2

    .line 1512
    if-eqz p3, :cond_1

    .line 1513
    new-instance v0, Lcom/youku/player/danmaku/LocalDanmakuManager;

    iget-object v1, p0, Lcom/youku/player/base/PlayerController;->mActivity:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/youku/player/base/PlayerController;->mYoukuPlayerView:Lcom/youku/player/base/YoukuPlayerView;

    iget-object v3, p0, Lcom/youku/player/base/PlayerController;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-direct {v0, v1, v2, v3}, Lcom/youku/player/danmaku/LocalDanmakuManager;-><init>(Landroid/content/Context;Lcom/youku/player/base/YoukuPlayerView;Lcom/youku/player/plugin/MediaPlayerDelegate;)V

    iput-object v0, p0, Lcom/youku/player/base/PlayerController;->mDanmakuManager:Lcom/youku/player/danmaku/IDanmakuManager;

    .line 1528
    :cond_0
    :goto_0
    return-void

    .line 1515
    :cond_1
    new-instance v0, Lcom/youku/player/danmaku/DanmakuManager;

    iget-object v1, p0, Lcom/youku/player/base/PlayerController;->mActivity:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/youku/player/base/PlayerController;->mYoukuPlayerView:Lcom/youku/player/base/YoukuPlayerView;

    iget-object v3, p0, Lcom/youku/player/base/PlayerController;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/youku/player/danmaku/DanmakuManager;-><init>(Landroid/content/Context;Lcom/youku/player/base/YoukuPlayerView;Lcom/youku/player/plugin/MediaPlayerDelegate;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/youku/player/base/PlayerController;->mDanmakuManager:Lcom/youku/player/danmaku/IDanmakuManager;

    goto :goto_0

    .line 1518
    :cond_2
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mDanmakuManager:Lcom/youku/player/danmaku/IDanmakuManager;

    instance-of v0, v0, Lcom/youku/player/danmaku/DanmakuManager;

    if-eqz v0, :cond_3

    if-eqz p3, :cond_3

    .line 1519
    new-instance v0, Lcom/youku/player/danmaku/LocalDanmakuManager;

    iget-object v1, p0, Lcom/youku/player/base/PlayerController;->mActivity:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/youku/player/base/PlayerController;->mYoukuPlayerView:Lcom/youku/player/base/YoukuPlayerView;

    iget-object v3, p0, Lcom/youku/player/base/PlayerController;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-direct {v0, v1, v2, v3}, Lcom/youku/player/danmaku/LocalDanmakuManager;-><init>(Landroid/content/Context;Lcom/youku/player/base/YoukuPlayerView;Lcom/youku/player/plugin/MediaPlayerDelegate;)V

    iput-object v0, p0, Lcom/youku/player/base/PlayerController;->mDanmakuManager:Lcom/youku/player/danmaku/IDanmakuManager;

    .line 1521
    :cond_3
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mDanmakuManager:Lcom/youku/player/danmaku/IDanmakuManager;

    instance-of v0, v0, Lcom/youku/player/danmaku/LocalDanmakuManager;

    if-eqz v0, :cond_4

    if-nez p3, :cond_4

    .line 1522
    new-instance v0, Lcom/youku/player/danmaku/DanmakuManager;

    iget-object v1, p0, Lcom/youku/player/base/PlayerController;->mActivity:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/youku/player/base/PlayerController;->mYoukuPlayerView:Lcom/youku/player/base/YoukuPlayerView;

    iget-object v3, p0, Lcom/youku/player/base/PlayerController;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/youku/player/danmaku/DanmakuManager;-><init>(Landroid/content/Context;Lcom/youku/player/base/YoukuPlayerView;Lcom/youku/player/plugin/MediaPlayerDelegate;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/youku/player/base/PlayerController;->mDanmakuManager:Lcom/youku/player/danmaku/IDanmakuManager;

    .line 1524
    :cond_4
    if-nez p3, :cond_0

    .line 1525
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mDanmakuManager:Lcom/youku/player/danmaku/IDanmakuManager;

    invoke-interface {v0, p1, p2}, Lcom/youku/player/danmaku/IDanmakuManager;->setVid(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public initLayoutView()V
    .locals 0

    .prologue
    .line 262
    invoke-virtual {p0}, Lcom/youku/player/base/PlayerController;->onCreateInitialize()V

    .line 263
    return-void
.end method

.method public initPlayerPart()V
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mediaPlayer:Lcom/youku/player/BaseMediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mediaPlayer:Lcom/youku/player/BaseMediaPlayer;

    invoke-virtual {v0}, Lcom/youku/player/BaseMediaPlayer;->isListenerInit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 326
    :goto_0
    return-void

    .line 324
    :cond_0
    invoke-direct {p0}, Lcom/youku/player/base/PlayerController;->initPlayAndSurface()V

    .line 325
    invoke-direct {p0}, Lcom/youku/player/base/PlayerController;->initMediaPlayer()V

    goto :goto_0
.end method

.method public isDanmakuClosed()Z
    .locals 1

    .prologue
    .line 1503
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v0}, Lcom/youku/player/goplay/Profile;->getDanmakuSwith(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public isMidAdShowing()Z
    .locals 1

    .prologue
    .line 1423
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mPlayerAdControl:Lcom/youku/player/ad/PlayerAdControl;

    if-eqz v0, :cond_0

    .line 1424
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mPlayerAdControl:Lcom/youku/player/ad/PlayerAdControl;

    invoke-virtual {v0}, Lcom/youku/player/ad/PlayerAdControl;->isMidAdShowing()Z

    move-result v0

    .line 1426
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOnPause()Z
    .locals 1

    .prologue
    .line 1452
    iget-boolean v0, p0, Lcom/youku/player/base/PlayerController;->onPause:Z

    return v0
.end method

.method public isVerticalFullScreen()Z
    .locals 1

    .prologue
    .line 819
    iget-boolean v0, p0, Lcom/youku/player/base/PlayerController;->isVerticalFullScreen:Z

    return v0
.end method

.method public isWebViewShown()Z
    .locals 1

    .prologue
    .line 754
    sget-object v0, Lcom/youku/player/base/PlayerController;->interActionWebView:Lcom/youku/player/ui/widget/InteractionWebView;

    if-nez v0, :cond_0

    .line 755
    const/4 v0, 0x0

    .line 757
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/youku/player/base/PlayerController;->interActionWebView:Lcom/youku/player/ui/widget/InteractionWebView;

    invoke-virtual {v0}, Lcom/youku/player/ui/widget/InteractionWebView;->isWebViewShown()Z

    move-result v0

    goto :goto_0
.end method

.method public land2Port()V
    .locals 4

    .prologue
    .line 1093
    sget-object v0, Lcom/youku/player/LogTag;->TAG_ORIENTATION:Ljava/lang/String;

    const-string/jumbo v1, "start land2Port"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1094
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->layoutHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1095
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->layoutHandler:Landroid/os/Handler;

    new-instance v1, Lcom/youku/player/base/PlayerController$5;

    invoke-direct {v1, p0}, Lcom/youku/player/base/PlayerController$5;-><init>(Lcom/youku/player/base/PlayerController;)V

    iget v2, p0, Lcom/youku/player/base/PlayerController;->DELAY_TIME:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1107
    return-void
.end method

.method public notifyFav()V
    .locals 1

    .prologue
    .line 1291
    invoke-direct {p0}, Lcom/youku/player/base/PlayerController;->setFav()V

    .line 1292
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->pluginManager:Lcom/youku/player/plugin/PluginManager;

    if-eqz v0, :cond_0

    .line 1293
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->pluginManager:Lcom/youku/player/plugin/PluginManager;

    invoke-virtual {v0}, Lcom/youku/player/plugin/PluginManager;->setFav()V

    .line 1294
    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 1355
    const-string v0, "LXF"

    const-string v1, "========YoukuBasePlayerActivity=====onActivityResult=========="

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1356
    const/16 v0, 0x2af7

    if-ne p1, v0, :cond_0

    .line 1357
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mPlayerAdControl:Lcom/youku/player/ad/PlayerAdControl;

    if-eqz v0, :cond_0

    .line 1358
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mPlayerAdControl:Lcom/youku/player/ad/PlayerAdControl;

    invoke-virtual {v0}, Lcom/youku/player/ad/PlayerAdControl;->onLoginDialogComplete()V

    .line 1362
    :cond_0
    return-void
.end method

.method public onAdvInfoGetted(Z)V
    .locals 0
    .param p1, "hasAd"    # Z

    .prologue
    .line 1420
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 1059
    sget-object v0, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    const-string v1, "onBackPressed"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1060
    invoke-virtual {p0}, Lcom/youku/player/base/PlayerController;->onkeyback()V

    .line 1061
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 603
    sget-object v0, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigurationChange:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mPlayerAdControl:Lcom/youku/player/ad/PlayerAdControl;

    if-eqz v0, :cond_0

    .line 605
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mPlayerAdControl:Lcom/youku/player/ad/PlayerAdControl;

    invoke-virtual {v0}, Lcom/youku/player/ad/PlayerAdControl;->cancelSuggestLoginDialog()V

    .line 607
    :cond_0
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-boolean v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isFullScreen:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v0}, Lcom/youku/player/util/PlayerUtil;->isYoukuTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 616
    :goto_0
    return-void

    .line 611
    :cond_1
    iget-boolean v0, p0, Lcom/youku/player/base/PlayerController;->isVerticalFullScreen:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-boolean v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isFullScreen:Z

    if-eqz v0, :cond_2

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    .line 613
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youku/player/base/PlayerController;->isVerticalFullScreen:Z

    .line 614
    :cond_2
    invoke-virtual {p0, p1}, Lcom/youku/player/base/PlayerController;->changeConfiguration(Landroid/content/res/Configuration;)V

    goto :goto_0
.end method

.method public onCreate()V
    .locals 13

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    .line 190
    sget-object v0, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    const-string v1, "YoukuBasePlayerActivity->onCreate"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    sget v0, Lcom/youku/player/base/PlayerController;->mCreateTime:I

    if-nez v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/youku/player/goplay/Profile;->getVideoQualityFromSharedPreferences(Landroid/content/Context;)V

    .line 206
    :cond_0
    sget v0, Lcom/youku/player/base/PlayerController;->mCreateTime:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/youku/player/base/PlayerController;->mCreateTime:I

    .line 207
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mActivity:Landroid/support/v4/app/FragmentActivity;

    iput-object v0, p0, Lcom/youku/player/base/PlayerController;->youkuContext:Landroid/content/Context;

    .line 208
    invoke-static {}, Lcom/baseproject/image/ImageLoaderManager;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/player/base/PlayerController;->mImageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    .line 209
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mActivity:Landroid/support/v4/app/FragmentActivity;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setVolumeControlStream(I)V

    .line 211
    new-instance v11, Lcom/youku/statistics/OfflineStatistics;

    invoke-direct {v11}, Lcom/youku/statistics/OfflineStatistics;-><init>()V

    .line 212
    .local v11, "offline":Lcom/youku/statistics/OfflineStatistics;
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v11, v0}, Lcom/youku/statistics/OfflineStatistics;->sendVV(Landroid/content/Context;)V

    .line 214
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/youku/player/util/PlayerPreference;->init(Landroid/content/Context;)V

    .line 217
    sget-object v0, Lcom/youku/analytics/data/Device;->guid:Ljava/lang/String;

    sput-object v0, Lcom/youku/player/goplay/Profile;->GUID:Ljava/lang/String;

    .line 218
    sget-object v0, Lcom/baseproject/utils/Profile;->User_Agent:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 219
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v0}, Lcom/baseproject/utils/UIUtils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v12, "Youku HD;"

    .line 220
    .local v12, "plant":Ljava/lang/String;
    :goto_0
    const-string v0, "player"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/youku/analytics/data/Device;->appver:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";Android;"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/youku/player/base/PlayerController;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/baseproject/utils/Profile;->initProfile(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 226
    .end local v12    # "plant":Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/baseproject/utils/Profile;->mContext:Landroid/content/Context;

    .line 227
    invoke-static {}, Lcom/youku/uplayer/MediaPlayerProxy;->isUplayerSupported()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 228
    sput-boolean v3, Lcom/youku/player/base/YoukuBasePlayerActivity;->isHighEnd:Z

    .line 230
    const-string v0, "isSoftwareDecode"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/player/util/PlayerPreference;->savePreference(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 231
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/youku/player/base/PlayerController;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v0, v1}, Lcom/youku/player/goplay/Profile;->setVideoType_and_PlayerType(ILandroid/content/Context;)V

    .line 238
    :goto_1
    sget-boolean v0, Lcom/baseproject/utils/Profile;->DEBUG:Z

    invoke-static {v0}, Lcom/youku/player/util/URLContainer;->setDebugMode(Z)V

    .line 239
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/youku/android/player/R$raw;->aes:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    sput-object v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->is:Ljava/io/InputStream;

    .line 240
    new-instance v0, Lcom/youku/player/util/DeviceOrientationHelper;

    iget-object v1, p0, Lcom/youku/player/base/PlayerController;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {v0, v1, p0}, Lcom/youku/player/util/DeviceOrientationHelper;-><init>(Landroid/app/Activity;Lcom/youku/player/util/DeviceOrientationHelper$OrientationChangeCallback;)V

    iput-object v0, p0, Lcom/youku/player/base/PlayerController;->orientationHelper:Lcom/youku/player/util/DeviceOrientationHelper;

    .line 243
    :try_start_0
    const-string v0, "com.youku.network.YoukuAsyncTask"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 244
    const-string v0, "android.os.AsyncTask"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    :goto_2
    invoke-static {}, Lcom/youku/player/config/MediaPlayerConfiguration;->getInstance()Lcom/youku/player/config/MediaPlayerConfiguration;

    move-result-object v0

    iget-object v0, v0, Lcom/youku/player/config/MediaPlayerConfiguration;->mPlantformController:Lcom/youku/player/apiservice/PlantformController;

    iget-object v1, p0, Lcom/youku/player/base/PlayerController;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0, v1}, Lcom/youku/player/apiservice/PlantformController;->initIRVideo(Landroid/content/Context;)V

    .line 249
    invoke-static {}, Lcom/youku/player/util/PlayerUtil;->isLogin()Z

    move-result v0

    iput-boolean v0, p0, Lcom/youku/player/base/PlayerController;->isLogin:Z

    .line 250
    invoke-static {}, Lcom/youku/player/Track;->setFirstVV()V

    .line 251
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/youku/player/ad/AdTaeSDK;->initTaeSDK(Landroid/content/Context;)V

    .line 253
    invoke-static {}, Lcom/baseproject/utils/Util;->hasInternet()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/youku/player/ad/OfflineAdSDK;->canStartNativeAdServer()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0, v5}, Landroid/support/v4/app/FragmentActivity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/youku/player/base/PlayerController;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v1, v5}, Landroid/support/v4/app/FragmentActivity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/offlinead/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 255
    .local v4, "offlineAdPath":Ljava/lang/String;
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/player/base/PlayerController;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v1}, Lcom/youku/player/util/DetailUtil;->getScreenDensity(Landroid/app/Activity;)I

    move-result v1

    iget-object v2, p0, Lcom/youku/player/base/PlayerController;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v2}, Lcom/youku/player/util/DetailUtil;->getScreenWidth(Landroid/app/Activity;)I

    move-result v2

    iget-object v3, p0, Lcom/youku/player/base/PlayerController;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v3}, Lcom/youku/player/util/DetailUtil;->getScreenHeight(Landroid/app/Activity;)I

    move-result v3

    invoke-static {}, Lcn/com/mma/mobile/tracking/OpenUDID_manager;->isInitialized()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-static {}, Lcn/com/mma/mobile/tracking/OpenUDID_manager;->getOpenUDID()Ljava/lang/String;

    move-result-object v5

    :goto_3
    const-string v6, "flv"

    iget-object v7, p0, Lcom/youku/player/base/PlayerController;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v7}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/youku/libmanager/SoUpgradeService;->getVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/youku/player/base/PlayerController;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v8}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/youku/libmanager/SoUpgradeService;->getPid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "1"

    invoke-static/range {v0 .. v9}, Lcom/youku/player/ad/OfflineAdSDK;->initAdSDK(Landroid/content/Context;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    .end local v4    # "offlineAdPath":Ljava/lang/String;
    :cond_2
    return-void

    .line 219
    :cond_3
    const-string v12, "Youku;"

    goto/16 :goto_0

    .line 234
    :cond_4
    const/4 v0, 0x0

    sput-boolean v0, Lcom/youku/player/base/YoukuBasePlayerActivity;->isHighEnd:Z

    .line 235
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/youku/player/base/PlayerController;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v0, v1}, Lcom/youku/player/goplay/Profile;->setVideoType_and_PlayerType(ILandroid/content/Context;)V

    goto/16 :goto_1

    .line 245
    :catch_0
    move-exception v10

    .line 246
    .local v10, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v10}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto/16 :goto_2

    .line 255
    .end local v10    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v4    # "offlineAdPath":Ljava/lang/String;
    :cond_5
    const-string v5, ""

    goto :goto_3
.end method

.method public onCreateInitialize()V
    .locals 2

    .prologue
    const/16 v1, 0x80

    .line 1064
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 1066
    invoke-virtual {p0}, Lcom/youku/player/base/PlayerController;->initPlayerPart()V

    .line 1067
    invoke-static {}, Lcom/baseproject/utils/Util;->hasInternet()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v0}, Lcom/youku/player/module/VideoUrlInfo;->isCached()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1084
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/youku/player/base/PlayerController;->initSound()V

    .line 1085
    return-void

    .line 1072
    :cond_1
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v0}, Lcom/youku/player/module/VideoUrlInfo;->isCached()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    invoke-static {}, Lcom/baseproject/utils/Util;->hasInternet()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/baseproject/utils/Util;->isWifi()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1078
    :cond_3
    invoke-direct {p0}, Lcom/youku/player/base/PlayerController;->getIntentData()V

    .line 1079
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v0, :cond_0

    .line 1081
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->pluginManager:Lcom/youku/player/plugin/PluginManager;

    invoke-virtual {v0}, Lcom/youku/player/plugin/PluginManager;->onVideoInfoGetted()V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 481
    sget-object v0, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    const-string v1, "YoukuBasePlayerActivity->onDestroy"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    sget-object v0, Lcom/youku/player/base/PlayerController;->interActionWebView:Lcom/youku/player/ui/widget/InteractionWebView;

    if-eqz v0, :cond_0

    .line 483
    sput-object v6, Lcom/youku/player/base/PlayerController;->interActionWebView:Lcom/youku/player/ui/widget/InteractionWebView;

    .line 485
    :cond_0
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v0, :cond_7

    .line 487
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mPlayerAdControl:Lcom/youku/player/ad/PlayerAdControl;

    if-eqz v0, :cond_1

    .line 488
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mPlayerAdControl:Lcom/youku/player/ad/PlayerAdControl;

    invoke-virtual {v0}, Lcom/youku/player/ad/PlayerAdControl;->destroy()V

    .line 489
    iput-object v6, p0, Lcom/youku/player/base/PlayerController;->mPlayerAdControl:Lcom/youku/player/ad/PlayerAdControl;

    .line 491
    :cond_1
    iput-object v6, p0, Lcom/youku/player/base/PlayerController;->mPaytipPlugin:Lcom/youku/player/plugin/PluginPayTip;

    .line 492
    iput-object v6, p0, Lcom/youku/player/base/PlayerController;->mChangeQualityPlugin:Lcom/youku/player/plugin/PluginChangeQuality;

    .line 493
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mDanmakuManager:Lcom/youku/player/danmaku/IDanmakuManager;

    if-eqz v0, :cond_2

    .line 494
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mDanmakuManager:Lcom/youku/player/danmaku/IDanmakuManager;

    invoke-interface {v0}, Lcom/youku/player/danmaku/IDanmakuManager;->releaseDanmakuWhenDestroy()V

    .line 496
    :cond_2
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mActivity:Landroid/support/v4/app/FragmentActivity;

    iget-object v1, p0, Lcom/youku/player/base/PlayerController;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v2, p0, Lcom/youku/player/base/PlayerController;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-boolean v2, v2, Lcom/youku/player/plugin/MediaPlayerDelegate;->isFullScreen:Z

    invoke-static {}, Lcom/youku/player/config/MediaPlayerConfiguration;->getInstance()Lcom/youku/player/config/MediaPlayerConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Lcom/youku/player/config/MediaPlayerConfiguration;->getVersionCode()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/youku/player/config/MediaPlayerConfiguration;->getInstance()Lcom/youku/player/config/MediaPlayerConfiguration;

    move-result-object v4

    iget v4, v4, Lcom/youku/player/config/MediaPlayerConfiguration;->mTestid:I

    invoke-static {}, Lcom/youku/player/config/MediaPlayerConfiguration;->getInstance()Lcom/youku/player/config/MediaPlayerConfiguration;

    move-result-object v5

    iget v5, v5, Lcom/youku/player/config/MediaPlayerConfiguration;->mIstest:I

    invoke-static/range {v0 .. v5}, Lcom/youku/player/Track;->forceEnd(Landroid/content/Context;Lcom/youku/player/module/VideoUrlInfo;ZLjava/lang/String;II)V

    .line 500
    invoke-static {}, Lcom/youku/player/Track;->clear()V

    .line 502
    :try_start_0
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->surfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mediaPlayer:Lcom/youku/player/BaseMediaPlayer;

    if-eqz v0, :cond_3

    .line 504
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->surfaceHolder:Landroid/view/SurfaceHolder;

    iget-object v1, p0, Lcom/youku/player/base/PlayerController;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->mediaPlayer:Lcom/youku/player/BaseMediaPlayer;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 507
    :cond_3
    sget-object v0, Lcom/youku/player/base/PlayerController;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_4

    .line 508
    sget-object v0, Lcom/youku/player/base/PlayerController;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 509
    :cond_4
    sget-object v0, Lcom/youku/player/danmaku/DanmakuManager;->danmakuHandler:Landroid/os/Handler;

    if-eqz v0, :cond_5

    .line 510
    sget-object v0, Lcom/youku/player/danmaku/DanmakuManager;->danmakuHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 515
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->orientationHelper:Lcom/youku/player/util/DeviceOrientationHelper;

    if-eqz v0, :cond_6

    .line 516
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->orientationHelper:Lcom/youku/player/util/DeviceOrientationHelper;

    invoke-virtual {v0}, Lcom/youku/player/util/DeviceOrientationHelper;->disableListener()V

    .line 517
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->orientationHelper:Lcom/youku/player/util/DeviceOrientationHelper;

    invoke-virtual {v0, v6}, Lcom/youku/player/util/DeviceOrientationHelper;->setCallback(Lcom/youku/player/util/DeviceOrientationHelper$OrientationChangeCallback;)V

    .line 518
    iput-object v6, p0, Lcom/youku/player/base/PlayerController;->orientationHelper:Lcom/youku/player/util/DeviceOrientationHelper;

    .line 520
    :cond_6
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mediaPlayer:Lcom/youku/player/BaseMediaPlayer;

    invoke-virtual {v0, v6}, Lcom/youku/player/BaseMediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 521
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mediaPlayer:Lcom/youku/player/BaseMediaPlayer;

    invoke-virtual {v0}, Lcom/youku/player/BaseMediaPlayer;->clearListener()V

    .line 522
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iput-object v6, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mediaPlayer:Lcom/youku/player/BaseMediaPlayer;

    .line 523
    iput-object v6, p0, Lcom/youku/player/base/PlayerController;->mPluginSmallScreenPlay:Lcom/youku/player/plugin/PluginOverlay;

    .line 524
    iput-object v6, p0, Lcom/youku/player/base/PlayerController;->pluginManager:Lcom/youku/player/plugin/PluginManager;

    .line 525
    iput-object v6, p0, Lcom/youku/player/base/PlayerController;->mPluginFullScreenPlay:Lcom/youku/player/plugin/PluginOverlay;

    .line 526
    iput-object v6, p0, Lcom/youku/player/base/PlayerController;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    .line 527
    iput-object v6, p0, Lcom/youku/player/base/PlayerController;->surfaceView:Lcom/youku/player/NewSurfaceView;

    .line 528
    iput-object v6, p0, Lcom/youku/player/base/PlayerController;->surfaceHolder:Landroid/view/SurfaceHolder;

    .line 529
    iput-object v6, p0, Lcom/youku/player/base/PlayerController;->mYoukuPlayerView:Lcom/youku/player/base/YoukuPlayerView;

    .line 530
    iput-object v6, p0, Lcom/youku/player/base/PlayerController;->youkuContext:Landroid/content/Context;

    .line 531
    iput-object v6, p0, Lcom/youku/player/base/PlayerController;->mMediaPlayerInit:Lcom/youku/player/base/MediaPlayerInit;

    .line 532
    const/4 v0, 0x0

    sput-boolean v0, Lcom/youku/player/unicom/ChinaUnicomFreeFlowUtil;->isAlertDialogShown:Z

    .line 533
    sget v0, Lcom/youku/player/base/PlayerController;->mCreateTime:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/youku/player/base/PlayerController;->mCreateTime:I

    if-gtz v0, :cond_7

    .line 534
    invoke-static {v6}, Lcom/youku/uplayer/EGLUtil;->setSurfaceHolder(Landroid/view/SurfaceHolder;)V

    .line 536
    :cond_7
    return-void

    .line 512
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onDownloadSubtitle(Lcom/youku/player/subtitle/DownloadedSubtitle;I)V
    .locals 3
    .param p1, "subtitle"    # Lcom/youku/player/subtitle/DownloadedSubtitle;
    .param p2, "type"    # I

    .prologue
    .line 149
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mSubtitleOperate:Lcom/youku/player/subtitle/SubtitleOperate;

    if-nez v0, :cond_0

    .line 150
    new-instance v0, Lcom/youku/player/subtitle/SubtitleOperate;

    iget-object v1, p0, Lcom/youku/player/base/PlayerController;->mYoukuPlayerView:Lcom/youku/player/base/YoukuPlayerView;

    iget-object v2, p0, Lcom/youku/player/base/PlayerController;->pluginManager:Lcom/youku/player/plugin/PluginManager;

    invoke-direct {v0, v1, v2}, Lcom/youku/player/subtitle/SubtitleOperate;-><init>(Lcom/youku/player/base/YoukuPlayerView;Lcom/youku/player/plugin/PluginManager;)V

    iput-object v0, p0, Lcom/youku/player/base/PlayerController;->mSubtitleOperate:Lcom/youku/player/subtitle/SubtitleOperate;

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mSubtitleOperate:Lcom/youku/player/subtitle/SubtitleOperate;

    invoke-virtual {v0, p1, p2}, Lcom/youku/player/subtitle/SubtitleOperate;->onDownloadSubtitle(Lcom/youku/player/subtitle/DownloadedSubtitle;I)V

    .line 154
    return-void
.end method

.method public onFullScreenPlayComplete()V
    .locals 2

    .prologue
    .line 1168
    sget-object v0, Lcom/youku/player/LogTag;->TAG_ORIENTATION:Ljava/lang/String;

    const-string v1, "onFullScreenPlayComplete"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1169
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->orientationHelper:Lcom/youku/player/util/DeviceOrientationHelper;

    if-eqz v0, :cond_0

    .line 1170
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->orientationHelper:Lcom/youku/player/util/DeviceOrientationHelper;

    invoke-virtual {v0}, Lcom/youku/player/util/DeviceOrientationHelper;->disableListener()V

    .line 1171
    :cond_0
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mActivity:Landroid/support/v4/app/FragmentActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setRequestedOrientation(I)V

    .line 1172
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    .line 896
    sparse-switch p1, :sswitch_data_0

    .line 936
    :goto_0
    const/4 v1, 0x0

    :cond_0
    :goto_1
    :sswitch_0
    return v1

    .line 899
    :sswitch_1
    :try_start_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-gtz v2, :cond_0

    .line 902
    iget-object v1, p0, Lcom/youku/player/base/PlayerController;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-boolean v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->isFullScreen:Z

    goto :goto_1

    .line 905
    :sswitch_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-gtz v2, :cond_0

    .line 908
    iget-object v2, p0, Lcom/youku/player/base/PlayerController;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-boolean v2, v2, Lcom/youku/player/plugin/MediaPlayerDelegate;->isDLNA:Z

    if-nez v2, :cond_0

    .line 909
    iget-object v2, p0, Lcom/youku/player/base/PlayerController;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-boolean v2, v2, Lcom/youku/player/plugin/MediaPlayerDelegate;->isFullScreen:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/youku/player/base/PlayerController;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v2, v2, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-static {v2}, Lcom/youku/player/util/PlayerUtil;->isFromLocal(Lcom/youku/player/module/VideoUrlInfo;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/youku/player/base/PlayerController;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v2, v2, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/youku/player/base/PlayerController;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v2, v2, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-boolean v2, v2, Lcom/youku/player/module/VideoUrlInfo;->isHLS:Z

    if-nez v2, :cond_1

    .line 912
    invoke-virtual {p0}, Lcom/youku/player/base/PlayerController;->goSmall()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 933
    :catch_0
    move-exception v0

    .line 934
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 915
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/youku/player/base/PlayerController;->onkeyback()V

    goto :goto_1

    .line 922
    :sswitch_3
    iget-object v1, p0, Lcom/youku/player/base/PlayerController;->keyCounter:Lcom/youku/player/reporter/KeyCounter;

    iget-object v2, p0, Lcom/youku/player/base/PlayerController;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v1, v2, p1}, Lcom/youku/player/reporter/KeyCounter;->addKey(Landroid/content/Context;I)Z

    .line 923
    invoke-direct {p0}, Lcom/youku/player/base/PlayerController;->volumeDown()Z

    move-result v1

    goto :goto_1

    .line 925
    :sswitch_4
    iget-object v1, p0, Lcom/youku/player/base/PlayerController;->keyCounter:Lcom/youku/player/reporter/KeyCounter;

    iget-object v2, p0, Lcom/youku/player/base/PlayerController;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v1, v2, p1}, Lcom/youku/player/reporter/KeyCounter;->addKey(Landroid/content/Context;I)Z

    .line 926
    invoke-direct {p0}, Lcom/youku/player/base/PlayerController;->volumeUp()Z

    move-result v1

    goto :goto_1

    .line 928
    :sswitch_5
    iget-object v1, p0, Lcom/youku/player/base/PlayerController;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-boolean v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->isFullScreen:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 896
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_2
        0x18 -> :sswitch_4
        0x19 -> :sswitch_3
        0x52 -> :sswitch_1
        0x54 -> :sswitch_5
        0x7d -> :sswitch_0
    .end sparse-switch
.end method

.method public onLowMemory()V
    .locals 0

    .prologue
    .line 1192
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 1193
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 403
    sget-object v0, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    const-string v1, "YoukuBasePlayerActivity->onNewIntent()"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youku/player/base/PlayerController;->mIsOnNewIntent:Z

    .line 405
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mPlayerAdControl:Lcom/youku/player/ad/PlayerAdControl;

    invoke-virtual {v0}, Lcom/youku/player/ad/PlayerAdControl;->releaseInvestigate()V

    .line 406
    return-void
.end method

.method public onParseNoRightVideoSuccess()V
    .locals 2

    .prologue
    .line 590
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    :goto_0
    invoke-static {v0}, Lcom/youku/player/util/PlayerUtil;->useUplayer(Lcom/youku/player/module/VideoUrlInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 591
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/youku/player/base/PlayerController;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v0, v1}, Lcom/youku/player/goplay/Profile;->setVideoType_and_PlayerType(ILandroid/content/Context;)V

    .line 595
    :goto_1
    const/4 v0, 0x2

    sput v0, Lcom/youku/player/goplay/Profile;->from:I

    .line 596
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->pluginManager:Lcom/youku/player/plugin/PluginManager;

    invoke-virtual {v0}, Lcom/youku/player/plugin/PluginManager;->onVideoInfoGetted()V

    .line 597
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->pluginManager:Lcom/youku/player/plugin/PluginManager;

    invoke-virtual {v0}, Lcom/youku/player/plugin/PluginManager;->onChangeVideo()V

    .line 598
    invoke-virtual {p0}, Lcom/youku/player/base/PlayerController;->goFullScreen()V

    .line 599
    return-void

    .line 590
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 593
    :cond_1
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/youku/player/base/PlayerController;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v0, v1}, Lcom/youku/player/goplay/Profile;->setVideoType_and_PlayerType(ILandroid/content/Context;)V

    goto :goto_1
.end method

.method public onPause()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 345
    sget-object v1, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    const-string v2, "YoukuBasePlayerActivity->onPause"

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    iput-boolean v3, p0, Lcom/youku/player/base/PlayerController;->onPause:Z

    .line 347
    iget-object v1, p0, Lcom/youku/player/base/PlayerController;->mDanmakuManager:Lcom/youku/player/danmaku/IDanmakuManager;

    if-eqz v1, :cond_0

    .line 348
    iget-object v1, p0, Lcom/youku/player/base/PlayerController;->mDanmakuManager:Lcom/youku/player/danmaku/IDanmakuManager;

    invoke-interface {v1}, Lcom/youku/player/danmaku/IDanmakuManager;->hideDanmakuWhenOpen()V

    .line 350
    :cond_0
    iget-object v1, p0, Lcom/youku/player/base/PlayerController;->pluginManager:Lcom/youku/player/plugin/PluginManager;

    if-eqz v1, :cond_1

    .line 352
    iget-object v1, p0, Lcom/youku/player/base/PlayerController;->pluginManager:Lcom/youku/player/plugin/PluginManager;

    invoke-virtual {v1}, Lcom/youku/player/plugin/PluginManager;->onPause()V

    .line 354
    :cond_1
    iget-object v1, p0, Lcom/youku/player/base/PlayerController;->mYoukuPlayerView:Lcom/youku/player/base/YoukuPlayerView;

    iget-boolean v1, v1, Lcom/youku/player/base/YoukuPlayerView;->firstOnloaded:Z

    if-nez v1, :cond_2

    .line 355
    iput-boolean v3, p0, Lcom/youku/player/base/PlayerController;->pauseBeforeLoaded:Z

    .line 357
    :cond_2
    sget-object v1, Lcom/youku/player/base/PlayerController;->handler:Landroid/os/Handler;

    if-eqz v1, :cond_3

    .line 358
    sget-object v1, Lcom/youku/player/base/PlayerController;->handler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 359
    :cond_3
    iget-object v1, p0, Lcom/youku/player/base/PlayerController;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v1, :cond_7

    .line 360
    iget-object v1, p0, Lcom/youku/player/base/PlayerController;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-boolean v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->hasRight:Z

    if-eqz v1, :cond_6

    .line 361
    iget-object v1, p0, Lcom/youku/player/base/PlayerController;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v1}, Lcom/youku/player/plugin/MediaPlayerDelegate;->getCurrentPosition()I

    move-result v0

    .line 362
    .local v0, "nowPostition":I
    if-lez v0, :cond_4

    .line 363
    iget-object v1, p0, Lcom/youku/player/base/PlayerController;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v1, v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->setAdPausedPosition(I)V

    .line 365
    :cond_4
    iget-object v1, p0, Lcom/youku/player/base/PlayerController;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iput-boolean v3, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->isPause:Z

    .line 366
    invoke-static {}, Lcom/youku/player/config/MediaPlayerConfiguration;->getInstance()Lcom/youku/player/config/MediaPlayerConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/youku/player/config/MediaPlayerConfiguration;->hideDanmaku()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/youku/player/base/PlayerController;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/youku/player/base/PlayerController;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-boolean v1, v1, Lcom/youku/player/module/VideoUrlInfo;->isHLS:Z

    if-eqz v1, :cond_5

    .line 368
    iget-object v1, p0, Lcom/youku/player/base/PlayerController;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v1}, Lcom/youku/player/plugin/MediaPlayerDelegate;->resetAndReleaseDanmakuInfo()V

    .line 370
    :cond_5
    iget-object v1, p0, Lcom/youku/player/base/PlayerController;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iput-boolean v4, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->isLoading:Z

    .line 371
    iget-object v1, p0, Lcom/youku/player/base/PlayerController;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v1, :cond_6

    .line 372
    iget-object v1, p0, Lcom/youku/player/base/PlayerController;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iput-boolean v4, v1, Lcom/youku/player/module/VideoUrlInfo;->isFirstLoaded:Z

    .line 374
    .end local v0    # "nowPostition":I
    :cond_6
    iget-object v1, p0, Lcom/youku/player/base/PlayerController;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v1}, Lcom/youku/player/plugin/MediaPlayerDelegate;->release()V

    .line 376
    :cond_7
    iget-object v1, p0, Lcom/youku/player/base/PlayerController;->surfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/youku/player/base/PlayerController;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->mediaPlayer:Lcom/youku/player/BaseMediaPlayer;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/youku/player/base/PlayerController;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-boolean v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->hasRight:Z

    if-nez v1, :cond_8

    .line 378
    iget-object v1, p0, Lcom/youku/player/base/PlayerController;->surfaceHolder:Landroid/view/SurfaceHolder;

    iget-object v2, p0, Lcom/youku/player/base/PlayerController;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v2, v2, Lcom/youku/player/plugin/MediaPlayerDelegate;->mediaPlayer:Lcom/youku/player/BaseMediaPlayer;

    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 380
    :cond_8
    invoke-virtual {p0}, Lcom/youku/player/base/PlayerController;->setPlayerBlack()V

    .line 381
    iget-object v1, p0, Lcom/youku/player/base/PlayerController;->mPlayerAdControl:Lcom/youku/player/ad/PlayerAdControl;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/youku/player/base/PlayerController;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/youku/player/base/PlayerController;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/youku/player/base/PlayerController;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v1}, Lcom/youku/player/module/VideoUrlInfo;->isDRMVideo()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-static {}, Lcom/youku/libmanager/SoUpgradeManager;->getInstance()Lcom/youku/libmanager/SoUpgradeManager;

    move-result-object v1

    const-string v2, "libWasabiJni.so"

    invoke-virtual {v1, v2}, Lcom/youku/libmanager/SoUpgradeManager;->isSoDownloaded(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 382
    :cond_9
    iget-object v1, p0, Lcom/youku/player/base/PlayerController;->mPlayerAdControl:Lcom/youku/player/ad/PlayerAdControl;

    invoke-virtual {v1}, Lcom/youku/player/ad/PlayerAdControl;->pauseInteractiveAd()V

    .line 383
    iget-object v1, p0, Lcom/youku/player/base/PlayerController;->mPlayerAdControl:Lcom/youku/player/ad/PlayerAdControl;

    invoke-virtual {v1}, Lcom/youku/player/ad/PlayerAdControl;->onPause()V

    .line 384
    iget-object v1, p0, Lcom/youku/player/base/PlayerController;->mPlayerAdControl:Lcom/youku/player/ad/PlayerAdControl;

    invoke-virtual {v1}, Lcom/youku/player/ad/PlayerAdControl;->dismissPauseAD()V

    .line 385
    iget-object v1, p0, Lcom/youku/player/base/PlayerController;->mPlayerAdControl:Lcom/youku/player/ad/PlayerAdControl;

    invoke-virtual {v1}, Lcom/youku/player/ad/PlayerAdControl;->onMidAdLoadingEndListener()V

    .line 387
    :cond_a
    invoke-virtual {p0}, Lcom/youku/player/base/PlayerController;->dissmissPauseAD()V

    .line 388
    iget-object v1, p0, Lcom/youku/player/base/PlayerController;->keyCounter:Lcom/youku/player/reporter/KeyCounter;

    invoke-virtual {v1}, Lcom/youku/player/reporter/KeyCounter;->stop()V

    .line 389
    iget-object v1, p0, Lcom/youku/player/base/PlayerController;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v1}, Lcom/youku/player/Track;->pauseForIRVideo(Landroid/content/Context;)V

    .line 390
    invoke-static {}, Lcom/youku/player/Track;->pause()V

    .line 391
    invoke-static {v3}, Lcom/youku/player/Track;->setOnPaused(Z)V

    .line 392
    return-void
.end method

.method public onPayClick()V
    .locals 1

    .prologue
    .line 1365
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v0, :cond_0

    .line 1366
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->needPay()V

    .line 1368
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/16 v4, 0x400

    .line 410
    sget-object v0, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    const-string v1, "YoukuBasePlayerActivity->onResume()"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youku/player/base/PlayerController;->onPause:Z

    .line 412
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mActivity:Landroid/support/v4/app/FragmentActivity;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 414
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-boolean v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->hasRight:Z

    if-nez v0, :cond_1

    .line 448
    :cond_0
    :goto_0
    return-void

    .line 417
    :cond_1
    sget-object v0, Lcom/youku/player/base/PlayerController;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 418
    sget-object v0, Lcom/youku/player/base/PlayerController;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/youku/player/base/PlayerController$3;

    invoke-direct {v1, p0}, Lcom/youku/player/base/PlayerController$3;-><init>(Lcom/youku/player/base/PlayerController;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 433
    :cond_2
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->pluginManager:Lcom/youku/player/plugin/PluginManager;

    invoke-virtual {v0}, Lcom/youku/player/plugin/PluginManager;->onResume()V

    .line 434
    invoke-direct {p0}, Lcom/youku/player/base/PlayerController;->callPluginBack()V

    .line 436
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-boolean v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isFullScreen:Z

    if-eqz v0, :cond_4

    .line 437
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v4, v4}, Landroid/view/Window;->setFlags(II)V

    .line 442
    :goto_1
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mPlayerAdControl:Lcom/youku/player/ad/PlayerAdControl;

    if-eqz v0, :cond_3

    .line 443
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mPlayerAdControl:Lcom/youku/player/ad/PlayerAdControl;

    invoke-virtual {v0}, Lcom/youku/player/ad/PlayerAdControl;->doOnResumeOperation()V

    .line 445
    :cond_3
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mDanmakuManager:Lcom/youku/player/danmaku/IDanmakuManager;

    if-eqz v0, :cond_0

    .line 446
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mDanmakuManager:Lcom/youku/player/danmaku/IDanmakuManager;

    invoke-interface {v0}, Lcom/youku/player/danmaku/IDanmakuManager;->hideDanmakuAgain()V

    goto :goto_0

    .line 440
    :cond_4
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/youku/player/base/PlayerController;->changeConfiguration(Landroid/content/res/Configuration;)V

    goto :goto_1
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 890
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-boolean v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isFullScreen:Z

    return v0
.end method

.method public onSkipAdClicked()V
    .locals 0

    .prologue
    .line 1414
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 1349
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->pluginManager:Lcom/youku/player/plugin/PluginManager;

    if-eqz v0, :cond_0

    .line 1350
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->pluginManager:Lcom/youku/player/plugin/PluginManager;

    invoke-virtual {v0}, Lcom/youku/player/plugin/PluginManager;->onStart()V

    .line 1351
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 396
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mPlayerAdControl:Lcom/youku/player/ad/PlayerAdControl;

    if-eqz v0, :cond_0

    .line 397
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mPlayerAdControl:Lcom/youku/player/ad/PlayerAdControl;

    invoke-virtual {v0}, Lcom/youku/player/ad/PlayerAdControl;->onStop()V

    .line 399
    :cond_0
    return-void
.end method

.method protected onkeyback()V
    .locals 12

    .prologue
    const/4 v11, -0x1

    .line 941
    :try_start_0
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v0, :cond_2

    .line 942
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->getPlayRequest()Lcom/youku/player/request/PlayRequest;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 943
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->getPlayRequest()Lcom/youku/player/request/PlayRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/player/request/PlayRequest;->cancel()V

    .line 944
    :cond_0
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-boolean v0, v0, Lcom/youku/player/module/VideoUrlInfo;->isHLS:Z

    if-eqz v0, :cond_2

    .line 945
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v0}, Lcom/youku/statistics/IRVideoWrapper;->videoEnd(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1006
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mActivity:Landroid/support/v4/app/FragmentActivity;

    iget-object v1, p0, Lcom/youku/player/base/PlayerController;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0, v11}, Landroid/support/v4/app/FragmentActivity;->setResult(I)V

    .line 1007
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1008
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 1010
    :cond_1
    :goto_0
    return-void

    .line 949
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-boolean v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isStartPlay:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-boolean v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isVVBegin998Send:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-boolean v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isChangeLan:Z

    if-nez v0, :cond_4

    .line 951
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v0}, Lcom/youku/player/module/VideoUrlInfo;->getVid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 954
    :cond_3
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mActivity:Landroid/support/v4/app/FragmentActivity;

    iget-object v1, p0, Lcom/youku/player/base/PlayerController;->id:Ljava/lang/String;

    sget-object v2, Lcom/youku/analytics/data/Device;->guid:Ljava/lang/String;

    const-string v3, "net"

    const-string v4, "-998"

    iget-object v5, p0, Lcom/youku/player/base/PlayerController;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v5, v5, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-nez v5, :cond_5

    sget-object v5, Lcom/youku/player/module/VideoUrlInfo$Source;->YOUKU:Lcom/youku/player/module/VideoUrlInfo$Source;

    :goto_1
    sget v6, Lcom/youku/player/goplay/Profile;->videoQuality:I

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/youku/player/base/PlayerController;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-boolean v8, v8, Lcom/youku/player/plugin/MediaPlayerDelegate;->isFullScreen:Z

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/youku/player/base/PlayerController;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v10}, Lcom/youku/player/plugin/MediaPlayerDelegate;->getPlayVideoInfo()Lcom/youku/player/module/PlayVideoInfo;

    move-result-object v10

    invoke-static/range {v0 .. v10}, Lcom/youku/player/Track;->onError(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/youku/player/module/VideoUrlInfo$Source;IIZLcom/youku/player/module/VideoUrlInfo;Lcom/youku/player/module/PlayVideoInfo;)V

    .line 964
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isVVBegin998Send:Z

    .line 997
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isStartPlay:Z

    .line 999
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-boolean v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isVVBegin998Send:Z

    if-nez v0, :cond_a

    .line 1000
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->onVVEnd()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1006
    :goto_3
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mActivity:Landroid/support/v4/app/FragmentActivity;

    iget-object v1, p0, Lcom/youku/player/base/PlayerController;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0, v11}, Landroid/support/v4/app/FragmentActivity;->setResult(I)V

    .line 1007
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1008
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_0

    .line 954
    :cond_5
    :try_start_2
    iget-object v5, p0, Lcom/youku/player/base/PlayerController;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v5, v5, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v5, v5, Lcom/youku/player/module/VideoUrlInfo;->mSource:Lcom/youku/player/module/VideoUrlInfo$Source;

    goto :goto_1

    .line 965
    :cond_6
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-boolean v0, v0, Lcom/youku/player/module/VideoUrlInfo;->IsSendVV:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-boolean v0, v0, Lcom/youku/player/module/VideoUrlInfo;->isSendVVEnd:Z

    if-nez v0, :cond_4

    .line 967
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mActivity:Landroid/support/v4/app/FragmentActivity;

    iget-object v1, p0, Lcom/youku/player/base/PlayerController;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Lcom/youku/player/util/DisposableStatsUtils;->disposeNotPlayedAd(Landroid/content/Context;Lcom/youku/player/module/VideoUrlInfo;I)V

    .line 968
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-boolean v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isADShowing:Z

    if-eqz v0, :cond_7

    .line 969
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mActivity:Landroid/support/v4/app/FragmentActivity;

    iget-object v1, p0, Lcom/youku/player/base/PlayerController;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v1}, Lcom/youku/player/module/VideoUrlInfo;->getVid()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/youku/analytics/data/Device;->guid:Ljava/lang/String;

    iget-object v3, p0, Lcom/youku/player/base/PlayerController;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v3, v3, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v3, v3, Lcom/youku/player/module/VideoUrlInfo;->playType:Ljava/lang/String;

    const-string v4, "-995"

    iget-object v5, p0, Lcom/youku/player/base/PlayerController;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v5, v5, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v5, v5, Lcom/youku/player/module/VideoUrlInfo;->mSource:Lcom/youku/player/module/VideoUrlInfo$Source;

    iget-object v6, p0, Lcom/youku/player/base/PlayerController;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v6, v6, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v6}, Lcom/youku/player/module/VideoUrlInfo;->getCurrentQuality()I

    move-result v6

    iget-object v7, p0, Lcom/youku/player/base/PlayerController;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v7, v7, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v7}, Lcom/youku/player/module/VideoUrlInfo;->getProgress()I

    move-result v7

    iget-object v8, p0, Lcom/youku/player/base/PlayerController;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-boolean v8, v8, Lcom/youku/player/plugin/MediaPlayerDelegate;->isFullScreen:Z

    iget-object v9, p0, Lcom/youku/player/base/PlayerController;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v9, v9, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v10, p0, Lcom/youku/player/base/PlayerController;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v10}, Lcom/youku/player/plugin/MediaPlayerDelegate;->getPlayVideoInfo()Lcom/youku/player/module/PlayVideoInfo;

    move-result-object v10

    invoke-static/range {v0 .. v10}, Lcom/youku/player/Track;->onError(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/youku/player/module/VideoUrlInfo$Source;IIZLcom/youku/player/module/VideoUrlInfo;Lcom/youku/player/module/PlayVideoInfo;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_2

    .line 1004
    :catch_0
    move-exception v0

    .line 1006
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mActivity:Landroid/support/v4/app/FragmentActivity;

    iget-object v1, p0, Lcom/youku/player/base/PlayerController;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0, v11}, Landroid/support/v4/app/FragmentActivity;->setResult(I)V

    .line 1007
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1008
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto/16 :goto_0

    .line 980
    :cond_7
    :try_start_3
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mActivity:Landroid/support/v4/app/FragmentActivity;

    iget-object v1, p0, Lcom/youku/player/base/PlayerController;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v1}, Lcom/youku/player/module/VideoUrlInfo;->getVid()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/youku/analytics/data/Device;->guid:Ljava/lang/String;

    iget-object v3, p0, Lcom/youku/player/base/PlayerController;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v3, v3, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v3, v3, Lcom/youku/player/module/VideoUrlInfo;->mSource:Lcom/youku/player/module/VideoUrlInfo$Source;

    invoke-static {v3}, Lcom/youku/player/util/PlayerUtil;->isBaiduQvodSource(Lcom/youku/player/module/VideoUrlInfo$Source;)Z

    move-result v3

    if-eqz v3, :cond_9

    const-string v3, "net"

    :goto_4
    const-string v4, "-997"

    iget-object v5, p0, Lcom/youku/player/base/PlayerController;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v5, v5, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v5, v5, Lcom/youku/player/module/VideoUrlInfo;->mSource:Lcom/youku/player/module/VideoUrlInfo$Source;

    iget-object v6, p0, Lcom/youku/player/base/PlayerController;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v6, v6, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v6}, Lcom/youku/player/module/VideoUrlInfo;->getCurrentQuality()I

    move-result v6

    iget-object v7, p0, Lcom/youku/player/base/PlayerController;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v7, v7, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v7}, Lcom/youku/player/module/VideoUrlInfo;->getProgress()I

    move-result v7

    iget-object v8, p0, Lcom/youku/player/base/PlayerController;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-boolean v8, v8, Lcom/youku/player/plugin/MediaPlayerDelegate;->isFullScreen:Z

    iget-object v9, p0, Lcom/youku/player/base/PlayerController;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v9, v9, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v10, p0, Lcom/youku/player/base/PlayerController;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v10}, Lcom/youku/player/plugin/MediaPlayerDelegate;->getPlayVideoInfo()Lcom/youku/player/module/PlayVideoInfo;

    move-result-object v10

    invoke-static/range {v0 .. v10}, Lcom/youku/player/Track;->onError(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/youku/player/module/VideoUrlInfo$Source;IIZLcom/youku/player/module/VideoUrlInfo;Lcom/youku/player/module/PlayVideoInfo;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_2

    .line 1006
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/youku/player/base/PlayerController;->mActivity:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/youku/player/base/PlayerController;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v1, v11}, Landroid/support/v4/app/FragmentActivity;->setResult(I)V

    .line 1007
    iget-object v1, p0, Lcom/youku/player/base/PlayerController;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_8

    .line 1008
    iget-object v1, p0, Lcom/youku/player/base/PlayerController;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    :cond_8
    throw v0

    .line 980
    :cond_9
    :try_start_4
    iget-object v3, p0, Lcom/youku/player/base/PlayerController;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v3, v3, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v3, v3, Lcom/youku/player/module/VideoUrlInfo;->playType:Ljava/lang/String;

    goto :goto_4

    .line 1002
    :cond_a
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/youku/player/module/VideoUrlInfo;->isSendVVEnd:Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_3
.end method

.method public openDanmaku()V
    .locals 1

    .prologue
    .line 1485
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mDanmakuManager:Lcom/youku/player/danmaku/IDanmakuManager;

    if-eqz v0, :cond_0

    .line 1486
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mDanmakuManager:Lcom/youku/player/danmaku/IDanmakuManager;

    invoke-interface {v0}, Lcom/youku/player/danmaku/IDanmakuManager;->openDanmaku()V

    .line 1488
    :cond_0
    return-void
.end method

.method public playCompleteGoSmall()V
    .locals 1

    .prologue
    .line 874
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mScreenChangeListener:Lcom/youku/player/apiservice/ScreenChangeListener;

    invoke-interface {v0}, Lcom/youku/player/apiservice/ScreenChangeListener;->onSmallscreenListener()V

    .line 876
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-nez v0, :cond_0

    .line 886
    :goto_0
    return-void

    .line 878
    :cond_0
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v0}, Lcom/youku/player/util/PlayerUtil;->isYoukuTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 879
    invoke-virtual {p0}, Lcom/youku/player/base/PlayerController;->goSmall()V

    goto :goto_0

    .line 881
    :cond_1
    invoke-virtual {p0}, Lcom/youku/player/base/PlayerController;->goSmall()V

    .line 882
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->orientationHelper:Lcom/youku/player/util/DeviceOrientationHelper;

    invoke-virtual {v0}, Lcom/youku/player/util/DeviceOrientationHelper;->disableListener()V

    goto :goto_0
.end method

.method public playNoRightVideo(Ljava/lang/String;)V
    .locals 12
    .param p1, "mUri"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 540
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 541
    :cond_0
    sput v10, Lcom/youku/player/goplay/Profile;->from:I

    .line 587
    :cond_1
    :goto_0
    return-void

    .line 544
    :cond_2
    const-string/jumbo v7, "youku://"

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 545
    const-string/jumbo v7, "youku://"

    const-string v8, "http://"

    invoke-virtual {p1, v7, v8}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 552
    iget-object v7, p0, Lcom/youku/player/base/PlayerController;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v7, v7, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-nez v7, :cond_3

    .line 553
    iget-object v7, p0, Lcom/youku/player/base/PlayerController;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    new-instance v8, Lcom/youku/player/module/VideoUrlInfo;

    invoke-direct {v8}, Lcom/youku/player/module/VideoUrlInfo;-><init>()V

    iput-object v8, v7, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    .line 554
    :cond_3
    const-string v7, "?"

    invoke-virtual {p1, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 555
    .local v5, "queryPosition":I
    const/4 v7, -0x1

    if-eq v5, v7, :cond_1

    .line 556
    new-instance v6, Ljava/lang/String;

    invoke-virtual {p1, v11, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-static {v7}, Landroid/webkit/URLUtil;->decode([B)[B

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>([B)V

    .line 558
    .local v6, "url":Ljava/lang/String;
    const/4 v7, 0x0

    invoke-static {v7}, Lcom/youku/player/util/PlayerUtil;->useUplayer(Lcom/youku/player/module/VideoUrlInfo;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 559
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 560
    .local v2, "m3u8Url":Ljava/lang/StringBuffer;
    const-string v7, "#PLSEXTM3U\n#EXT-X-TARGETDURATION:10000\n"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "#EXT-X-VERSION:2\n#EXT-X-DISCONTINUITY\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "#EXTINF:10000\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "\n#EXT-X-ENDLIST\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 564
    iget-object v7, p0, Lcom/youku/player/base/PlayerController;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v7, v7, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/youku/player/module/VideoUrlInfo;->setUrl(Ljava/lang/String;)V

    .line 568
    .end local v2    # "m3u8Url":Ljava/lang/StringBuffer;
    :goto_1
    add-int/lit8 v7, v5, 0x1

    invoke-virtual {p1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "&"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 569
    .local v4, "params":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    array-length v7, v4

    if-ge v1, v7, :cond_8

    .line 570
    aget-object v7, v4, v1

    const-string v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 571
    .local v3, "param":[Ljava/lang/String;
    aget-object v7, v3, v11

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "vid"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 572
    iget-object v7, p0, Lcom/youku/player/base/PlayerController;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v7, v7, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    aget-object v8, v3, v10

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/youku/player/module/VideoUrlInfo;->setVid(Ljava/lang/String;)V

    .line 574
    :cond_4
    aget-object v7, v3, v11

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "title"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 576
    :try_start_0
    iget-object v7, p0, Lcom/youku/player/base/PlayerController;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v7, v7, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    const/4 v8, 0x1

    aget-object v8, v3, v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    const-string v9, "UTF-8"

    invoke-static {v8, v9}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/youku/player/module/VideoUrlInfo;->setTitle(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 569
    :cond_5
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 547
    .end local v1    # "i":I
    .end local v3    # "param":[Ljava/lang/String;
    .end local v4    # "params":[Ljava/lang/String;
    .end local v5    # "queryPosition":I
    .end local v6    # "url":Ljava/lang/String;
    :cond_6
    sput v10, Lcom/youku/player/goplay/Profile;->from:I

    goto/16 :goto_0

    .line 566
    .restart local v5    # "queryPosition":I
    .restart local v6    # "url":Ljava/lang/String;
    :cond_7
    iget-object v7, p0, Lcom/youku/player/base/PlayerController;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v7, v7, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v7, v6}, Lcom/youku/player/module/VideoUrlInfo;->setUrl(Ljava/lang/String;)V

    goto :goto_1

    .line 578
    .restart local v1    # "i":I
    .restart local v3    # "param":[Ljava/lang/String;
    .restart local v4    # "params":[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 579
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_3

    .line 586
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v3    # "param":[Ljava/lang/String;
    :cond_8
    invoke-virtual {p0}, Lcom/youku/player/base/PlayerController;->onParseNoRightVideoSuccess()V

    goto/16 :goto_0
.end method

.method public playReleateNoRightVideo()V
    .locals 1

    .prologue
    .line 1344
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->pluginManager:Lcom/youku/player/plugin/PluginManager;

    invoke-virtual {v0}, Lcom/youku/player/plugin/PluginManager;->onPlayReleateNoRightVideo()V

    .line 1345
    return-void
.end method

.method public port2Land()V
    .locals 4

    .prologue
    .line 1111
    sget-object v0, Lcom/youku/player/LogTag;->TAG_ORIENTATION:Ljava/lang/String;

    const-string/jumbo v1, "start port2Land"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1112
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->layoutHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1113
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->layoutHandler:Landroid/os/Handler;

    new-instance v1, Lcom/youku/player/base/PlayerController$6;

    invoke-direct {v1, p0}, Lcom/youku/player/base/PlayerController$6;-><init>(Lcom/youku/player/base/PlayerController;)V

    iget v2, p0, Lcom/youku/player/base/PlayerController;->DELAY_TIME:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1127
    return-void
.end method

.method public removeHandlerMessage()V
    .locals 2

    .prologue
    .line 619
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->layoutHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 620
    return-void
.end method

.method public resizeMediaPlayer(I)V
    .locals 2
    .param p1, "percent"    # I

    .prologue
    .line 1088
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mYoukuPlayerView:Lcom/youku/player/base/YoukuPlayerView;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/youku/player/base/YoukuPlayerView;->resizeVideoView(IZ)V

    .line 1089
    return-void
.end method

.method public reverseLand()V
    .locals 4

    .prologue
    .line 1131
    sget-object v0, Lcom/youku/player/LogTag;->TAG_ORIENTATION:Ljava/lang/String;

    const-string/jumbo v1, "reverseLand"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1132
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->layoutHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1133
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->layoutHandler:Landroid/os/Handler;

    new-instance v1, Lcom/youku/player/base/PlayerController$7;

    invoke-direct {v1, p0}, Lcom/youku/player/base/PlayerController$7;-><init>(Lcom/youku/player/base/PlayerController;)V

    iget v2, p0, Lcom/youku/player/base/PlayerController;->DELAY_TIME:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1145
    return-void
.end method

.method public reversePort()V
    .locals 4

    .prologue
    .line 1149
    sget-object v0, Lcom/youku/player/LogTag;->TAG_ORIENTATION:Ljava/lang/String;

    const-string/jumbo v1, "reversePort"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1150
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->layoutHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1151
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->layoutHandler:Landroid/os/Handler;

    new-instance v1, Lcom/youku/player/base/PlayerController$8;

    invoke-direct {v1, p0}, Lcom/youku/player/base/PlayerController$8;-><init>(Lcom/youku/player/base/PlayerController;)V

    iget v2, p0, Lcom/youku/player/base/PlayerController;->DELAY_TIME:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1164
    return-void
.end method

.method public sendDanmaku(IIILjava/lang/String;)V
    .locals 1
    .param p1, "size"    # I
    .param p2, "position"    # I
    .param p3, "color"    # I
    .param p4, "content"    # Ljava/lang/String;

    .prologue
    .line 1475
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mDanmakuManager:Lcom/youku/player/danmaku/IDanmakuManager;

    if-eqz v0, :cond_0

    .line 1476
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mDanmakuManager:Lcom/youku/player/danmaku/IDanmakuManager;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/youku/player/danmaku/IDanmakuManager;->sendDanmaku(IIILjava/lang/String;)V

    .line 1478
    :cond_0
    return-void
.end method

.method public sendDanmaku(Lmaster/flame/danmaku/danmaku/model/LiveDanmakuInfo;)V
    .locals 4
    .param p1, "liveDanmakuInfo"    # Lmaster/flame/danmaku/danmaku/model/LiveDanmakuInfo;

    .prologue
    .line 1481
    const/16 v0, 0x19

    const/4 v1, 0x1

    iget v2, p1, Lmaster/flame/danmaku/danmaku/model/LiveDanmakuInfo;->color:I

    iget-object v3, p1, Lmaster/flame/danmaku/danmaku/model/LiveDanmakuInfo;->title:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/youku/player/base/PlayerController;->sendDanmaku(IIILjava/lang/String;)V

    .line 1482
    return-void
.end method

.method public setAdState(Lcom/youku/player/ad/AdState;)V
    .locals 1
    .param p1, "state"    # Lcom/youku/player/ad/AdState;

    .prologue
    .line 1430
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mPlayerAdControl:Lcom/youku/player/ad/PlayerAdControl;

    if-eqz v0, :cond_0

    .line 1431
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mPlayerAdControl:Lcom/youku/player/ad/PlayerAdControl;

    invoke-virtual {v0, p1}, Lcom/youku/player/ad/PlayerAdControl;->setAdState(Lcom/youku/player/ad/AdState;)V

    .line 1433
    :cond_0
    return-void
.end method

.method public setDebugInfo(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 1332
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mYoukuPlayerView:Lcom/youku/player/base/YoukuPlayerView;

    if-eqz v0, :cond_0

    .line 1333
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mYoukuPlayerView:Lcom/youku/player/base/YoukuPlayerView;

    invoke-virtual {v0, p1}, Lcom/youku/player/base/YoukuPlayerView;->setDebugText(Ljava/lang/String;)V

    .line 1335
    :cond_0
    return-void
.end method

.method public setOnPause(Z)V
    .locals 0
    .param p1, "onPause"    # Z

    .prologue
    .line 1437
    iput-boolean p1, p0, Lcom/youku/player/base/PlayerController;->onPause:Z

    .line 1438
    return-void
.end method

.method public setOrientionDisable()V
    .locals 1

    .prologue
    .line 1175
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->orientationHelper:Lcom/youku/player/util/DeviceOrientationHelper;

    if-eqz v0, :cond_0

    .line 1176
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->orientationHelper:Lcom/youku/player/util/DeviceOrientationHelper;

    invoke-virtual {v0}, Lcom/youku/player/util/DeviceOrientationHelper;->disableListener()V

    .line 1177
    :cond_0
    return-void
.end method

.method public setOrientionEnable()V
    .locals 1

    .prologue
    .line 1180
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->orientationHelper:Lcom/youku/player/util/DeviceOrientationHelper;

    if-eqz v0, :cond_0

    .line 1181
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->orientationHelper:Lcom/youku/player/util/DeviceOrientationHelper;

    invoke-virtual {v0}, Lcom/youku/player/util/DeviceOrientationHelper;->enableListener()V

    .line 1182
    :cond_0
    return-void
.end method

.method public setPauseBeforeLoaded(Z)V
    .locals 0
    .param p1, "isPause"    # Z

    .prologue
    .line 1467
    iput-boolean p1, p0, Lcom/youku/player/base/PlayerController;->pauseBeforeLoaded:Z

    .line 1468
    return-void
.end method

.method public setPlayerBlack()V
    .locals 1

    .prologue
    .line 1338
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mYoukuPlayerView:Lcom/youku/player/base/YoukuPlayerView;

    if-eqz v0, :cond_0

    .line 1339
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mYoukuPlayerView:Lcom/youku/player/base/YoukuPlayerView;

    invoke-virtual {v0}, Lcom/youku/player/base/YoukuPlayerView;->setPlayerBlack()V

    .line 1341
    :cond_0
    return-void
.end method

.method public setPlayerFullScreen()V
    .locals 4

    .prologue
    const/16 v3, 0x400

    const/4 v2, 0x1

    .line 694
    sget-object v0, Lcom/youku/player/base/PlayerController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setPlayerFullScreen"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 695
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-nez v0, :cond_1

    .line 726
    :cond_0
    :goto_0
    return-void

    .line 697
    :cond_1
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iput-boolean v2, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isFullScreen:Z

    .line 698
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    sget-object v1, Lcom/youku/player/plugin/Orientation;->LAND:Lcom/youku/player/plugin/Orientation;

    iput-object v1, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->currentOriention:Lcom/youku/player/plugin/Orientation;

    .line 699
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mScreenChangeListener:Lcom/youku/player/apiservice/ScreenChangeListener;

    invoke-interface {v0}, Lcom/youku/player/apiservice/ScreenChangeListener;->onFullscreenListener()V

    .line 700
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v0, :cond_2

    const-string v0, "local"

    iget-object v1, p0, Lcom/youku/player/base/PlayerController;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v1}, Lcom/youku/player/module/VideoUrlInfo;->getPlayType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/youku/player/base/PlayerController;->isVerticalFullScreen:Z

    if-nez v0, :cond_2

    .line 703
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->orientationHelper:Lcom/youku/player/util/DeviceOrientationHelper;

    invoke-virtual {v0}, Lcom/youku/player/util/DeviceOrientationHelper;->disableListener()V

    .line 705
    :cond_2
    sget v0, Lcom/youku/player/goplay/Profile;->from:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v0}, Lcom/youku/player/util/PlayerUtil;->isYoukuTablet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v0, :cond_3

    const-string v0, "local"

    iget-object v1, p0, Lcom/youku/player/base/PlayerController;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v1}, Lcom/youku/player/module/VideoUrlInfo;->getPlayType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-boolean v0, v0, Lcom/youku/player/module/VideoUrlInfo;->isHLS:Z

    if-nez v0, :cond_4

    .line 710
    :cond_3
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->orientationHelper:Lcom/youku/player/util/DeviceOrientationHelper;

    invoke-virtual {v0}, Lcom/youku/player/util/DeviceOrientationHelper;->enableListener()V

    .line 712
    :cond_4
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Landroid/view/Window;->setFlags(II)V

    .line 714
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mYoukuPlayerView:Lcom/youku/player/base/YoukuPlayerView;

    invoke-virtual {v0}, Lcom/youku/player/base/YoukuPlayerView;->setFullscreenBack()V

    .line 716
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->isAdvShowFinished()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-boolean v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isADShowing:Z

    if-eqz v0, :cond_5

    .line 717
    invoke-virtual {p0, v2}, Lcom/youku/player/base/PlayerController;->updatePlugin(I)V

    .line 723
    :goto_1
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->isOfflinePrerollAd()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mSubtitleOperate:Lcom/youku/player/subtitle/SubtitleOperate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v0, :cond_0

    .line 724
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mSubtitleOperate:Lcom/youku/player/subtitle/SubtitleOperate;

    iget-object v1, p0, Lcom/youku/player/base/PlayerController;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v1}, Lcom/youku/player/module/VideoUrlInfo;->getProgress()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/youku/player/subtitle/SubtitleOperate;->showSubtitle(I)V

    goto/16 :goto_0

    .line 718
    :cond_5
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mPlayerAdControl:Lcom/youku/player/ad/PlayerAdControl;

    invoke-virtual {v0}, Lcom/youku/player/ad/PlayerAdControl;->isMidAdShowing()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 719
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/youku/player/base/PlayerController;->updatePlugin(I)V

    goto :goto_1

    .line 721
    :cond_6
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/youku/player/base/PlayerController;->updatePlugin(I)V

    goto :goto_1
.end method

.method public setPluginHolderPaddingZero()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1405
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->player_holder:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 1406
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->player_holder:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 1408
    :cond_0
    return-void
.end method

.method public setScreenChangeListener(Lcom/youku/player/apiservice/ScreenChangeListener;)V
    .locals 0
    .param p1, "screenChangeListener"    # Lcom/youku/player/apiservice/ScreenChangeListener;

    .prologue
    .line 1532
    iput-object p1, p0, Lcom/youku/player/base/PlayerController;->mScreenChangeListener:Lcom/youku/player/apiservice/ScreenChangeListener;

    .line 1533
    return-void
.end method

.method public setUserCallback(Lcom/youku/player/apiservice/IUserCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/youku/player/apiservice/IUserCallback;

    .prologue
    .line 1558
    iput-object p1, p0, Lcom/youku/player/base/PlayerController;->mUserCallback:Lcom/youku/player/apiservice/IUserCallback;

    .line 1559
    return-void
.end method

.method public setmPluginFullScreenPlay(Lcom/youku/player/plugin/PluginOverlay;)V
    .locals 0
    .param p1, "mPluginFullScreenPlay"    # Lcom/youku/player/plugin/PluginOverlay;

    .prologue
    .line 1309
    iput-object p1, p0, Lcom/youku/player/base/PlayerController;->mPluginFullScreenPlay:Lcom/youku/player/plugin/PluginOverlay;

    .line 1310
    return-void
.end method

.method public setmPluginSmallScreenPlay(Lcom/youku/player/plugin/PluginOverlay;)V
    .locals 0
    .param p1, "mPluginSmallScreenPlay"    # Lcom/youku/player/plugin/PluginOverlay;

    .prologue
    .line 1313
    iput-object p1, p0, Lcom/youku/player/base/PlayerController;->mPluginSmallScreenPlay:Lcom/youku/player/plugin/PluginOverlay;

    .line 1314
    return-void
.end method

.method public showSmoothChangeQualityTip(Z)V
    .locals 1
    .param p1, "start"    # Z

    .prologue
    .line 1551
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mChangeQualityPlugin:Lcom/youku/player/plugin/PluginChangeQuality;

    if-eqz v0, :cond_0

    .line 1552
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mChangeQualityPlugin:Lcom/youku/player/plugin/PluginChangeQuality;

    invoke-virtual {v0, p1}, Lcom/youku/player/plugin/PluginChangeQuality;->showSmoothChangeQualityTip(Z)V

    .line 1554
    :cond_0
    return-void
.end method

.method public showWebView(ILandroid/support/v4/app/Fragment;)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "fragment"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 735
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mPlayerAdControl:Lcom/youku/player/ad/PlayerAdControl;

    invoke-virtual {v0}, Lcom/youku/player/ad/PlayerAdControl;->isPauseAdVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 751
    :cond_0
    :goto_0
    return-void

    .line 738
    :cond_1
    invoke-virtual {p0}, Lcom/youku/player/base/PlayerController;->hideTipsPlugin()V

    .line 739
    sget-object v0, Lcom/youku/player/base/PlayerController;->interActionWebView:Lcom/youku/player/ui/widget/InteractionWebView;

    if-eqz v0, :cond_2

    .line 740
    invoke-virtual {p0}, Lcom/youku/player/base/PlayerController;->hideWebView()V

    .line 742
    :cond_2
    if-ltz p1, :cond_0

    if-eqz p2, :cond_0

    .line 743
    new-instance v0, Lcom/youku/player/ui/widget/InteractionWebView;

    iget-object v1, p0, Lcom/youku/player/base/PlayerController;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {v0, v1, p1, p2}, Lcom/youku/player/ui/widget/InteractionWebView;-><init>(Landroid/support/v4/app/FragmentActivity;ILandroid/support/v4/app/Fragment;)V

    sput-object v0, Lcom/youku/player/base/PlayerController;->interActionWebView:Lcom/youku/player/ui/widget/InteractionWebView;

    .line 744
    sget-object v0, Lcom/youku/player/base/PlayerController;->interActionWebView:Lcom/youku/player/ui/widget/InteractionWebView;

    invoke-virtual {v0}, Lcom/youku/player/ui/widget/InteractionWebView;->addInteractionFragment()V

    .line 745
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->player_holder:Landroid/widget/FrameLayout;

    sget-object v1, Lcom/youku/player/base/PlayerController;->interActionWebView:Lcom/youku/player/ui/widget/InteractionWebView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 747
    sget-object v0, Lcom/youku/player/base/PlayerController;->interActionWebView:Lcom/youku/player/ui/widget/InteractionWebView;

    invoke-virtual {v0}, Lcom/youku/player/ui/widget/InteractionWebView;->isWebViewShown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 748
    sget-object v0, Lcom/youku/player/base/PlayerController;->interActionWebView:Lcom/youku/player/ui/widget/InteractionWebView;

    invoke-virtual {v0}, Lcom/youku/player/ui/widget/InteractionWebView;->setVisiable()V

    goto :goto_0
.end method

.method public unHideTipsPlugin()V
    .locals 2

    .prologue
    .line 1389
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mPlayerAdControl:Lcom/youku/player/ad/PlayerAdControl;

    if-eqz v0, :cond_0

    .line 1390
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mPlayerAdControl:Lcom/youku/player/ad/PlayerAdControl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/youku/player/ad/PlayerAdControl;->setInvestigateAdHide(Z)V

    .line 1392
    :cond_0
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mPaytipPlugin:Lcom/youku/player/plugin/PluginPayTip;

    if-eqz v0, :cond_1

    .line 1393
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mPaytipPlugin:Lcom/youku/player/plugin/PluginPayTip;

    invoke-virtual {v0}, Lcom/youku/player/plugin/PluginPayTip;->unHide()V

    .line 1395
    :cond_1
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mChangeQualityPlugin:Lcom/youku/player/plugin/PluginChangeQuality;

    if-eqz v0, :cond_2

    .line 1396
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mChangeQualityPlugin:Lcom/youku/player/plugin/PluginChangeQuality;

    invoke-virtual {v0}, Lcom/youku/player/plugin/PluginChangeQuality;->unHide()V

    .line 1398
    :cond_2
    return-void
.end method

.method public updatePlugin(I)V
    .locals 2
    .param p1, "pluginID"    # I

    .prologue
    .line 1216
    sget-object v0, Lcom/youku/player/base/PlayerController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "\u6570\u7ec4\u8bbf\u95ee updatePlugin"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1217
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->pluginManager:Lcom/youku/player/plugin/PluginManager;

    if-nez v0, :cond_0

    .line 1260
    :goto_0
    return-void

    .line 1220
    :cond_0
    iget-object v0, p0, Lcom/youku/player/base/PlayerController;->mActivity:Landroid/support/v4/app/FragmentActivity;

    new-instance v1, Lcom/youku/player/base/PlayerController$9;

    invoke-direct {v1, p0, p1}, Lcom/youku/player/base/PlayerController$9;-><init>(Lcom/youku/player/base/PlayerController;I)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public updateVideoId(Ljava/lang/String;)V
    .locals 0
    .param p1, "videoId"    # Ljava/lang/String;

    .prologue
    .line 1457
    iput-object p1, p0, Lcom/youku/player/base/PlayerController;->id:Ljava/lang/String;

    .line 1458
    return-void
.end method
