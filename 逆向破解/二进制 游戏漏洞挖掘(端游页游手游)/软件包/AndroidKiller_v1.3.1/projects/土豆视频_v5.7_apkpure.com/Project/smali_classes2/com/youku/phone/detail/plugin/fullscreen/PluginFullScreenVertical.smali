.class public Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;
.super Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;
.source "PluginFullScreenVertical.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$FullScreenGestureListener;,
        Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$MyHandler;
    }
.end annotation


# static fields
.field private static final HIDER_FLAGS:I = 0x6

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private _currentPosition:I

.field private _offsetY:F

.field private final _zoom:I

.field public bright:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenBright;

.field private curBrightness:I

.field private currentPosition:I

.field private directionalLock:I

.field private disableController:Z

.field private duration:I

.field public errorPage:Landroid/view/View;

.field public hasGotoEnd:Z

.field hideBrightRunnable:Ljava/lang/Runnable;

.field hideSeekBarRunnable:Ljava/lang/Runnable;

.field hideTimeRunnable:Ljava/lang/Runnable;

.field hideVolumeRunnable:Ljava/lang/Runnable;

.field private isPayVideoShow:Z

.field private isShowWindow:Z

.field private isThumbMoving:Z

.field private isloading:Z

.field private landscapeLimitSlope:F

.field private loading:Landroid/view/View;

.field private loadingname:Landroid/widget/TextView;

.field private loadingtips:Landroid/widget/TextView;

.field private loadingview:Lcom/youku/widget/Loading;

.field private mBottomGoodsBtn:Landroid/view/View;

.field private mBtnPlay3GOnLine:Landroid/widget/ImageButton;

.field private mControllIsAnimating:Z

.field private mCurPlayPositionTextView:Landroid/widget/TextView;

.field private mCurrentFragment:Landroid/app/Fragment;

.field private mDuration:I

.field private mEffectiveBegin:I

.field private mEffectiveDuration:I

.field private mEffectiveEnd:I

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mGoRestart:Landroid/view/View;

.field private mGoSmallScreenBtn:Landroid/view/View;

.field private mHandler:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$MyHandler;

.field private mHint3GOnLineLayout:Landroid/view/View;

.field private mIsNeedToEndPage:Z

.field protected mIsNeedWaterMark:Z

.field private mPlayControllerBottom:Landroid/view/View;

.field private mPlayControllerTop:Landroid/view/View;

.field private mPlayOrPauseBtn:Landroid/view/View;

.field private mRestartLayout:Landroid/view/View;

.field private mStateBattery:Lcom/youku/phone/detail/plugin/fullscreen/BatteryView;

.field private mStateTime:Landroid/widget/TextView;

.field private mStateWifi:Landroid/widget/ImageView;

.field private mStubVideoGoodsNotice:Landroid/view/ViewStub;

.field public mSystemUiHider:Lcom/youku/fullscreen/SystemUiHider;

.field private mVideoDurationTextView:Landroid/widget/TextView;

.field private mVideoGoodsNotice:Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;

.field private mVideoSeekBar:Landroid/widget/SeekBar;

.field private mVideoTitleTextView:Landroid/widget/TextView;

.field private mWaterMark:Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;

.field private mWaterMarkFirstRotateEnable:Z

.field private mWaterMarkFirstRotetePos:I

.field private mWaterMarkSecondRotateEnable:Z

.field private mWaterMarkSecondRotetePos:I

.field private mWaterMarkThirdRotateEnable:Z

.field private mWaterMarkThirdRotetePos:I

.field private maxBrightness:I

.field private maxVolume:I

.field private offsetY:F

.field private playCenterTime:Landroid/widget/TextView;

.field private playGestureCenterTime:Landroid/widget/TextView;

.field private playGestureCenterTime_line:Landroid/widget/TextView;

.field private play_controller_center_time_layout:Landroid/view/View;

.field private pluginSmallPayPageFragment:Lcom/youku/phone/detail/plugin/PluginSmallPayPageFragment;

.field private portraitLimitSlope:F

.field private pos_line:Landroid/view/View;

.field private progressLoading:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenLoading;

.field private progress_zoom:I

.field private retry:Landroid/view/View;

.field private settingBright:Landroid/view/View;

.field private settingVolume:Landroid/view/View;

.field private sp:Landroid/content/SharedPreferences;

.field public stopUserAction:Z

.field private test_play_layout:Landroid/view/View;

.field public userAction:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenVerticalUserAction;

.field private vip_buy_tv1:Landroid/widget/TextView;

.field private vip_buy_tv2:Landroid/widget/TextView;

.field public volume:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenVolume;

.field private final zoom:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 87
    const-class v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 258
    invoke-direct {p0, p1, p2}, Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 169
    iput-boolean v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->disableController:Z

    .line 173
    iput v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->currentPosition:I

    .line 174
    iput v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->_currentPosition:I

    .line 175
    const/16 v0, 0x1388

    iput v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->progress_zoom:I

    .line 176
    iput v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->directionalLock:I

    .line 177
    const/high16 v0, 0x40800000    # 4.0f

    iput v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->portraitLimitSlope:F

    .line 178
    const/high16 v0, 0x3e800000    # 0.25f

    iput v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->landscapeLimitSlope:F

    .line 179
    iput v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->offsetY:F

    .line 180
    iput v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->_offsetY:F

    .line 181
    const/16 v0, 0xf

    iput v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->zoom:I

    .line 183
    iput v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->_zoom:I

    .line 184
    iput v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->curBrightness:I

    .line 185
    const/16 v0, 0xff

    iput v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->maxBrightness:I

    .line 186
    iput v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->duration:I

    .line 198
    iput-boolean v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mWaterMarkFirstRotateEnable:Z

    .line 199
    iput-boolean v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mWaterMarkSecondRotateEnable:Z

    .line 200
    iput-boolean v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mWaterMarkThirdRotateEnable:Z

    .line 201
    iput v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mWaterMarkFirstRotetePos:I

    .line 202
    iput v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mWaterMarkSecondRotetePos:I

    .line 203
    iput v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mWaterMarkThirdRotetePos:I

    .line 220
    new-instance v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$MyHandler;

    invoke-direct {v0, p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$MyHandler;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;)V

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mHandler:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$MyHandler;

    .line 2039
    new-instance v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$17;

    invoke-direct {v0, p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$17;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;)V

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->hideTimeRunnable:Ljava/lang/Runnable;

    .line 2054
    new-instance v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$18;

    invoke-direct {v0, p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$18;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;)V

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->hideSeekBarRunnable:Ljava/lang/Runnable;

    .line 2061
    new-instance v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$19;

    invoke-direct {v0, p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$19;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;)V

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->hideVolumeRunnable:Ljava/lang/Runnable;

    .line 2070
    new-instance v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$20;

    invoke-direct {v0, p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$20;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;)V

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->hideBrightRunnable:Ljava/lang/Runnable;

    .line 259
    return-void
.end method

.method static synthetic access$000(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;)Landroid/widget/SeekBar;
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mVideoSeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->hideAllBottomFragment()V

    return-void
.end method

.method static synthetic access$1100(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->loading:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mRestartLayout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;)Lcom/youku/phone/detail/plugin/fullscreen/FullScreenLoading;
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->progressLoading:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenLoading;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mVideoDurationTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;)Z
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->isShowWindow:Z

    return v0
.end method

.method static synthetic access$1600(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->doClickContainer()V

    return-void
.end method

.method static synthetic access$1700(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;)Z
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->disableController:Z

    return v0
.end method

.method static synthetic access$1800(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;)I
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    .prologue
    .line 85
    iget v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->directionalLock:I

    return v0
.end method

.method static synthetic access$1802(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;I)I
    .locals 0
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;
    .param p1, "x1"    # I

    .prologue
    .line 85
    iput p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->directionalLock:I

    return p1
.end method

.method static synthetic access$1900(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;)F
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    .prologue
    .line 85
    iget v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->portraitLimitSlope:F

    return v0
.end method

.method static synthetic access$200(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;
    .param p1, "x1"    # Z

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->pauseInternal(Z)V

    return-void
.end method

.method static synthetic access$2000(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;)I
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    .prologue
    .line 85
    iget v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->maxVolume:I

    return v0
.end method

.method static synthetic access$2002(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;I)I
    .locals 0
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;
    .param p1, "x1"    # I

    .prologue
    .line 85
    iput p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->maxVolume:I

    return p1
.end method

.method static synthetic access$2100(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;)F
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    .prologue
    .line 85
    iget v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->_offsetY:F

    return v0
.end method

.method static synthetic access$2102(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;F)F
    .locals 0
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;
    .param p1, "x1"    # F

    .prologue
    .line 85
    iput p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->_offsetY:F

    return p1
.end method

.method static synthetic access$2116(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;F)F
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;
    .param p1, "x1"    # F

    .prologue
    .line 85
    iget v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->_offsetY:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->_offsetY:F

    return v0
.end method

.method static synthetic access$2200(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;)I
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    .prologue
    .line 85
    iget v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->maxBrightness:I

    return v0
.end method

.method static synthetic access$2300(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->sp:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;)F
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    .prologue
    .line 85
    iget v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->landscapeLimitSlope:F

    return v0
.end method

.method static synthetic access$2500(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;)I
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    .prologue
    .line 85
    iget v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->duration:I

    return v0
.end method

.method static synthetic access$2502(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;I)I
    .locals 0
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;
    .param p1, "x1"    # I

    .prologue
    .line 85
    iput p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->duration:I

    return p1
.end method

.method static synthetic access$2600(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;)I
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    .prologue
    .line 85
    iget v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->progress_zoom:I

    return v0
.end method

.method static synthetic access$2602(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;I)I
    .locals 0
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;
    .param p1, "x1"    # I

    .prologue
    .line 85
    iput p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->progress_zoom:I

    return p1
.end method

.method static synthetic access$2700(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;)I
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    .prologue
    .line 85
    iget v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->currentPosition:I

    return v0
.end method

.method static synthetic access$2702(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;I)I
    .locals 0
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;
    .param p1, "x1"    # I

    .prologue
    .line 85
    iput p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->currentPosition:I

    return p1
.end method

.method static synthetic access$2724(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;F)I
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;
    .param p1, "x1"    # F

    .prologue
    .line 85
    iget v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->currentPosition:I

    int-to-float v0, v0

    sub-float/2addr v0, p1

    float-to-int v0, v0

    iput v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->currentPosition:I

    return v0
.end method

.method static synthetic access$2800(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;)I
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    .prologue
    .line 85
    iget v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->_currentPosition:I

    return v0
.end method

.method static synthetic access$2802(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;I)I
    .locals 0
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;
    .param p1, "x1"    # I

    .prologue
    .line 85
    iput p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->_currentPosition:I

    return p1
.end method

.method static synthetic access$2900(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->playGestureCenterTime:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->playInternal()V

    return-void
.end method

.method static synthetic access$3000(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->playGestureCenterTime_line:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->play_controller_center_time_layout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mPlayControllerBottom:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->settingVolume:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->settingBright:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mPlayControllerTop:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->test_play_layout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;)Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mVideoGoodsNotice:Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;

    return-object v0
.end method

.method static synthetic access$3802(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;
    .param p1, "x1"    # Z

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mControllIsAnimating:Z

    return p1
.end method

.method static synthetic access$3900(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->playCenterTime:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->retryPlay()V

    return-void
.end method

.method static synthetic access$4000(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;ILandroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/os/Bundle;

    .prologue
    .line 85
    invoke-direct {p0, p1, p2}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->showBottomFragment(ILandroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$4100(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->showControllerAndSystemUI()V

    return-void
.end method

.method static synthetic access$502(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;
    .param p1, "x1"    # Z

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->isThumbMoving:Z

    return p1
.end method

.method static synthetic access$600(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mCurPlayPositionTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$700()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    sget-object v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->showController()V

    return-void
.end method

.method static synthetic access$900(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;)F
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    .prologue
    .line 85
    iget v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->offsetY:F

    return v0
.end method

.method static synthetic access$902(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;F)F
    .locals 0
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;
    .param p1, "x1"    # F

    .prologue
    .line 85
    iput p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->offsetY:F

    return p1
.end method

.method static synthetic access$916(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;F)F
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;
    .param p1, "x1"    # F

    .prologue
    .line 85
    iget v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->offsetY:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->offsetY:F

    return v0
.end method

.method private calculateWaterMarkRotatePos(Lcom/youku/player/module/VideoUrlInfo;)V
    .locals 5
    .param p1, "info"    # Lcom/youku/player/module/VideoUrlInfo;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1292
    invoke-virtual {p1}, Lcom/youku/player/module/VideoUrlInfo;->getDurationMills()I

    move-result v0

    iput v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mDuration:I

    .line 1293
    iget v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mDuration:I

    iput v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mEffectiveDuration:I

    .line 1294
    iput v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mEffectiveBegin:I

    .line 1295
    iget v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mEffectiveDuration:I

    iput v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mEffectiveEnd:I

    .line 1296
    invoke-static {}, Lcom/youku/player/goplay/Profile;->isSkipHeadAndTail()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1297
    invoke-virtual {p1}, Lcom/youku/player/module/VideoUrlInfo;->isHasHead()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1298
    invoke-virtual {p1}, Lcom/youku/player/module/VideoUrlInfo;->getHeadPosition()I

    move-result v0

    iput v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mEffectiveBegin:I

    .line 1299
    iget v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mEffectiveDuration:I

    iget v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mEffectiveBegin:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mEffectiveDuration:I

    .line 1301
    :cond_0
    invoke-virtual {p1}, Lcom/youku/player/module/VideoUrlInfo;->isHasTail()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1302
    invoke-virtual {p1}, Lcom/youku/player/module/VideoUrlInfo;->getTailPosition()I

    move-result v0

    iput v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mEffectiveEnd:I

    .line 1303
    iget v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mEffectiveDuration:I

    iget v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mDuration:I

    iget v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mEffectiveEnd:I

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mEffectiveDuration:I

    .line 1307
    :cond_1
    iget v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mEffectiveDuration:I

    const v1, 0xea60

    if-ge v0, v1, :cond_2

    .line 1308
    iput-boolean v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mWaterMarkFirstRotateEnable:Z

    .line 1309
    iput-boolean v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mWaterMarkSecondRotateEnable:Z

    .line 1310
    iput-boolean v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mWaterMarkThirdRotateEnable:Z

    .line 1311
    const/16 v0, 0xa

    iput v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mWaterMarkFirstRotetePos:I

    .line 1312
    iput v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mWaterMarkSecondRotetePos:I

    .line 1313
    iput v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mWaterMarkThirdRotetePos:I

    .line 1330
    :goto_0
    sget-object v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "calculateWaterMarkRotatePos mDuration = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mDuration:I

    div-int/lit16 v2, v2, 0x3e8

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mEffectiveDuration = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mEffectiveDuration:I

    div-int/lit16 v2, v2, 0x3e8

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1331
    sget-object v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "calculateWaterMarkRotatePos mEffectiveBegin = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mEffectiveBegin:I

    div-int/lit16 v2, v2, 0x3e8

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1332
    sget-object v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "calculateWaterMarkRotatePos mEffectiveEnd = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mEffectiveEnd:I

    div-int/lit16 v2, v2, 0x3e8

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1334
    sget-object v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mWaterMarkFirstRotateEnable  = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mWaterMarkFirstRotateEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mWaterMarkFirstRotetePos  = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mWaterMarkFirstRotetePos:I

    div-int/lit16 v2, v2, 0x3e8

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1336
    sget-object v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mWaterMarkSecondRotateEnable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mWaterMarkSecondRotateEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mWaterMarkSecondRotetePos = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mWaterMarkSecondRotetePos:I

    div-int/lit16 v2, v2, 0x3e8

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1338
    sget-object v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mWaterMarkThirdRotateEnable  = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mWaterMarkThirdRotateEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mWaterMarkThirdRotetePos  = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mWaterMarkThirdRotetePos:I

    div-int/lit16 v2, v2, 0x3e8

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1340
    return-void

    .line 1315
    :cond_2
    iget v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mEffectiveDuration:I

    const v1, 0x927c0

    if-ge v0, v1, :cond_3

    .line 1316
    iput-boolean v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mWaterMarkFirstRotateEnable:Z

    .line 1317
    iput-boolean v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mWaterMarkSecondRotateEnable:Z

    .line 1318
    iput-boolean v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mWaterMarkThirdRotateEnable:Z

    .line 1319
    iget v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mEffectiveBegin:I

    add-int/lit16 v0, v0, 0x2710

    iput v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mWaterMarkFirstRotetePos:I

    .line 1320
    iput v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mWaterMarkSecondRotetePos:I

    .line 1321
    iput v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mWaterMarkThirdRotetePos:I

    goto/16 :goto_0

    .line 1323
    :cond_3
    iput-boolean v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mWaterMarkFirstRotateEnable:Z

    .line 1324
    iput-boolean v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mWaterMarkSecondRotateEnable:Z

    .line 1325
    iput-boolean v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mWaterMarkThirdRotateEnable:Z

    .line 1326
    iget v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mEffectiveBegin:I

    add-int/lit16 v0, v0, 0x2710

    iput v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mWaterMarkFirstRotetePos:I

    .line 1327
    iget v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mEffectiveDuration:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mWaterMarkSecondRotetePos:I

    .line 1328
    iget v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mEffectiveEnd:I

    add-int/lit16 v0, v0, -0x3a98

    iput v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mWaterMarkThirdRotetePos:I

    goto/16 :goto_0
.end method

.method private disableController()V
    .locals 1

    .prologue
    .line 1205
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->disableController:Z

    .line 1207
    return-void
.end method

.method private doClickContainer()V
    .locals 4

    .prologue
    .line 1905
    const-string v0, "PLUGIN_BTN_PLAYLIST"

    const-wide/16 v2, 0x190

    invoke-static {v0, v2, v3}, Lcom/youku/util/Util;->isGoOn(Ljava/lang/String;J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1918
    :goto_0
    return-void

    .line 1908
    :cond_0
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->userAction:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenVerticalUserAction;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenVerticalUserAction;->userAction()V

    .line 1909
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mPlayControllerBottom:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 1910
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->hideControllerAndSystemUI()V

    goto :goto_0

    .line 1912
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->stopUserAction:Z

    .line 1913
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->hideSeekBarView()V

    .line 1914
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->hideTimeView()V

    .line 1915
    invoke-direct {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->showMediaController()V

    .line 1916
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->userAction:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenVerticalUserAction;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenVerticalUserAction;->userAction()V

    goto :goto_0
.end method

.method private enableController()V
    .locals 1

    .prologue
    .line 1210
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->disableController:Z

    .line 1212
    return-void
.end method

.method private endGesture()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 1960
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-boolean v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isADShowing:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->firstLoaded:Z

    if-nez v0, :cond_1

    .line 1975
    :cond_0
    :goto_0
    return-void

    .line 1964
    :cond_1
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->userAction:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenVerticalUserAction;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenVerticalUserAction;->lastInteractTime:J

    .line 1966
    iget v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->currentPosition:I

    iget v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->_currentPosition:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-ltz v0, :cond_2

    iget v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->directionalLock:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 1968
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mVideoSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->currentPosition:I

    invoke-virtual {p0, v0, v1}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->seekSlideChange(Landroid/widget/SeekBar;I)V

    .line 1969
    const-string v0, "test1"

    const-string v1, "endGesture showCenterSildeTime"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1970
    iget v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->currentPosition:I

    int-to-long v0, v0

    iget v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->_currentPosition:I

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->showCenterSildeTime(JIZ)V

    .line 1972
    :cond_2
    iput v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->currentPosition:I

    .line 1973
    iput v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->duration:I

    .line 1974
    iput v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->_currentPosition:I

    goto :goto_0
.end method

.method private findViews()V
    .locals 4

    .prologue
    .line 279
    const v2, 0x7f0c0be1

    invoke-virtual {p0, v2}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/youku/phone/detail/plugin/fullscreen/BatteryView;

    iput-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mStateBattery:Lcom/youku/phone/detail/plugin/fullscreen/BatteryView;

    .line 280
    const v2, 0x7f0c0be2

    invoke-virtual {p0, v2}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mStateWifi:Landroid/widget/ImageView;

    .line 281
    const v2, 0x7f0c0be0

    invoke-virtual {p0, v2}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mStateTime:Landroid/widget/TextView;

    .line 284
    const v2, 0x7f0c0bdf

    invoke-virtual {p0, v2}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mPlayControllerTop:Landroid/view/View;

    .line 285
    const v2, 0x7f0c0be4

    invoke-virtual {p0, v2}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mVideoTitleTextView:Landroid/widget/TextView;

    .line 286
    const v2, 0x7f0c0be3

    invoke-virtual {p0, v2}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 287
    .local v0, "backBtn":Landroid/view/View;
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 288
    const v2, 0x7f0c0be5

    invoke-virtual {p0, v2}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 289
    .local v1, "settingsBtn":Landroid/view/View;
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 292
    const v2, 0x7f0c0be6

    invoke-virtual {p0, v2}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mPlayControllerBottom:Landroid/view/View;

    .line 293
    const v2, 0x7f0c0be8

    invoke-virtual {p0, v2}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mCurPlayPositionTextView:Landroid/widget/TextView;

    .line 294
    const v2, 0x7f0c0be9

    invoke-virtual {p0, v2}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mVideoDurationTextView:Landroid/widget/TextView;

    .line 295
    const v2, 0x7f0c0be7

    invoke-virtual {p0, v2}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mPlayOrPauseBtn:Landroid/view/View;

    .line 296
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mPlayOrPauseBtn:Landroid/view/View;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 297
    const v2, 0x7f0c0bea

    invoke-virtual {p0, v2}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mBottomGoodsBtn:Landroid/view/View;

    .line 298
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mBottomGoodsBtn:Landroid/view/View;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 299
    const v2, 0x7f0c0beb

    invoke-virtual {p0, v2}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SeekBar;

    iput-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mVideoSeekBar:Landroid/widget/SeekBar;

    .line 300
    const v2, 0x7f0c0b77

    invoke-virtual {p0, v2}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mGoSmallScreenBtn:Landroid/view/View;

    .line 301
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mGoSmallScreenBtn:Landroid/view/View;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 302
    invoke-direct {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->initSeekBar()V

    .line 304
    const v2, 0x7f0c0bf2

    invoke-virtual {p0, v2}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    iput-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mStubVideoGoodsNotice:Landroid/view/ViewStub;

    .line 307
    const v2, 0x7f0c0bec

    invoke-virtual {p0, v2}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->play_controller_center_time_layout:Landroid/view/View;

    .line 308
    const v2, 0x7f0c0bed

    invoke-virtual {p0, v2}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->playGestureCenterTime:Landroid/widget/TextView;

    .line 309
    const v2, 0x7f0c0bee

    invoke-virtual {p0, v2}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->playGestureCenterTime_line:Landroid/widget/TextView;

    .line 310
    const v2, 0x7f0c0bef

    invoke-virtual {p0, v2}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->pos_line:Landroid/view/View;

    .line 312
    const v2, 0x7f0c0bf0

    invoke-virtual {p0, v2}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->playCenterTime:Landroid/widget/TextView;

    .line 314
    const v2, 0x7f0c0b37

    invoke-virtual {p0, v2}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->settingBright:Landroid/view/View;

    .line 315
    const v2, 0x7f0c0b38

    invoke-virtual {p0, v2}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->settingVolume:Landroid/view/View;

    .line 317
    const v2, 0x7f0c0bf1

    invoke-virtual {p0, v2}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->loading:Landroid/view/View;

    .line 318
    const v2, 0x7f0c0bcb

    invoke-virtual {p0, v2}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->loadingtips:Landroid/widget/TextView;

    .line 319
    const v2, 0x7f0c0bcc

    invoke-virtual {p0, v2}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->loadingname:Landroid/widget/TextView;

    .line 320
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->loading:Landroid/view/View;

    const v3, 0x7f0c09d5

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/youku/widget/Loading;

    iput-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->loadingview:Lcom/youku/widget/Loading;

    .line 321
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->loadingview:Lcom/youku/widget/Loading;

    const v3, 0x7f02066f

    invoke-virtual {v2, v3}, Lcom/youku/widget/Loading;->setBackgroundResource(I)V

    .line 323
    const v2, 0x7f0c0bde

    invoke-virtual {p0, v2}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;

    iput-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mWaterMark:Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;

    .line 325
    const v2, 0x7f0c0693

    invoke-virtual {p0, v2}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->errorPage:Landroid/view/View;

    .line 326
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->errorPage:Landroid/view/View;

    const v3, 0x7f0c042d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->retry:Landroid/view/View;

    .line 327
    invoke-direct {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->setErrorPageOnClickListener()V

    .line 329
    const v2, 0x7f0c0bf5

    invoke-virtual {p0, v2}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mRestartLayout:Landroid/view/View;

    .line 330
    const v2, 0x7f0c0bf6

    invoke-virtual {p0, v2}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mGoRestart:Landroid/view/View;

    .line 331
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mRestartLayout:Landroid/view/View;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 332
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mGoRestart:Landroid/view/View;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 334
    const v2, 0x7f0c0325

    invoke-virtual {p0, v2}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->test_play_layout:Landroid/view/View;

    .line 335
    const v2, 0x7f0c0326

    invoke-virtual {p0, v2}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->vip_buy_tv1:Landroid/widget/TextView;

    .line 336
    const v2, 0x7f0c0327

    invoke-virtual {p0, v2}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->vip_buy_tv2:Landroid/widget/TextView;

    .line 337
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->vip_buy_tv2:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setFlags(I)V

    .line 339
    const v2, 0x7f0c0bf7

    invoke-virtual {p0, v2}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mHint3GOnLineLayout:Landroid/view/View;

    .line 340
    const v2, 0x7f0c0bf8

    invoke-virtual {p0, v2}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mBtnPlay3GOnLine:Landroid/widget/ImageButton;

    .line 341
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mBtnPlay3GOnLine:Landroid/widget/ImageButton;

    new-instance v3, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$1;

    invoke-direct {v3, p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$1;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 369
    return-void
.end method

.method private firstLoadStuff()V
    .locals 2

    .prologue
    .line 1555
    sget-object v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->TAG:Ljava/lang/String;

    const-string v1, "firstLoadStuff"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1556
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-nez v0, :cond_1

    .line 1613
    :cond_0
    :goto_0
    return-void

    .line 1559
    :cond_1
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v0}, Lcom/youku/player/module/VideoUrlInfo;->getVid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1561
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-boolean v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isFullScreen:Z

    if-eqz v0, :cond_2

    .line 1564
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->changeVideoQuality:Z

    .line 1565
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mVideoTitleTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v1}, Lcom/youku/player/module/VideoUrlInfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1566
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mVideoTitleTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1583
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v0}, Lcom/youku/player/module/VideoUrlInfo;->getDurationMills()I

    move-result v0

    if-nez v0, :cond_3

    .line 1584
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v1}, Lcom/youku/player/module/VideoUrlInfo;->getDurationMills()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/youku/player/module/VideoUrlInfo;->setDurationMills(I)V

    .line 1588
    :cond_3
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mDetailActivity:Lcom/tudou/ui/activity/DetailActivity;

    new-instance v1, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$16;

    invoke-direct {v1, p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$16;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;)V

    invoke-virtual {v0, v1}, Lcom/tudou/ui/activity/DetailActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1597
    sget v0, Lcom/youku/player/goplay/Profile;->from:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0
.end method

.method private hideAllBottomFragment()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2287
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mDetailActivity:Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v2}, Lcom/tudou/ui/activity/DetailActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 2288
    .local v0, "fragmentManager":Landroid/app/FragmentManager;
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 2289
    .local v1, "fragmentTransaction":Landroid/app/FragmentTransaction;
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mCurrentFragment:Landroid/app/Fragment;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mCurrentFragment:Landroid/app/Fragment;

    invoke-virtual {v2}, Landroid/app/Fragment;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2290
    invoke-virtual {v1, v3, v3}, Landroid/app/FragmentTransaction;->setCustomAnimations(II)Landroid/app/FragmentTransaction;

    .line 2291
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mCurrentFragment:Landroid/app/Fragment;

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    .line 2292
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mCurrentFragment:Landroid/app/Fragment;

    .line 2294
    :cond_0
    return-void
.end method

.method private hideVideoGoodNotice(Z)V
    .locals 2
    .param p1, "isAnim"    # Z

    .prologue
    .line 2254
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mVideoGoodsNotice:Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mVideoGoodsNotice:Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;->isShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2255
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mVideoGoodsNotice:Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;

    invoke-virtual {v0, p1}, Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;->hide(Z)V

    .line 2256
    const-string v0, "t1.detail_vertical.promptclose"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 2258
    :cond_0
    return-void
.end method

.method private initPayFragment(Lcom/youku/player/module/PayInfo;ZILjava/lang/String;)V
    .locals 9
    .param p1, "payInfo"    # Lcom/youku/player/module/PayInfo;
    .param p2, "isFullScreen"    # Z
    .param p3, "vipError"    # I
    .param p4, "tip"    # Ljava/lang/String;

    .prologue
    .line 2302
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->loading:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2303
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->hideLoading()V

    .line 2304
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->isPayVideoShow:Z

    .line 2305
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->pluginSmallPayPageFragment:Lcom/youku/phone/detail/plugin/PluginSmallPayPageFragment;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mDetailActivity:Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v0}, Lcom/tudou/ui/activity/DetailActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2306
    new-instance v0, Lcom/youku/phone/detail/plugin/PluginSmallPayPageFragment;

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v1}, Lcom/youku/player/module/VideoUrlInfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    const/4 v4, 0x0

    move-object v2, p1

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/youku/phone/detail/plugin/PluginSmallPayPageFragment;-><init>(Ljava/lang/String;Lcom/youku/player/module/PayInfo;Lcom/youku/player/plugin/MediaPlayerDelegate;ZILjava/lang/String;)V

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->pluginSmallPayPageFragment:Lcom/youku/phone/detail/plugin/PluginSmallPayPageFragment;

    .line 2307
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mDetailActivity:Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v0}, Lcom/tudou/ui/activity/DetailActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v7

    .line 2308
    .local v7, "fragmentManager":Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v7}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v8

    .line 2309
    .local v8, "fragmentTransaction":Landroid/support/v4/app/FragmentTransaction;
    const v0, 0x7f0c0bf4

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->pluginSmallPayPageFragment:Lcom/youku/phone/detail/plugin/PluginSmallPayPageFragment;

    invoke-virtual {v8, v0, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 2310
    invoke-virtual {v8}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 2312
    .end local v7    # "fragmentManager":Landroid/support/v4/app/FragmentManager;
    .end local v8    # "fragmentTransaction":Landroid/support/v4/app/FragmentTransaction;
    :cond_0
    return-void
.end method

.method private initSeekBar()V
    .locals 4

    .prologue
    .line 473
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mVideoSeekBar:Landroid/widget/SeekBar;

    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mDetailActivity:Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v2}, Lcom/tudou/ui/activity/DetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0206d9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 474
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mVideoSeekBar:Landroid/widget/SeekBar;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2}, Lcom/youku/util/Util;->dip2px(F)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setThumbOffset(I)V

    .line 475
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mVideoSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 476
    .local v0, "vto":Landroid/view/ViewTreeObserver;
    new-instance v1, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$4;

    invoke-direct {v1, p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$4;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 488
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mVideoSeekBar:Landroid/widget/SeekBar;

    new-instance v2, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$5;

    invoke-direct {v2, p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$5;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;)V

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 526
    return-void
.end method

.method private isNeedWaterMark(Lcom/youku/player/module/VideoUrlInfo;)Z
    .locals 4
    .param p1, "info"    # Lcom/youku/player/module/VideoUrlInfo;

    .prologue
    .line 1274
    const/4 v0, 0x0

    .line 1275
    .local v0, "need":Z
    if-eqz p1, :cond_0

    .line 1276
    iget-boolean v1, p1, Lcom/youku/player/module/VideoUrlInfo;->isExternalVideo:Z

    if-eqz v1, :cond_1

    .line 1277
    const/4 v0, 0x0

    .line 1286
    :cond_0
    :goto_0
    sget-object v1, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isNeedWaterMark need = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1287
    return v0

    .line 1279
    :cond_1
    const-string v1, "local"

    invoke-virtual {p1}, Lcom/youku/player/module/VideoUrlInfo;->getPlayType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1280
    iget-boolean v0, p1, Lcom/youku/player/module/VideoUrlInfo;->isLocalWaterMark:Z

    goto :goto_0

    .line 1282
    :cond_2
    iget-boolean v0, p1, Lcom/youku/player/module/VideoUrlInfo;->need_mark:Z

    goto :goto_0
.end method

.method private isNotNeedRefetchUrl()Z
    .locals 1

    .prologue
    .line 404
    const/4 v0, 0x1

    return v0
.end method

.method private onGoSettingsBtnClick()V
    .locals 4

    .prologue
    .line 1670
    const-string v1, "PLUGIN_BTN_PLAYLIST"

    const-wide/16 v2, 0x190

    invoke-static {v1, v2, v3}, Lcom/youku/util/Util;->isGoOn(Ljava/lang/String;J)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1676
    :goto_0
    return-void

    .line 1673
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->hideController(Z)V

    .line 1674
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1675
    .local v0, "b":Landroid/os/Bundle;
    const/4 v1, 0x2

    invoke-direct {p0, v1, v0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->showBottomFragment(ILandroid/os/Bundle;)V

    goto :goto_0
.end method

.method private onGoSmallBtnClick()V
    .locals 3

    .prologue
    .line 1679
    const-string v0, "\u64ad\u653e\u9875\u9000\u51fa\u5168\u5c4f\u6309\u94ae\u70b9\u51fb"

    const-class v1, Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u9000\u51fa\u5168\u5c4f\u6309\u94ae"

    invoke-static {v0, v1, v2}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1681
    sget v0, Lcom/youku/player/goplay/Profile;->from:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v0, :cond_1

    const-string v0, "local"

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v1}, Lcom/youku/player/module/VideoUrlInfo;->getPlayType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1682
    :cond_0
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->finishActivity()V

    .line 1686
    :goto_0
    return-void

    .line 1684
    :cond_1
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->goSmall()V

    goto :goto_0
.end method

.method private onPlayOrPauseClick()V
    .locals 4

    .prologue
    .line 1689
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-nez v0, :cond_1

    .line 1708
    :cond_0
    :goto_0
    return-void

    .line 1692
    :cond_1
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-boolean v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isComplete:Z

    if-nez v0, :cond_0

    .line 1695
    const-string v0, "PLUGIN_BTN_PLAYLIST"

    const-wide/16 v2, 0x190

    invoke-static {v0, v2, v3}, Lcom/youku/util/Util;->isGoOn(Ljava/lang/String;J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1698
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->userAction:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenVerticalUserAction;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenVerticalUserAction;->userAction()V

    .line 1699
    sget-object v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mBtnPlayOrPause onClick isPlaying = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v2}, Lcom/youku/player/plugin/MediaPlayerDelegate;->isPlaying()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1700
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1701
    const-string v0, "\u64ad\u653e\u9875\u6682\u505c\u6309\u94ae\u70b9\u51fb"

    const-class v1, Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u6682\u505c\u6309\u94ae"

    invoke-static {v0, v1, v2}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1702
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->pauseInternal(Z)V

    goto :goto_0

    .line 1704
    :cond_2
    const-string v0, "\u64ad\u653e\u9875\u64ad\u653e\u6309\u94ae\u70b9\u51fb"

    const-class v1, Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u64ad\u653e\u6309\u94ae"

    invoke-static {v0, v1, v2}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1705
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mDetailActivity:Lcom/tudou/ui/activity/DetailActivity;

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v1}, Lcom/youku/player/module/VideoUrlInfo;->getVid()Ljava/lang/String;

    move-result-object v1

    const-string v2, "200"

    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/youku/vo/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/youku/player/util/AnalyticsWrapper;->playContinue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1706
    invoke-direct {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->playInternal()V

    goto :goto_0
.end method

.method private pauseInternal(Z)V
    .locals 3
    .param p1, "noAd"    # Z

    .prologue
    .line 1717
    sget-object v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pauseInternal noAd = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1718
    if-eqz p1, :cond_0

    .line 1719
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->pauseNoAd()V

    .line 1723
    :goto_0
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mPlayOrPauseBtn:Landroid/view/View;

    const v1, 0x7f0206a5

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1724
    return-void

    .line 1721
    :cond_0
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->pause()V

    goto :goto_0
.end method

.method private playInternal()V
    .locals 2

    .prologue
    .line 1711
    sget-object v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->TAG:Ljava/lang/String;

    const-string v1, "playInternal"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1712
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->start()V

    .line 1713
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mPlayOrPauseBtn:Landroid/view/View;

    const v1, 0x7f0206a4

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1714
    return-void
.end method

.method private playLocalNext(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "videoid"    # Ljava/lang/String;
    .param p2, "auto"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 959
    iput-boolean v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->firstLoaded:Z

    .line 960
    iput-boolean v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->isRealVideoStart:Z

    .line 961
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iput-boolean v2, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isComplete:Z

    .line 962
    invoke-static {v2}, Lcom/youku/player/Track;->setplayCompleted(Z)V

    .line 963
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iput-boolean v1, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isStartPlay:Z

    .line 964
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-boolean v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isFullScreen:Z

    if-eqz v0, :cond_0

    .line 965
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->onVVEnd()V

    .line 966
    :cond_0
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->release()V

    .line 967
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mDetailActivity:Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v0, p1, p2}, Lcom/tudou/ui/activity/DetailActivity;->playLocalVideoNext(Ljava/lang/String;Z)V

    .line 968
    return-void
.end method

.method private playNextVideo(Z)V
    .locals 10
    .param p1, "auto"    # Z

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 849
    iput-boolean v8, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->firstLoaded:Z

    .line 850
    iput-boolean v8, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->isRealVideoStart:Z

    .line 851
    iget-object v6, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mDetailActivity:Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v6}, Lcom/tudou/ui/activity/DetailActivity;->isFinishing()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 953
    :cond_0
    :goto_0
    return-void

    .line 854
    :cond_1
    iget-object v6, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v6, v6, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v6, :cond_0

    .line 857
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v6

    if-nez v6, :cond_2

    .line 858
    iget-object v6, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v6, v6, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v6}, Lcom/youku/player/module/VideoUrlInfo;->getVid()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6, p1}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->playLocalNext(Ljava/lang/String;Z)V

    .line 859
    iget-object v6, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mDetailActivity:Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v6}, Lcom/tudou/ui/activity/DetailActivity;->disableOrientation()V

    goto :goto_0

    .line 866
    :cond_2
    const-string v6, "local"

    iget-object v9, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v9, v9, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v9}, Lcom/youku/player/module/VideoUrlInfo;->getPlayType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 868
    invoke-static {}, Lcom/tudou/service/download/DownloadManager;->getInstance()Lcom/tudou/service/download/DownloadManager;

    move-result-object v2

    .line 870
    .local v2, "download":Lcom/tudou/service/download/DownloadManager;
    iget-object v6, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v6, v6, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v6}, Lcom/youku/player/module/VideoUrlInfo;->getShow_videoseq()I

    move-result v6

    const/4 v9, -0x1

    if-ne v6, v9, :cond_3

    .line 871
    iget-object v6, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v6, v6, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v6}, Lcom/youku/player/module/VideoUrlInfo;->getVid()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/tudou/service/download/DownloadManager;->getDownloadInfo(Ljava/lang/String;)Lcom/tudou/service/download/DownloadInfo;

    move-result-object v4

    .line 874
    .local v4, "info":Lcom/tudou/service/download/DownloadInfo;
    iget-object v6, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v6, v6, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget v9, v4, Lcom/tudou/service/download/DownloadInfo;->show_videoseq:I

    invoke-virtual {v6, v9}, Lcom/youku/player/module/VideoUrlInfo;->setShow_videoseq(I)V

    .line 878
    .end local v4    # "info":Lcom/tudou/service/download/DownloadInfo;
    :cond_3
    iget-object v6, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v6, v6, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v6}, Lcom/youku/player/module/VideoUrlInfo;->getShowId()Ljava/lang/String;

    move-result-object v6

    iget-object v9, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v9, v9, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v9}, Lcom/youku/player/module/VideoUrlInfo;->getShow_videoseq()I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v2, v6, v9}, Lcom/tudou/service/download/DownloadManager;->getDownloadInfo(Ljava/lang/String;I)Lcom/tudou/service/download/DownloadInfo;

    move-result-object v4

    .line 882
    .restart local v4    # "info":Lcom/tudou/service/download/DownloadInfo;
    if-eqz v4, :cond_6

    .line 885
    iget-object v6, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v6}, Lcom/youku/player/plugin/MediaPlayerDelegate;->release()V

    .line 886
    invoke-static {v4, v7}, Lcom/tudou/service/download/DownloadUtils;->makeM3U8File(Lcom/tudou/service/download/DownloadInfo;Z)V

    .line 887
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v4, Lcom/tudou/service/download/DownloadInfo;->savePath:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-boolean v6, Lcom/tudou/android/Youku;->isHighEnd:Z

    if-eqz v6, :cond_4

    const-string v6, "/youku.m3u8"

    :goto_1
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 894
    .local v5, "url":Ljava/lang/String;
    new-instance v0, Lcom/youku/player/module/PlayVideoInfo$Builder;

    iget-object v6, v4, Lcom/tudou/service/download/DownloadInfo;->videoid:Ljava/lang/String;

    invoke-direct {v0, v6}, Lcom/youku/player/module/PlayVideoInfo$Builder;-><init>(Ljava/lang/String;)V

    .line 895
    .local v0, "builder":Lcom/youku/player/module/PlayVideoInfo$Builder;
    sget-object v6, Lcom/youku/player/base/PlayType;->LOCAL_DOWNLOAD:Lcom/youku/player/base/PlayType;

    invoke-virtual {v0, v6}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setPlayType(Lcom/youku/player/base/PlayType;)Lcom/youku/player/module/PlayVideoInfo$Builder;

    .line 896
    invoke-virtual {v0, v5}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setUrl(Ljava/lang/String;)Lcom/youku/player/module/PlayVideoInfo$Builder;

    .line 897
    iget-object v6, v4, Lcom/tudou/service/download/DownloadInfo;->title:Ljava/lang/String;

    invoke-virtual {v0, v6}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setTitle(Ljava/lang/String;)Lcom/youku/player/module/PlayVideoInfo$Builder;

    .line 898
    iget-boolean v6, v4, Lcom/tudou/service/download/DownloadInfo;->isShowWatermark:Z

    invoke-virtual {v0, v6}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setWaterMark(Z)Lcom/youku/player/module/PlayVideoInfo$Builder;

    .line 899
    iget v6, v4, Lcom/tudou/service/download/DownloadInfo;->type:I

    invoke-virtual {v0, v6}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setWaterMarkType(I)Lcom/youku/player/module/PlayVideoInfo$Builder;

    move-result-object v9

    if-eqz p1, :cond_5

    move v6, v7

    :goto_2
    invoke-virtual {v9, v6}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setAutoPlay(I)Lcom/youku/player/module/PlayVideoInfo$Builder;

    .line 900
    iget v6, v4, Lcom/tudou/service/download/DownloadInfo;->playTime:I

    mul-int/lit16 v6, v6, 0x3e8

    invoke-virtual {v0, v6}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setPoint(I)Lcom/youku/player/module/PlayVideoInfo$Builder;

    move-result-object v6

    invoke-virtual {v6, v8}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setFromYouku(Z)Lcom/youku/player/module/PlayVideoInfo$Builder;

    .line 901
    iget-object v6, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0}, Lcom/youku/player/module/PlayVideoInfo$Builder;->build()Lcom/youku/player/module/PlayVideoInfo;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/youku/player/plugin/MediaPlayerDelegate;->playVideo(Lcom/youku/player/module/PlayVideoInfo;)V

    goto/16 :goto_0

    .line 887
    .end local v0    # "builder":Lcom/youku/player/module/PlayVideoInfo$Builder;
    .end local v5    # "url":Ljava/lang/String;
    :cond_4
    const-string v6, "/1.3gp"

    goto :goto_1

    .restart local v0    # "builder":Lcom/youku/player/module/PlayVideoInfo$Builder;
    .restart local v5    # "url":Ljava/lang/String;
    :cond_5
    move v6, v8

    .line 899
    goto :goto_2

    .line 904
    .end local v0    # "builder":Lcom/youku/player/module/PlayVideoInfo$Builder;
    .end local v5    # "url":Ljava/lang/String;
    :cond_6
    iget-object v6, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v6, v6, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v6}, Lcom/youku/player/module/VideoUrlInfo;->getVid()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/tudou/service/download/DownloadManager;->getDownloadInfo(Ljava/lang/String;)Lcom/tudou/service/download/DownloadInfo;

    move-result-object v3

    .line 906
    .local v3, "downloadInfo":Lcom/tudou/service/download/DownloadInfo;
    invoke-virtual {v3}, Lcom/tudou/service/download/DownloadInfo;->isSeries()Z

    move-result v6

    if-nez v6, :cond_7

    .line 908
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->goEndPage()V

    goto/16 :goto_0

    .line 911
    :cond_7
    iget-object v6, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mDetailActivity:Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v6}, Lcom/tudou/ui/activity/DetailActivity;->isFinishing()Z

    move-result v6

    if-nez v6, :cond_0

    .line 913
    iget-object v6, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v6}, Lcom/youku/player/plugin/MediaPlayerDelegate;->release()V

    .line 914
    iget-object v6, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v6, v6, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v6}, Lcom/youku/player/module/VideoUrlInfo;->getVid()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/tudou/service/download/DownloadManager;->getDownloadInfo(Ljava/lang/String;)Lcom/tudou/service/download/DownloadInfo;

    move-result-object v1

    .line 915
    .local v1, "currentInfo":Lcom/tudou/service/download/DownloadInfo;
    if-eqz v1, :cond_8

    iget v6, v1, Lcom/tudou/service/download/DownloadInfo;->show_videoseq:I

    iget v7, v1, Lcom/tudou/service/download/DownloadInfo;->showepisode_total:I

    if-ge v6, v7, :cond_8

    .line 916
    iget-object v6, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mDetailActivity:Lcom/tudou/ui/activity/DetailActivity;

    new-instance v7, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$8;

    invoke-direct {v7, p0, v1, p1}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$8;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;Lcom/tudou/service/download/DownloadInfo;Z)V

    invoke-virtual {v6, v7}, Lcom/tudou/ui/activity/DetailActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 925
    :cond_8
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->goEndPage()V

    goto/16 :goto_0

    .line 930
    .end local v1    # "currentInfo":Lcom/tudou/service/download/DownloadInfo;
    .end local v2    # "download":Lcom/tudou/service/download/DownloadManager;
    .end local v3    # "downloadInfo":Lcom/tudou/service/download/DownloadInfo;
    .end local v4    # "info":Lcom/tudou/service/download/DownloadInfo;
    :cond_9
    iget-boolean v6, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mHasNext:Z

    if-nez v6, :cond_a

    .line 931
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->goEndPage()V

    goto/16 :goto_0

    .line 942
    :cond_a
    iget-object v6, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v6}, Lcom/youku/player/plugin/MediaPlayerDelegate;->release()V

    .line 943
    iget-object v6, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mNextVideoType:Lcom/tudou/ui/activity/DetailActivity$NextVideoType;

    sget-object v9, Lcom/tudou/ui/activity/DetailActivity$NextVideoType;->RECOMMEND:Lcom/tudou/ui/activity/DetailActivity$NextVideoType;

    if-ne v6, v9, :cond_b

    .line 944
    iget-object v6, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mDetailActivity:Lcom/tudou/ui/activity/DetailActivity;

    iget-object v7, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mNextVid:Ljava/lang/String;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mNextAlbumId:Ljava/lang/String;

    invoke-virtual {v6, v7, v8, v9}, Lcom/tudou/ui/activity/DetailActivity;->goRelatedVideo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 947
    :cond_b
    new-instance v0, Lcom/youku/player/module/PlayVideoInfo$Builder;

    iget-object v6, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mNextVid:Ljava/lang/String;

    invoke-direct {v0, v6}, Lcom/youku/player/module/PlayVideoInfo$Builder;-><init>(Ljava/lang/String;)V

    .line 948
    .restart local v0    # "builder":Lcom/youku/player/module/PlayVideoInfo$Builder;
    const/4 v6, 0x4

    invoke-virtual {v0, v6}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setTudouQuality(I)Lcom/youku/player/module/PlayVideoInfo$Builder;

    .line 949
    iget-object v6, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v6, v6, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v6, v6, Lcom/youku/player/module/VideoUrlInfo;->playlistCode:Ljava/lang/String;

    invoke-virtual {v0, v6}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setPlaylistCode(Ljava/lang/String;)Lcom/youku/player/module/PlayVideoInfo$Builder;

    .line 950
    invoke-virtual {v0, v8}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setNoAdv(Z)Lcom/youku/player/module/PlayVideoInfo$Builder;

    move-result-object v6

    invoke-virtual {v6, v8}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setFromYouku(Z)Lcom/youku/player/module/PlayVideoInfo$Builder;

    move-result-object v6

    if-eqz p1, :cond_c

    :goto_3
    invoke-virtual {v6, v7}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setAutoPlay(I)Lcom/youku/player/module/PlayVideoInfo$Builder;

    .line 951
    iget-object v6, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0}, Lcom/youku/player/module/PlayVideoInfo$Builder;->build()Lcom/youku/player/module/PlayVideoInfo;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/youku/player/plugin/MediaPlayerDelegate;->playVideo(Lcom/youku/player/module/PlayVideoInfo;)V

    goto/16 :goto_0

    :cond_c
    move v7, v8

    .line 950
    goto :goto_3
.end method

.method private refreshStatusBar()V
    .locals 8

    .prologue
    .line 563
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 564
    invoke-static {}, Lcom/youku/util/Util;->isWifi()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 565
    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mStateWifi:Landroid/widget/ImageView;

    const v6, 0x7f020a67

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 572
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 573
    .local v4, "time1":J
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 574
    .local v0, "mCalendar":Ljava/util/Calendar;
    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 575
    const/16 v3, 0xb

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 576
    .local v1, "mHour":I
    const/16 v3, 0xc

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 577
    .local v2, "mMinuts":I
    const/16 v3, 0xa

    if-ge v2, v3, :cond_2

    .line 578
    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mStateTime:Landroid/widget/TextView;

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

    .line 582
    :goto_1
    return-void

    .line 567
    .end local v0    # "mCalendar":Ljava/util/Calendar;
    .end local v1    # "mHour":I
    .end local v2    # "mMinuts":I
    .end local v4    # "time1":J
    :cond_0
    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mStateWifi:Landroid/widget/ImageView;

    const v6, 0x7f020610

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 570
    :cond_1
    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mStateWifi:Landroid/widget/ImageView;

    const v6, 0x7f020a68

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 580
    .restart local v0    # "mCalendar":Ljava/util/Calendar;
    .restart local v1    # "mHour":I
    .restart local v2    # "mMinuts":I
    .restart local v4    # "time1":J
    :cond_2
    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mStateTime:Landroid/widget/TextView;

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

.method private retryPlay()V
    .locals 6

    .prologue
    const/4 v3, 0x4

    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 408
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->isNotNeedRefetchUrl()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 411
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mDetailActivity:Lcom/tudou/ui/activity/DetailActivity;

    iput-boolean v2, v1, Lcom/tudou/ui/activity/DetailActivity;->mIsError:Z

    .line 412
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v1}, Lcom/youku/player/module/VideoUrlInfo;->isAlbum()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 416
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v2, v2, Lcom/youku/player/plugin/MediaPlayerDelegate;->nowVid:Ljava/lang/String;

    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v3, v3, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v3}, Lcom/youku/player/module/VideoUrlInfo;->getProgress()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/youku/player/plugin/MediaPlayerDelegate;->playTudouAlbum(Ljava/lang/String;ILjava/lang/String;Z)V

    .line 450
    :goto_0
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v1}, Lcom/youku/player/plugin/MediaPlayerDelegate;->setFirstUnloaded()V

    .line 452
    :cond_0
    return-void

    .line 420
    :cond_1
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v1, v1, Lcom/youku/player/module/VideoUrlInfo;->playlistCode:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 430
    new-instance v0, Lcom/youku/player/module/PlayVideoInfo$Builder;

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->nowVid:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/youku/player/module/PlayVideoInfo$Builder;-><init>(Ljava/lang/String;)V

    .line 431
    .local v0, "builder":Lcom/youku/player/module/PlayVideoInfo$Builder;
    invoke-virtual {v0, v3}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setTudouQuality(I)Lcom/youku/player/module/PlayVideoInfo$Builder;

    .line 432
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v1}, Lcom/youku/player/module/VideoUrlInfo;->getProgress()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setPoint(I)Lcom/youku/player/module/PlayVideoInfo$Builder;

    .line 433
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v1, v1, Lcom/youku/player/module/VideoUrlInfo;->playlistCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setPlaylistCode(Ljava/lang/String;)Lcom/youku/player/module/PlayVideoInfo$Builder;

    .line 434
    invoke-virtual {v0, v5}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setNoAdv(Z)Lcom/youku/player/module/PlayVideoInfo$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setFromYouku(Z)Lcom/youku/player/module/PlayVideoInfo$Builder;

    .line 435
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0}, Lcom/youku/player/module/PlayVideoInfo$Builder;->build()Lcom/youku/player/module/PlayVideoInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/youku/player/plugin/MediaPlayerDelegate;->playVideo(Lcom/youku/player/module/PlayVideoInfo;)V

    goto :goto_0

    .line 444
    .end local v0    # "builder":Lcom/youku/player/module/PlayVideoInfo$Builder;
    :cond_2
    new-instance v0, Lcom/youku/player/module/PlayVideoInfo$Builder;

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->nowVid:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/youku/player/module/PlayVideoInfo$Builder;-><init>(Ljava/lang/String;)V

    .line 445
    .restart local v0    # "builder":Lcom/youku/player/module/PlayVideoInfo$Builder;
    invoke-virtual {v0, v3}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setTudouQuality(I)Lcom/youku/player/module/PlayVideoInfo$Builder;

    .line 446
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v1}, Lcom/youku/player/module/VideoUrlInfo;->getProgress()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setPoint(I)Lcom/youku/player/module/PlayVideoInfo$Builder;

    .line 447
    invoke-virtual {v0, v5}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setNoAdv(Z)Lcom/youku/player/module/PlayVideoInfo$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setFromYouku(Z)Lcom/youku/player/module/PlayVideoInfo$Builder;

    .line 448
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0}, Lcom/youku/player/module/PlayVideoInfo$Builder;->build()Lcom/youku/player/module/PlayVideoInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/youku/player/plugin/MediaPlayerDelegate;->playVideo(Lcom/youku/player/module/PlayVideoInfo;)V

    goto :goto_0
.end method

.method private setErrorPageOnClickListener()V
    .locals 2

    .prologue
    .line 372
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->errorPage:Landroid/view/View;

    new-instance v1, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$2;

    invoke-direct {v1, p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$2;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 378
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->retry:Landroid/view/View;

    new-instance v1, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$3;

    invoke-direct {v1, p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$3;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 401
    return-void
.end method

.method private setupmSystemUiHider(Lcom/tudou/ui/activity/DetailActivity;)V
    .locals 2
    .param p1, "context"    # Lcom/tudou/ui/activity/DetailActivity;

    .prologue
    .line 638
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->hasVirtualButtonBar()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 639
    const/4 v0, 0x6

    invoke-static {p1, p0, v0}, Lcom/youku/fullscreen/SystemUiHider;->getInstance(Landroid/app/Activity;Landroid/view/View;I)Lcom/youku/fullscreen/SystemUiHider;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mSystemUiHider:Lcom/youku/fullscreen/SystemUiHider;

    .line 640
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mSystemUiHider:Lcom/youku/fullscreen/SystemUiHider;

    invoke-virtual {v0}, Lcom/youku/fullscreen/SystemUiHider;->setup()V

    .line 641
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mSystemUiHider:Lcom/youku/fullscreen/SystemUiHider;

    new-instance v1, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$6;

    invoke-direct {v1, p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$6;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;)V

    invoke-virtual {v0, v1}, Lcom/youku/fullscreen/SystemUiHider;->setOnVisibilityChangeListener(Lcom/youku/fullscreen/SystemUiHider$OnVisibilityChangeListener;)V

    .line 671
    :cond_0
    return-void
.end method

.method private showAlert()V
    .locals 2

    .prologue
    .line 1079
    sget-object v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->TAG:Ljava/lang/String;

    const-string v1, "showAlert"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1080
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v0}, Lcom/youku/player/module/VideoUrlInfo;->getPlayType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "local"

    if-ne v0, v1, :cond_0

    .line 1083
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mDetailActivity:Lcom/tudou/ui/activity/DetailActivity;

    const v1, 0x7f0d02e5

    invoke-virtual {p0, v0, v1}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->alertRetry(Landroid/app/Activity;I)V

    .line 1087
    :goto_0
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->hidePopWindows()V

    .line 1088
    return-void

    .line 1085
    :cond_0
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mDetailActivity:Lcom/tudou/ui/activity/DetailActivity;

    const v1, 0x7f0d0002

    invoke-virtual {p0, v0, v1}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->alertRetry(Landroid/app/Activity;I)V

    goto :goto_0
.end method

.method private showBottomFragment(ILandroid/os/Bundle;)V
    .locals 7
    .param p1, "page"    # I
    .param p2, "b"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 2261
    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mDetailActivity:Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v3}, Lcom/tudou/ui/activity/DetailActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 2262
    .local v1, "fragmentManager":Landroid/app/FragmentManager;
    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 2263
    .local v2, "fragmentTransaction":Landroid/app/FragmentTransaction;
    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mCurrentFragment:Landroid/app/Fragment;

    if-eqz v3, :cond_0

    .line 2264
    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mCurrentFragment:Landroid/app/Fragment;

    invoke-virtual {v2, v3}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 2267
    :cond_0
    if-ne p1, v5, :cond_1

    .line 2268
    new-instance v0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentGoods;

    invoke-direct {v0}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentGoods;-><init>()V

    .local v0, "fragment":Landroid/app/Fragment;
    move-object v3, v0

    .line 2269
    check-cast v3, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentGoods;

    invoke-virtual {v3, v6}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentGoods;->setOnCloseListener(Ljava/lang/Runnable;)V

    .line 2270
    invoke-virtual {v2, v5, v5}, Landroid/app/FragmentTransaction;->setCustomAnimations(II)Landroid/app/FragmentTransaction;

    .line 2271
    invoke-virtual {v0, p2}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    move-object v3, v0

    .line 2272
    check-cast v3, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentGoods;

    invoke-virtual {v3, v5}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentGoods;->setIsVerticalScreen(Z)V

    .line 2273
    const-string v3, "t1.detail_ vertical.wanhuo"

    invoke-static {v3, v6}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 2282
    :goto_0
    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mCurrentFragment:Landroid/app/Fragment;

    .line 2283
    const v3, 0x7f0c0bf3

    invoke-virtual {v2, v3, v0}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentTransaction;->commit()I

    .line 2284
    return-void

    .line 2275
    .end local v0    # "fragment":Landroid/app/Fragment;
    :cond_1
    new-instance v0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;

    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-direct {v0, v3}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;-><init>(Lcom/youku/player/plugin/MediaPlayerDelegate;)V

    .restart local v0    # "fragment":Landroid/app/Fragment;
    move-object v3, v0

    .line 2276
    check-cast v3, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;

    invoke-virtual {v3, v6}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;->setOnCloseListener(Ljava/lang/Runnable;)V

    .line 2277
    invoke-virtual {v2, v5, v5}, Landroid/app/FragmentTransaction;->setCustomAnimations(II)Landroid/app/FragmentTransaction;

    .line 2278
    invoke-virtual {v0, p2}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    move-object v3, v0

    .line 2279
    check-cast v3, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;

    iget-object v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mPluginFullScreenPlay:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;

    invoke-virtual {v3, v5, v4}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;->setIsVerticalScreen(ZLcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;)V

    .line 2280
    const-string v3, "t1.detail_ vertical.setting"

    invoke-static {v3, v6}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_0
.end method

.method private showController()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 2086
    sget-object v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->TAG:Ljava/lang/String;

    const-string v1, "showController"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2087
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mPlayControllerTop:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2088
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mPlayControllerBottom:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2090
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mVideoGoodsNotice:Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;

    if-eqz v0, :cond_0

    .line 2091
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mVideoGoodsNotice:Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;

    invoke-interface {v0, v2, v2}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay$ControllerTransitionable;->onControllerTransitionStart(ZZ)V

    .line 2092
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mVideoGoodsNotice:Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;

    invoke-interface {v0, v2, v2}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay$ControllerTransitionable;->onControllerTransitionEnd(ZZ)V

    .line 2094
    :cond_0
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mVideoTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 2095
    invoke-direct {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->validPlayPauseIcon()V

    .line 2096
    invoke-direct {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->refreshStatusBar()V

    .line 2097
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-static {v0}, Lcom/youku/phone/detail/DetailUtil;->isPayVideo(Lcom/youku/player/module/VideoUrlInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2098
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v0, v0, Lcom/youku/player/module/VideoUrlInfo;->mPayInfo:Lcom/youku/player/module/PayInfo;

    iget-object v0, v0, Lcom/youku/player/module/PayInfo;->trail:Lcom/youku/player/module/PayInfo$Trial;

    iget-object v0, v0, Lcom/youku/player/module/PayInfo$Trial;->type:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v0, "episodes"

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v1, v1, Lcom/youku/player/module/VideoUrlInfo;->mPayInfo:Lcom/youku/player/module/PayInfo;

    iget-object v1, v1, Lcom/youku/player/module/PayInfo;->trail:Lcom/youku/player/module/PayInfo$Trial;

    iget-object v1, v1, Lcom/youku/player/module/PayInfo$Trial;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2099
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v0}, Lcom/youku/player/module/VideoUrlInfo;->getShow_videoseq()I

    move-result v0

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v1, v1, Lcom/youku/player/module/VideoUrlInfo;->mPayInfo:Lcom/youku/player/module/PayInfo;

    iget-object v1, v1, Lcom/youku/player/module/PayInfo;->trail:Lcom/youku/player/module/PayInfo$Trial;

    iget v1, v1, Lcom/youku/player/module/PayInfo$Trial;->episodes:I

    if-le v0, v1, :cond_2

    .line 2100
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mDetailActivity:Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v0}, Lcom/tudou/ui/activity/DetailActivity;->onPayClick()V

    .line 2107
    :cond_1
    :goto_0
    return-void

    .line 2104
    :cond_2
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->test_play_layout:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private showControllerAndSystemUI()V
    .locals 1

    .prologue
    .line 2516
    invoke-direct {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->showController()V

    .line 2519
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->hasVirtualButtonBar()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2520
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mSystemUiHider:Lcom/youku/fullscreen/SystemUiHider;

    invoke-virtual {v0}, Lcom/youku/fullscreen/SystemUiHider;->show()V

    .line 2522
    :cond_0
    return-void
.end method

.method private showMediaController()V
    .locals 4

    .prologue
    .line 2080
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->userAction:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenVerticalUserAction;

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenVerticalUserAction;->lastInteractTime:J

    .line 2081
    invoke-direct {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->showController()V

    .line 2082
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->userAction:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenVerticalUserAction;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenVerticalUserAction;->userAction()V

    .line 2083
    return-void
.end method

.method private updateSettingsVolume()V
    .locals 2

    .prologue
    .line 2388
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mCurrentFragment:Landroid/app/Fragment;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mCurrentFragment:Landroid/app/Fragment;

    instance-of v1, v1, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;

    if-eqz v1, :cond_0

    .line 2389
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mCurrentFragment:Landroid/app/Fragment;

    check-cast v0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;

    .line 2390
    .local v0, "fragmentMore":Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;->onVolumnChange(I)V

    .line 2392
    .end local v0    # "fragmentMore":Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;
    :cond_0
    return-void
.end method

.method private validPlayPauseIcon()V
    .locals 3

    .prologue
    .line 586
    sget-object v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "validPlayPauseIcon mMediaPlayerDelegate.isPlaying() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v2}, Lcom/youku/player/plugin/MediaPlayerDelegate;->isPlaying()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 588
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mPlayOrPauseBtn:Landroid/view/View;

    const v1, 0x7f0206a4

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 592
    :goto_0
    return-void

    .line 590
    :cond_0
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mPlayOrPauseBtn:Landroid/view/View;

    const v1, 0x7f0206a5

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0
.end method


# virtual methods
.method public OnCurrentPositionChangeListener(I)V
    .locals 6
    .param p1, "currentPosition"    # I

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 1140
    iget v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->directionalLock:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 1141
    iget-boolean v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->isThumbMoving:Z

    if-nez v0, :cond_0

    .line 1142
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mVideoSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1143
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mCurPlayPositionTextView:Landroid/widget/TextView;

    int-to-long v2, p1

    invoke-static {v2, v3}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUtils;->getFormatTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1146
    :cond_0
    invoke-direct {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->validPlayPauseIcon()V

    .line 1147
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->errorPage:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1148
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->errorPage:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1150
    :cond_1
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mRestartLayout:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 1151
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mRestartLayout:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1153
    :cond_2
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mWaterMark:Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;

    invoke-virtual {v0, v4}, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;->setVisibility(I)V

    .line 1154
    iget-boolean v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mIsNeedWaterMark:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mWaterMarkFirstRotateEnable:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mWaterMark:Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;->isFilledWithData()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1155
    iget v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mWaterMarkFirstRotetePos:I

    if-le p1, v0, :cond_4

    iget v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mWaterMarkFirstRotetePos:I

    add-int/lit16 v0, v0, 0x1388

    if-ge p1, v0, :cond_4

    .line 1156
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mWaterMark:Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;->isRotateAnimRunning()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-boolean v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isFullScreen:Z

    if-eqz v0, :cond_3

    .line 1157
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mWaterMark:Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;->startRotateAnimation()V

    .line 1159
    :cond_3
    iput-boolean v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mWaterMarkFirstRotateEnable:Z

    .line 1162
    :cond_4
    iget-boolean v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mIsNeedWaterMark:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mWaterMarkSecondRotateEnable:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mWaterMark:Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;->isFilledWithData()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1163
    iget v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mWaterMarkSecondRotetePos:I

    if-le p1, v0, :cond_6

    iget v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mWaterMarkSecondRotetePos:I

    add-int/lit16 v0, v0, 0x1388

    if-ge p1, v0, :cond_6

    .line 1164
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mWaterMark:Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;->isRotateAnimRunning()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-boolean v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isFullScreen:Z

    if-eqz v0, :cond_5

    .line 1165
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mWaterMark:Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;->startRotateAnimation()V

    .line 1167
    :cond_5
    iput-boolean v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mWaterMarkSecondRotateEnable:Z

    .line 1170
    :cond_6
    iget-boolean v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mIsNeedWaterMark:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mWaterMarkThirdRotateEnable:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mWaterMark:Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;->isFilledWithData()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1171
    iget v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mWaterMarkThirdRotetePos:I

    if-le p1, v0, :cond_8

    iget v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mWaterMarkThirdRotetePos:I

    add-int/lit16 v0, v0, 0x1388

    if-ge p1, v0, :cond_8

    .line 1172
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mWaterMark:Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;->isRotateAnimRunning()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-boolean v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isFullScreen:Z

    if-eqz v0, :cond_7

    .line 1173
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mWaterMark:Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;->startRotateAnimation()V

    .line 1175
    :cond_7
    iput-boolean v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mWaterMarkThirdRotateEnable:Z

    .line 1178
    :cond_8
    invoke-virtual {p0, p1}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->checkHdInfos(I)V

    .line 1179
    return-void
.end method

.method public OnPreparedListener()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 1134
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->errorPage:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1135
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mRestartLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1136
    return-void
.end method

.method public OnSeekCompleteListener()V
    .locals 0

    .prologue
    .line 2549
    return-void
.end method

.method public OnTimeoutListener()V
    .locals 1

    .prologue
    .line 2558
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-boolean v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isFullScreen:Z

    if-eqz v0, :cond_0

    .line 2559
    invoke-direct {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->showAlert()V

    .line 2561
    :cond_0
    return-void
.end method

.method public OnVideoSizeChangedListener(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 2554
    return-void
.end method

.method public alertRetry(Landroid/app/Activity;I)V
    .locals 1
    .param p1, "c"    # Landroid/app/Activity;
    .param p2, "msgId"    # I

    .prologue
    .line 1091
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1106
    :goto_0
    return-void

    .line 1093
    :cond_0
    new-instance v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$12;

    invoke-direct {v0, p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$12;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method back()V
    .locals 2

    .prologue
    .line 740
    invoke-direct {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->enableController()V

    .line 741
    iget-boolean v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->isVideoinfoGeted:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->isRealVideoStart:Z

    if-eqz v0, :cond_0

    .line 748
    :cond_0
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 749
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mPlayOrPauseBtn:Landroid/view/View;

    const v1, 0x7f0206a4

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 753
    :goto_0
    invoke-direct {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->hideAllBottomFragment()V

    .line 754
    return-void

    .line 751
    :cond_1
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mPlayOrPauseBtn:Landroid/view/View;

    const v1, 0x7f0206a5

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public cannotDownload()V
    .locals 0

    .prologue
    .line 2462
    return-void
.end method

.method public checkHdInfos(I)V
    .locals 6
    .param p1, "position"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v4, 0x0

    .line 2212
    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v3, v3, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v3, v3, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v3}, Lcom/youku/player/module/VideoUrlInfo;->getVid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2213
    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mGoodsInfo:Lcom/tudou/detail/vo/GoodsInfo;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mGoodsInfo:Lcom/tudou/detail/vo/GoodsInfo;

    iget-object v3, v3, Lcom/tudou/detail/vo/GoodsInfo;->mVid:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mGoodsInfo:Lcom/tudou/detail/vo/GoodsInfo;

    iget-object v3, v3, Lcom/tudou/detail/vo/GoodsInfo;->mVid:Ljava/lang/String;

    iget-object v5, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v5, v5, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v5}, Lcom/youku/player/module/VideoUrlInfo;->getVid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2214
    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mGoodsInfo:Lcom/tudou/detail/vo/GoodsInfo;

    invoke-virtual {v3, p1}, Lcom/tudou/detail/vo/GoodsInfo;->getFirstGoodsBeShow(I)Lcom/tudou/detail/vo/GoodsInfo$GoodsArray$Goods;

    move-result-object v2

    .line 2215
    .local v2, "tGoods":Lcom/tudou/detail/vo/GoodsInfo$GoodsArray$Goods;
    if-eqz v2, :cond_3

    .line 2216
    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mVideoGoodsNotice:Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;

    if-nez v3, :cond_0

    .line 2217
    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mStubVideoGoodsNotice:Landroid/view/ViewStub;

    invoke-virtual {v3}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;

    iput-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mVideoGoodsNotice:Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;

    .line 2218
    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mVideoGoodsNotice:Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;

    invoke-virtual {v3, v0}, Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;->setVerticalScreen(Z)V

    .line 2219
    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mPlayControllerBottom:Landroid/view/View;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mPlayControllerBottom:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_2

    .line 2220
    .local v0, "controllerVisible":Z
    :goto_0
    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mVideoGoodsNotice:Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;

    invoke-interface {v3, v4, v0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay$ControllerTransitionable;->onControllerTransitionStart(ZZ)V

    .line 2221
    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mVideoGoodsNotice:Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;

    invoke-interface {v3, v4, v0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay$ControllerTransitionable;->onControllerTransitionEnd(ZZ)V

    .line 2223
    .end local v0    # "controllerVisible":Z
    :cond_0
    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mVideoGoodsNotice:Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;

    invoke-virtual {v3, v2}, Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;->setData(Lcom/tudou/detail/vo/GoodsInfo$GoodsArray$Goods;)V

    .line 2224
    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mVideoGoodsNotice:Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;

    new-instance v4, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$24;

    invoke-direct {v4, p0, v2}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$24;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;Lcom/tudou/detail/vo/GoodsInfo$GoodsArray$Goods;)V

    invoke-virtual {v3, v4}, Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2238
    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mVideoGoodsNotice:Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;

    invoke-virtual {v3}, Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;->isShow()Z

    move-result v3

    if-nez v3, :cond_1

    .line 2239
    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mVideoGoodsNotice:Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;

    invoke-virtual {v3}, Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;->show()V

    .line 2240
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 2241
    .local v1, "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "actiontype"

    const-string v4, "intershow"

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2242
    const-string v3, "type"

    const-string v4, "\u73a9\u8d27"

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2243
    const-string v3, "\u73a9\u8d27\u63d0\u793a\u6761\u5c55\u793a"

    const-string v4, "\u64ad\u653e\u5668"

    const-string v5, ""

    invoke-static {v3, v4, v5, v1}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 2251
    .end local v1    # "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "tGoods":Lcom/tudou/detail/vo/GoodsInfo$GoodsArray$Goods;
    :cond_1
    :goto_1
    return-void

    .restart local v2    # "tGoods":Lcom/tudou/detail/vo/GoodsInfo$GoodsArray$Goods;
    :cond_2
    move v0, v4

    .line 2219
    goto :goto_0

    .line 2246
    :cond_3
    invoke-direct {p0, v0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->hideVideoGoodNotice(Z)V

    goto :goto_1
.end method

.method public clearHdInfos()V
    .locals 2

    .prologue
    .line 2611
    invoke-super {p0}, Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;->clearHdInfos()V

    .line 2612
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mVideoGoodsNotice:Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;

    if-eqz v0, :cond_0

    .line 2613
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mVideoGoodsNotice:Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;->clear()V

    .line 2615
    :cond_0
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mBottomGoodsBtn:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 2616
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mBottomGoodsBtn:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2618
    :cond_1
    return-void
.end method

.method public clearKuwoDownloadBroadcast()V
    .locals 0

    .prologue
    .line 2467
    return-void
.end method

.method public clearPayPage()V
    .locals 3

    .prologue
    .line 2323
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->pluginSmallPayPageFragment:Lcom/youku/phone/detail/plugin/PluginSmallPayPageFragment;

    if-eqz v2, :cond_0

    .line 2324
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mDetailActivity:Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v2}, Lcom/tudou/ui/activity/DetailActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 2325
    .local v0, "fragmentManager":Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 2326
    .local v1, "fragmentTransaction":Landroid/support/v4/app/FragmentTransaction;
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->pluginSmallPayPageFragment:Lcom/youku/phone/detail/plugin/PluginSmallPayPageFragment;

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 2327
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 2328
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->pluginSmallPayPageFragment:Lcom/youku/phone/detail/plugin/PluginSmallPayPageFragment;

    .line 2330
    .end local v0    # "fragmentManager":Landroid/support/v4/app/FragmentManager;
    .end local v1    # "fragmentTransaction":Landroid/support/v4/app/FragmentTransaction;
    :cond_0
    return-void
.end method

.method clearVideoList()V
    .locals 0

    .prologue
    .line 2335
    return-void
.end method

.method public clearVideoTips()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 715
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->loading:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 716
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->loadingtips:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 717
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->loadingname:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 718
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->vip_buy_tv1:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 719
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->vip_buy_tv2:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 720
    return-void
.end method

.method public disableDownload()V
    .locals 0

    .prologue
    .line 2452
    return-void
.end method

.method public disableSubbtn()V
    .locals 2

    .prologue
    .line 768
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mWaterMark:Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;->setSubscriptionVisible(I)V

    .line 769
    return-void
.end method

.method public doPause()V
    .locals 1

    .prologue
    .line 1258
    iget v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->directionalLock:I

    if-eqz v0, :cond_0

    .line 1259
    invoke-direct {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->endGesture()V

    .line 1260
    const/4 v0, 0x0

    iput v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->directionalLock:I

    .line 1261
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->hideVolumeView()V

    .line 1262
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->hideSeekbarView()V

    .line 1263
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->hideTimeView()V

    .line 1264
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->hideBrightView()V

    .line 1266
    :cond_0
    return-void
.end method

.method download()V
    .locals 0

    .prologue
    .line 2427
    return-void
.end method

.method public enableDownload()V
    .locals 0

    .prologue
    .line 2457
    return-void
.end method

.method public enableSubbtn()V
    .locals 2

    .prologue
    .line 772
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mWaterMark:Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;->setSubscriptionVisible(I)V

    .line 773
    return-void
.end method

.method public goEndPage()V
    .locals 2

    .prologue
    .line 1114
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->hidePopWindows()V

    .line 1115
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v0, :cond_0

    const-string v0, "local"

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v1, v1, Lcom/youku/player/module/VideoUrlInfo;->playType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1116
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->finishActivity()V

    .line 1130
    :goto_0
    return-void

    .line 1118
    :cond_0
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mDetailActivity:Lcom/tudou/ui/activity/DetailActivity;

    new-instance v1, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$13;

    invoke-direct {v1, p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$13;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;)V

    invoke-virtual {v0, v1}, Lcom/tudou/ui/activity/DetailActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public hasVirtualButtonBar()Z
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 623
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x12

    if-lt v3, v4, :cond_0

    .line 624
    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mDetailActivity:Lcom/tudou/ui/activity/DetailActivity;

    invoke-static {v3}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v1

    .line 625
    .local v1, "hasMenuKey":Z
    const/4 v3, 0x4

    invoke-static {v3}, Landroid/view/KeyCharacterMap;->deviceHasKey(I)Z

    move-result v0

    .line 627
    .local v0, "hasBackKey":Z
    if-nez v1, :cond_0

    if-nez v0, :cond_0

    .line 628
    const/4 v2, 0x1

    .line 633
    .end local v0    # "hasBackKey":Z
    .end local v1    # "hasMenuKey":Z
    :cond_0
    return v2
.end method

.method protected hideBrightView()V
    .locals 2

    .prologue
    .line 2189
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mHandler:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$MyHandler;

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->hideBrightRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$MyHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2190
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->settingBright:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2191
    return-void
.end method

.method public hideController(Z)V
    .locals 7
    .param p1, "anim"    # Z

    .prologue
    const/4 v6, 0x1

    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 2110
    sget-object v2, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->TAG:Ljava/lang/String;

    const-string v3, "hideController"

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2111
    if-eqz p1, :cond_1

    .line 2112
    iput-boolean v6, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mControllIsAnimating:Z

    .line 2113
    const/4 v2, 0x2

    new-array v1, v2, [F

    .line 2114
    .local v1, "values":[F
    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v1, v4

    .line 2115
    const/4 v2, 0x0

    aput v2, v1, v6

    .line 2116
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    const-wide/16 v4, 0x12c

    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 2117
    .local v0, "animator":Landroid/animation/ValueAnimator;
    new-instance v2, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$21;

    invoke-direct {v2, p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$21;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2128
    new-instance v2, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$22;

    invoke-direct {v2, p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$22;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2155
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 2166
    .end local v0    # "animator":Landroid/animation/ValueAnimator;
    .end local v1    # "values":[F
    :cond_0
    :goto_0
    return-void

    .line 2157
    :cond_1
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mPlayControllerTop:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2158
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mPlayControllerBottom:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2159
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v2, v2, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v2, v2, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-static {v2}, Lcom/youku/phone/detail/DetailUtil;->isPayVideo(Lcom/youku/player/module/VideoUrlInfo;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2160
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->test_play_layout:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2162
    :cond_2
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mVideoGoodsNotice:Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mVideoGoodsNotice:Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;

    instance-of v2, v2, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay$ControllerTransitionable;

    if-eqz v2, :cond_0

    .line 2163
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mVideoGoodsNotice:Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;

    invoke-interface {v2, v4, v4}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay$ControllerTransitionable;->onControllerTransitionEnd(ZZ)V

    goto :goto_0
.end method

.method public hideControllerAndSystemUI()V
    .locals 1

    .prologue
    .line 607
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->stopUserAction:Z

    .line 608
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->hideController(Z)V

    .line 609
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-boolean v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isFullScreen:Z

    if-eqz v0, :cond_0

    .line 610
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->setFullscreenCompatibility()V

    .line 612
    :cond_0
    return-void
.end method

.method public hideLoading()V
    .locals 1

    .prologue
    .line 1109
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->progressLoading:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenLoading;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenLoading;->hideLoading()V

    .line 1110
    return-void
.end method

.method hidePopWindows()V
    .locals 0

    .prologue
    .line 2502
    return-void
.end method

.method protected hideSeekBarView()V
    .locals 2

    .prologue
    .line 1922
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mPlayControllerBottom:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1924
    return-void
.end method

.method protected hideSeekbarView()V
    .locals 2

    .prologue
    .line 1269
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mHandler:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$MyHandler;

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->hideSeekBarRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$MyHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1270
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mPlayControllerBottom:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1271
    return-void
.end method

.method protected hideTimeView()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 2194
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mHandler:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$MyHandler;

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->hideTimeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$MyHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2195
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->playGestureCenterTime:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2196
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->playGestureCenterTime_line:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2197
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->play_controller_center_time_layout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2198
    return-void
.end method

.method protected hideVolumeView()V
    .locals 2

    .prologue
    .line 2176
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mHandler:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$MyHandler;

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->hideVolumeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$MyHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2177
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->settingVolume:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2179
    return-void
.end method

.method public init()V
    .locals 4

    .prologue
    .line 596
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->initView()V

    .line 597
    const-string v0, ""

    .line 598
    .local v0, "text":Ljava/lang/String;
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v1, :cond_0

    .line 599
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v1}, Lcom/youku/player/module/VideoUrlInfo;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 601
    :cond_0
    new-instance v1, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenLoading;

    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mPluginFullScreenPlay:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;

    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mPluginFullScreenPlay:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;

    invoke-direct {v1, v2, v0, v3}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenLoading;-><init>(Landroid/view/View;Ljava/lang/String;Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;)V

    iput-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->progressLoading:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenLoading;

    .line 602
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->progressLoading:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenLoading;

    invoke-virtual {v1}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenLoading;->initSeekLoading()V

    .line 603
    return-void
.end method

.method public initView()V
    .locals 4

    .prologue
    .line 267
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->sp:Landroid/content/SharedPreferences;

    .line 268
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mDetailActivity:Lcom/tudou/ui/activity/DetailActivity;

    new-instance v2, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$FullScreenGestureListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$FullScreenGestureListener;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$1;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mGestureDetector:Landroid/view/GestureDetector;

    .line 269
    invoke-direct {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->findViews()V

    .line 270
    new-instance v0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenBright;

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mDetailActivity:Lcom/tudou/ui/activity/DetailActivity;

    invoke-direct {v0, p0, v1}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenBright;-><init>(Landroid/view/View;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->bright:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenBright;

    .line 271
    new-instance v0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenVolume;

    const/16 v1, 0xf

    invoke-direct {v0, p0, v1}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenVolume;-><init>(Landroid/view/View;I)V

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->volume:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenVolume;

    .line 272
    new-instance v0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenVerticalUserAction;

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mHandler:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$MyHandler;

    invoke-direct {v0, v1, p0}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenVerticalUserAction;-><init>(Landroid/os/Handler;Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;)V

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->userAction:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenVerticalUserAction;

    .line 273
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->initVolumeAndBright()V

    .line 274
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mDetailActivity:Lcom/tudou/ui/activity/DetailActivity;

    invoke-direct {p0, v0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->setupmSystemUiHider(Lcom/tudou/ui/activity/DetailActivity;)V

    .line 275
    return-void
.end method

.method public initVolumeAndBright()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    .line 455
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mDetailActivity:Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v2}, Lcom/tudou/ui/activity/DetailActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_brightness"

    const/4 v4, -0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->curBrightness:I

    .line 457
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mDetailActivity:Lcom/tudou/ui/activity/DetailActivity;

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Lcom/tudou/ui/activity/DetailActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 459
    .local v1, "mAudioManager":Landroid/media/AudioManager;
    if-eqz v1, :cond_0

    .line 460
    invoke-virtual {v1}, Landroid/media/AudioManager;->getMode()I

    move-result v2

    const/4 v3, -0x2

    if-ne v2, v3, :cond_0

    .line 461
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setMode(I)V

    .line 464
    :cond_0
    invoke-virtual {v1, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    .line 465
    .local v0, "curVolue":I
    invoke-virtual {v1, v5}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v2

    iput v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->maxVolume:I

    .line 466
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->bright:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenBright;

    iget v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->maxBrightness:I

    mul-int/lit8 v3, v3, 0x1

    iget v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->curBrightness:I

    mul-int/lit8 v4, v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenBright;->initBrightness(II)V

    .line 467
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->volume:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenVolume;

    iget v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->maxVolume:I

    mul-int/lit8 v3, v3, 0xf

    mul-int/lit8 v4, v0, 0xf

    const/16 v5, 0xf

    invoke-virtual {v2, v3, v4, v5}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenVolume;->initVolume(III)V

    .line 468
    mul-int/lit8 v2, v0, 0xf

    int-to-float v2, v2

    iput v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->offsetY:F

    .line 469
    iget v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->curBrightness:I

    mul-int/lit8 v2, v2, 0x1

    int-to-float v2, v2

    iput v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->_offsetY:F

    .line 470
    return-void
.end method

.method isScreenshotShow()Z
    .locals 1

    .prologue
    .line 2339
    const/4 v0, 0x0

    return v0
.end method

.method isShowing()Z
    .locals 1

    .prologue
    .line 2570
    const/4 v0, 0x0

    return v0
.end method

.method isVideoRecordShow()Z
    .locals 1

    .prologue
    .line 2344
    const/4 v0, 0x0

    return v0
.end method

.method public loginFail()V
    .locals 0

    .prologue
    .line 2447
    return-void
.end method

.method public loginSucc()V
    .locals 0

    .prologue
    .line 2442
    return-void
.end method

.method needDownloadDRMSo(Ljava/lang/String;)V
    .locals 0
    .param p1, "soName"    # Ljava/lang/String;

    .prologue
    .line 2597
    return-void
.end method

.method newVideo()V
    .locals 0

    .prologue
    .line 2380
    return-void
.end method

.method onADplaying()V
    .locals 0

    .prologue
    .line 2417
    return-void
.end method

.method onBackPressed()Z
    .locals 1

    .prologue
    .line 2349
    const/4 v0, 0x0

    return v0
.end method

.method onBufferPercentUpdate(I)V
    .locals 0
    .param p1, "percent"    # I

    .prologue
    .line 2592
    return-void
.end method

.method public onBufferingUpdateListener(I)V
    .locals 2
    .param p1, "percent"    # I

    .prologue
    .line 777
    const/16 v0, 0x64

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-nez v0, :cond_1

    .line 781
    :cond_0
    :goto_0
    return-void

    .line 780
    :cond_1
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mVideoSeekBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v1}, Lcom/youku/player/module/VideoUrlInfo;->getDurationMills()I

    move-result v1

    mul-int/2addr v1, p1

    div-int/lit8 v1, v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setSecondaryProgress(I)V

    goto :goto_0
.end method

.method onChangeVideoDefinitionComplete()V
    .locals 0

    .prologue
    .line 2507
    return-void
.end method

.method onClearUpDownFav()V
    .locals 0

    .prologue
    .line 2365
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1631
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 1667
    :goto_0
    return-void

    .line 1633
    :sswitch_0
    invoke-direct {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->onPlayOrPauseClick()V

    goto :goto_0

    .line 1636
    :sswitch_1
    invoke-direct {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->onGoSmallBtnClick()V

    goto :goto_0

    .line 1639
    :sswitch_2
    invoke-direct {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->onGoSmallBtnClick()V

    goto :goto_0

    .line 1642
    :sswitch_3
    invoke-direct {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->onGoSettingsBtnClick()V

    goto :goto_0

    .line 1645
    :sswitch_4
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->hideController(Z)V

    .line 1646
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1647
    .local v0, "b":Landroid/os/Bundle;
    const-string v1, "bundle.goods"

    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mGoodsInfo:Lcom/tudou/detail/vo/GoodsInfo;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 1648
    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->showBottomFragment(ILandroid/os/Bundle;)V

    goto :goto_0

    .line 1651
    .end local v0    # "b":Landroid/os/Bundle;
    :sswitch_5
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1652
    const v1, 0x7f0d02c3

    invoke-static {v1}, Lcom/youku/util/Util;->showTips(I)V

    goto :goto_0

    .line 1655
    :cond_0
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mDetailActivity:Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v1}, Lcom/tudou/ui/activity/DetailActivity;->checkAndRestore3GPlay()V

    .line 1656
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mRestartLayout:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1657
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-boolean v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->isComplete:Z

    if-eqz v1, :cond_1

    .line 1658
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v1}, Lcom/youku/player/plugin/MediaPlayerDelegate;->onVVBegin()V

    .line 1660
    :cond_1
    sget v1, Lcom/youku/player/goplay/Profile;->from:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 1661
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v1}, Lcom/youku/player/plugin/MediaPlayerDelegate;->start()V

    goto :goto_0

    .line 1664
    :cond_2
    invoke-direct {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->retryPlay()V

    goto :goto_0

    .line 1631
    :sswitch_data_0
    .sparse-switch
        0x7f0c0b77 -> :sswitch_1
        0x7f0c0be3 -> :sswitch_2
        0x7f0c0be5 -> :sswitch_3
        0x7f0c0be7 -> :sswitch_0
        0x7f0c0bea -> :sswitch_4
        0x7f0c0bf6 -> :sswitch_5
    .end sparse-switch
.end method

.method public onCompletionListener()V
    .locals 1

    .prologue
    .line 785
    invoke-direct {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->hideAllBottomFragment()V

    .line 786
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->playComplete(Z)V

    .line 787
    return-void
.end method

.method onDown()V
    .locals 0

    .prologue
    .line 2360
    return-void
.end method

.method onDownloadFail(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 2437
    return-void
.end method

.method onDownloadSucc()V
    .locals 0

    .prologue
    .line 2432
    return-void
.end method

.method public onErrorListener(II)Z
    .locals 8
    .param p1, "what"    # I
    .param p2, "extra"    # I

    .prologue
    const/16 v7, 0x3f1

    const/16 v6, 0x3ee

    const/16 v5, 0x3ed

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 972
    invoke-direct {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->hideAllBottomFragment()V

    .line 976
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v2, :cond_9

    .line 977
    sget-object v2, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onErrorListener what = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 978
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iput-boolean v1, v2, Lcom/youku/player/plugin/MediaPlayerDelegate;->isStartPlay:Z

    .line 979
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mDetailActivity:Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v2}, Lcom/tudou/ui/activity/DetailActivity;->checkAndRestore3GPlay()V

    .line 980
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mDetailActivity:Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v2}, Lcom/tudou/ui/activity/DetailActivity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1075
    :goto_0
    return v0

    .line 984
    :cond_0
    if-ne p1, v7, :cond_1

    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-boolean v2, v2, Lcom/youku/player/plugin/MediaPlayerDelegate;->isFullScreen:Z

    if-eqz v2, :cond_1

    .line 986
    invoke-direct {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->showAlert()V

    goto :goto_0

    .line 989
    :cond_1
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v2, v2, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v2, :cond_8

    const-string v2, "local"

    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v3, v3, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v3, v3, Lcom/youku/player/module/VideoUrlInfo;->playType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 992
    if-ne p1, v5, :cond_2

    .line 993
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mDetailActivity:Lcom/tudou/ui/activity/DetailActivity;

    new-instance v2, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$9;

    invoke-direct {v2, p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$9;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;)V

    invoke-virtual {v1, v2}, Lcom/tudou/ui/activity/DetailActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1035
    :goto_1
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v1}, Lcom/youku/player/plugin/MediaPlayerDelegate;->setFirstUnloaded()V

    .line 1036
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v1}, Lcom/youku/player/plugin/MediaPlayerDelegate;->release()V

    .line 1037
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v1}, Lcom/youku/player/plugin/MediaPlayerDelegate;->finishActivity()V

    goto :goto_0

    .line 1000
    :cond_2
    if-ne p1, v6, :cond_4

    .line 1001
    sget-boolean v1, Lcom/tudou/android/Youku;->isHighEnd:Z

    if-nez v1, :cond_3

    .line 1002
    const-string v1, "\u62b1\u6b49\uff0c\u8be5\u89c6\u9891\u683c\u5f0f\u6682\u4e0d\u80fd\u5728\u60a8\u624b\u673a\u4e0a\u64ad\u653e\uff0c\u60a8\u53ef\u4ee5\u70b9\u51fb\u8fdb\u5165\u571f\u8c46\u7f51\u5c1d\u8bd5\u89c2\u770b"

    invoke-static {v1}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    goto :goto_1

    .line 1004
    :cond_3
    const-string v1, "\u672c\u5730\u6587\u4ef6\u635f\u574f\u55bd"

    invoke-static {v1}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    goto :goto_1

    .line 1011
    :cond_4
    const/16 v1, 0x3ef

    if-ne p1, v1, :cond_5

    .line 1012
    const-string v1, "\u64ad\u653e\u5668\u5185\u90e8\u51fa\u9519\u5566"

    invoke-static {v1}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    .line 1013
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v1}, Lcom/youku/player/plugin/MediaPlayerDelegate;->finishActivity()V

    goto :goto_1

    .line 1014
    :cond_5
    const/16 v1, 0x3f0

    if-ne p1, v1, :cond_6

    .line 1015
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mDetailActivity:Lcom/tudou/ui/activity/DetailActivity;

    new-instance v2, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$10;

    invoke-direct {v2, p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$10;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;)V

    invoke-virtual {v1, v2}, Lcom/tudou/ui/activity/DetailActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1023
    :cond_6
    if-ne p1, v7, :cond_7

    .line 1024
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mDetailActivity:Lcom/tudou/ui/activity/DetailActivity;

    new-instance v2, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$11;

    invoke-direct {v2, p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$11;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;)V

    invoke-virtual {v1, v2}, Lcom/tudou/ui/activity/DetailActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1033
    :cond_7
    const-string v1, "\u672c\u5730\u6587\u4ef6\u635f\u574f\u55bd"

    invoke-static {v1}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    goto :goto_1

    .line 1040
    :cond_8
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v2, v2, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v2, :cond_9

    const-string v2, "net"

    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v3, v3, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v3, v3, Lcom/youku/player/module/VideoUrlInfo;->playType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1043
    if-ne p1, v5, :cond_a

    .line 1044
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1045
    const-string v0, "\u7f51\u7edc\u4e0d\u7a33\u5b9a\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5 "

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    .line 1074
    :cond_9
    :goto_2
    invoke-direct {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->showAlert()V

    move v0, v1

    .line 1075
    goto/16 :goto_0

    .line 1046
    :cond_a
    if-ne p1, v6, :cond_c

    .line 1047
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v0

    if-eqz v0, :cond_9

    sget-boolean v0, Lcom/tudou/android/Youku;->isHighEnd:Z

    if-eqz v0, :cond_9

    .line 1048
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v0, v0, Lcom/youku/player/module/VideoUrlInfo;->cachePath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 1050
    const-string v0, "\u672c\u5730\u6587\u4ef6\u635f\u574f\u55bd"

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    goto :goto_2

    .line 1052
    :cond_b
    const-string v0, "\u7f51\u7edc\u4e0d\u7a33\u5b9a\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5 "

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    goto :goto_2

    .line 1056
    :cond_c
    const/16 v2, 0x7d4

    if-ne p1, v2, :cond_e

    .line 1057
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1058
    const-string v0, "\u7f51\u7edc\u4e0d\u7a33\u5b9a\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5 "

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    goto :goto_2

    .line 1060
    :cond_d
    const-string v0, "\u5f53\u524d\u65e0\u7f51\u7edc\u8fde\u63a5\uff0c\u8bf7\u68c0\u67e5\u60a8\u7684\u7f51\u7edc"

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    goto :goto_2

    .line 1061
    :cond_e
    const/16 v2, 0x3ea

    if-ne p1, v2, :cond_f

    .line 1062
    const-string v0, "\u64ad\u653e\u5668\u5185\u90e8\u51fa\u9519\u5566"

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    goto :goto_2

    .line 1063
    :cond_f
    sget-boolean v2, Lcom/tudou/android/Youku;->isHighEnd:Z

    if-nez v2, :cond_9

    .line 1065
    if-ne p1, v0, :cond_9

    .line 1066
    const v0, 0x7f0d02eb

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(I)V

    goto :goto_2
.end method

.method onFavor()V
    .locals 0

    .prologue
    .line 2370
    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 263
    invoke-super {p0}, Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;->onFinishInflate()V

    .line 264
    return-void
.end method

.method onFullScreen()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2526
    invoke-direct {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->hideAllBottomFragment()V

    .line 2528
    :try_start_0
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->initVolumeAndBright()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2533
    :goto_0
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mSystemUiHider:Lcom/youku/fullscreen/SystemUiHider;

    if-eqz v1, :cond_0

    .line 2534
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mSystemUiHider:Lcom/youku/fullscreen/SystemUiHider;

    invoke-virtual {v1}, Lcom/youku/fullscreen/SystemUiHider;->setImmersiveMode()V

    .line 2536
    :cond_0
    invoke-direct {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->showControllerAndSystemUI()V

    .line 2538
    iput-boolean v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->stopUserAction:Z

    .line 2540
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->userAction:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenVerticalUserAction;

    if-eqz v1, :cond_1

    .line 2541
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->userAction:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenVerticalUserAction;

    invoke-virtual {v1}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenVerticalUserAction;->userAction()V

    .line 2543
    :cond_1
    invoke-virtual {p0, v2}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->setVisible(Z)V

    .line 2544
    return-void

    .line 2529
    :catch_0
    move-exception v0

    .line 2530
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onHeadsetPlug(ILjava/lang/String;I)V
    .locals 1
    .param p1, "state"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "microphone"    # I

    .prologue
    .line 2471
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mCurrentFragment:Landroid/app/Fragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mCurrentFragment:Landroid/app/Fragment;

    instance-of v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;

    if-eqz v0, :cond_0

    .line 2472
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mCurrentFragment:Landroid/app/Fragment;

    check-cast v0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;->updateVolumeView()V

    .line 2474
    :cond_0
    return-void
.end method

.method public onLoadedListener()V
    .locals 4

    .prologue
    .line 1183
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->loading:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1184
    iget-boolean v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->firstLoaded:Z

    if-nez v0, :cond_0

    .line 1185
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->firstLoaded:Z

    .line 1187
    :cond_0
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->progressLoading:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenLoading;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenLoading;->hideLoading()V

    .line 1188
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->isloading:Z

    .line 1189
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->progressLoading:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenLoading;

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenLoading;->seekLoadingContainerView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1190
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mediaPlayer:Lcom/youku/player/BaseMediaPlayer;

    invoke-virtual {v0}, Lcom/youku/player/BaseMediaPlayer;->getTimeOut()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1191
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mHandler:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$MyHandler;

    new-instance v1, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$14;

    invoke-direct {v1, p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$14;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$MyHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1201
    :cond_1
    invoke-direct {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->enableController()V

    .line 1202
    return-void
.end method

.method public onLoadingListener()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 1216
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-boolean v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isComplete:Z

    if-eqz v0, :cond_0

    .line 1225
    :goto_0
    return-void

    .line 1218
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->isloading:Z

    .line 1219
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->progressLoading:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenLoading;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenLoading;->showLoading()V

    .line 1220
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->loading:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1221
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->playCenterTime:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1222
    invoke-direct {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->disableController()V

    .line 1223
    invoke-direct {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->hideAllBottomFragment()V

    .line 1224
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->hideVideoGoodNotice(Z)V

    goto :goto_0
.end method

.method onMute(Z)V
    .locals 0
    .param p1, "mute"    # Z

    .prologue
    .line 2401
    invoke-direct {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->updateSettingsVolume()V

    .line 2402
    return-void
.end method

.method onNetSpeedChange(I)V
    .locals 0
    .param p1, "speed"    # I

    .prologue
    .line 2607
    return-void
.end method

.method public onNotifyChangeVideoQuality()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 2478
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-boolean v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isFullScreen:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-boolean v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isComplete:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/tudou/android/Youku;->isHighEnd:Z

    if-eqz v0, :cond_0

    const-string v0, "local"

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v1, v1, Lcom/youku/player/module/VideoUrlInfo;->playType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Lcom/youku/player/goplay/Profile;->from:I

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mDetailActivity:Lcom/tudou/ui/activity/DetailActivity;

    invoke-static {v0}, Lcom/youku/player/goplay/Profile;->getVideoQuality(Landroid/content/Context;)I

    move-result v0

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v0}, Lcom/youku/player/module/VideoUrlInfo;->getCurrentQuality()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 2497
    :cond_0
    :goto_0
    return-void

    .line 2490
    :cond_1
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mDetailActivity:Lcom/tudou/ui/activity/DetailActivity;

    new-instance v1, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$25;

    invoke-direct {v1, p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$25;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;)V

    invoke-virtual {v0, v1}, Lcom/tudou/ui/activity/DetailActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 697
    iput-boolean v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->isloading:Z

    .line 698
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->loading:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 699
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mVideoGoodsNotice:Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mVideoGoodsNotice:Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;->isShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 700
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mVideoGoodsNotice:Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;

    invoke-virtual {v0, v2}, Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;->hide(Z)V

    .line 702
    :cond_0
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->hideLoading()V

    .line 703
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->hidePopWindows()V

    .line 704
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mHandler:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$MyHandler;

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->hideSeekBarRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$MyHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 705
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->userAction:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenVerticalUserAction;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenVerticalUserAction;->removeHideCallback()V

    .line 706
    return-void
.end method

.method public onPayVideo(Lcom/youku/player/module/PayInfo;ILjava/lang/String;)V
    .locals 1
    .param p1, "payinfo"    # Lcom/youku/player/module/PayInfo;
    .param p2, "vipError"    # I
    .param p3, "tip"    # Ljava/lang/String;

    .prologue
    .line 2298
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-boolean v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isFullScreen:Z

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->initPayFragment(Lcom/youku/player/module/PayInfo;ZILjava/lang/String;)V

    .line 2299
    return-void
.end method

.method public onPayinfoShowLoginChange()V
    .locals 1

    .prologue
    .line 2316
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->pluginSmallPayPageFragment:Lcom/youku/phone/detail/plugin/PluginSmallPayPageFragment;

    if-eqz v0, :cond_0

    .line 2317
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->pluginSmallPayPageFragment:Lcom/youku/phone/detail/plugin/PluginSmallPayPageFragment;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/PluginSmallPayPageFragment;->onLoginchange()V

    .line 2319
    :cond_0
    return-void
.end method

.method onPlayNoRightVideo(Lcom/youku/player/goplay/GoplayException;)V
    .locals 0
    .param p1, "e"    # Lcom/youku/player/goplay/GoplayException;

    .prologue
    .line 2407
    return-void
.end method

.method onPlayReleateNoRightVideo()V
    .locals 0

    .prologue
    .line 2412
    return-void
.end method

.method onPluginAdded()V
    .locals 0

    .prologue
    .line 724
    invoke-direct {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->refreshStatusBar()V

    .line 725
    invoke-direct {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->firstLoadStuff()V

    .line 726
    invoke-direct {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->validPlayPauseIcon()V

    .line 727
    return-void
.end method

.method public onRealVideoStart()V
    .locals 1

    .prologue
    .line 1625
    invoke-super {p0}, Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;->onRealVideoStart()V

    .line 1626
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->hasGotoEnd:Z

    .line 1627
    return-void
.end method

.method public onRealVideoStarted()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 1617
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->loading:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1618
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->loadingtips:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1619
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->loadingname:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1620
    invoke-direct {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->firstLoadStuff()V

    .line 1621
    return-void
.end method

.method onRelease()V
    .locals 0

    .prologue
    .line 2566
    return-void
.end method

.method onReplay()V
    .locals 3

    .prologue
    .line 2575
    iget-boolean v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mIsNeedWaterMark:Z

    if-eqz v1, :cond_0

    .line 2576
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v1, :cond_0

    .line 2577
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-direct {p0, v1}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->calculateWaterMarkRotatePos(Lcom/youku/player/module/VideoUrlInfo;)V

    .line 2578
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mDetailActivity:Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v1}, Lcom/tudou/ui/activity/DetailActivity;->getmVideoDetail()Lcom/youku/vo/NewVideoDetail;

    move-result-object v0

    .line 2579
    .local v0, "tVideoDetail":Lcom/youku/vo/NewVideoDetail;
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mWaterMark:Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;

    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v2, v2, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v1, v0, v2}, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;->setData(Lcom/youku/vo/NewVideoDetail;Lcom/youku/player/module/VideoUrlInfo;)V

    .line 2582
    .end local v0    # "tVideoDetail":Lcom/youku/vo/NewVideoDetail;
    :cond_0
    return-void
.end method

.method onResume()V
    .locals 0

    .prologue
    .line 2601
    invoke-direct {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->showControllerAndSystemUI()V

    .line 2602
    return-void
.end method

.method onSmallScreen()V
    .locals 0

    .prologue
    .line 2511
    invoke-direct {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->hideAllBottomFragment()V

    .line 2512
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->hidePopWindows()V

    .line 2513
    return-void
.end method

.method onStart()V
    .locals 0

    .prologue
    .line 693
    return-void
.end method

.method onSubscribe()V
    .locals 2

    .prologue
    .line 758
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mWaterMark:Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;->onAttentionChange(Z)V

    .line 759
    return-void
.end method

.method onSubtitlePrepared()V
    .locals 0

    .prologue
    .line 2587
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1928
    sget-object v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->TAG:Ljava/lang/String;

    const-string v1, "onTouch onTouch"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1929
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    if-nez v0, :cond_0

    .line 1930
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mPlayControllerTop:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    .line 1931
    iput-boolean v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->isShowWindow:Z

    .line 1932
    sget-object v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->TAG:Ljava/lang/String;

    const-string v1, "onTouch hideControllerAndSystemUI"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1937
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    if-ne v3, v0, :cond_2

    .line 1939
    invoke-direct {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->endGesture()V

    .line 1940
    iget-boolean v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->isloading:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-boolean v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isComplete:Z

    if-nez v0, :cond_1

    .line 1941
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->loading:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 1942
    iget-boolean v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->isPayVideoShow:Z

    if-nez v0, :cond_1

    .line 1943
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->progressLoading:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenLoading;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenLoading;->showLoading()V

    .line 1947
    :cond_1
    iput v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->directionalLock:I

    .line 1950
    :cond_2
    const/4 v0, 0x3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    if-ne v0, v1, :cond_3

    .line 1952
    invoke-direct {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->endGesture()V

    .line 1953
    iput v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->directionalLock:I

    .line 1954
    sget-object v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->TAG:Ljava/lang/String;

    const-string v1, "onTouch ACTION_CANCEL"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1956
    :cond_3
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 1934
    :cond_4
    iput-boolean v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->isShowWindow:Z

    goto :goto_0
.end method

.method onUnFavor()V
    .locals 0

    .prologue
    .line 2375
    return-void
.end method

.method onUnSubscribe()V
    .locals 2

    .prologue
    .line 763
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mWaterMark:Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;->onAttentionChange(Z)V

    .line 764
    return-void
.end method

.method onUp()V
    .locals 0

    .prologue
    .line 2355
    return-void
.end method

.method public onVideoChange()V
    .locals 1

    .prologue
    .line 2622
    invoke-super {p0}, Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;->onVideoChange()V

    .line 2623
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->hasGotoEnd:Z

    .line 2624
    return-void
.end method

.method onVideoInfoGetFail(Z)V
    .locals 0
    .param p1, "needRetry"    # Z

    .prologue
    .line 2421
    invoke-direct {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->showAlert()V

    .line 2422
    return-void
.end method

.method public onVideoInfoGetted()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/16 v9, 0x8

    const/4 v8, 0x0

    .line 1354
    invoke-super {p0}, Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;->onVideoInfoGetted()V

    .line 1355
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->doPause()V

    .line 1356
    iget-object v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->errorPage:Landroid/view/View;

    invoke-virtual {v4, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1357
    iget-object v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mRestartLayout:Landroid/view/View;

    invoke-virtual {v4, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1359
    iget-object v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v4, v4, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-direct {p0, v4}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->isNeedWaterMark(Lcom/youku/player/module/VideoUrlInfo;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mIsNeedWaterMark:Z

    .line 1366
    iget-boolean v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mIsNeedWaterMark:Z

    if-eqz v4, :cond_0

    .line 1367
    iget-object v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v4, v4, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-direct {p0, v4}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->calculateWaterMarkRotatePos(Lcom/youku/player/module/VideoUrlInfo;)V

    .line 1368
    iget-object v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mDetailActivity:Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v4}, Lcom/tudou/ui/activity/DetailActivity;->getmVideoDetail()Lcom/youku/vo/NewVideoDetail;

    move-result-object v2

    .line 1369
    .local v2, "tVideoDetail":Lcom/youku/vo/NewVideoDetail;
    iget-object v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mWaterMark:Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;

    iget-object v5, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v5, v5, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v4, v2, v5}, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;->setData(Lcom/youku/vo/NewVideoDetail;Lcom/youku/player/module/VideoUrlInfo;)V

    .line 1373
    .end local v2    # "tVideoDetail":Lcom/youku/vo/NewVideoDetail;
    :cond_0
    iget-object v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v4, v4, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-static {v4}, Lcom/youku/phone/detail/DetailUtil;->isPayVideo(Lcom/youku/player/module/VideoUrlInfo;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1374
    iget-object v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v3, v4, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    .line 1375
    .local v3, "tVideoUrlInfo":Lcom/youku/player/module/VideoUrlInfo;
    iget-object v0, v3, Lcom/youku/player/module/VideoUrlInfo;->mPayInfo:Lcom/youku/player/module/PayInfo;

    .line 1376
    .local v0, "tPayInfo":Lcom/youku/player/module/PayInfo;
    iget-object v4, v0, Lcom/youku/player/module/PayInfo;->trail:Lcom/youku/player/module/PayInfo$Trial;

    iget-object v4, v4, Lcom/youku/player/module/PayInfo$Trial;->type:Ljava/lang/String;

    if-eqz v4, :cond_5

    const-string v4, "episodes"

    iget-object v5, v0, Lcom/youku/player/module/PayInfo;->trail:Lcom/youku/player/module/PayInfo$Trial;

    iget-object v5, v5, Lcom/youku/player/module/PayInfo$Trial;->type:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1377
    invoke-virtual {v3}, Lcom/youku/player/module/VideoUrlInfo;->getShow_videoseq()I

    move-result v4

    iget-object v5, v0, Lcom/youku/player/module/PayInfo;->trail:Lcom/youku/player/module/PayInfo$Trial;

    iget v5, v5, Lcom/youku/player/module/PayInfo$Trial;->episodes:I

    if-le v4, v5, :cond_4

    .line 1395
    :goto_0
    iget-object v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->vip_buy_tv2:Landroid/widget/TextView;

    new-instance v5, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$15;

    invoke-direct {v5, p0, v0, v3}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$15;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;Lcom/youku/player/module/PayInfo;Lcom/youku/player/module/VideoUrlInfo;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1444
    .end local v0    # "tPayInfo":Lcom/youku/player/module/PayInfo;
    .end local v3    # "tVideoUrlInfo":Lcom/youku/player/module/VideoUrlInfo;
    :goto_1
    iput-boolean v8, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->isPayVideoShow:Z

    .line 1445
    iget-object v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mPlayOrPauseBtn:Landroid/view/View;

    invoke-virtual {v4, v10}, Landroid/view/View;->setClickable(Z)V

    .line 1446
    iget-object v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mBtnPlay3GOnLine:Landroid/widget/ImageButton;

    invoke-virtual {v4, v10}, Landroid/widget/ImageButton;->setClickable(Z)V

    .line 1448
    iget-object v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v4, v4, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v4}, Lcom/youku/player/module/VideoUrlInfo;->getPlayType()Ljava/lang/String;

    move-result-object v1

    .line 1450
    .local v1, "tPlayType":Ljava/lang/String;
    iget-object v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mVideoTitleTextView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v5, v5, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v5}, Lcom/youku/player/module/VideoUrlInfo;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1451
    iget-object v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mCurPlayPositionTextView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v5, v5, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v5}, Lcom/youku/player/module/VideoUrlInfo;->getProgress()I

    move-result v5

    int-to-long v6, v5

    invoke-static {v6, v7}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUtils;->getFormatTime(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1452
    iget-object v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mVideoDurationTextView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v5, v5, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v5}, Lcom/youku/player/module/VideoUrlInfo;->getDurationMills()I

    move-result v5

    int-to-long v6, v5

    invoke-static {v6, v7}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUtils;->getFormatTime(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1453
    iget-object v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mVideoSeekBar:Landroid/widget/SeekBar;

    iget-object v5, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v5, v5, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v5}, Lcom/youku/player/module/VideoUrlInfo;->getDurationMills()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setMax(I)V

    .line 1454
    iget-object v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mVideoSeekBar:Landroid/widget/SeekBar;

    iget-object v5, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v5, v5, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v5}, Lcom/youku/player/module/VideoUrlInfo;->getProgress()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1456
    iget-object v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->loadingname:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v5, v5, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v5}, Lcom/youku/player/module/VideoUrlInfo;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1457
    iget-object v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->loading:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1458
    iget-object v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->loadingtips:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1459
    iget-object v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->loadingname:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1460
    iget-object v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->progressLoading:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenLoading;

    iget-object v5, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v5, v5, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v5}, Lcom/youku/player/module/VideoUrlInfo;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenLoading;->setTitle(Ljava/lang/String;)V

    .line 1505
    const-string v4, "local"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    sget v4, Lcom/youku/player/goplay/Profile;->from:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_9

    .line 1506
    :cond_1
    iget-object v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mGoSmallScreenBtn:Landroid/view/View;

    invoke-virtual {v4, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1512
    :goto_2
    const-string v4, "local"

    if-ne v1, v4, :cond_a

    .line 1525
    :cond_2
    :goto_3
    iget-object v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mDetailActivity:Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v4}, Lcom/tudou/ui/activity/DetailActivity;->closeDanmaku()V

    .line 1526
    iget-object v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mDetailActivity:Lcom/tudou/ui/activity/DetailActivity;

    iget-boolean v4, v4, Lcom/tudou/ui/activity/DetailActivity;->SETTING_ALLOW_PLAY_ON_3G:Z

    if-nez v4, :cond_3

    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {}, Lcom/youku/util/Util;->isWifi()Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "allowONline3G"

    invoke-static {v4, v8}, Lcom/youku/player/util/PlayerPreference;->getPreferenceBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "net"

    iget-object v5, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v5, v5, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v5}, Lcom/youku/player/module/VideoUrlInfo;->getPlayType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1527
    iget-object v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->progressLoading:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenLoading;

    invoke-virtual {v4}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenLoading;->hideLoading()V

    .line 1528
    iput-boolean v8, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->isloading:Z

    .line 1529
    iget-object v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->loading:Landroid/view/View;

    invoke-virtual {v4, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1530
    iget-object v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mHint3GOnLineLayout:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1531
    invoke-direct {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->showController()V

    .line 1533
    :cond_3
    iget-object v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mGoodsInfo:Lcom/tudou/detail/vo/GoodsInfo;

    if-eqz v4, :cond_b

    .line 1534
    iget-object v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mBottomGoodsBtn:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1538
    :goto_4
    return-void

    .line 1379
    .end local v1    # "tPlayType":Ljava/lang/String;
    .restart local v0    # "tPayInfo":Lcom/youku/player/module/PayInfo;
    .restart local v3    # "tVideoUrlInfo":Lcom/youku/player/module/VideoUrlInfo;
    :cond_4
    iget-object v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->vip_buy_tv1:Landroid/widget/TextView;

    iget-object v5, v0, Lcom/youku/player/module/PayInfo;->trail:Lcom/youku/player/module/PayInfo$Trial;

    iget-object v5, v5, Lcom/youku/player/module/PayInfo$Trial;->tip:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1380
    iget-object v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->vip_buy_tv2:Landroid/widget/TextView;

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1381
    iget-object v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->test_play_layout:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 1383
    :cond_5
    const-string v4, "time"

    iget-object v5, v0, Lcom/youku/player/module/PayInfo;->trail:Lcom/youku/player/module/PayInfo$Trial;

    iget-object v5, v5, Lcom/youku/player/module/PayInfo$Trial;->type:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1384
    invoke-virtual {v0}, Lcom/youku/player/module/PayInfo;->supportMon()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1385
    iget-object v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->vip_buy_tv1:Landroid/widget/TextView;

    const-string v5, "\u672c\u7247\u4e3a\u4f1a\u5458\u89c6\u9891\uff0c\u89c2\u770b\u5b8c\u6574\u7248\u8bf7 "

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1386
    iget-object v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->vip_buy_tv2:Landroid/widget/TextView;

    const-string v5, "\u5f00\u901a\u4f1a\u5458"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1388
    :cond_6
    iget-object v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->vip_buy_tv1:Landroid/widget/TextView;

    const-string v5, "\u672c\u7247\u4e3a\u4ed8\u8d39\u89c6\u9891\uff0c\u89c2\u770b\u5b8c\u6574\u7248\u8bf7 "

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1389
    iget-object v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->vip_buy_tv2:Landroid/widget/TextView;

    const-string v5, "\u8d2d\u4e70\u5f71\u7247"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1392
    :cond_7
    iget-object v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mDetailActivity:Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v4}, Lcom/tudou/ui/activity/DetailActivity;->onPayClick()V

    goto/16 :goto_0

    .line 1441
    .end local v0    # "tPayInfo":Lcom/youku/player/module/PayInfo;
    .end local v3    # "tVideoUrlInfo":Lcom/youku/player/module/VideoUrlInfo;
    :cond_8
    iget-object v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->test_play_layout:Landroid/view/View;

    invoke-virtual {v4, v9}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 1508
    .restart local v1    # "tPlayType":Ljava/lang/String;
    :cond_9
    iget-object v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mGoSmallScreenBtn:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 1515
    :cond_a
    invoke-static {}, Lcom/tudou/service/download/DownloadManager;->getInstance()Lcom/tudou/service/download/DownloadManager;

    move-result-object v4

    iget-object v5, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v5, v5, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v5}, Lcom/youku/player/module/VideoUrlInfo;->getVid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/tudou/service/download/DownloadManager;->existsDownloadInfo(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1518
    iget-object v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v4, v4, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v4}, Lcom/youku/player/module/VideoUrlInfo;->getLimit()I

    move-result v4

    if-ne v4, v10, :cond_2

    goto/16 :goto_3

    .line 1536
    :cond_b
    iget-object v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mBottomGoodsBtn:Landroid/view/View;

    invoke-virtual {v4, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4
.end method

.method public onVideoInfoGetting()V
    .locals 3

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 1229
    invoke-super {p0}, Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;->onVideoInfoGetting()V

    .line 1234
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mWaterMark:Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;->clear()V

    .line 1235
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mWaterMark:Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;

    invoke-virtual {v0, v1}, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;->setVisibility(I)V

    .line 1236
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->errorPage:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1237
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mRestartLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1238
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->hideTimeView()V

    .line 1239
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mDetailActivity:Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v0}, Lcom/tudou/ui/activity/DetailActivity;->closeDanmaku()V

    .line 1240
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->progressLoading:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenLoading;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenLoading;->setTitle(Ljava/lang/String;)V

    .line 1241
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mVideoSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setSecondaryProgress(I)V

    .line 1242
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->showLoadingBychangeVideo()V

    .line 1248
    invoke-direct {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->hideAllBottomFragment()V

    .line 1249
    invoke-direct {p0, v2}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->hideVideoGoodNotice(Z)V

    .line 1250
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->doPause()V

    .line 1251
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mGoodsInfo:Lcom/tudou/detail/vo/GoodsInfo;

    .line 1252
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mVideoGoodsNotice:Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mVideoGoodsNotice:Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;->isShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1253
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mVideoGoodsNotice:Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;

    invoke-virtual {v0, v2}, Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;->hide(Z)V

    .line 1255
    :cond_0
    return-void
.end method

.method onVolumnDown()V
    .locals 0

    .prologue
    .line 2396
    invoke-direct {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->updateSettingsVolume()V

    .line 2397
    return-void
.end method

.method onVolumnUp()V
    .locals 0

    .prologue
    .line 2384
    invoke-direct {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->updateSettingsVolume()V

    .line 2385
    return-void
.end method

.method protected playComplete(Z)V
    .locals 8
    .param p1, "auto"    # Z

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 790
    sget-object v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->TAG:Ljava/lang/String;

    const-string v1, "playComplete  "

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 791
    sget v0, Lcom/youku/player/goplay/Profile;->from:I

    if-eq v0, v6, :cond_0

    sget v0, Lcom/youku/player/goplay/Profile;->from:I

    if-ne v0, v7, :cond_2

    .line 793
    :cond_0
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->finishActivity()V

    .line 846
    :cond_1
    :goto_0
    return-void

    .line 797
    :cond_2
    const-string v0, "playComplete"

    const-wide/16 v2, 0x12c

    invoke-static {v0, v2, v3}, Lcom/youku/util/Util;->isGoOn(Ljava/lang/String;J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 800
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-boolean v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isFullScreen:Z

    if-eqz v0, :cond_1

    .line 802
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->hideTimeView()V

    .line 803
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->progressLoading:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenLoading;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenLoading;->hideLoading()V

    .line 804
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iput-boolean v4, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isComplete:Z

    .line 805
    invoke-static {v4}, Lcom/youku/player/Track;->setplayCompleted(Z)V

    .line 806
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iput-boolean v5, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isStartPlay:Z

    .line 807
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-boolean v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isFullScreen:Z

    if-eqz v0, :cond_3

    .line 808
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->onVVEnd()V

    .line 809
    :cond_3
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-boolean v0, v0, Lcom/youku/player/module/VideoUrlInfo;->isExternalVideo:Z

    if-eqz v0, :cond_4

    .line 810
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->finishActivity()V

    goto :goto_0

    .line 813
    :cond_4
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mDetailActivity:Lcom/tudou/ui/activity/DetailActivity;

    invoke-static {v0}, Lcom/youku/player/goplay/Profile;->getPlayMode(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v4, :cond_5

    .line 814
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iput-boolean v5, v0, Lcom/youku/player/module/VideoUrlInfo;->isFirstLoaded:Z

    .line 815
    invoke-direct {p0, p1}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->playNextVideo(Z)V

    goto :goto_0

    .line 816
    :cond_5
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mDetailActivity:Lcom/tudou/ui/activity/DetailActivity;

    invoke-static {v0}, Lcom/youku/player/goplay/Profile;->getPlayMode(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v6, :cond_7

    .line 817
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 818
    iget-boolean v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->hasGotoEnd:Z

    if-nez v0, :cond_1

    .line 822
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->goEndPage()V

    goto :goto_0

    .line 825
    :cond_6
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->finishActivity()V

    goto :goto_0

    .line 827
    :cond_7
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mDetailActivity:Lcom/tudou/ui/activity/DetailActivity;

    invoke-static {v0}, Lcom/youku/player/goplay/Profile;->getPlayMode(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v7, :cond_1

    .line 828
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->release()V

    .line 829
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mHandler:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$MyHandler;

    new-instance v1, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$7;

    invoke-direct {v1, p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$7;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$MyHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0
.end method

.method protected playPause()V
    .locals 1

    .prologue
    .line 1993
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1994
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->pauseInternal(Z)V

    .line 1998
    :goto_0
    return-void

    .line 1996
    :cond_0
    invoke-direct {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->playInternal()V

    goto :goto_0
.end method

.method public resetFirstPlay()V
    .locals 1

    .prologue
    .line 1550
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->firstLoaded:Z

    .line 1551
    invoke-direct {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->hideAllBottomFragment()V

    .line 1552
    return-void
.end method

.method protected seekChange(Landroid/widget/SeekBar;)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 529
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-nez v0, :cond_1

    .line 560
    :cond_0
    :goto_0
    return-void

    .line 532
    :cond_1
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getMax()I

    move-result v1

    if-lt v0, v1, :cond_5

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getMax()I

    move-result v0

    if-lez v0, :cond_5

    .line 533
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v1}, Lcom/youku/player/module/VideoUrlInfo;->getDurationMills()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/youku/player/module/VideoUrlInfo;->setProgress(I)V

    .line 534
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-static {v0}, Lcom/youku/phone/detail/DetailUtil;->isPayVideo(Lcom/youku/player/module/VideoUrlInfo;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 537
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v0, v0, Lcom/youku/player/module/VideoUrlInfo;->mPayInfo:Lcom/youku/player/module/PayInfo;

    iget-object v0, v0, Lcom/youku/player/module/PayInfo;->trail:Lcom/youku/player/module/PayInfo$Trial;

    iget-object v0, v0, Lcom/youku/player/module/PayInfo$Trial;->type:Ljava/lang/String;

    if-eqz v0, :cond_4

    const-string v0, "episodes"

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v1, v1, Lcom/youku/player/module/VideoUrlInfo;->mPayInfo:Lcom/youku/player/module/PayInfo;

    iget-object v1, v1, Lcom/youku/player/module/PayInfo;->trail:Lcom/youku/player/module/PayInfo$Trial;

    iget-object v1, v1, Lcom/youku/player/module/PayInfo$Trial;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 539
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v0}, Lcom/youku/player/module/VideoUrlInfo;->getShow_videoseq()I

    move-result v0

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v1, v1, Lcom/youku/player/module/VideoUrlInfo;->mPayInfo:Lcom/youku/player/module/PayInfo;

    iget-object v1, v1, Lcom/youku/player/module/PayInfo;->trail:Lcom/youku/player/module/PayInfo$Trial;

    iget v1, v1, Lcom/youku/player/module/PayInfo$Trial;->episodes:I

    if-le v0, v1, :cond_2

    .line 541
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mDetailActivity:Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v0}, Lcom/tudou/ui/activity/DetailActivity;->onPayClick()V

    goto :goto_0

    .line 544
    :cond_2
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->test_play_layout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 553
    :cond_3
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->onComplete()V

    goto :goto_0

    .line 547
    :cond_4
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v1, v1, Lcom/youku/player/module/VideoUrlInfo;->mPayInfo:Lcom/youku/player/module/PayInfo;

    iget-object v1, v1, Lcom/youku/player/module/PayInfo;->trail:Lcom/youku/player/module/PayInfo$Trial;

    iget v1, v1, Lcom/youku/player/module/PayInfo$Trial;->time:I

    if-lt v0, v1, :cond_3

    .line 548
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mDetailActivity:Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v0}, Lcom/tudou/ui/activity/DetailActivity;->onPayClick()V

    goto/16 :goto_0

    .line 554
    :cond_5
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v0, :cond_0

    .line 555
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v0, :cond_6

    .line 556
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/youku/player/module/VideoUrlInfo;->setProgress(I)V

    .line 558
    :cond_6
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/youku/player/plugin/MediaPlayerDelegate;->seekTo(I)V

    goto/16 :goto_0
.end method

.method protected seekSlideChange(Landroid/widget/SeekBar;I)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "timeToGo"    # I

    .prologue
    .line 1978
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getMax()I

    move-result v0

    if-lt p2, v0, :cond_1

    .line 1979
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v1}, Lcom/youku/player/module/VideoUrlInfo;->getDurationMills()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/youku/player/module/VideoUrlInfo;->setProgress(I)V

    .line 1982
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->onComplete()V

    .line 1990
    :cond_0
    :goto_0
    return-void

    .line 1983
    :cond_1
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v0, :cond_0

    .line 1984
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1985
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->playPause()V

    .line 1987
    :cond_2
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v0, p2}, Lcom/youku/player/module/VideoUrlInfo;->setProgress(I)V

    .line 1988
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0, p2}, Lcom/youku/player/plugin/MediaPlayerDelegate;->seekTo(I)V

    goto :goto_0
.end method

.method setCurrentVid(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "vid"    # Ljava/lang/String;
    .param p2, "setSelectionOnly"    # Z

    .prologue
    .line 711
    return-void
.end method

.method public setFullscreenCompatibility()V
    .locals 1

    .prologue
    .line 615
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->hasVirtualButtonBar()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 616
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mSystemUiHider:Lcom/youku/fullscreen/SystemUiHider;

    invoke-virtual {v0}, Lcom/youku/fullscreen/SystemUiHider;->hide()V

    .line 618
    :cond_0
    return-void
.end method

.method public setGoodsInfo(Lcom/tudou/detail/vo/GoodsInfo;)V
    .locals 2
    .param p1, "goodsInfo"    # Lcom/tudou/detail/vo/GoodsInfo;

    .prologue
    .line 1344
    invoke-super {p0, p1}, Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;->setGoodsInfo(Lcom/tudou/detail/vo/GoodsInfo;)V

    .line 1345
    if-nez p1, :cond_0

    .line 1346
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mBottomGoodsBtn:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1350
    :goto_0
    return-void

    .line 1348
    :cond_0
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mBottomGoodsBtn:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setVideoDetail(Lcom/youku/vo/NewVideoDetail;)V
    .locals 4
    .param p1, "mVideoDetail"    # Lcom/youku/vo/NewVideoDetail;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 682
    if-eqz p1, :cond_2

    .line 683
    const-string v2, "album"

    iget-object v3, p1, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    iget-object v3, v3, Lcom/youku/vo/NewVideoDetail$Detail;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    :cond_0
    iput-boolean v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mIsNeedToEndPage:Z

    .line 684
    iget-object v0, p1, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    iget v0, v0, Lcom/youku/vo/NewVideoDetail$Detail;->completed:I

    if-ne v0, v1, :cond_1

    .line 688
    :cond_1
    :goto_0
    return-void

    .line 686
    :cond_2
    iput-boolean v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mIsNeedToEndPage:Z

    goto :goto_0
.end method

.method setVisible(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 731
    return-void
.end method

.method setbattery(II)V
    .locals 1
    .param p1, "number"    # I
    .param p2, "states"    # I

    .prologue
    .line 675
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mStateBattery:Lcom/youku/phone/detail/plugin/fullscreen/BatteryView;

    if-eqz v0, :cond_0

    .line 676
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mStateBattery:Lcom/youku/phone/detail/plugin/fullscreen/BatteryView;

    invoke-virtual {v0, p1, p2}, Lcom/youku/phone/detail/plugin/fullscreen/BatteryView;->setNumber(II)V

    .line 678
    :cond_0
    return-void
.end method

.method protected showBrightView()V
    .locals 4

    .prologue
    .line 2182
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->progressLoading:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenLoading;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenLoading;->hideLoading()V

    .line 2183
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->settingBright:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2184
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mHandler:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$MyHandler;

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->hideBrightRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$MyHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2185
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mHandler:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$MyHandler;

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->hideBrightRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$MyHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2186
    return-void
.end method

.method protected showCenterSildeTime(JIZ)V
    .locals 11
    .param p1, "time"    # J
    .param p3, "lasttime"    # I
    .param p4, "dismiss"    # Z

    .prologue
    const-wide/16 v8, 0x0

    const/4 v5, 0x0

    .line 2001
    int-to-long v6, p3

    sub-long v6, p1, v6

    cmp-long v6, v6, v8

    if-lez v6, :cond_1

    const/4 v1, 0x1

    .line 2002
    .local v1, "isForward":Z
    :goto_0
    iget-object v6, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-boolean v6, v6, Lcom/youku/player/plugin/MediaPlayerDelegate;->isADShowing:Z

    if-nez v6, :cond_0

    iget-boolean v6, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->firstLoaded:Z

    if-nez v6, :cond_2

    .line 2037
    :cond_0
    :goto_1
    return-void

    .end local v1    # "isForward":Z
    :cond_1
    move v1, v5

    .line 2001
    goto :goto_0

    .line 2006
    .restart local v1    # "isForward":Z
    :cond_2
    iget-object v6, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->playGestureCenterTime:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2007
    iget-object v6, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->playGestureCenterTime_line:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2008
    iget-object v6, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->play_controller_center_time_layout:Landroid/view/View;

    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2009
    iget-object v5, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mHandler:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$MyHandler;

    iget-object v6, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->hideTimeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$MyHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2010
    iget-object v5, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mHandler:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$MyHandler;

    iget-object v6, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->hideSeekBarRunnable:Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$MyHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2011
    iget-object v5, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->progressLoading:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenLoading;

    invoke-virtual {v5}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenLoading;->hideLoading()V

    .line 2012
    cmp-long v5, p1, v8

    if-gez v5, :cond_3

    .line 2013
    const-wide/16 p1, 0x0

    .line 2015
    :cond_3
    const-string v3, ""

    .line 2016
    .local v3, "print":Ljava/lang/String;
    if-eqz v1, :cond_5

    .line 2017
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "+"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2021
    :goto_2
    int-to-long v6, p3

    sub-long v6, p1, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUtils;->getFormatTimeForGesture(J)Ljava/lang/String;

    move-result-object v4

    .line 2022
    .local v4, "target":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2023
    iget-object v5, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->playGestureCenterTime:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2024
    iget-object v5, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->playGestureCenterTime_line:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1, p2}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUtils;->getFormatTimeForGesture(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v7, v7, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v7}, Lcom/youku/player/module/VideoUrlInfo;->getDurationMills()I

    move-result v7

    int-to-long v8, v7

    invoke-static {v8, v9}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUtils;->getFormatTimeForGesture(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2027
    iget-object v5, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->pos_line:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 2028
    .local v2, "params":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v5, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v5, v5, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v5}, Lcom/youku/player/module/VideoUrlInfo;->getDurationMills()I

    move-result v0

    .line 2029
    .local v0, "duration":I
    if-lez v0, :cond_4

    .line 2030
    iget-object v5, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->play_controller_center_time_layout:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-long v6, v5

    mul-long/2addr v6, p1

    int-to-long v8, v0

    div-long/2addr v6, v8

    long-to-int v5, v6

    iput v5, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 2032
    :cond_4
    if-eqz p4, :cond_6

    .line 2033
    iget-object v5, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mHandler:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$MyHandler;

    iget-object v6, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->hideTimeRunnable:Ljava/lang/Runnable;

    const-wide/16 v8, 0x1f4

    invoke-virtual {v5, v6, v8, v9}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$MyHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    .line 2019
    .end local v0    # "duration":I
    .end local v2    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v4    # "target":Ljava/lang/String;
    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_2

    .line 2035
    .restart local v0    # "duration":I
    .restart local v2    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v4    # "target":Ljava/lang/String;
    :cond_6
    iget-object v5, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mVideoSeekBar:Landroid/widget/SeekBar;

    iget v6, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->currentPosition:I

    invoke-virtual {v5, v6}, Landroid/widget/SeekBar;->setProgress(I)V

    goto/16 :goto_1
.end method

.method protected showCenterTime(Landroid/widget/SeekBar;)V
    .locals 4
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 2201
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->playCenterTime:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2202
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->playCenterTime:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    int-to-long v2, v1

    invoke-static {v2, v3}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUtils;->getFormatTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2203
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mHandler:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$MyHandler;

    new-instance v1, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$23;

    invoke-direct {v1, p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$23;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$MyHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2209
    return-void
.end method

.method public showLoadingBychangeVideo()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 1542
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->loading:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1543
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->loadingtips:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1544
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->loadingname:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1545
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->progressLoading:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenLoading;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenLoading;->hideLoading()V

    .line 1546
    return-void
.end method

.method protected showLock()V
    .locals 0

    .prologue
    .line 736
    return-void
.end method

.method protected showVolumeView()V
    .locals 4

    .prologue
    .line 2169
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->progressLoading:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenLoading;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenLoading;->hideLoading()V

    .line 2170
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->settingVolume:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2171
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mHandler:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$MyHandler;

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->hideVolumeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$MyHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2172
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mHandler:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$MyHandler;

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->hideVolumeRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$MyHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2173
    return-void
.end method
