.class public Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;
.super Lcom/youku/player/plugin/PluginOverlay;
.source "PluginFullScreenPlayHLS.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS$FullScreenGestureListener;
    }
.end annotation


# static fields
.field private static final HIDER_FLAGS:I = 0x6


# instance fields
.field private _offsetY:F

.field private final _zoom:I

.field public audio:Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS;

.field battery:Lcom/youku/phone/detail/plugin/fullscreen/BatteryView;

.field batteryTv:Landroid/widget/TextView;

.field black:Landroid/view/View;

.field public bright:Lcom/tudou/detail/plugin/hls/FullScreenBrightHLS;

.field container:Landroid/view/View;

.field containerView:Landroid/view/View;

.field context:Landroid/content/Context;

.field private curBrightness:I

.field private directionalLock:I

.field public errorPage:Landroid/view/View;

.field firstLoaded:Z

.field hideBrightRunnable:Ljava/lang/Runnable;

.field hideVolumeRunnable:Ljava/lang/Runnable;

.field private hls_play_btn:Landroid/widget/ImageView;

.field private hls_play_img:Landroid/widget/ImageView;

.field private isGesture:Z

.field isRealVideoStart:Z

.field private isstart:Z

.field private landscapeLimitSlope:F

.field mActivity:Lcom/youku/player/base/YoukuBasePlayerActivity;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field mHandler:Landroid/os/Handler;

.field mLayoutInflater:Landroid/view/LayoutInflater;

.field private mSystemUiHider:Lcom/youku/fullscreen/SystemUiHider;

.field private maxBrightness:I

.field private maxVolume:I

.field private offsetY:F

.field private play_controller_header:Landroid/view/View;

.field play_controller_logo:Landroid/view/View;

.field private play_controller_right:Landroid/view/View;

.field private play_layout:Landroid/view/View;

.field private portraitLimitSlope:F

.field progressLoading:Lcom/tudou/detail/plugin/hls/FullScreenHLSLoading;

.field private retry:Landroid/view/View;

.field private settingBright:Landroid/view/View;

.field private settingVolume:Landroid/view/View;

.field private sp:Landroid/content/SharedPreferences;

.field stopUserAction:Z

.field time:Landroid/widget/TextView;

.field userAction:Lcom/tudou/detail/plugin/hls/FullScreenUserActionHLS;

.field private video_title:Landroid/widget/TextView;

.field public volume:Lcom/tudou/detail/plugin/hls/FullScreenVolumeHLS;

.field wifi:Landroid/widget/ImageView;

.field private final zoom:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/tudou/ui/activity/DetailHLSActivity;Lcom/youku/player/plugin/MediaPlayerDelegate;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "activity"    # Lcom/tudou/ui/activity/DetailHLSActivity;
    .param p3, "mediaPlayerDelegate"    # Lcom/youku/player/plugin/MediaPlayerDelegate;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 144
    invoke-direct {p0, p1, p3}, Lcom/youku/player/plugin/PluginOverlay;-><init>(Landroid/content/Context;Lcom/youku/player/plugin/MediaPlayerDelegate;)V

    .line 72
    iput-boolean v2, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->isGesture:Z

    .line 74
    iput-object v3, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->mGestureDetector:Landroid/view/GestureDetector;

    .line 76
    iput v0, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->offsetY:F

    .line 77
    iput v0, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->_offsetY:F

    .line 79
    const/16 v0, 0xf

    iput v0, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->zoom:I

    .line 83
    iput v1, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->curBrightness:I

    .line 84
    const/16 v0, 0xff

    iput v0, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->maxBrightness:I

    .line 86
    iput v2, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->_zoom:I

    .line 104
    iput v1, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->directionalLock:I

    .line 105
    const/high16 v0, 0x40800000    # 4.0f

    iput v0, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->portraitLimitSlope:F

    .line 106
    const/high16 v0, 0x3e800000    # 0.25f

    iput v0, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->landscapeLimitSlope:F

    .line 109
    iput-boolean v1, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->stopUserAction:Z

    .line 116
    iput-boolean v1, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->isRealVideoStart:Z

    .line 140
    iput-boolean v1, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->isstart:Z

    .line 603
    new-instance v0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS$6;

    invoke-direct {v0, p0}, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS$6;-><init>(Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;)V

    iput-object v0, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->hideVolumeRunnable:Ljava/lang/Runnable;

    .line 612
    new-instance v0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS$7;

    invoke-direct {v0, p0}, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS$7;-><init>(Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;)V

    iput-object v0, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->hideBrightRunnable:Ljava/lang/Runnable;

    .line 620
    new-instance v0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS$8;

    invoke-direct {v0, p0}, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS$8;-><init>(Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;)V

    iput-object v0, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->mHandler:Landroid/os/Handler;

    .line 145
    iput-object p1, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->context:Landroid/content/Context;

    .line 146
    iput-object p2, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->mActivity:Lcom/youku/player/base/YoukuBasePlayerActivity;

    .line 147
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 148
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->sp:Landroid/content/SharedPreferences;

    .line 149
    iget-object v0, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030150

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->containerView:Landroid/view/View;

    .line 151
    invoke-direct {p0}, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->initView()V

    .line 152
    invoke-virtual {p0}, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->initVolumeAndBright()V

    .line 153
    iget-object v0, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->containerView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->addView(Landroid/view/View;)V

    .line 155
    invoke-direct {p0, p2}, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->setupmSystemUiHider(Lcom/tudou/ui/activity/DetailHLSActivity;)V

    .line 156
    invoke-direct {p0}, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->addContainerClickListener()V

    .line 157
    return-void
.end method

.method static synthetic access$100(Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->endGesture()V

    return-void
.end method

.method static synthetic access$1000(Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;)I
    .locals 1
    .param p0, "x0"    # Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;

    .prologue
    .line 51
    iget v0, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->maxBrightness:I

    return v0
.end method

.method static synthetic access$1100(Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->sp:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->settingVolume:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->settingBright:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->play_layout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;
    .param p1, "x1"    # Z

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->isstart:Z

    return p1
.end method

.method static synthetic access$200(Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;)I
    .locals 1
    .param p0, "x0"    # Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;

    .prologue
    .line 51
    iget v0, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->directionalLock:I

    return v0
.end method

.method static synthetic access$202(Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;I)I
    .locals 0
    .param p0, "x0"    # Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;
    .param p1, "x1"    # I

    .prologue
    .line 51
    iput p1, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->directionalLock:I

    return p1
.end method

.method static synthetic access$300(Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;)Landroid/view/GestureDetector;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->mGestureDetector:Landroid/view/GestureDetector;

    return-object v0
.end method

.method static synthetic access$400(Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->showController()V

    return-void
.end method

.method static synthetic access$500(Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->doClickContainer()V

    return-void
.end method

.method static synthetic access$600(Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;)F
    .locals 1
    .param p0, "x0"    # Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;

    .prologue
    .line 51
    iget v0, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->portraitLimitSlope:F

    return v0
.end method

.method static synthetic access$700(Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;)F
    .locals 1
    .param p0, "x0"    # Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;

    .prologue
    .line 51
    iget v0, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->offsetY:F

    return v0
.end method

.method static synthetic access$702(Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;F)F
    .locals 0
    .param p0, "x0"    # Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;
    .param p1, "x1"    # F

    .prologue
    .line 51
    iput p1, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->offsetY:F

    return p1
.end method

.method static synthetic access$716(Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;F)F
    .locals 1
    .param p0, "x0"    # Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;
    .param p1, "x1"    # F

    .prologue
    .line 51
    iget v0, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->offsetY:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->offsetY:F

    return v0
.end method

.method static synthetic access$800(Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;)I
    .locals 1
    .param p0, "x0"    # Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;

    .prologue
    .line 51
    iget v0, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->maxVolume:I

    return v0
.end method

.method static synthetic access$802(Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;I)I
    .locals 0
    .param p0, "x0"    # Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;
    .param p1, "x1"    # I

    .prologue
    .line 51
    iput p1, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->maxVolume:I

    return p1
.end method

.method static synthetic access$900(Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;)F
    .locals 1
    .param p0, "x0"    # Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;

    .prologue
    .line 51
    iget v0, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->_offsetY:F

    return v0
.end method

.method static synthetic access$902(Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;F)F
    .locals 0
    .param p0, "x0"    # Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;
    .param p1, "x1"    # F

    .prologue
    .line 51
    iput p1, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->_offsetY:F

    return p1
.end method

.method static synthetic access$916(Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;F)F
    .locals 1
    .param p0, "x0"    # Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;
    .param p1, "x1"    # F

    .prologue
    .line 51
    iget v0, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->_offsetY:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->_offsetY:F

    return v0
.end method

.method private addContainerClickListener()V
    .locals 2

    .prologue
    .line 309
    iget-boolean v0, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->isGesture:Z

    if-nez v0, :cond_0

    .line 325
    :goto_0
    return-void

    .line 312
    :cond_0
    iget-object v0, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->container:Landroid/view/View;

    new-instance v1, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS$4;

    invoke-direct {v1, p0}, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS$4;-><init>(Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0
.end method

.method private doClickContainer()V
    .locals 1

    .prologue
    .line 447
    iget-object v0, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->play_controller_header:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 448
    invoke-virtual {p0}, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->hideControllerAndSystemUI()V

    .line 453
    :goto_0
    return-void

    .line 450
    :cond_0
    invoke-direct {p0}, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->showController()V

    goto :goto_0
.end method

.method private endGesture()V
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-boolean v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isADShowing:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->firstLoaded:Z

    if-nez v0, :cond_0

    .line 346
    :cond_0
    return-void
.end method

.method private feshstatData()V
    .locals 8

    .prologue
    .line 277
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 278
    invoke-static {}, Lcom/youku/util/Util;->isWifi()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 279
    iget-object v3, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->wifi:Landroid/widget/ImageView;

    const v6, 0x7f020a67

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 286
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 287
    .local v4, "time1":J
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 288
    .local v0, "mCalendar":Ljava/util/Calendar;
    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 289
    const/16 v3, 0xb

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 290
    .local v1, "mHour":I
    const/16 v3, 0xc

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 300
    .local v2, "mMinuts":I
    const/16 v3, 0xa

    if-ge v2, v3, :cond_2

    .line 301
    iget-object v3, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->time:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 306
    :goto_1
    return-void

    .line 281
    .end local v0    # "mCalendar":Ljava/util/Calendar;
    .end local v1    # "mHour":I
    .end local v2    # "mMinuts":I
    .end local v4    # "time1":J
    :cond_0
    iget-object v3, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->wifi:Landroid/widget/ImageView;

    const v6, 0x7f020610

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 284
    :cond_1
    iget-object v3, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->wifi:Landroid/widget/ImageView;

    const v6, 0x7f020a68

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 303
    .restart local v0    # "mCalendar":Ljava/util/Calendar;
    .restart local v1    # "mHour":I
    .restart local v2    # "mMinuts":I
    .restart local v4    # "time1":J
    :cond_2
    iget-object v3, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->time:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private firstLoadStuff()V
    .locals 2

    .prologue
    .line 907
    const-string v0, "plugin"

    const-string v1, "firstLoadStuff"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 908
    iget-object v0, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-nez v0, :cond_1

    .line 912
    :cond_0
    :goto_0
    return-void

    .line 911
    :cond_1
    invoke-virtual {p0}, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->resizeMediaPlayer()V

    goto :goto_0
.end method

.method private hasVirtualButtonBar()Z
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 439
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v1, v2, :cond_0

    .line 440
    iget-object v1, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 442
    :cond_0
    return v0
.end method

.method private initView()V
    .locals 5

    .prologue
    const/16 v4, 0xf

    .line 173
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->context:Landroid/content/Context;

    new-instance v2, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS$FullScreenGestureListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS$FullScreenGestureListener;-><init>(Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS$1;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->mGestureDetector:Landroid/view/GestureDetector;

    .line 175
    iget-object v0, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->containerView:Landroid/view/View;

    const v1, 0x7f0c0690

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->play_layout:Landroid/view/View;

    .line 176
    iget-object v0, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->containerView:Landroid/view/View;

    const v1, 0x7f0c0692

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->hls_play_btn:Landroid/widget/ImageView;

    .line 178
    iget-object v0, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->containerView:Landroid/view/View;

    const v1, 0x7f0c0691

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->hls_play_img:Landroid/widget/ImageView;

    .line 180
    new-instance v0, Lcom/tudou/detail/plugin/hls/FullScreenUserActionHLS;

    iget-object v1, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, p0}, Lcom/tudou/detail/plugin/hls/FullScreenUserActionHLS;-><init>(Landroid/os/Handler;Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;)V

    iput-object v0, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->userAction:Lcom/tudou/detail/plugin/hls/FullScreenUserActionHLS;

    .line 181
    new-instance v0, Lcom/tudou/detail/plugin/hls/FullScreenHLSLoading;

    iget-object v1, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->containerView:Landroid/view/View;

    const-string v2, "12345"

    invoke-direct {v0, v1, v2, p0}, Lcom/tudou/detail/plugin/hls/FullScreenHLSLoading;-><init>(Landroid/view/View;Ljava/lang/String;Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;)V

    iput-object v0, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->progressLoading:Lcom/tudou/detail/plugin/hls/FullScreenHLSLoading;

    .line 182
    iget-object v0, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->progressLoading:Lcom/tudou/detail/plugin/hls/FullScreenHLSLoading;

    invoke-virtual {v0}, Lcom/tudou/detail/plugin/hls/FullScreenHLSLoading;->initSeekLoading()V

    .line 183
    iget-object v0, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->containerView:Landroid/view/View;

    const v1, 0x7f0c0b37

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->settingBright:Landroid/view/View;

    .line 185
    iget-object v0, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->containerView:Landroid/view/View;

    const v1, 0x7f0c0b38

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->settingVolume:Landroid/view/View;

    .line 187
    iget-object v0, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->containerView:Landroid/view/View;

    const v1, 0x7f0c068f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->container:Landroid/view/View;

    .line 189
    new-instance v0, Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS;

    iget-object v1, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->containerView:Landroid/view/View;

    iget-object v2, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->mActivity:Lcom/youku/player/base/YoukuBasePlayerActivity;

    iget-object v3, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->userAction:Lcom/tudou/detail/plugin/hls/FullScreenUserActionHLS;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS;-><init>(Landroid/view/View;Lcom/youku/player/base/YoukuBasePlayerActivity;Lcom/tudou/detail/plugin/hls/FullScreenUserActionHLS;I)V

    iput-object v0, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->audio:Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS;

    .line 191
    new-instance v0, Lcom/tudou/detail/plugin/hls/FullScreenBrightHLS;

    iget-object v1, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->containerView:Landroid/view/View;

    iget-object v2, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->mActivity:Lcom/youku/player/base/YoukuBasePlayerActivity;

    invoke-direct {v0, v1, v2}, Lcom/tudou/detail/plugin/hls/FullScreenBrightHLS;-><init>(Landroid/view/View;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->bright:Lcom/tudou/detail/plugin/hls/FullScreenBrightHLS;

    .line 192
    new-instance v0, Lcom/tudou/detail/plugin/hls/FullScreenVolumeHLS;

    iget-object v1, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->containerView:Landroid/view/View;

    invoke-direct {v0, v1, v4}, Lcom/tudou/detail/plugin/hls/FullScreenVolumeHLS;-><init>(Landroid/view/View;I)V

    iput-object v0, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->volume:Lcom/tudou/detail/plugin/hls/FullScreenVolumeHLS;

    .line 193
    iget-object v0, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->containerView:Landroid/view/View;

    const v1, 0x7f0c068d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->black:Landroid/view/View;

    .line 194
    iget-object v0, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->container:Landroid/view/View;

    const v1, 0x7f0c0b4b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->play_controller_right:Landroid/view/View;

    .line 196
    iget-object v0, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->container:Landroid/view/View;

    const v1, 0x7f0c0b2c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->play_controller_header:Landroid/view/View;

    .line 198
    iget-object v0, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->containerView:Landroid/view/View;

    const v1, 0x7f0c0693

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->errorPage:Landroid/view/View;

    .line 199
    iget-object v0, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->errorPage:Landroid/view/View;

    const v1, 0x7f0c042d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->retry:Landroid/view/View;

    .line 200
    iget-object v0, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->container:Landroid/view/View;

    const v1, 0x7f0c09d2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->video_title:Landroid/widget/TextView;

    .line 202
    iget-object v0, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->play_controller_header:Landroid/view/View;

    const v1, 0x7f0c0b2e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->wifi:Landroid/widget/ImageView;

    .line 204
    iget-object v0, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->play_controller_header:Landroid/view/View;

    const v1, 0x7f0c0b2f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->time:Landroid/widget/TextView;

    .line 206
    iget-object v0, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->play_controller_header:Landroid/view/View;

    const v1, 0x7f0c0b32

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->batteryTv:Landroid/widget/TextView;

    .line 208
    iget-object v0, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->play_controller_header:Landroid/view/View;

    const v1, 0x7f0c0b31

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/youku/phone/detail/plugin/fullscreen/BatteryView;

    iput-object v0, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->battery:Lcom/youku/phone/detail/plugin/fullscreen/BatteryView;

    .line 210
    iget-object v0, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->errorPage:Landroid/view/View;

    new-instance v1, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS$1;

    invoke-direct {v1, p0}, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS$1;-><init>(Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 217
    iget-object v0, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->retry:Landroid/view/View;

    new-instance v1, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS$2;

    invoke-direct {v1, p0}, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS$2;-><init>(Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 241
    iget-object v0, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->containerView:Landroid/view/View;

    const v1, 0x7f0c0b33

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->play_controller_logo:Landroid/view/View;

    .line 243
    iget-object v0, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->play_controller_logo:Landroid/view/View;

    new-instance v1, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS$3;

    invoke-direct {v1, p0}, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS$3;-><init>(Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 250
    invoke-direct {p0}, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->feshstatData()V

    .line 251
    invoke-virtual {p0}, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->hideController()V

    .line 252
    return-void
.end method

.method private initViewstate()V
    .locals 0

    .prologue
    .line 170
    return-void
.end method

.method private setFullscreenCompatibility()V
    .locals 1

    .prologue
    .line 427
    invoke-direct {p0}, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->hasVirtualButtonBar()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 428
    iget-object v0, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->mSystemUiHider:Lcom/youku/fullscreen/SystemUiHider;

    invoke-virtual {v0}, Lcom/youku/fullscreen/SystemUiHider;->hide()V

    .line 430
    :cond_0
    return-void
.end method

.method private setupmSystemUiHider(Lcom/tudou/ui/activity/DetailHLSActivity;)V
    .locals 2
    .param p1, "context"    # Lcom/tudou/ui/activity/DetailHLSActivity;

    .prologue
    .line 398
    invoke-direct {p0}, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->hasVirtualButtonBar()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 399
    iget-object v0, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->containerView:Landroid/view/View;

    const/4 v1, 0x6

    invoke-static {p1, v0, v1}, Lcom/youku/fullscreen/SystemUiHider;->getInstance(Landroid/app/Activity;Landroid/view/View;I)Lcom/youku/fullscreen/SystemUiHider;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->mSystemUiHider:Lcom/youku/fullscreen/SystemUiHider;

    .line 401
    iget-object v0, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->mSystemUiHider:Lcom/youku/fullscreen/SystemUiHider;

    invoke-virtual {v0}, Lcom/youku/fullscreen/SystemUiHider;->setup()V

    .line 402
    iget-object v0, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->mSystemUiHider:Lcom/youku/fullscreen/SystemUiHider;

    new-instance v1, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS$5;

    invoke-direct {v1, p0}, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS$5;-><init>(Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;)V

    invoke-virtual {v0, v1}, Lcom/youku/fullscreen/SystemUiHider;->setOnVisibilityChangeListener(Lcom/youku/fullscreen/SystemUiHider$OnVisibilityChangeListener;)V

    .line 420
    :cond_0
    return-void
.end method

.method private showAlert()V
    .locals 2

    .prologue
    .line 666
    const-string v0, "plugin"

    const-string/jumbo v1, "showAlert"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 667
    iget-object v0, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v0}, Lcom/youku/player/module/VideoUrlInfo;->getPlayType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "local"

    if-ne v0, v1, :cond_0

    .line 670
    iget-object v0, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->mActivity:Lcom/youku/player/base/YoukuBasePlayerActivity;

    const v1, 0x7f0d02e5

    invoke-virtual {p0, v0, v1}, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->alertRetry(Landroid/app/Activity;I)V

    .line 674
    :goto_0
    return-void

    .line 672
    :cond_0
    iget-object v0, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->mActivity:Lcom/youku/player/base/YoukuBasePlayerActivity;

    const v1, 0x7f0d0002

    invoke-virtual {p0, v0, v1}, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->alertRetry(Landroid/app/Activity;I)V

    goto :goto_0
.end method

.method private showController()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 353
    iget-object v0, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->container:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 354
    iget-object v0, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->play_controller_right:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 355
    iget-object v0, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->play_controller_header:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 356
    invoke-direct {p0}, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->feshstatData()V

    .line 373
    return-void
.end method


# virtual methods
.method public OnCurrentPositionChangeListener(I)V
    .locals 2
    .param p1, "currentPosition"    # I

    .prologue
    .line 744
    iget-object v0, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->black:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 745
    return-void
.end method

.method public OnPreparedListener()V
    .locals 0

    .prologue
    .line 703
    return-void
.end method

.method public OnSeekCompleteListener()V
    .locals 0

    .prologue
    .line 709
    return-void
.end method

.method public OnTimeoutListener()V
    .locals 1

    .prologue
    .line 719
    const v0, 0x7f0d02f0

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(I)V

    .line 720
    invoke-direct {p0}, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->showAlert()V

    .line 721
    return-void
.end method

.method public OnVideoSizeChangedListener(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 715
    return-void
.end method

.method public alertRetry(Landroid/app/Activity;I)V
    .locals 1
    .param p1, "c"    # Landroid/app/Activity;
    .param p2, "msgId"    # I

    .prologue
    .line 684
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 697
    :goto_0
    return-void

    .line 686
    :cond_0
    new-instance v0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS$9;

    invoke-direct {v0, p0}, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS$9;-><init>(Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public back()V
    .locals 0

    .prologue
    .line 956
    return-void
.end method

.method public getIsplay()Z
    .locals 1

    .prologue
    .line 969
    iget-object v0, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->isstart:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method hideController()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 380
    iget-object v0, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->play_controller_right:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 381
    iget-object v0, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->play_controller_header:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 382
    return-void
.end method

.method hideControllerAndSystemUI()V
    .locals 1

    .prologue
    .line 385
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->stopUserAction:Z

    .line 386
    invoke-virtual {p0}, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->hideController()V

    .line 387
    iget-object v0, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-boolean v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isFullScreen:Z

    if-eqz v0, :cond_0

    .line 388
    invoke-direct {p0}, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->setFullscreenCompatibility()V

    .line 390
    :cond_0
    return-void
.end method

.method public initVolumeAndBright()V
    .locals 7

    .prologue
    const/16 v6, 0xf

    const/4 v5, 0x3

    .line 255
    iget-object v2, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "screen_brightness"

    const/4 v4, -0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->curBrightness:I

    .line 257
    iget-object v2, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->context:Landroid/content/Context;

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 259
    .local v1, "mAudioManager":Landroid/media/AudioManager;
    if-eqz v1, :cond_0

    .line 260
    invoke-virtual {v1}, Landroid/media/AudioManager;->getMode()I

    move-result v2

    const/4 v3, -0x2

    if-ne v2, v3, :cond_0

    .line 261
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setMode(I)V

    .line 264
    :cond_0
    invoke-virtual {v1, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    .line 265
    .local v0, "curVolue":I
    invoke-virtual {v1, v5}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v2

    iput v2, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->maxVolume:I

    .line 266
    iget-object v2, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->bright:Lcom/tudou/detail/plugin/hls/FullScreenBrightHLS;

    iget v3, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->maxBrightness:I

    mul-int/lit8 v3, v3, 0x1

    iget v4, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->curBrightness:I

    mul-int/lit8 v4, v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/tudou/detail/plugin/hls/FullScreenBrightHLS;->initBrightness(II)V

    .line 267
    iget-object v2, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->audio:Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS;

    iget v3, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->maxVolume:I

    mul-int/lit8 v3, v3, 0xf

    mul-int/lit8 v4, v0, 0xf

    invoke-virtual {v2, v3, v4, v6}, Lcom/tudou/detail/plugin/hls/FullScreenAudioHLS;->initVolume(III)V

    .line 268
    iget-object v2, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->volume:Lcom/tudou/detail/plugin/hls/FullScreenVolumeHLS;

    iget v3, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->maxVolume:I

    mul-int/lit8 v3, v3, 0xf

    mul-int/lit8 v4, v0, 0xf

    invoke-virtual {v2, v3, v4, v6}, Lcom/tudou/detail/plugin/hls/FullScreenVolumeHLS;->initVolume(III)V

    .line 269
    mul-int/lit8 v2, v0, 0xf

    int-to-float v2, v2

    iput v2, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->offsetY:F

    .line 270
    iget v2, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->curBrightness:I

    mul-int/lit8 v2, v2, 0x1

    int-to-float v2, v2

    iput v2, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->_offsetY:F

    .line 271
    return-void
.end method

.method public newVideo()V
    .locals 0

    .prologue
    .line 804
    return-void
.end method

.method public onADplaying()V
    .locals 0

    .prologue
    .line 930
    return-void
.end method

.method public onBufferingUpdateListener(I)V
    .locals 0
    .param p1, "percent"    # I

    .prologue
    .line 631
    return-void
.end method

.method public onClearUpDownFav()V
    .locals 0

    .prologue
    .line 786
    return-void
.end method

.method public onCompletionListener()V
    .locals 0

    .prologue
    .line 637
    return-void
.end method

.method public onDown()V
    .locals 0

    .prologue
    .line 780
    return-void
.end method

.method public onErrorListener(II)Z
    .locals 3
    .param p1, "what"    # I
    .param p2, "extra"    # I

    .prologue
    .line 641
    const-string/jumbo v0, "test3"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onErrorListener hls what = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " extra = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 643
    iget-object v0, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v0, :cond_0

    .line 644
    const/16 v0, 0x3ed

    if-ne p1, v0, :cond_1

    .line 645
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 646
    const-string/jumbo v0, "\u7f51\u7edc\u4e0d\u7a33\u5b9a\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5 "

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    .line 661
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->showAlert()V

    .line 662
    const/4 v0, 0x0

    return v0

    .line 647
    :cond_1
    const/16 v0, 0x3ee

    if-ne p1, v0, :cond_2

    .line 648
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/tudou/android/Youku;->isHighEnd:Z

    if-eqz v0, :cond_0

    .line 649
    const-string/jumbo v0, "\u7f51\u7edc\u4e0d\u7a33\u5b9a\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5 "

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    goto :goto_0

    .line 650
    :cond_2
    const/16 v0, 0x7d4

    if-ne p1, v0, :cond_4

    .line 651
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 652
    const-string/jumbo v0, "\u7f51\u7edc\u4e0d\u7a33\u5b9a\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5 "

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    goto :goto_0

    .line 654
    :cond_3
    const-string/jumbo v0, "\u5f53\u524d\u65e0\u7f51\u7edc\u8fde\u63a5\uff0c\u8bf7\u68c0\u67e5\u60a8\u7684\u7f51\u7edc"

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    goto :goto_0

    .line 655
    :cond_4
    sget-boolean v0, Lcom/tudou/android/Youku;->isHighEnd:Z

    if-nez v0, :cond_0

    .line 656
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 657
    const v0, 0x7f0d02eb

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(I)V

    goto :goto_0
.end method

.method public onFavor()V
    .locals 0

    .prologue
    .line 792
    return-void
.end method

.method public onLoadedListener()V
    .locals 2

    .prologue
    .line 749
    iget-object v0, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->progressLoading:Lcom/tudou/detail/plugin/hls/FullScreenHLSLoading;

    invoke-virtual {v0}, Lcom/tudou/detail/plugin/hls/FullScreenHLSLoading;->hideLoading()V

    .line 750
    iget-object v0, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->black:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 751
    return-void
.end method

.method public onLoadingListener()V
    .locals 1

    .prologue
    .line 755
    iget-object v0, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->progressLoading:Lcom/tudou/detail/plugin/hls/FullScreenHLSLoading;

    invoke-virtual {v0}, Lcom/tudou/detail/plugin/hls/FullScreenHLSLoading;->showLoading()V

    .line 756
    return-void
.end method

.method public onMute(Z)V
    .locals 0
    .param p1, "mute"    # Z

    .prologue
    .line 822
    return-void
.end method

.method public onNotifyChangeVideoQuality()V
    .locals 0

    .prologue
    .line 762
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 834
    return-void
.end method

.method public onPlayNoRightVideo(Lcom/youku/player/goplay/GoplayException;)V
    .locals 0
    .param p1, "e"    # Lcom/youku/player/goplay/GoplayException;

    .prologue
    .line 918
    return-void
.end method

.method public onPlayReleateNoRightVideo()V
    .locals 0

    .prologue
    .line 924
    return-void
.end method

.method public onPluginAdded()V
    .locals 3

    .prologue
    const v2, 0x7f090010

    .line 725
    invoke-super {p0}, Lcom/youku/player/plugin/PluginOverlay;->onPluginAdded()V

    .line 726
    iget-object v0, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-boolean v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->onChangeOrient:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->isRealVideoStart:Z

    if-eqz v0, :cond_2

    .line 727
    iget-object v0, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->black:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 728
    iget-object v0, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->onChangeOrient:Z

    .line 732
    :goto_0
    iget-boolean v0, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->isRealVideoStart:Z

    if-eqz v0, :cond_1

    .line 733
    iget-object v0, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-boolean v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isPause:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_1

    .line 735
    :cond_0
    iget-object v0, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->progressLoading:Lcom/tudou/detail/plugin/hls/FullScreenHLSLoading;

    iget-object v0, v0, Lcom/tudou/detail/plugin/hls/FullScreenHLSLoading;->seekLoadingContainerView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 737
    iget-object v0, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->black:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 740
    :cond_1
    return-void

    .line 730
    :cond_2
    iget-object v0, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->black:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public onRealVideoStart()V
    .locals 1

    .prologue
    .line 898
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->isRealVideoStart:Z

    .line 899
    invoke-direct {p0}, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->firstLoadStuff()V

    .line 900
    return-void
.end method

.method public onRealVideoStarted()V
    .locals 0

    .prologue
    .line 768
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 828
    return-void
.end method

.method public onUnFavor()V
    .locals 0

    .prologue
    .line 798
    return-void
.end method

.method public onUp()V
    .locals 0

    .prologue
    .line 774
    return-void
.end method

.method public onVideoChange()V
    .locals 0

    .prologue
    .line 840
    return-void
.end method

.method public onVideoInfoGetFail(Z)V
    .locals 1
    .param p1, "needRetry"    # Z

    .prologue
    .line 934
    iget-object v0, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->progressLoading:Lcom/tudou/detail/plugin/hls/FullScreenHLSLoading;

    invoke-virtual {v0}, Lcom/tudou/detail/plugin/hls/FullScreenHLSLoading;->hideLoading()V

    .line 943
    invoke-direct {p0}, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->showAlert()V

    .line 944
    return-void
.end method

.method public onVideoInfoGetted()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 850
    iget-object v1, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->progressLoading:Lcom/tudou/detail/plugin/hls/FullScreenHLSLoading;

    iget-object v2, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v2, v2, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v2, v2, Lcom/youku/player/module/VideoUrlInfo;->mLiveInfo:Lcom/youku/player/module/LiveInfo;

    iget-object v2, v2, Lcom/youku/player/module/LiveInfo;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/tudou/detail/plugin/hls/FullScreenHLSLoading;->setTitle(Ljava/lang/String;)V

    .line 852
    iget-object v1, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->progressLoading:Lcom/tudou/detail/plugin/hls/FullScreenHLSLoading;

    invoke-virtual {v1}, Lcom/tudou/detail/plugin/hls/FullScreenHLSLoading;->hideLoading()V

    .line 853
    iget-object v1, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v1, v1, Lcom/youku/player/module/VideoUrlInfo;->mLiveInfo:Lcom/youku/player/module/LiveInfo;

    if-nez v1, :cond_1

    .line 894
    :cond_0
    :goto_0
    return-void

    .line 858
    :cond_1
    iget-object v1, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->video_title:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v2, v2, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v2, v2, Lcom/youku/player/module/VideoUrlInfo;->mLiveInfo:Lcom/youku/player/module/LiveInfo;

    iget-object v2, v2, Lcom/youku/player/module/LiveInfo;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 860
    iget-object v1, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v1, v1, Lcom/youku/player/module/VideoUrlInfo;->mLiveInfo:Lcom/youku/player/module/LiveInfo;

    iget v1, v1, Lcom/youku/player/module/LiveInfo;->status:I

    if-ne v1, v4, :cond_3

    .line 861
    iput-boolean v4, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->isstart:Z

    .line 862
    iget-object v1, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v1, v1, Lcom/youku/player/module/VideoUrlInfo;->mLiveInfo:Lcom/youku/player/module/LiveInfo;

    iget v1, v1, Lcom/youku/player/module/LiveInfo;->autoplay:I

    if-nez v1, :cond_0

    .line 864
    iget-object v1, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->play_layout:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 865
    iput-boolean v3, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->isstart:Z

    .line 866
    iget-object v1, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v1, v1, Lcom/youku/player/module/VideoUrlInfo;->mLiveInfo:Lcom/youku/player/module/LiveInfo;

    iget-object v1, v1, Lcom/youku/player/module/LiveInfo;->picurl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 868
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    .line 869
    .local v0, "imageLoader":Lcom/nostra13/universalimageloader/core/ImageLoader;
    iget-object v1, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v1, v1, Lcom/youku/player/module/VideoUrlInfo;->mLiveInfo:Lcom/youku/player/module/LiveInfo;

    iget-object v1, v1, Lcom/youku/player/module/LiveInfo;->picurl:Ljava/lang/String;

    iget-object v2, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->hls_play_img:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v2}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 873
    .end local v0    # "imageLoader":Lcom/nostra13/universalimageloader/core/ImageLoader;
    :cond_2
    iget-object v1, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->hls_play_btn:Landroid/widget/ImageView;

    new-instance v2, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS$10;

    invoke-direct {v2, p0}, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS$10;-><init>(Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 884
    :cond_3
    iget-object v1, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v1, v1, Lcom/youku/player/module/VideoUrlInfo;->mLiveInfo:Lcom/youku/player/module/LiveInfo;

    iget v1, v1, Lcom/youku/player/module/LiveInfo;->status:I

    if-nez v1, :cond_4

    .line 886
    const-string/jumbo v1, "\u5f53\u524d\u76f4\u64ad\u672a\u5f00\u59cb\uff0c\u8bf7\u5148\u89c2\u770b\u5176\u4ed6\u89c6\u9891\u3002"

    invoke-static {v1}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    .line 887
    invoke-direct {p0}, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->showAlert()V

    goto :goto_0

    .line 888
    :cond_4
    iget-object v1, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v1, v1, Lcom/youku/player/module/VideoUrlInfo;->mLiveInfo:Lcom/youku/player/module/LiveInfo;

    iget v1, v1, Lcom/youku/player/module/LiveInfo;->status:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 889
    const-string/jumbo v1, "\u5f53\u524d\u76f4\u64ad\u5df2\u7ed3\u675f\uff0c\u8bf7\u7ee7\u7eed\u89c2\u770b\u5176\u4ed6\u89c6\u9891\u3002"

    invoke-static {v1}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    .line 890
    invoke-direct {p0}, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->showAlert()V

    goto :goto_0
.end method

.method public onVideoInfoGetting()V
    .locals 0

    .prologue
    .line 846
    return-void
.end method

.method public onVolumnDown()V
    .locals 0

    .prologue
    .line 816
    return-void
.end method

.method public onVolumnUp()V
    .locals 0

    .prologue
    .line 810
    return-void
.end method

.method public resizeMediaPlayer()V
    .locals 2

    .prologue
    .line 456
    iget-object v0, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->mActivity:Lcom/youku/player/base/YoukuBasePlayerActivity;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/youku/player/base/YoukuBasePlayerActivity;->resizeMediaPlayer(I)V

    .line 457
    return-void
.end method

.method public setVisible(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 950
    return-void
.end method

.method public setbattery(II)V
    .locals 3
    .param p1, "number"    # I
    .param p2, "states"    # I

    .prologue
    .line 160
    iget-object v0, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->battery:Lcom/youku/phone/detail/plugin/fullscreen/BatteryView;

    if-eqz v0, :cond_0

    .line 161
    const-string v0, "Youku"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDraw battery number = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    iget-object v0, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->battery:Lcom/youku/phone/detail/plugin/fullscreen/BatteryView;

    invoke-virtual {v0, p1, p2}, Lcom/youku/phone/detail/plugin/fullscreen/BatteryView;->setNumber(II)V

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->batteryTv:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 165
    iget-object v0, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->batteryTv:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    :cond_1
    return-void
.end method

.method protected showBrightView()V
    .locals 4

    .prologue
    .line 474
    iget-object v0, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->settingBright:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 475
    iget-object v0, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->hideBrightRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 476
    iget-object v0, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->hideBrightRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 477
    return-void
.end method

.method protected showVolumeView()V
    .locals 4

    .prologue
    .line 464
    iget-object v0, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->settingVolume:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 465
    iget-object v0, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->hideVolumeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 466
    iget-object v0, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->hideVolumeRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 467
    return-void
.end method

.method public startPlay()V
    .locals 1

    .prologue
    .line 959
    iget-object v0, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v0, v0, Lcom/youku/player/module/VideoUrlInfo;->mLiveInfo:Lcom/youku/player/module/LiveInfo;

    if-nez v0, :cond_1

    .line 966
    :cond_0
    :goto_0
    return-void

    .line 964
    :cond_1
    iget-object v0, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->progressLoading:Lcom/tudou/detail/plugin/hls/FullScreenHLSLoading;

    invoke-virtual {v0}, Lcom/tudou/detail/plugin/hls/FullScreenHLSLoading;->showLoading()V

    .line 965
    iget-object v0, p0, Lcom/tudou/detail/plugin/hls/PluginFullScreenPlayHLS;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->start()V

    goto :goto_0
.end method
