.class public Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;
.super Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;
.source "PluginFullScreenHorizontal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$FullScreenGestureListener;
    }
.end annotation


# static fields
.field private static final HIDER_FLAGS:I = 0x6

.field private static final NEAR_POINT_MULTIPLE:F = 35.0f

.field protected static final TAG:Ljava/lang/String;


# instance fields
.field private _currentPosition:I

.field private _offsetY:F

.field private final _zoom:I

.field private adpointViewList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private battery:Lcom/youku/phone/detail/plugin/fullscreen/BatteryView;

.field public bright:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenBright;

.field private curBrightness:I

.field private currentPosition:I

.field danmuDialog:Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog;

.field private danmu_animation:Landroid/view/View;

.field private directionalLock:I

.field private disableController:Z

.field private duration:I

.field public errorPage:Landroid/view/View;

.field gestureGuideView:Landroid/view/ViewStub;

.field public hasGotoEnd:Z

.field hideBrightRunnable:Ljava/lang/Runnable;

.field hideSeekbarRunnable:Ljava/lang/Runnable;

.field hideTimeRunnable:Ljava/lang/Runnable;

.field hideVolumeRunnable:Ljava/lang/Runnable;

.field private highEnable:Z

.field private highTV:Landroid/widget/TextView;

.field private highTV_img:Landroid/widget/ImageView;

.field private highTV_layout:Landroid/view/View;

.field isFromLocal:Z

.field private isGesture:Z

.field private isPayVideoShow:Z

.field private isPonitViewInited:Z

.field private isRealVideoStart:Z

.field private isRealVideoStartForRecord:Z

.field private isRetry:Z

.field isShowCling:Z

.field private isShowWindow:Z

.field private isloading:Z

.field private landscapeLimitSlope:F

.field listener:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenClickOperate;

.field private loading:Landroid/view/View;

.field private loadingname:Landroid/widget/TextView;

.field private loadingtips:Landroid/widget/TextView;

.field private loadingview:Lcom/youku/widget/Loading;

.field private mBackgroundForMusic:Landroid/view/View;

.field private mBtnBack:Landroid/view/View;

.field private mBtnDanmuSwitch:Landroid/view/View;

.field private mBtnMore:Landroid/view/View;

.field private mBtnNext:Landroid/view/View;

.field public mBtnNextClickLis:Landroid/view/View$OnClickListener;

.field private mBtnPlay3GOnLine:Landroid/widget/ImageButton;

.field private mBtnPlayOrPause:Landroid/view/View;

.field private mBtnPlaylist:Landroid/view/View;

.field private mBtnQuality:Landroid/view/View;

.field private mBtnScreenLock:Landroid/widget/ImageView;

.field private mBtnSendDanmu:Landroid/view/View;

.field private mBtnSmall:Landroid/view/View;

.field private mBtnUPlus:Lcom/tudou/detail/widget/SwitchButton;

.field private mControllIsAnimating:Z

.field private mControllerBottom:Landroid/view/View;

.field private mControllerTop:Landroid/view/View;

.field private mCurrentPos:I

.field private mCurrentPositionChangeTimes:I

.field private mCurrentQualityText:Landroid/widget/TextView;

.field private mDeviderUPlus:Landroid/view/View;

.field private mDividerQuality:Landroid/view/View;

.field private mDuration:I

.field private mEffectiveBegin:I

.field private mEffectiveDuration:I

.field private mEffectiveEnd:I

.field private mGestureDetector:Landroid/view/GestureDetector;

.field mHandler:Landroid/os/Handler;

.field private mHdNoticeView:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;

.field private mHint3GOnLineLayout:Landroid/view/View;

.field private mHotseat:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;

.field private mHotseatCling:Landroid/view/View;

.field private mIsNeedRegisterNumOrLicenseNum:Z

.field private mIsNeedToEndPage:Z

.field protected mIsNeedWaterMark:Z

.field private mIsRegisterOrLicenseShow:Z

.field private mLastVideoBarWidth:I

.field private mLicenseNum:Landroid/widget/TextView;

.field private mNeedRestoreDanmaku:Z

.field private mNoRightHint:Landroid/widget/TextView;

.field private mPopupQuality:Landroid/widget/PopupWindow;

.field private mPopupQualityContent:Landroid/view/View;

.field private mRegisterNum:Landroid/widget/TextView;

.field private mRightPanel:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel;

.field private mScreenWidth:I

.field private mScreenshotShare:Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView;

.field private mStateTime:Landroid/widget/TextView;

.field private mStateWifi:Landroid/widget/ImageView;

.field private mStubScreenshotShare:Landroid/view/ViewStub;

.field private mStubVideoGoodsNotice:Landroid/view/ViewStub;

.field private mStubVideoHdNotice:Landroid/view/ViewStub;

.field private mStubVideoRecord:Landroid/view/ViewStub;

.field public mSystemUiHider:Lcom/youku/fullscreen/SystemUiHider;

.field private mTextCurrentPosition:Landroid/widget/TextView;

.field private mTextDuration:Landroid/widget/TextView;

.field private mVideoGoodsNotice:Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;

.field private mVideoNoticeBottomView:Lcom/youku/phone/detail/plugin/fullscreen/VideoNoticeBottomView;

.field private mVideoNoticeTopView:Lcom/youku/phone/detail/plugin/fullscreen/VideoNoticeTopView;

.field public mVideoRecordUpdateView:Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordUpdateView;

.field private mVideoRecordView:Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;

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

.field private ph:Lcom/youku/phone/detail/plugin/fullscreen/PopupWindow_Hotpoint_Top;

.field private playCenterTime:Landroid/widget/TextView;

.field private playErrorMsg:I

.field playGestureCenterTime:Landroid/widget/TextView;

.field playGestureCenterTime_line:Landroid/widget/TextView;

.field play_controller_center_time_layout:Landroid/view/View;

.field pluginSmallPayPageFragment:Lcom/youku/phone/detail/plugin/PluginSmallPayPageFragment;

.field plugin_full_pay_layout:Landroid/view/View;

.field private pointViewList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private portraitLimitSlope:F

.field pos_line:Landroid/view/View;

.field private position:I

.field progressLoading:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenLoading;

.field private progress_zoom:I

.field private retry:Landroid/view/View;

.field private settingBright:Landroid/view/View;

.field private settingVolume:Landroid/view/View;

.field showdanmuPlayerstate:Z

.field private sp:Landroid/content/SharedPreferences;

.field private standandTV:Landroid/widget/TextView;

.field private standandTV_img:Landroid/widget/ImageView;

.field private standandTV_layout:Landroid/view/View;

.field private stdEnable:Z

.field public stopUserAction:Z

.field private superEnable:Z

.field private superTV:Landroid/widget/TextView;

.field private superTV_img:Landroid/widget/ImageView;

.field private superTV_layout:Landroid/view/View;

.field private testImageViewLine:Landroid/widget/ImageView;

.field test_play_layout:Landroid/view/View;

.field private thumbMoving:Z

.field private title:Lcom/youku/widget/AlwaysMarqueeTextView;

.field public userAction:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUserAction;

.field userInterAction:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;

.field private videoBar:Landroid/widget/SeekBar;

.field videoSize:I

.field private videoTestBarLayout:Landroid/widget/RelativeLayout;

.field vip_buy_tv1:Landroid/widget/TextView;

.field vip_buy_tv2:Landroid/widget/TextView;

.field public volume:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenVolume;

.field private final zoom:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 349
    const-class v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 556
    invoke-direct {p0, p1, p2}, Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 112
    new-instance v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$1;

    invoke-direct {v0, p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$1;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)V

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->hideVolumeRunnable:Ljava/lang/Runnable;

    .line 121
    new-instance v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$2;

    invoke-direct {v0, p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$2;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)V

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->hideBrightRunnable:Ljava/lang/Runnable;

    .line 130
    new-instance v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$3;

    invoke-direct {v0, p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$3;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)V

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->hideTimeRunnable:Ljava/lang/Runnable;

    .line 145
    new-instance v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$4;

    invoke-direct {v0, p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$4;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)V

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->hideSeekbarRunnable:Ljava/lang/Runnable;

    .line 352
    iput-boolean v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->isPayVideoShow:Z

    .line 353
    iput-boolean v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->isloading:Z

    .line 354
    iput-boolean v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->disableController:Z

    .line 355
    iput-boolean v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mControllIsAnimating:Z

    .line 356
    iput-boolean v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->isGesture:Z

    .line 357
    iput-boolean v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->isShowWindow:Z

    .line 358
    iput-boolean v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mIsNeedToEndPage:Z

    .line 366
    iput v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->currentPosition:I

    .line 367
    iput v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->_currentPosition:I

    .line 368
    const/16 v0, 0x1388

    iput v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->progress_zoom:I

    .line 369
    iput v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->directionalLock:I

    .line 370
    const/high16 v0, 0x40800000    # 4.0f

    iput v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->portraitLimitSlope:F

    .line 371
    const/high16 v0, 0x3e800000    # 0.25f

    iput v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->landscapeLimitSlope:F

    .line 372
    iput v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->offsetY:F

    .line 373
    iput v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->_offsetY:F

    .line 374
    const/16 v0, 0xf

    iput v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->zoom:I

    .line 376
    iput v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->_zoom:I

    .line 377
    iput v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->curBrightness:I

    .line 378
    const/16 v0, 0xff

    iput v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->maxBrightness:I

    .line 380
    iput v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->duration:I

    .line 381
    iput v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->position:I

    .line 388
    new-instance v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$5;

    invoke-direct {v0, p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$5;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)V

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mHandler:Landroid/os/Handler;

    .line 419
    iput-boolean v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->stopUserAction:Z

    .line 487
    iput-boolean v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->isFromLocal:Z

    .line 489
    iput-boolean v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->hasGotoEnd:Z

    .line 502
    iput-boolean v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->superEnable:Z

    .line 503
    iput-boolean v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->highEnable:Z

    .line 504
    iput-boolean v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->stdEnable:Z

    .line 511
    iput-boolean v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->showdanmuPlayerstate:Z

    .line 517
    iput-boolean v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->thumbMoving:Z

    .line 518
    iput-boolean v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->isPonitViewInited:Z

    .line 519
    iput v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mLastVideoBarWidth:I

    .line 520
    iput v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mScreenWidth:I

    .line 524
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->pointViewList:Ljava/util/List;

    .line 525
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->adpointViewList:Ljava/util/List;

    .line 541
    iput-boolean v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mIsNeedWaterMark:Z

    .line 547
    iput-boolean v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mWaterMarkFirstRotateEnable:Z

    .line 548
    iput-boolean v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mWaterMarkSecondRotateEnable:Z

    .line 549
    iput-boolean v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mWaterMarkThirdRotateEnable:Z

    .line 550
    iput v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mWaterMarkFirstRotetePos:I

    .line 551
    iput v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mWaterMarkSecondRotetePos:I

    .line 552
    iput v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mWaterMarkThirdRotetePos:I

    .line 711
    const/16 v0, 0x64

    iput v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->videoSize:I

    .line 1396
    iput-boolean v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mNeedRestoreDanmaku:Z

    .line 2516
    iput-boolean v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->isRetry:Z

    .line 3020
    iput-boolean v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->isRealVideoStart:Z

    .line 3021
    iput-boolean v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->isRealVideoStartForRecord:Z

    .line 3022
    iput-boolean v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->isShowCling:Z

    .line 3415
    iput v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->playErrorMsg:I

    .line 3614
    new-instance v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$46;

    invoke-direct {v0, p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$46;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)V

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mBtnNextClickLis:Landroid/view/View$OnClickListener;

    .line 3977
    iput v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mCurrentPositionChangeTimes:I

    .line 3978
    iput v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mCurrentPos:I

    .line 557
    invoke-direct {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->computeScreenWidth()V

    .line 558
    return-void
.end method

.method static synthetic access$000(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->settingVolume:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->settingBright:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)F
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    .prologue
    .line 110
    iget v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->_offsetY:F

    return v0
.end method

.method static synthetic access$1002(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;F)F
    .locals 0
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;
    .param p1, "x1"    # F

    .prologue
    .line 110
    iput p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->_offsetY:F

    return p1
.end method

.method static synthetic access$1016(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;F)F
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;
    .param p1, "x1"    # F

    .prologue
    .line 110
    iget v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->_offsetY:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->_offsetY:F

    return v0
.end method

.method static synthetic access$1100(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)I
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    .prologue
    .line 110
    iget v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->maxBrightness:I

    return v0
.end method

.method static synthetic access$1200(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->sp:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)F
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    .prologue
    .line 110
    iget v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->landscapeLimitSlope:F

    return v0
.end method

.method static synthetic access$1400(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)I
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    .prologue
    .line 110
    iget v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->duration:I

    return v0
.end method

.method static synthetic access$1402(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;I)I
    .locals 0
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;
    .param p1, "x1"    # I

    .prologue
    .line 110
    iput p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->duration:I

    return p1
.end method

.method static synthetic access$1500(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)I
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    .prologue
    .line 110
    iget v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->progress_zoom:I

    return v0
.end method

.method static synthetic access$1502(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;I)I
    .locals 0
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;
    .param p1, "x1"    # I

    .prologue
    .line 110
    iput p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->progress_zoom:I

    return p1
.end method

.method static synthetic access$1600(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)I
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    .prologue
    .line 110
    iget v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->currentPosition:I

    return v0
.end method

.method static synthetic access$1602(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;I)I
    .locals 0
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;
    .param p1, "x1"    # I

    .prologue
    .line 110
    iput p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->currentPosition:I

    return p1
.end method

.method static synthetic access$1624(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;F)I
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;
    .param p1, "x1"    # F

    .prologue
    .line 110
    iget v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->currentPosition:I

    int-to-float v0, v0

    sub-float/2addr v0, p1

    float-to-int v0, v0

    iput v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->currentPosition:I

    return v0
.end method

.method static synthetic access$1700(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)I
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    .prologue
    .line 110
    iget v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->_currentPosition:I

    return v0
.end method

.method static synthetic access$1702(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;I)I
    .locals 0
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;
    .param p1, "x1"    # I

    .prologue
    .line 110
    iput p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->_currentPosition:I

    return p1
.end method

.method static synthetic access$1800(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;I)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;
    .param p1, "x1"    # I

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->setHotPointVisible(I)V

    return-void
.end method

.method static synthetic access$1900(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)Landroid/widget/SeekBar;
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->videoBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$200(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mControllerBottom:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)I
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    .prologue
    .line 110
    iget v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mCurrentPos:I

    return v0
.end method

.method static synthetic access$2002(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;I)I
    .locals 0
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;
    .param p1, "x1"    # I

    .prologue
    .line 110
    iput p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mCurrentPos:I

    return p1
.end method

.method static synthetic access$2100(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mTextDuration:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->showControllerAndSystemUI()V

    return-void
.end method

.method static synthetic access$2400(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mVideoGoodsNotice:Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mHotseat:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel;
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mRightPanel:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->showController()V

    return-void
.end method

.method static synthetic access$2800(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)Z
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    .prologue
    .line 110
    iget-boolean v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->isRealVideoStartForRecord:Z

    return v0
.end method

.method static synthetic access$2802(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;
    .param p1, "x1"    # Z

    .prologue
    .line 110
    iput-boolean p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->isRealVideoStartForRecord:Z

    return p1
.end method

.method static synthetic access$2900(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)Z
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    .prologue
    .line 110
    iget-boolean v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->isloading:Z

    return v0
.end method

.method static synthetic access$300(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)Z
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    .prologue
    .line 110
    iget-boolean v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->isShowWindow:Z

    return v0
.end method

.method static synthetic access$3000(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;
    .param p1, "x1"    # Z

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->screenshotInternal(Z)V

    return-void
.end method

.method static synthetic access$3100(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)Z
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    .prologue
    .line 110
    iget-boolean v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mControllIsAnimating:Z

    return v0
.end method

.method static synthetic access$3102(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;
    .param p1, "x1"    # Z

    .prologue
    .line 110
    iput-boolean p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mControllIsAnimating:Z

    return p1
.end method

.method static synthetic access$3200(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mControllerTop:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->hideHdViews()V

    return-void
.end method

.method static synthetic access$3400(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mVideoRecordView:Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;
    .param p1, "x1"    # Z

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->pauseInternal(Z)V

    return-void
.end method

.method static synthetic access$3600(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->playInternal()V

    return-void
.end method

.method static synthetic access$3700(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mBtnScreenLock:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->setOrientLocked()V

    return-void
.end method

.method static synthetic access$3900(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->setOrientUnlock()V

    return-void
.end method

.method static synthetic access$400(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->doClickContainer()V

    return-void
.end method

.method static synthetic access$4000(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mCurrentQualityText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->popupWindowInit(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$4200(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->danmu_animation:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mBtnDanmuSwitch:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mBtnSendDanmu:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;ZLandroid/view/View;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Landroid/view/View;
    .param p3, "x3"    # Z

    .prologue
    .line 110
    invoke-direct {p0, p1, p2, p3}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->showhideDanmuLayout(ZLandroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$4600(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->sendDanmu()V

    return-void
.end method

.method static synthetic access$4700(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)I
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    .prologue
    .line 110
    iget v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mLastVideoBarWidth:I

    return v0
.end method

.method static synthetic access$4702(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;I)I
    .locals 0
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;
    .param p1, "x1"    # I

    .prologue
    .line 110
    iput p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mLastVideoBarWidth:I

    return p1
.end method

.method static synthetic access$4800(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)I
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    .prologue
    .line 110
    iget v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mScreenWidth:I

    return v0
.end method

.method static synthetic access$4902(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;
    .param p1, "x1"    # Z

    .prologue
    .line 110
    iput-boolean p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->isPonitViewInited:Z

    return p1
.end method

.method static synthetic access$500(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)Z
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    .prologue
    .line 110
    iget-boolean v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->disableController:Z

    return v0
.end method

.method static synthetic access$5000(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->initPointView()V

    return-void
.end method

.method static synthetic access$5102(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;
    .param p1, "x1"    # Z

    .prologue
    .line 110
    iput-boolean p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->thumbMoving:Z

    return p1
.end method

.method static synthetic access$5200(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mTextCurrentPosition:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$5300(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z

    .prologue
    .line 110
    invoke-direct {p0, p1, p2}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->showScreenshotShareView(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$5400(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)Lcom/tudou/detail/widget/SwitchButton;
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mBtnUPlus:Lcom/tudou/detail/widget/SwitchButton;

    return-object v0
.end method

.method static synthetic access$5500(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->playCenterTime:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$5600(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)Lcom/youku/phone/detail/plugin/fullscreen/PopupWindow_Hotpoint_Top;
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->ph:Lcom/youku/phone/detail/plugin/fullscreen/PopupWindow_Hotpoint_Top;

    return-object v0
.end method

.method static synthetic access$5602(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;Lcom/youku/phone/detail/plugin/fullscreen/PopupWindow_Hotpoint_Top;)Lcom/youku/phone/detail/plugin/fullscreen/PopupWindow_Hotpoint_Top;
    .locals 0
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;
    .param p1, "x1"    # Lcom/youku/phone/detail/plugin/fullscreen/PopupWindow_Hotpoint_Top;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->ph:Lcom/youku/phone/detail/plugin/fullscreen/PopupWindow_Hotpoint_Top;

    return-object p1
.end method

.method static synthetic access$5700(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)Landroid/widget/PopupWindow;
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mPopupQuality:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$5702(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;Landroid/widget/PopupWindow;)Landroid/widget/PopupWindow;
    .locals 0
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;
    .param p1, "x1"    # Landroid/widget/PopupWindow;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mPopupQuality:Landroid/widget/PopupWindow;

    return-object p1
.end method

.method static synthetic access$5802(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;
    .param p1, "x1"    # Z

    .prologue
    .line 110
    iput-boolean p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->isRealVideoStart:Z

    return p1
.end method

.method static synthetic access$5900(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;
    .param p1, "x1"    # Z

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->playNextVideo(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)I
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    .prologue
    .line 110
    iget v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->directionalLock:I

    return v0
.end method

.method static synthetic access$6000(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)Z
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    .prologue
    .line 110
    iget-boolean v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mIsNeedToEndPage:Z

    return v0
.end method

.method static synthetic access$602(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;I)I
    .locals 0
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;
    .param p1, "x1"    # I

    .prologue
    .line 110
    iput p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->directionalLock:I

    return p1
.end method

.method static synthetic access$6100(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->loading:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$6200(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->initHotseatCling()V

    return-void
.end method

.method static synthetic access$6300(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mHotseatCling:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$6400(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mHdNoticeView:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;

    return-object v0
.end method

.method static synthetic access$700(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)F
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    .prologue
    .line 110
    iget v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->portraitLimitSlope:F

    return v0
.end method

.method static synthetic access$800(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)F
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    .prologue
    .line 110
    iget v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->offsetY:F

    return v0
.end method

.method static synthetic access$802(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;F)F
    .locals 0
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;
    .param p1, "x1"    # F

    .prologue
    .line 110
    iput p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->offsetY:F

    return p1
.end method

.method static synthetic access$816(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;F)F
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;
    .param p1, "x1"    # F

    .prologue
    .line 110
    iget v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->offsetY:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->offsetY:F

    return v0
.end method

.method static synthetic access$900(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)I
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    .prologue
    .line 110
    iget v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->maxVolume:I

    return v0
.end method

.method static synthetic access$902(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;I)I
    .locals 0
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;
    .param p1, "x1"    # I

    .prologue
    .line 110
    iput p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->maxVolume:I

    return p1
.end method

.method private calculateWaterMarkRotatePos(Lcom/youku/player/module/VideoUrlInfo;)V
    .locals 5
    .param p1, "info"    # Lcom/youku/player/module/VideoUrlInfo;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3320
    invoke-virtual {p1}, Lcom/youku/player/module/VideoUrlInfo;->getDurationMills()I

    move-result v0

    iput v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mDuration:I

    .line 3321
    iget v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mDuration:I

    iput v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mEffectiveDuration:I

    .line 3322
    iput v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mEffectiveBegin:I

    .line 3323
    iget v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mEffectiveDuration:I

    iput v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mEffectiveEnd:I

    .line 3324
    invoke-static {}, Lcom/youku/player/goplay/Profile;->isSkipHeadAndTail()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3325
    invoke-virtual {p1}, Lcom/youku/player/module/VideoUrlInfo;->isHasHead()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3326
    invoke-virtual {p1}, Lcom/youku/player/module/VideoUrlInfo;->getHeadPosition()I

    move-result v0

    iput v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mEffectiveBegin:I

    .line 3327
    iget v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mEffectiveDuration:I

    iget v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mEffectiveBegin:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mEffectiveDuration:I

    .line 3329
    :cond_0
    invoke-virtual {p1}, Lcom/youku/player/module/VideoUrlInfo;->isHasTail()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3330
    invoke-virtual {p1}, Lcom/youku/player/module/VideoUrlInfo;->getTailPosition()I

    move-result v0

    iput v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mEffectiveEnd:I

    .line 3331
    iget v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mEffectiveDuration:I

    iget v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mDuration:I

    iget v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mEffectiveEnd:I

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mEffectiveDuration:I

    .line 3335
    :cond_1
    iget v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mEffectiveDuration:I

    const v1, 0xea60

    if-ge v0, v1, :cond_2

    .line 3336
    iput-boolean v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mWaterMarkFirstRotateEnable:Z

    .line 3337
    iput-boolean v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mWaterMarkSecondRotateEnable:Z

    .line 3338
    iput-boolean v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mWaterMarkThirdRotateEnable:Z

    .line 3339
    const/16 v0, 0xa

    iput v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mWaterMarkFirstRotetePos:I

    .line 3340
    iput v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mWaterMarkSecondRotetePos:I

    .line 3341
    iput v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mWaterMarkThirdRotetePos:I

    .line 3358
    :goto_0
    sget-object v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "calculateWaterMarkRotatePos mDuration = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mDuration:I

    div-int/lit16 v2, v2, 0x3e8

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mEffectiveDuration = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mEffectiveDuration:I

    div-int/lit16 v2, v2, 0x3e8

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3359
    sget-object v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "calculateWaterMarkRotatePos mEffectiveBegin = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mEffectiveBegin:I

    div-int/lit16 v2, v2, 0x3e8

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3360
    sget-object v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "calculateWaterMarkRotatePos mEffectiveEnd = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mEffectiveEnd:I

    div-int/lit16 v2, v2, 0x3e8

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3362
    sget-object v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mWaterMarkFirstRotateEnable  = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mWaterMarkFirstRotateEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mWaterMarkFirstRotetePos  = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mWaterMarkFirstRotetePos:I

    div-int/lit16 v2, v2, 0x3e8

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3364
    sget-object v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mWaterMarkSecondRotateEnable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mWaterMarkSecondRotateEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mWaterMarkSecondRotetePos = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mWaterMarkSecondRotetePos:I

    div-int/lit16 v2, v2, 0x3e8

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3366
    sget-object v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mWaterMarkThirdRotateEnable  = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mWaterMarkThirdRotateEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mWaterMarkThirdRotetePos  = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mWaterMarkThirdRotetePos:I

    div-int/lit16 v2, v2, 0x3e8

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3368
    return-void

    .line 3343
    :cond_2
    iget v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mEffectiveDuration:I

    const v1, 0x927c0

    if-ge v0, v1, :cond_3

    .line 3344
    iput-boolean v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mWaterMarkFirstRotateEnable:Z

    .line 3345
    iput-boolean v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mWaterMarkSecondRotateEnable:Z

    .line 3346
    iput-boolean v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mWaterMarkThirdRotateEnable:Z

    .line 3347
    iget v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mEffectiveBegin:I

    add-int/lit16 v0, v0, 0x2710

    iput v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mWaterMarkFirstRotetePos:I

    .line 3348
    iput v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mWaterMarkSecondRotetePos:I

    .line 3349
    iput v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mWaterMarkThirdRotetePos:I

    goto/16 :goto_0

    .line 3351
    :cond_3
    iput-boolean v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mWaterMarkFirstRotateEnable:Z

    .line 3352
    iput-boolean v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mWaterMarkSecondRotateEnable:Z

    .line 3353
    iput-boolean v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mWaterMarkThirdRotateEnable:Z

    .line 3354
    iget v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mEffectiveBegin:I

    add-int/lit16 v0, v0, 0x2710

    iput v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mWaterMarkFirstRotetePos:I

    .line 3355
    iget v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mEffectiveDuration:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mWaterMarkSecondRotetePos:I

    .line 3356
    iget v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mEffectiveEnd:I

    add-int/lit16 v0, v0, -0x3a98

    iput v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mWaterMarkThirdRotetePos:I

    goto/16 :goto_0
.end method

.method private checkVideoRecordView()V
    .locals 2

    .prologue
    .line 1362
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mVideoRecordView:Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;

    if-nez v0, :cond_0

    .line 1363
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mStubVideoRecord:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mVideoRecordView:Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;

    .line 1364
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mVideoRecordView:Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0, v1}, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->setMediaPlayer(Lcom/youku/player/plugin/MediaPlayerDelegate;)V

    .line 1365
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mVideoRecordView:Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;

    new-instance v1, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$21;

    invoke-direct {v1, p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$21;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)V

    invoke-virtual {v0, v1}, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->setOnBtnBackClickLis(Ljava/lang/Runnable;)V

    .line 1372
    :cond_0
    return-void
.end method

.method private clearAdPointView()V
    .locals 3

    .prologue
    .line 1835
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->adpointViewList:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->adpointViewList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1844
    :cond_0
    :goto_0
    return-void

    .line 1838
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->adpointViewList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 1839
    .local v1, "pointview":Landroid/widget/ImageView;
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->videoTestBarLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    goto :goto_1

    .line 1842
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "pointview":Landroid/widget/ImageView;
    :catch_0
    move-exception v2

    goto :goto_0

    .line 1841
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_2
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->adpointViewList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method private clearPointsView()V
    .locals 3

    .prologue
    .line 1823
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->pointViewList:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->pointViewList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1832
    :cond_0
    :goto_0
    return-void

    .line 1826
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->pointViewList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 1827
    .local v1, "pointview":Landroid/widget/ImageView;
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->videoTestBarLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    goto :goto_1

    .line 1830
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "pointview":Landroid/widget/ImageView;
    :catch_0
    move-exception v2

    goto :goto_0

    .line 1829
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_2
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->pointViewList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method private computeScreenWidth()V
    .locals 5

    .prologue
    .line 599
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v2}, Lcom/tudou/ui/activity/DetailActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 600
    .local v0, "display":Landroid/view/Display;
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 601
    .local v1, "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 602
    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mScreenWidth:I

    .line 603
    sget-object v2, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "computeScreenWidth mScreenWidth = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mScreenWidth:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    return-void
.end method

.method private disableController()V
    .locals 1

    .prologue
    .line 1761
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->disableController:Z

    .line 1763
    return-void
.end method

.method private doClickContainer()V
    .locals 4

    .prologue
    .line 608
    const-string v0, "PLUGIN_BTN_PLAYLIST"

    const-wide/16 v2, 0x190

    invoke-static {v0, v2, v3}, Lcom/youku/util/Util;->isGoOn(Ljava/lang/String;J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 621
    :goto_0
    return-void

    .line 611
    :cond_0
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->userAction:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUserAction;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUserAction;->userAction()V

    .line 612
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mControllerBottom:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 613
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->hideControllerAndSystemUI()V

    goto :goto_0

    .line 615
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->stopUserAction:Z

    .line 616
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->hideSeekbarView()V

    .line 617
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->hideTimeView()V

    .line 618
    invoke-direct {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->showMediaController()V

    .line 619
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->userAction:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUserAction;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUserAction;->userAction()V

    goto :goto_0
.end method

.method private enableController()V
    .locals 1

    .prologue
    .line 1766
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->disableController:Z

    .line 1768
    return-void
.end method

.method private endGesture()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 2353
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-boolean v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isADShowing:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->firstLoaded:Z

    if-nez v0, :cond_1

    .line 2368
    :cond_0
    :goto_0
    return-void

    .line 2357
    :cond_1
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->userAction:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUserAction;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUserAction;->lastInteractTime:J

    .line 2359
    iget v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->currentPosition:I

    iget v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->_currentPosition:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-ltz v0, :cond_2

    iget v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->directionalLock:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 2361
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->videoBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->currentPosition:I

    invoke-virtual {p0, v0, v1}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->seekSlideChange(Landroid/widget/SeekBar;I)V

    .line 2362
    const-string v0, "test1"

    const-string v1, "endGesture showCenterSildeTime"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2363
    iget v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->currentPosition:I

    int-to-long v0, v0

    iget v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->_currentPosition:I

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->showCenterSildeTime(JIZ)V

    .line 2365
    :cond_2
    iput v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->currentPosition:I

    .line 2366
    iput v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->duration:I

    .line 2367
    iput v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->_currentPosition:I

    goto :goto_0
.end method

.method private feshstatData()V
    .locals 8

    .prologue
    .line 2387
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2388
    invoke-static {}, Lcom/youku/util/Util;->isWifi()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2389
    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mStateWifi:Landroid/widget/ImageView;

    const v6, 0x7f020a67

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2396
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 2397
    .local v4, "time1":J
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 2398
    .local v0, "mCalendar":Ljava/util/Calendar;
    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 2399
    const/16 v3, 0xb

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 2400
    .local v1, "mHour":I
    const/16 v3, 0xc

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 2401
    .local v2, "mMinuts":I
    const/16 v3, 0xa

    if-ge v2, v3, :cond_2

    .line 2402
    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mStateTime:Landroid/widget/TextView;

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

    .line 2406
    :goto_1
    return-void

    .line 2391
    .end local v0    # "mCalendar":Ljava/util/Calendar;
    .end local v1    # "mHour":I
    .end local v2    # "mMinuts":I
    .end local v4    # "time1":J
    :cond_0
    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mStateWifi:Landroid/widget/ImageView;

    const v6, 0x7f020610

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 2394
    :cond_1
    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mStateWifi:Landroid/widget/ImageView;

    const v6, 0x7f020a68

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 2404
    .restart local v0    # "mCalendar":Ljava/util/Calendar;
    .restart local v1    # "mHour":I
    .restart local v2    # "mMinuts":I
    .restart local v4    # "time1":J
    :cond_2
    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mStateTime:Landroid/widget/TextView;

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
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f000000    # 0.5f

    const/4 v4, 0x0

    .line 652
    sget-object v2, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->TAG:Ljava/lang/String;

    const-string v3, "firstLoadStuff"

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 653
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v2, v2, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-nez v2, :cond_1

    .line 709
    :cond_0
    :goto_0
    return-void

    .line 656
    :cond_1
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v2, v2, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v2}, Lcom/youku/player/module/VideoUrlInfo;->getVid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 658
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-boolean v2, v2, Lcom/youku/player/plugin/MediaPlayerDelegate;->isFullScreen:Z

    if-eqz v2, :cond_2

    .line 659
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->resizeMediaPlayer()V

    .line 661
    :cond_2
    iput-boolean v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->changeVideoQuality:Z

    .line 662
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->title:Lcom/youku/widget/AlwaysMarqueeTextView;

    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v3, v3, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v3}, Lcom/youku/player/module/VideoUrlInfo;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/youku/widget/AlwaysMarqueeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 663
    const-string v2, "local"

    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v3, v3, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v3}, Lcom/youku/player/module/VideoUrlInfo;->getPlayType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v2

    if-nez v2, :cond_4

    .line 665
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v2, v2, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v2}, Lcom/youku/player/module/VideoUrlInfo;->getShowId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 666
    invoke-static {}, Lcom/tudou/service/download/DownloadManager;->getInstance()Lcom/tudou/service/download/DownloadManager;

    move-result-object v2

    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v3, v3, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v3}, Lcom/youku/player/module/VideoUrlInfo;->getShowId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tudou/service/download/DownloadManager;->getDownloadInfoListById(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 667
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tudou/service/download/DownloadInfo;>;"
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v2, v2, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v2}, Lcom/youku/player/module/VideoUrlInfo;->getEpisodemode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tudou/detail/vo/VideoList;->createFromDownloadInfos(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/tudou/detail/vo/VideoList;

    move-result-object v1

    .line 668
    .local v1, "videolist":Lcom/tudou/detail/vo/VideoList;
    iput-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mVideolist:Lcom/tudou/detail/vo/VideoList;

    .line 669
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mBtnPlaylist:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->setClickable(Z)V

    .line 670
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mBtnPlaylist:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 672
    .end local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tudou/service/download/DownloadInfo;>;"
    .end local v1    # "videolist":Lcom/tudou/detail/vo/VideoList;
    :cond_3
    const-string v2, "yueliang"

    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3}, Ljava/lang/RuntimeException;-><init>()V

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 673
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mBtnPlaylist:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setClickable(Z)V

    .line 674
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mBtnPlaylist:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setAlpha(F)V

    goto/16 :goto_0

    .line 679
    :cond_4
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v2, v2, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v2}, Lcom/youku/player/module/VideoUrlInfo;->getDurationMills()I

    move-result v2

    if-nez v2, :cond_5

    .line 680
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v2, v2, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v3, v3, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v3}, Lcom/youku/player/module/VideoUrlInfo;->getDurationMills()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/youku/player/module/VideoUrlInfo;->setDurationMills(I)V

    .line 684
    :cond_5
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mDetailActivity:Lcom/tudou/ui/activity/DetailActivity;

    new-instance v3, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$6;

    invoke-direct {v3, p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$6;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)V

    invoke-virtual {v2, v3}, Lcom/tudou/ui/activity/DetailActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 693
    sget v2, Lcom/youku/player/goplay/Profile;->from:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 695
    const-string v2, "local"

    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v3, v3, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v3}, Lcom/youku/player/module/VideoUrlInfo;->getPlayType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 697
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v2, v2, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v2}, Lcom/youku/player/module/VideoUrlInfo;->getShowId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 698
    invoke-static {}, Lcom/tudou/service/download/DownloadManager;->getInstance()Lcom/tudou/service/download/DownloadManager;

    move-result-object v2

    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v3, v3, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v3}, Lcom/youku/player/module/VideoUrlInfo;->getShowId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tudou/service/download/DownloadManager;->getDownloadInfoListById(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 699
    .restart local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tudou/service/download/DownloadInfo;>;"
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v2, v2, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v2}, Lcom/youku/player/module/VideoUrlInfo;->getEpisodemode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tudou/detail/vo/VideoList;->createFromDownloadInfos(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/tudou/detail/vo/VideoList;

    move-result-object v1

    .line 700
    .restart local v1    # "videolist":Lcom/tudou/detail/vo/VideoList;
    iput-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mVideolist:Lcom/tudou/detail/vo/VideoList;

    .line 701
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mBtnPlaylist:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->setClickable(Z)V

    .line 702
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mBtnPlaylist:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setAlpha(F)V

    goto/16 :goto_0

    .line 704
    .end local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tudou/service/download/DownloadInfo;>;"
    .end local v1    # "videolist":Lcom/tudou/detail/vo/VideoList;
    :cond_6
    const-string v2, "yueliang"

    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3}, Ljava/lang/RuntimeException;-><init>()V

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 705
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mBtnPlaylist:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setClickable(Z)V

    .line 706
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mBtnPlaylist:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setAlpha(F)V

    goto/16 :goto_0
.end method

.method private getPointPos(D)I
    .locals 7
    .param p1, "start"    # D

    .prologue
    .line 1906
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->testImageViewLine:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    .line 1907
    .local v1, "width":I
    int-to-double v2, v1

    mul-double/2addr v2, p1

    iget-object v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->videoBar:Landroid/widget/SeekBar;

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getMax()I

    move-result v4

    int-to-double v4, v4

    div-double/2addr v2, v4

    double-to-int v0, v2

    .line 1908
    .local v0, "result":I
    return v0
.end method

.method private hideHdViews()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 4066
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mVideoGoodsNotice:Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mVideoGoodsNotice:Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 4067
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mVideoGoodsNotice:Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;

    invoke-virtual {v0, v1}, Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;->setVisibility(I)V

    .line 4068
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mVideoGoodsNotice:Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;

    iput-boolean v2, v0, Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;->mIsShow:Z

    .line 4071
    :cond_0
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mHdNoticeView:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mHdNoticeView:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 4072
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mHdNoticeView:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;

    invoke-virtual {v0, v1}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;->setVisibility(I)V

    .line 4073
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mHdNoticeView:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;

    iput-boolean v2, v0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;->mIsShow:Z

    .line 4076
    :cond_1
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mVideoNoticeBottomView:Lcom/youku/phone/detail/plugin/fullscreen/VideoNoticeBottomView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mVideoNoticeBottomView:Lcom/youku/phone/detail/plugin/fullscreen/VideoNoticeBottomView;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/VideoNoticeBottomView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 4077
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mVideoNoticeBottomView:Lcom/youku/phone/detail/plugin/fullscreen/VideoNoticeBottomView;

    invoke-virtual {v0, v1}, Lcom/youku/phone/detail/plugin/fullscreen/VideoNoticeBottomView;->setVisibility(I)V

    .line 4080
    :cond_2
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mVideoNoticeTopView:Lcom/youku/phone/detail/plugin/fullscreen/VideoNoticeTopView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mVideoNoticeTopView:Lcom/youku/phone/detail/plugin/fullscreen/VideoNoticeTopView;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/VideoNoticeTopView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 4081
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mVideoNoticeTopView:Lcom/youku/phone/detail/plugin/fullscreen/VideoNoticeTopView;

    invoke-virtual {v0, v1}, Lcom/youku/phone/detail/plugin/fullscreen/VideoNoticeTopView;->setVisibility(I)V

    .line 4083
    :cond_3
    return-void
.end method

.method private initClingUPlus()V
    .locals 3

    .prologue
    .line 2988
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mDetailActivity:Lcom/tudou/ui/activity/DetailActivity;

    new-instance v1, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$38;

    invoke-direct {v1, p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$38;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)V

    new-instance v2, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$39;

    invoke-direct {v2, p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$39;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)V

    invoke-virtual {v0, v1, v2}, Lcom/tudou/ui/activity/DetailActivity;->showFirstUPlusCling(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 3012
    return-void
.end method

.method private initGuideView()V
    .locals 4

    .prologue
    .line 2969
    const-string v1, "hasShownFingerIcon"

    invoke-static {v1}, Lcom/tudou/android/Youku;->getPreferenceBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2970
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->gestureGuideView:Landroid/view/ViewStub;

    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 2971
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->gestureGuideView:Landroid/view/ViewStub;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 2972
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->gestureGuideView:Landroid/view/ViewStub;

    if-eqz v1, :cond_0

    .line 2973
    sget-object v1, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "visible2 = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->gestureGuideView:Landroid/view/ViewStub;

    invoke-virtual {v3}, Landroid/view/ViewStub;->getVisibility()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2974
    :cond_0
    const v1, 0x7f0c0b92

    invoke-virtual {p0, v1}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 2975
    .local v0, "contentView":Landroid/widget/ImageView;
    new-instance v1, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$37;

    invoke-direct {v1, p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$37;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2983
    const-string v1, "hasShownFingerIcon"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tudou/android/Youku;->savePreference(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2985
    .end local v0    # "contentView":Landroid/widget/ImageView;
    :cond_1
    return-void
.end method

.method private initHotseatCling()V
    .locals 3

    .prologue
    .line 4139
    const v1, 0x7f0c0bc8

    invoke-virtual {p0, v1}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mHotseatCling:Landroid/view/View;

    .line 4140
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mHotseat:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;

    if-eqz v1, :cond_0

    .line 4141
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mHotseat:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;

    invoke-virtual {v1}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->getItemCount()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 4142
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mHotseat:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;

    invoke-virtual {v1}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->getType()Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem$Type;

    move-result-object v0

    .line 4143
    .local v0, "tType":Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem$Type;
    sget-object v1, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem$Type;->ANNO:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem$Type;

    if-ne v1, v0, :cond_1

    .line 4144
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mHotseatCling:Landroid/view/View;

    const v2, 0x7f0206b1

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 4154
    .end local v0    # "tType":Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem$Type;
    :cond_0
    :goto_0
    return-void

    .line 4145
    .restart local v0    # "tType":Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem$Type;
    :cond_1
    sget-object v1, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem$Type;->GOODS:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem$Type;

    if-ne v1, v0, :cond_2

    .line 4146
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mHotseatCling:Landroid/view/View;

    const v2, 0x7f0206b3

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 4147
    :cond_2
    sget-object v1, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem$Type;->POINT:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem$Type;

    if-ne v1, v0, :cond_3

    .line 4148
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mHotseatCling:Landroid/view/View;

    const v2, 0x7f0206b4

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 4149
    :cond_3
    sget-object v1, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem$Type;->VOTE:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem$Type;

    if-ne v1, v0, :cond_0

    .line 4150
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mHotseatCling:Landroid/view/View;

    const v2, 0x7f0206bb

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method private initLock()V
    .locals 3

    .prologue
    .line 3198
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->sp:Landroid/content/SharedPreferences;

    const-string v1, "video_lock"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-boolean v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isFullScreen:Z

    if-eqz v0, :cond_0

    .line 3201
    invoke-direct {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->setOrientLocked()V

    .line 3202
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mBtnScreenLock:Landroid/widget/ImageView;

    const v1, 0x7f0206a0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3204
    :cond_0
    return-void
.end method

.method private initPayFragment(Lcom/youku/player/module/PayInfo;Z)V
    .locals 2
    .param p1, "payInfo"    # Lcom/youku/player/module/PayInfo;
    .param p2, "isFullScreen"    # Z

    .prologue
    .line 3089
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->initPayFragment(Lcom/youku/player/module/PayInfo;ZILjava/lang/String;)V

    .line 3090
    return-void
.end method

.method private initPayFragment(Lcom/youku/player/module/PayInfo;ZILjava/lang/String;)V
    .locals 9
    .param p1, "payInfo"    # Lcom/youku/player/module/PayInfo;
    .param p2, "isFullScreen"    # Z
    .param p3, "vipError"    # I
    .param p4, "tip"    # Ljava/lang/String;

    .prologue
    .line 3097
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->loading:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3098
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->hideLoading()V

    .line 3099
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->isPayVideoShow:Z

    .line 3100
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->pluginSmallPayPageFragment:Lcom/youku/phone/detail/plugin/PluginSmallPayPageFragment;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mDetailActivity:Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v0}, Lcom/tudou/ui/activity/DetailActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3101
    new-instance v0, Lcom/youku/phone/detail/plugin/PluginSmallPayPageFragment;

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v1}, Lcom/youku/player/module/VideoUrlInfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    const/4 v4, 0x0

    move-object v2, p1

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/youku/phone/detail/plugin/PluginSmallPayPageFragment;-><init>(Ljava/lang/String;Lcom/youku/player/module/PayInfo;Lcom/youku/player/plugin/MediaPlayerDelegate;ZILjava/lang/String;)V

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->pluginSmallPayPageFragment:Lcom/youku/phone/detail/plugin/PluginSmallPayPageFragment;

    .line 3102
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mDetailActivity:Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v0}, Lcom/tudou/ui/activity/DetailActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v7

    .line 3103
    .local v7, "fragmentManager":Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v7}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v8

    .line 3104
    .local v8, "fragmentTransaction":Landroid/support/v4/app/FragmentTransaction;
    const v0, 0x7f0c0b5a

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->pluginSmallPayPageFragment:Lcom/youku/phone/detail/plugin/PluginSmallPayPageFragment;

    invoke-virtual {v8, v0, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 3105
    invoke-virtual {v8}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 3107
    .end local v7    # "fragmentManager":Landroid/support/v4/app/FragmentManager;
    .end local v8    # "fragmentTransaction":Landroid/support/v4/app/FragmentTransaction;
    :cond_0
    return-void
.end method

.method private initPointView()V
    .locals 10

    .prologue
    const/16 v9, 0xf

    const/4 v8, -0x1

    const/high16 v7, 0x41900000    # 18.0f

    .line 1847
    invoke-direct {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->clearPointsView()V

    .line 1848
    invoke-direct {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->clearAdPointView()V

    .line 1849
    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->hotPoints:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    .line 1850
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->hotPoints:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 1851
    new-instance v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mDetailActivity:Lcom/tudou/ui/activity/DetailActivity;

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1852
    .local v2, "pointView":Landroid/widget/ImageView;
    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->hotPoints:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 1853
    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1854
    new-instance v3, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$30;

    invoke-direct {v3, p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$30;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1875
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {v7}, Lcom/baseproject/utils/Util;->dip2px(F)I

    move-result v3

    invoke-direct {v1, v3, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1876
    .local v1, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v1, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1878
    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->hotPoints:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/youku/player/goplay/Point;

    iget-wide v4, v3, Lcom/youku/player/goplay/Point;->start:D

    invoke-direct {p0, v4, v5}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->getPointPos(D)I

    move-result v3

    add-int/lit8 v3, v3, -0x16

    iget v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget v5, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iget v6, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 1881
    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->videoTestBarLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1882
    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->pointViewList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1850
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1886
    .end local v0    # "i":I
    .end local v1    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v2    # "pointView":Landroid/widget/ImageView;
    :cond_0
    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->adPoints:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    .line 1887
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->adPoints:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 1888
    new-instance v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mDetailActivity:Lcom/tudou/ui/activity/DetailActivity;

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1889
    .restart local v2    # "pointView":Landroid/widget/ImageView;
    const v3, 0x7f09013a

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1890
    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->adPoints:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 1891
    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1893
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {v7}, Lcom/baseproject/utils/Util;->dip2px(F)I

    move-result v3

    invoke-direct {v1, v3, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1894
    .restart local v1    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v1, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1896
    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->adPoints:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/youku/player/goplay/Point;

    iget-wide v4, v3, Lcom/youku/player/goplay/Point;->start:D

    invoke-direct {p0, v4, v5}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->getPointPos(D)I

    move-result v3

    add-int/lit8 v3, v3, -0x16

    iget v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget v5, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iget v6, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 1899
    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->videoTestBarLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1900
    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->adpointViewList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1887
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1903
    .end local v0    # "i":I
    .end local v1    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v2    # "pointView":Landroid/widget/ImageView;
    :cond_1
    return-void
.end method

.method private isNeedWaterMark(Lcom/youku/player/module/VideoUrlInfo;)Z
    .locals 4
    .param p1, "info"    # Lcom/youku/player/module/VideoUrlInfo;

    .prologue
    .line 2701
    const/4 v0, 0x0

    .line 2702
    .local v0, "need":Z
    if-eqz p1, :cond_0

    .line 2703
    iget-boolean v1, p1, Lcom/youku/player/module/VideoUrlInfo;->isExternalVideo:Z

    if-eqz v1, :cond_1

    .line 2704
    const/4 v0, 0x0

    .line 2713
    :cond_0
    :goto_0
    sget-object v1, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->TAG:Ljava/lang/String;

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

    .line 2714
    return v0

    .line 2706
    :cond_1
    const-string v1, "local"

    invoke-virtual {p1}, Lcom/youku/player/module/VideoUrlInfo;->getPlayType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2707
    iget-boolean v0, p1, Lcom/youku/player/module/VideoUrlInfo;->isLocalWaterMark:Z

    goto :goto_0

    .line 2709
    :cond_2
    iget-boolean v0, p1, Lcom/youku/player/module/VideoUrlInfo;->need_mark:Z

    goto :goto_0
.end method

.method private pauseInternal(Z)V
    .locals 3
    .param p1, "noAd"    # Z

    .prologue
    .line 2264
    sget-object v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->TAG:Ljava/lang/String;

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

    .line 2265
    if-eqz p1, :cond_0

    .line 2266
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->pauseNoAd()V

    .line 2270
    :goto_0
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mBtnPlayOrPause:Landroid/view/View;

    const v1, 0x7f0206a5

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 2271
    return-void

    .line 2268
    :cond_0
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->pause()V

    goto :goto_0
.end method

.method private playInternal()V
    .locals 2

    .prologue
    .line 2258
    sget-object v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->TAG:Ljava/lang/String;

    const-string v1, "playInternal"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2259
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->start()V

    .line 2260
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mBtnPlayOrPause:Landroid/view/View;

    const v1, 0x7f0206a4

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 2261
    return-void
.end method

.method private playLocalNext(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "videoid"    # Ljava/lang/String;
    .param p2, "auto"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 3832
    iput-boolean v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->firstLoaded:Z

    .line 3833
    iput-boolean v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->isRealVideoStart:Z

    .line 3834
    iput-boolean v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->isRealVideoStartForRecord:Z

    .line 3835
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iput-boolean v2, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isComplete:Z

    .line 3836
    invoke-static {v2}, Lcom/youku/player/Track;->setplayCompleted(Z)V

    .line 3837
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iput-boolean v1, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isStartPlay:Z

    .line 3838
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-boolean v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isFullScreen:Z

    if-eqz v0, :cond_0

    .line 3839
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->onVVEnd()V

    .line 3840
    :cond_0
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->release()V

    .line 3841
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mDetailActivity:Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v0, p1, p2}, Lcom/tudou/ui/activity/DetailActivity;->playLocalVideoNext(Ljava/lang/String;Z)V

    .line 3842
    return-void
.end method

.method private playNextVideo(Z)V
    .locals 10
    .param p1, "auto"    # Z

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 3637
    iput-boolean v8, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->firstLoaded:Z

    .line 3638
    iput-boolean v8, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->isRealVideoStart:Z

    .line 3639
    iput-boolean v8, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->isRealVideoStartForRecord:Z

    .line 3647
    iget-object v6, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mDetailActivity:Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v6}, Lcom/tudou/ui/activity/DetailActivity;->isFinishing()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 3768
    :cond_0
    :goto_0
    return-void

    .line 3650
    :cond_1
    iget-object v6, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v6, v6, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v6, :cond_0

    .line 3663
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v6

    if-nez v6, :cond_2

    .line 3664
    iget-object v6, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v6, v6, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v6}, Lcom/youku/player/module/VideoUrlInfo;->getVid()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6, p1}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->playLocalNext(Ljava/lang/String;Z)V

    .line 3665
    iget-object v6, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mDetailActivity:Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v6}, Lcom/tudou/ui/activity/DetailActivity;->disableOrientation()V

    goto :goto_0

    .line 3674
    :cond_2
    invoke-direct {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->clearPointsView()V

    .line 3675
    invoke-direct {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->clearAdPointView()V

    .line 3677
    const-string v6, "local"

    iget-object v9, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v9, v9, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v9}, Lcom/youku/player/module/VideoUrlInfo;->getPlayType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 3678
    invoke-static {}, Lcom/tudou/service/download/DownloadManager;->getInstance()Lcom/tudou/service/download/DownloadManager;

    move-result-object v2

    .line 3680
    .local v2, "download":Lcom/tudou/service/download/DownloadManager;
    iget-object v6, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v6, v6, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v6}, Lcom/youku/player/module/VideoUrlInfo;->getShow_videoseq()I

    move-result v6

    const/4 v9, -0x1

    if-ne v6, v9, :cond_3

    .line 3681
    iget-object v6, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v6, v6, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v6}, Lcom/youku/player/module/VideoUrlInfo;->getVid()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/tudou/service/download/DownloadManager;->getDownloadInfo(Ljava/lang/String;)Lcom/tudou/service/download/DownloadInfo;

    move-result-object v4

    .line 3684
    .local v4, "info":Lcom/tudou/service/download/DownloadInfo;
    iget-object v6, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v6, v6, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget v9, v4, Lcom/tudou/service/download/DownloadInfo;->show_videoseq:I

    invoke-virtual {v6, v9}, Lcom/youku/player/module/VideoUrlInfo;->setShow_videoseq(I)V

    .line 3688
    .end local v4    # "info":Lcom/tudou/service/download/DownloadInfo;
    :cond_3
    iget-object v6, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v6, v6, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v6}, Lcom/youku/player/module/VideoUrlInfo;->getShowId()Ljava/lang/String;

    move-result-object v6

    iget-object v9, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v9, v9, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v9}, Lcom/youku/player/module/VideoUrlInfo;->getShow_videoseq()I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v2, v6, v9}, Lcom/tudou/service/download/DownloadManager;->getDownloadInfo(Ljava/lang/String;I)Lcom/tudou/service/download/DownloadInfo;

    move-result-object v4

    .line 3692
    .restart local v4    # "info":Lcom/tudou/service/download/DownloadInfo;
    if-eqz v4, :cond_6

    .line 3695
    iget-object v6, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v6}, Lcom/youku/player/plugin/MediaPlayerDelegate;->release()V

    .line 3696
    invoke-static {v4, v7}, Lcom/tudou/service/download/DownloadUtils;->makeM3U8File(Lcom/tudou/service/download/DownloadInfo;Z)V

    .line 3697
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

    .line 3704
    .local v5, "url":Ljava/lang/String;
    new-instance v0, Lcom/youku/player/module/PlayVideoInfo$Builder;

    iget-object v6, v4, Lcom/tudou/service/download/DownloadInfo;->videoid:Ljava/lang/String;

    invoke-direct {v0, v6}, Lcom/youku/player/module/PlayVideoInfo$Builder;-><init>(Ljava/lang/String;)V

    .line 3705
    .local v0, "builder":Lcom/youku/player/module/PlayVideoInfo$Builder;
    sget-object v6, Lcom/youku/player/base/PlayType;->LOCAL_DOWNLOAD:Lcom/youku/player/base/PlayType;

    invoke-virtual {v0, v6}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setPlayType(Lcom/youku/player/base/PlayType;)Lcom/youku/player/module/PlayVideoInfo$Builder;

    .line 3706
    invoke-virtual {v0, v5}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setUrl(Ljava/lang/String;)Lcom/youku/player/module/PlayVideoInfo$Builder;

    .line 3707
    iget-object v6, v4, Lcom/tudou/service/download/DownloadInfo;->title:Ljava/lang/String;

    invoke-virtual {v0, v6}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setTitle(Ljava/lang/String;)Lcom/youku/player/module/PlayVideoInfo$Builder;

    .line 3708
    if-eqz p1, :cond_5

    move v6, v7

    :goto_2
    invoke-virtual {v0, v6}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setAutoPlay(I)Lcom/youku/player/module/PlayVideoInfo$Builder;

    .line 3709
    iget-boolean v6, v4, Lcom/tudou/service/download/DownloadInfo;->isShowWatermark:Z

    invoke-virtual {v0, v6}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setWaterMark(Z)Lcom/youku/player/module/PlayVideoInfo$Builder;

    .line 3710
    iget v6, v4, Lcom/tudou/service/download/DownloadInfo;->type:I

    invoke-virtual {v0, v6}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setWaterMarkType(I)Lcom/youku/player/module/PlayVideoInfo$Builder;

    .line 3711
    iget v6, v4, Lcom/tudou/service/download/DownloadInfo;->playTime:I

    mul-int/lit16 v6, v6, 0x3e8

    invoke-virtual {v0, v6}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setPoint(I)Lcom/youku/player/module/PlayVideoInfo$Builder;

    move-result-object v6

    invoke-virtual {v6, v8}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setFromYouku(Z)Lcom/youku/player/module/PlayVideoInfo$Builder;

    .line 3712
    iget-object v6, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0}, Lcom/youku/player/module/PlayVideoInfo$Builder;->build()Lcom/youku/player/module/PlayVideoInfo;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/youku/player/plugin/MediaPlayerDelegate;->playVideo(Lcom/youku/player/module/PlayVideoInfo;)V

    goto/16 :goto_0

    .line 3697
    .end local v0    # "builder":Lcom/youku/player/module/PlayVideoInfo$Builder;
    .end local v5    # "url":Ljava/lang/String;
    :cond_4
    const-string v6, "/1.3gp"

    goto :goto_1

    .restart local v0    # "builder":Lcom/youku/player/module/PlayVideoInfo$Builder;
    .restart local v5    # "url":Ljava/lang/String;
    :cond_5
    move v6, v8

    .line 3708
    goto :goto_2

    .line 3715
    .end local v0    # "builder":Lcom/youku/player/module/PlayVideoInfo$Builder;
    .end local v5    # "url":Ljava/lang/String;
    :cond_6
    iget-object v6, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v6, v6, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v6}, Lcom/youku/player/module/VideoUrlInfo;->getVid()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/tudou/service/download/DownloadManager;->getDownloadInfo(Ljava/lang/String;)Lcom/tudou/service/download/DownloadInfo;

    move-result-object v3

    .line 3717
    .local v3, "downloadInfo":Lcom/tudou/service/download/DownloadInfo;
    invoke-virtual {v3}, Lcom/tudou/service/download/DownloadInfo;->isSeries()Z

    move-result v6

    if-nez v6, :cond_7

    .line 3719
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->goEndPage()V

    goto/16 :goto_0

    .line 3722
    :cond_7
    iget-object v6, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mDetailActivity:Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v6}, Lcom/tudou/ui/activity/DetailActivity;->isFinishing()Z

    move-result v6

    if-nez v6, :cond_0

    .line 3724
    iget-object v6, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v6}, Lcom/youku/player/plugin/MediaPlayerDelegate;->release()V

    .line 3725
    iget-object v6, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v6, v6, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v6}, Lcom/youku/player/module/VideoUrlInfo;->getVid()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/tudou/service/download/DownloadManager;->getDownloadInfo(Ljava/lang/String;)Lcom/tudou/service/download/DownloadInfo;

    move-result-object v1

    .line 3726
    .local v1, "currentInfo":Lcom/tudou/service/download/DownloadInfo;
    if-eqz v1, :cond_8

    iget v6, v1, Lcom/tudou/service/download/DownloadInfo;->show_videoseq:I

    iget v7, v1, Lcom/tudou/service/download/DownloadInfo;->showepisode_total:I

    if-ge v6, v7, :cond_8

    .line 3727
    iget-object v6, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mDetailActivity:Lcom/tudou/ui/activity/DetailActivity;

    new-instance v7, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$47;

    invoke-direct {v7, p0, v1, p1}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$47;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;Lcom/tudou/service/download/DownloadInfo;Z)V

    invoke-virtual {v6, v7}, Lcom/tudou/ui/activity/DetailActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 3740
    :cond_8
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->goEndPage()V

    goto/16 :goto_0

    .line 3745
    .end local v1    # "currentInfo":Lcom/tudou/service/download/DownloadInfo;
    .end local v2    # "download":Lcom/tudou/service/download/DownloadManager;
    .end local v3    # "downloadInfo":Lcom/tudou/service/download/DownloadInfo;
    .end local v4    # "info":Lcom/tudou/service/download/DownloadInfo;
    :cond_9
    iget-boolean v6, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mHasNext:Z

    if-nez v6, :cond_a

    .line 3746
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->goEndPage()V

    goto/16 :goto_0

    .line 3757
    :cond_a
    iget-object v6, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v6}, Lcom/youku/player/plugin/MediaPlayerDelegate;->release()V

    .line 3758
    iget-object v6, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mNextVideoType:Lcom/tudou/ui/activity/DetailActivity$NextVideoType;

    sget-object v9, Lcom/tudou/ui/activity/DetailActivity$NextVideoType;->RECOMMEND:Lcom/tudou/ui/activity/DetailActivity$NextVideoType;

    if-ne v6, v9, :cond_b

    .line 3759
    iget-object v6, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mDetailActivity:Lcom/tudou/ui/activity/DetailActivity;

    iget-object v7, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mNextVid:Ljava/lang/String;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mNextAlbumId:Ljava/lang/String;

    invoke-virtual {v6, v7, v8, v9}, Lcom/tudou/ui/activity/DetailActivity;->goRelatedVideo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3762
    :cond_b
    new-instance v0, Lcom/youku/player/module/PlayVideoInfo$Builder;

    iget-object v6, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mNextVid:Ljava/lang/String;

    invoke-direct {v0, v6}, Lcom/youku/player/module/PlayVideoInfo$Builder;-><init>(Ljava/lang/String;)V

    .line 3763
    .restart local v0    # "builder":Lcom/youku/player/module/PlayVideoInfo$Builder;
    const/4 v6, 0x4

    invoke-virtual {v0, v6}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setTudouQuality(I)Lcom/youku/player/module/PlayVideoInfo$Builder;

    .line 3764
    iget-object v6, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v6, v6, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v6, v6, Lcom/youku/player/module/VideoUrlInfo;->playlistCode:Ljava/lang/String;

    invoke-virtual {v0, v6}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setPlaylistCode(Ljava/lang/String;)Lcom/youku/player/module/PlayVideoInfo$Builder;

    .line 3765
    invoke-virtual {v0, v7}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setNoAdv(Z)Lcom/youku/player/module/PlayVideoInfo$Builder;

    move-result-object v6

    invoke-virtual {v6, v8}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setFromYouku(Z)Lcom/youku/player/module/PlayVideoInfo$Builder;

    move-result-object v6

    if-eqz p1, :cond_c

    :goto_3
    invoke-virtual {v6, v7}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setAutoPlay(I)Lcom/youku/player/module/PlayVideoInfo$Builder;

    .line 3766
    iget-object v6, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0}, Lcom/youku/player/module/PlayVideoInfo$Builder;->build()Lcom/youku/player/module/PlayVideoInfo;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/youku/player/plugin/MediaPlayerDelegate;->playVideo(Lcom/youku/player/module/PlayVideoInfo;)V

    goto/16 :goto_0

    :cond_c
    move v7, v8

    .line 3765
    goto :goto_3
.end method

.method private popupWindowInit(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const v7, 0x7f0a0072

    .line 2066
    const/4 v2, 0x2

    new-array v1, v2, [I

    .line 2067
    .local v1, "loc":[I
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 2068
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mDetailActivity:Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v2}, Lcom/tudou/ui/activity/DetailActivity;->dissmissPauseAD()V

    .line 2071
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mDetailActivity:Lcom/tudou/ui/activity/DetailActivity;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f03009b

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mPopupQualityContent:Landroid/view/View;

    .line 2073
    new-instance v2, Landroid/widget/PopupWindow;

    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mPopupQualityContent:Landroid/view/View;

    iget-object v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mDetailActivity:Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v4}, Lcom/tudou/ui/activity/DetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    const/4 v5, -0x2

    const/4 v6, 0x1

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mPopupQuality:Landroid/widget/PopupWindow;

    .line 2077
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mPopupQuality:Landroid/widget/PopupWindow;

    new-instance v3, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$33;

    invoke-direct {v3, p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$33;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)V

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 2086
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mPopupQualityContent:Landroid/view/View;

    const v3, 0x7f0c02f8

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->superTV:Landroid/widget/TextView;

    .line 2087
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mPopupQualityContent:Landroid/view/View;

    const v3, 0x7f0c02f5

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->highTV:Landroid/widget/TextView;

    .line 2088
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mPopupQualityContent:Landroid/view/View;

    const v3, 0x7f0c02f2

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->standandTV:Landroid/widget/TextView;

    .line 2089
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mPopupQualityContent:Landroid/view/View;

    const v3, 0x7f0c02f9

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->superTV_img:Landroid/widget/ImageView;

    .line 2090
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mPopupQualityContent:Landroid/view/View;

    const v3, 0x7f0c02f6

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->highTV_img:Landroid/widget/ImageView;

    .line 2091
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mPopupQualityContent:Landroid/view/View;

    const v3, 0x7f0c02f3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->standandTV_img:Landroid/widget/ImageView;

    .line 2092
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mPopupQualityContent:Landroid/view/View;

    const v3, 0x7f0c02f7

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->superTV_layout:Landroid/view/View;

    .line 2093
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->superTV_layout:Landroid/view/View;

    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->listener:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenClickOperate;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2094
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mPopupQualityContent:Landroid/view/View;

    const v3, 0x7f0c02f4

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->highTV_layout:Landroid/view/View;

    .line 2095
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->highTV_layout:Landroid/view/View;

    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->listener:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenClickOperate;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2096
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mPopupQualityContent:Landroid/view/View;

    const v3, 0x7f0c02f1

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->standandTV_layout:Landroid/view/View;

    .line 2097
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->standandTV_layout:Landroid/view/View;

    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->listener:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenClickOperate;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2098
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->superTV:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->listener:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenClickOperate;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2099
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->superTV_img:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->listener:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenClickOperate;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2100
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->highTV_img:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->listener:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenClickOperate;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2101
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->highTV_img:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->listener:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenClickOperate;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2103
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->highTV:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->listener:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenClickOperate;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2104
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->standandTV:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->listener:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenClickOperate;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2105
    invoke-direct {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->videoQualitySetting()V

    .line 2106
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mDetailActivity:Lcom/tudou/ui/activity/DetailActivity;

    invoke-static {v2}, Lcom/youku/player/goplay/Profile;->getVideoQuality(Landroid/content/Context;)I

    move-result v0

    .line 2107
    .local v0, "currentQuality":I
    sget-object v2, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "popupWindowInit currentQuality = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2108
    invoke-virtual {p0, v0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->changeVideoQuality(I)V

    .line 2110
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mPopupQuality:Landroid/widget/PopupWindow;

    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mDetailActivity:Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v3}, Lcom/tudou/ui/activity/DetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09012f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2111
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mPopupQuality:Landroid/widget/PopupWindow;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 2113
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mPopupQuality:Landroid/widget/PopupWindow;

    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mDetailActivity:Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v3}, Lcom/tudou/ui/activity/DetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    neg-int v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v4}, Lcom/youku/util/Util;->dip2px(F)I

    move-result v4

    invoke-virtual {v2, p1, v3, v4}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 2124
    return-void
.end method

.method private resetPoints()V
    .locals 2

    .prologue
    .line 4110
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->videoBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mScreenWidth:I

    div-int/lit8 v1, v1, 0x2

    if-le v0, v1, :cond_0

    .line 4111
    invoke-direct {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->initPointView()V

    .line 4112
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->resetPointViews()V

    .line 4114
    :cond_0
    return-void
.end method

.method private screenshotInternal(Z)V
    .locals 18
    .param p1, "fromGuide"    # Z

    .prologue
    .line 1453
    invoke-static {}, Lcom/tudou/service/download/SDCardManager;->hasSDCard()Z

    move-result v14

    .line 1454
    .local v14, "tHasSdcard":Z
    if-eqz v14, :cond_3

    .line 1455
    new-instance v11, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tudou/service/download/SDCardManager;->getDefauleSDCardPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/tudou/Tudou\u622a\u5c4f/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v11, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1456
    .local v11, "folder":Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1457
    invoke-virtual {v11}, Ljava/io/File;->mkdirs()Z

    move-result v13

    .line 1458
    .local v13, "success":Z
    sget-object v2, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "outsideClick success = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1460
    .end local v13    # "success":Z
    :cond_0
    sget-object v2, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "path = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1462
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "Tudou-"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ".png"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1463
    .local v3, "fileName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v4}, Lcom/youku/player/plugin/MediaPlayerDelegate;->getVideoWidth()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v6}, Lcom/youku/player/plugin/MediaPlayerDelegate;->getVideoHeight()I

    move-result v5

    const-string v6, "water.png"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v7}, Lcom/youku/player/plugin/MediaPlayerDelegate;->getVideoWidth()I

    move-result v7

    int-to-float v7, v7

    const/high16 v8, 0x44f00000    # 1920.0f

    div-float/2addr v7, v8

    const/high16 v8, 0x437d0000    # 253.0f

    mul-float/2addr v7, v8

    float-to-int v7, v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v8}, Lcom/youku/player/plugin/MediaPlayerDelegate;->getVideoWidth()I

    move-result v8

    int-to-float v8, v8

    const/high16 v9, 0x44f00000    # 1920.0f

    div-float/2addr v8, v9

    const/high16 v9, 0x437d0000    # 253.0f

    mul-float/2addr v8, v9

    float-to-double v8, v8

    const-wide v16, 0x4004a3d70a3d70a4L    # 2.58

    div-double v8, v8, v16

    double-to-int v8, v8

    const v9, 0x3f533333    # 0.825f

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v10}, Lcom/youku/player/plugin/MediaPlayerDelegate;->getVideoWidth()I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v9, v10

    float-to-int v9, v9

    const v10, 0x3d360b61

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v15}, Lcom/youku/player/plugin/MediaPlayerDelegate;->getVideoHeight()I

    move-result v15

    int-to-float v15, v15

    mul-float/2addr v10, v15

    float-to-int v10, v10

    invoke-virtual/range {v2 .. v10}, Lcom/youku/player/plugin/MediaPlayerDelegate;->screenShotOneFrame(Ljava/lang/String;IILjava/lang/String;IIII)I

    move-result v12

    .line 1470
    .local v12, "result":I
    sget-object v2, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ScreenshotOneFrame result = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1471
    if-nez v12, :cond_1

    .line 1472
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->pauseInternal(Z)V

    .line 1473
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mPluginFullScreenPlay:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;

    const v4, 0x7f0c0b5b

    invoke-virtual {v2, v4}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 1474
    .local v5, "animView":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mDetailActivity:Lcom/tudou/ui/activity/DetailActivity;

    new-instance v6, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$24;

    move-object/from16 v0, p0

    invoke-direct {v6, v0, v5}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$24;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;Landroid/view/View;)V

    new-instance v7, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$25;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$25;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)V

    new-instance v8, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$26;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v8, v0, v3, v1, v5}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$26;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;Ljava/lang/String;ZLandroid/view/View;)V

    const v9, 0x7f040059

    invoke-virtual/range {v4 .. v9}, Lcom/tudou/ui/activity/DetailActivity;->animateClickFeedback(Landroid/view/View;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;I)V

    .line 1503
    .end local v3    # "fileName":Ljava/lang/String;
    .end local v5    # "animView":Landroid/view/View;
    .end local v11    # "folder":Ljava/io/File;
    .end local v12    # "result":I
    :goto_0
    return-void

    .line 1494
    .restart local v3    # "fileName":Ljava/lang/String;
    .restart local v11    # "folder":Ljava/io/File;
    .restart local v12    # "result":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-boolean v2, v2, Lcom/youku/player/plugin/MediaPlayerDelegate;->isReleased:Z

    if-eqz v2, :cond_2

    .line 1495
    const-string v2, "\u5148\u64ad\u653e\u89c6\u9891\u624d\u80fd\u591f\u622a\u56fe\u54e6"

    const-wide/16 v6, -0x1

    const/4 v4, 0x1

    invoke-static {v2, v6, v7, v4}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;JZ)V

    goto :goto_0

    .line 1497
    :cond_2
    const-string v2, "\u622a\u56fe\u5931\u8d25,\u8bf7\u7a0d\u540e\u518d\u8bd5"

    const-wide/16 v6, -0x1

    const/4 v4, 0x1

    invoke-static {v2, v6, v7, v4}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;JZ)V

    goto :goto_0

    .line 1501
    .end local v3    # "fileName":Ljava/lang/String;
    .end local v11    # "folder":Ljava/io/File;
    .end local v12    # "result":I
    :cond_3
    const-string v2, "\u6ca1\u6709sd"

    invoke-static {v2}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private sendDanmu()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 1948
    sget-object v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->TAG:Ljava/lang/String;

    const-string v1, "sendDanmu"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1949
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->hideControllerAndSystemUI()V

    .line 1950
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->stopUserAction:Z

    .line 1951
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->danmuDialog:Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog;

    if-nez v0, :cond_1

    .line 1952
    new-instance v0, Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog;

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mDetailActivity:Lcom/tudou/ui/activity/DetailActivity;

    new-instance v4, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$31;

    invoke-direct {v4, p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$31;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)V

    iget-object v5, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mPluginFullScreenPlay:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;

    move-object v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog;-><init>(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Handler;Landroid/widget/PopupWindow$OnDismissListener;Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;)V

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->danmuDialog:Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog;

    .line 1968
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->danmuDialog:Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog;->show()V

    .line 1969
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->isPlaying()Z

    move-result v0

    iput-boolean v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->showdanmuPlayerstate:Z

    .line 1970
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1971
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->playPauseNoAd()V

    .line 1984
    :cond_0
    :goto_0
    return-void

    .line 1974
    :cond_1
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->danmuDialog:Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1975
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->danmuDialog:Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog;->dismiss()V

    goto :goto_0

    .line 1977
    :cond_2
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->danmuDialog:Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog;->show()V

    .line 1978
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->isPlaying()Z

    move-result v0

    iput-boolean v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->showdanmuPlayerstate:Z

    .line 1979
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1980
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->playPauseNoAd()V

    goto :goto_0
.end method

.method private setHighEnable(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 2149
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->highTV:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 2150
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->highTV_img:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 2151
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->highTV_layout:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setClickable(Z)V

    .line 2152
    if-eqz p1, :cond_0

    .line 2153
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->highTV:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mDetailActivity:Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v1}, Lcom/tudou/ui/activity/DetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090149

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2159
    :goto_0
    return-void

    .line 2155
    :cond_0
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->highTV:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mDetailActivity:Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v1}, Lcom/tudou/ui/activity/DetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090140

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method private setHotPointVisible(I)V
    .locals 8
    .param p1, "start"    # I

    .prologue
    .line 1783
    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->hotPoints:Ljava/util/ArrayList;

    if-nez v3, :cond_1

    .line 1796
    :cond_0
    return-void

    .line 1785
    :cond_1
    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->hotPoints:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/player/goplay/Point;

    .line 1786
    .local v1, "point":Lcom/youku/player/goplay/Point;
    invoke-virtual {p0, v1}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    .line 1787
    .local v2, "pointView":Landroid/view/View;
    if-eqz v2, :cond_2

    .line 1789
    int-to-double v4, p1

    iget-wide v6, v1, Lcom/youku/player/goplay/Point;->start:D

    sub-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->videoBar:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getMax()I

    move-result v3

    int-to-float v3, v3

    const/high16 v6, 0x420c0000    # 35.0f

    div-float/2addr v3, v6

    float-to-double v6, v3

    cmpg-double v3, v4, v6

    if-gez v3, :cond_3

    .line 1791
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setClickable(Z)V

    goto :goto_0

    .line 1793
    :cond_3
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->setClickable(Z)V

    goto :goto_0
.end method

.method private setMusicPlay()V
    .locals 2

    .prologue
    .line 2053
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v0}, Lcom/youku/player/module/VideoUrlInfo;->getMediaType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2062
    :cond_0
    :goto_0
    return-void

    .line 2056
    :cond_1
    const-string v0, "\u89c6\u9891"

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v1}, Lcom/youku/player/module/VideoUrlInfo;->getMediaType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2057
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mBackgroundForMusic:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 2060
    :cond_2
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mBackgroundForMusic:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private setOrientLocked()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1576
    invoke-static {}, Lcom/youku/util/UIUtils;->hasGingerbread()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1577
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mDetailActivity:Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v1}, Lcom/tudou/ui/activity/DetailActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 1578
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1579
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mDetailActivity:Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v1, v3}, Lcom/tudou/ui/activity/DetailActivity;->setRequestedOrientation(I)V

    .line 1587
    .end local v0    # "display":Landroid/view/Display;
    :goto_0
    return-void

    .line 1581
    .restart local v0    # "display":Landroid/view/Display;
    :cond_0
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mDetailActivity:Lcom/tudou/ui/activity/DetailActivity;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/tudou/ui/activity/DetailActivity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 1584
    .end local v0    # "display":Landroid/view/Display;
    :cond_1
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mDetailActivity:Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v1, v3}, Lcom/tudou/ui/activity/DetailActivity;->setRequestedOrientation(I)V

    goto :goto_0
.end method

.method private setOrientUnlock()V
    .locals 3

    .prologue
    const/4 v2, 0x6

    .line 1590
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-nez v0, :cond_0

    .line 1603
    :goto_0
    return-void

    .line 1592
    :cond_0
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mDetailActivity:Lcom/tudou/ui/activity/DetailActivity;

    invoke-static {v0}, Lcom/youku/util/UIUtils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1593
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mDetailActivity:Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v0, v2}, Lcom/tudou/ui/activity/DetailActivity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 1595
    :cond_1
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v0}, Lcom/youku/player/module/VideoUrlInfo;->getPlayType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "local"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-boolean v0, v0, Lcom/youku/player/module/VideoUrlInfo;->isExternalVideo:Z

    if-eqz v0, :cond_3

    .line 1598
    :cond_2
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mDetailActivity:Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v0, v2}, Lcom/tudou/ui/activity/DetailActivity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 1600
    :cond_3
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mDetailActivity:Lcom/tudou/ui/activity/DetailActivity;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/tudou/ui/activity/DetailActivity;->setRequestedOrientation(I)V

    goto :goto_0
.end method

.method private setPointsView()V
    .locals 3

    .prologue
    .line 3965
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->videoBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mScreenWidth:I

    div-int/lit8 v1, v1, 0x2

    if-le v0, v1, :cond_0

    .line 3966
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-boolean v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isFullScreen:Z

    if-eqz v0, :cond_0

    .line 3968
    const-string v0, "testpoint"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-boolean v2, v2, Lcom/youku/player/plugin/MediaPlayerDelegate;->isFullScreen:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "vto"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3969
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->isPonitViewInited:Z

    .line 3970
    invoke-direct {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->initPointView()V

    .line 3971
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->resetPointViews()V

    .line 3975
    :cond_0
    return-void
.end method

.method private setStdEnable(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 2163
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->standandTV:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 2164
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->standandTV_img:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 2165
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->standandTV_layout:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setClickable(Z)V

    .line 2166
    if-eqz p1, :cond_0

    .line 2167
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->standandTV:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mDetailActivity:Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v1}, Lcom/tudou/ui/activity/DetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090149

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2174
    :goto_0
    return-void

    .line 2170
    :cond_0
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->standandTV:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mDetailActivity:Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v1}, Lcom/tudou/ui/activity/DetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090140

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method private setSuperEnable(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 2135
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->superTV:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 2136
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->superTV_img:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 2137
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->superTV_layout:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setClickable(Z)V

    .line 2138
    if-eqz p1, :cond_0

    .line 2139
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->superTV:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mDetailActivity:Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v1}, Lcom/tudou/ui/activity/DetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090149

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2145
    :goto_0
    return-void

    .line 2141
    :cond_0
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->superTV:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mDetailActivity:Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v1}, Lcom/tudou/ui/activity/DetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090140

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method private setupDefinitionRadioBtn()V
    .locals 1

    .prologue
    .line 2959
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v0}, Lcom/youku/player/module/VideoUrlInfo;->hasSegHD2()Z

    move-result v0

    iput-boolean v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->superEnable:Z

    .line 2960
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v0}, Lcom/youku/player/module/VideoUrlInfo;->hasSegHD()Z

    move-result v0

    iput-boolean v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->highEnable:Z

    .line 2961
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v0}, Lcom/youku/player/module/VideoUrlInfo;->hasSegSD()Z

    move-result v0

    iput-boolean v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->stdEnable:Z

    .line 2963
    invoke-static {}, Lcom/youku/uplayer/MediaPlayerProxy;->isHD2Supported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2964
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->superEnable:Z

    .line 2966
    :cond_0
    return-void
.end method

.method private setupmSystemUiHider(Lcom/tudou/ui/activity/DetailActivity;)V
    .locals 2
    .param p1, "context"    # Lcom/tudou/ui/activity/DetailActivity;

    .prologue
    .line 2616
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->hasVirtualButtonBar()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2617
    const/4 v0, 0x6

    invoke-static {p1, p0, v0}, Lcom/youku/fullscreen/SystemUiHider;->getInstance(Landroid/app/Activity;Landroid/view/View;I)Lcom/youku/fullscreen/SystemUiHider;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mSystemUiHider:Lcom/youku/fullscreen/SystemUiHider;

    .line 2618
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mSystemUiHider:Lcom/youku/fullscreen/SystemUiHider;

    invoke-virtual {v0}, Lcom/youku/fullscreen/SystemUiHider;->setup()V

    .line 2619
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mSystemUiHider:Lcom/youku/fullscreen/SystemUiHider;

    new-instance v1, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$34;

    invoke-direct {v1, p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$34;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)V

    invoke-virtual {v0, v1}, Lcom/youku/fullscreen/SystemUiHider;->setOnVisibilityChangeListener(Lcom/youku/fullscreen/SystemUiHider$OnVisibilityChangeListener;)V

    .line 2655
    :cond_0
    return-void
.end method

.method private showAlert()V
    .locals 2

    .prologue
    .line 3603
    sget-object v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->TAG:Ljava/lang/String;

    const-string v1, "showAlert"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3604
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v0}, Lcom/youku/player/module/VideoUrlInfo;->getPlayType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "local"

    if-ne v0, v1, :cond_0

    .line 3607
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mDetailActivity:Lcom/tudou/ui/activity/DetailActivity;

    const v1, 0x7f0d02e5

    invoke-virtual {p0, v0, v1}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->alertRetry(Landroid/app/Activity;I)V

    .line 3611
    :goto_0
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->hidePopWindows()V

    .line 3612
    return-void

    .line 3609
    :cond_0
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mDetailActivity:Lcom/tudou/ui/activity/DetailActivity;

    const v1, 0x7f0d0002

    invoke-virtual {p0, v0, v1}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->alertRetry(Landroid/app/Activity;I)V

    goto :goto_0
.end method

.method private showController()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 2274
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->isVideoRecordShow()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2315
    :cond_0
    :goto_0
    return-void

    .line 2277
    :cond_1
    sget-object v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->TAG:Ljava/lang/String;

    const-string v1, "showController"

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2}, Ljava/lang/RuntimeException;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2278
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mControllerTop:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2279
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mControllerBottom:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2281
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mHotseat:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;

    invoke-virtual {v0, v4}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->setVisibility(I)V

    .line 2282
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mRightPanel:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel;

    if-eqz v0, :cond_2

    .line 2283
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mRightPanel:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel;->removeAllFragment()V

    .line 2286
    :cond_2
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mVideoGoodsNotice:Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;

    if-eqz v0, :cond_3

    .line 2287
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mVideoGoodsNotice:Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;

    invoke-interface {v0, v3, v3}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay$ControllerTransitionable;->onControllerTransitionStart(ZZ)V

    .line 2288
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mVideoGoodsNotice:Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;

    invoke-interface {v0, v3, v3}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay$ControllerTransitionable;->onControllerTransitionEnd(ZZ)V

    .line 2290
    :cond_3
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mHdNoticeView:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;

    if-eqz v0, :cond_4

    .line 2291
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mHdNoticeView:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;

    invoke-interface {v0, v3, v3}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay$ControllerTransitionable;->onControllerTransitionStart(ZZ)V

    .line 2292
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mHdNoticeView:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;

    invoke-interface {v0, v3, v3}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay$ControllerTransitionable;->onControllerTransitionEnd(ZZ)V

    .line 2295
    :cond_4
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->title:Lcom/youku/widget/AlwaysMarqueeTextView;

    invoke-virtual {v0}, Lcom/youku/widget/AlwaysMarqueeTextView;->requestFocus()Z

    .line 2296
    invoke-direct {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->validPlayPauseIcon()V

    .line 2297
    invoke-direct {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->feshstatData()V

    .line 2298
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-nez v0, :cond_5

    .line 2299
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->userInterAction:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->show()V

    goto :goto_0

    .line 2302
    :cond_5
    const-string v0, "local"

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v1}, Lcom/youku/player/module/VideoUrlInfo;->getPlayType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    sget v0, Lcom/youku/player/goplay/Profile;->from:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    :cond_6
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mDetailActivity:Lcom/tudou/ui/activity/DetailActivity;

    iget-boolean v0, v0, Lcom/tudou/ui/activity/DetailActivity;->isFromKuWo:Z

    if-eqz v0, :cond_8

    .line 2303
    :cond_7
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->userInterAction:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->show()V

    .line 2305
    :cond_8
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-static {v0}, Lcom/youku/phone/detail/DetailUtil;->isPayVideo(Lcom/youku/player/module/VideoUrlInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2306
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v0, v0, Lcom/youku/player/module/VideoUrlInfo;->mPayInfo:Lcom/youku/player/module/PayInfo;

    iget-object v0, v0, Lcom/youku/player/module/PayInfo;->trail:Lcom/youku/player/module/PayInfo$Trial;

    iget-object v0, v0, Lcom/youku/player/module/PayInfo$Trial;->type:Ljava/lang/String;

    if-eqz v0, :cond_9

    const-string v0, "episodes"

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v1, v1, Lcom/youku/player/module/VideoUrlInfo;->mPayInfo:Lcom/youku/player/module/PayInfo;

    iget-object v1, v1, Lcom/youku/player/module/PayInfo;->trail:Lcom/youku/player/module/PayInfo$Trial;

    iget-object v1, v1, Lcom/youku/player/module/PayInfo$Trial;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2307
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v0}, Lcom/youku/player/module/VideoUrlInfo;->getShow_videoseq()I

    move-result v0

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v1, v1, Lcom/youku/player/module/VideoUrlInfo;->mPayInfo:Lcom/youku/player/module/PayInfo;

    iget-object v1, v1, Lcom/youku/player/module/PayInfo;->trail:Lcom/youku/player/module/PayInfo$Trial;

    iget v1, v1, Lcom/youku/player/module/PayInfo$Trial;->episodes:I

    if-le v0, v1, :cond_9

    .line 2308
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mDetailActivity:Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v0}, Lcom/tudou/ui/activity/DetailActivity;->onPayClick()V

    goto/16 :goto_0

    .line 2312
    :cond_9
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->test_play_layout:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method private showControllerAndSystemUI()V
    .locals 1

    .prologue
    .line 2002
    invoke-direct {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->showController()V

    .line 2005
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->hasVirtualButtonBar()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2006
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mSystemUiHider:Lcom/youku/fullscreen/SystemUiHider;

    invoke-virtual {v0}, Lcom/youku/fullscreen/SystemUiHider;->show()V

    .line 2008
    :cond_0
    return-void
.end method

.method private showDanmuanimation()V
    .locals 3

    .prologue
    .line 1929
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "detail.cling.danmu"

    invoke-static {v1, v2}, Lcom/tudou/detail/DetailSettings$DetailProp;->getBoolean(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1930
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mDetailActivity:Lcom/tudou/ui/activity/DetailActivity;

    const v2, 0x7f040025

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1931
    .local v0, "animation":Landroid/view/animation/Animation;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 1932
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->danmu_animation:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    .line 1933
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->danmu_animation:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1934
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->danmu_animation:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1936
    .end local v0    # "animation":Landroid/view/animation/Animation;
    :cond_0
    return-void
.end method

.method private showMediaController()V
    .locals 4

    .prologue
    .line 572
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->userAction:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUserAction;

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUserAction;->lastInteractTime:J

    .line 573
    invoke-direct {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->showController()V

    .line 574
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->userAction:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUserAction;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUserAction;->userAction()V

    .line 575
    return-void
.end method

.method private showScreenshotShareView(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "fromGuide"    # Z

    .prologue
    .line 1516
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mScreenshotShare:Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView;

    if-nez v0, :cond_0

    .line 1517
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mStubScreenshotShare:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView;

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mScreenshotShare:Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView;

    .line 1518
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mScreenshotShare:Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView;

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0, v1}, Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView;->setPlayType(Lcom/youku/player/plugin/MediaPlayerDelegate;)V

    .line 1519
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mScreenshotShare:Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView;

    new-instance v1, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$27;

    invoke-direct {v1, p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$27;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)V

    invoke-virtual {v0, v1}, Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView;->setOnDismissListener(Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView$OnDismissListener;)V

    .line 1526
    :cond_0
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v0, :cond_1

    .line 1527
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mScreenshotShare:Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView;

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v1}, Lcom/youku/player/module/VideoUrlInfo;->getWebViewUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView;->mWebUrl:Ljava/lang/String;

    .line 1529
    :cond_1
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mScreenshotShare:Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView;

    iput-boolean p2, v0, Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView;->mFromGuide:Z

    .line 1530
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mScreenshotShare:Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView;

    invoke-virtual {v0, p1}, Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView;->setScreenshotPath(Ljava/lang/String;)V

    .line 1531
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mScreenshotShare:Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView;->setVisibility(I)V

    .line 1533
    return-void
.end method

.method private showhideDanmuLayout(ZLandroid/view/View;Z)V
    .locals 3
    .param p1, "isShow"    # Z
    .param p2, "v"    # Landroid/view/View;
    .param p3, "anim"    # Z

    .prologue
    const/high16 v2, 0x3f000000    # 0.5f

    const/high16 v1, 0x3f800000    # 1.0f

    .line 2011
    if-eqz p3, :cond_1

    .line 2012
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mDetailActivity:Lcom/tudou/ui/activity/DetailActivity;

    if-eqz p1, :cond_0

    const v1, 0x7f040026

    :goto_0
    invoke-static {v2, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 2014
    .local v0, "animation":Landroid/view/animation/Animation;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 2015
    new-instance v1, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$32;

    invoke-direct {v1, p0, p1, p2}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$32;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;ZLandroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 2037
    invoke-virtual {p2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2049
    .end local v0    # "animation":Landroid/view/animation/Animation;
    :goto_1
    invoke-virtual {p2, p1}, Landroid/view/View;->setClickable(Z)V

    .line 2050
    return-void

    .line 2012
    :cond_0
    const v1, 0x7f040024

    goto :goto_0

    .line 2039
    :cond_1
    if-eqz p1, :cond_2

    .line 2040
    invoke-virtual {p2, v1}, Landroid/view/View;->setAlpha(F)V

    .line 2041
    invoke-virtual {p2, v1}, Landroid/view/View;->setScaleX(F)V

    .line 2042
    invoke-virtual {p2, v1}, Landroid/view/View;->setScaleY(F)V

    goto :goto_1

    .line 2044
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/view/View;->setAlpha(F)V

    .line 2045
    invoke-virtual {p2, v2}, Landroid/view/View;->setScaleX(F)V

    .line 2046
    invoke-virtual {p2, v2}, Landroid/view/View;->setScaleY(F)V

    goto :goto_1
.end method

.method private validPlayPauseIcon()V
    .locals 2

    .prologue
    .line 3221
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3222
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mBtnPlayOrPause:Landroid/view/View;

    const v1, 0x7f0206a4

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 3226
    :goto_0
    return-void

    .line 3224
    :cond_0
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mBtnPlayOrPause:Landroid/view/View;

    const v1, 0x7f0206a5

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method private videoQualitySetting()V
    .locals 1

    .prologue
    .line 2128
    iget-boolean v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->superEnable:Z

    invoke-direct {p0, v0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->setSuperEnable(Z)V

    .line 2129
    iget-boolean v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->highEnable:Z

    invoke-direct {p0, v0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->setHighEnable(Z)V

    .line 2130
    iget-boolean v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->stdEnable:Z

    invoke-direct {p0, v0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->setStdEnable(Z)V

    .line 2131
    return-void
.end method


# virtual methods
.method public OnCurrentPositionChangeListener(I)V
    .locals 7
    .param p1, "currentPosition"    # I

    .prologue
    const/4 v6, 0x2

    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 3982
    iput p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mCurrentPos:I

    .line 3983
    iget v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mCurrentPositionChangeTimes:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mCurrentPositionChangeTimes:I

    .line 3984
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->videoBar:Landroid/widget/SeekBar;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->isPonitViewInited:Z

    if-nez v1, :cond_0

    .line 3985
    invoke-direct {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->setPointsView()V

    .line 3987
    :cond_0
    iget v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->directionalLock:I

    if-eq v1, v6, :cond_1

    .line 3988
    iget-boolean v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->thumbMoving:Z

    if-nez v1, :cond_1

    .line 3989
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->videoBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 3990
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mTextCurrentPosition:Landroid/widget/TextView;

    int-to-long v2, p1

    invoke-static {v2, v3}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUtils;->getFormatTime(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3993
    :cond_1
    invoke-direct {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->validPlayPauseIcon()V

    .line 3994
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->errorPage:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 3995
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->errorPage:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 3997
    :cond_2
    const/4 v0, 0x0

    .line 3998
    .local v0, "isRegisterOrLicenseShow":Z
    const/16 v1, 0x1388

    if-ge p1, v1, :cond_c

    .line 3999
    iget-boolean v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mIsNeedRegisterNumOrLicenseNum:Z

    if-eqz v1, :cond_3

    .line 4000
    const/4 v0, 0x1

    .line 4006
    :cond_3
    :goto_0
    iget-boolean v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mIsRegisterOrLicenseShow:Z

    if-ne v0, v1, :cond_4

    iget v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mCurrentPositionChangeTimes:I

    if-gt v1, v6, :cond_5

    .line 4007
    :cond_4
    if-eqz v0, :cond_d

    .line 4008
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mRegisterNum:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4009
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mLicenseNum:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4010
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mWaterMark:Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;

    invoke-virtual {v1, v5}, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;->setVisibility(I)V

    .line 4017
    :cond_5
    :goto_1
    iput-boolean v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mIsRegisterOrLicenseShow:Z

    .line 4019
    iget-boolean v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mIsNeedWaterMark:Z

    if-eqz v1, :cond_7

    iget-boolean v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mWaterMarkFirstRotateEnable:Z

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mWaterMark:Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;

    invoke-virtual {v1}, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;->isFilledWithData()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 4020
    iget v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mWaterMarkFirstRotetePos:I

    if-le p1, v1, :cond_7

    iget v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mWaterMarkFirstRotetePos:I

    add-int/lit16 v1, v1, 0x1388

    if-ge p1, v1, :cond_7

    .line 4021
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mWaterMark:Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;

    invoke-virtual {v1}, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;->isRotateAnimRunning()Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-boolean v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->isFullScreen:Z

    if-eqz v1, :cond_6

    .line 4022
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mWaterMark:Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;

    invoke-virtual {v1}, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;->startRotateAnimation()V

    .line 4024
    :cond_6
    iput-boolean v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mWaterMarkFirstRotateEnable:Z

    .line 4027
    :cond_7
    iget-boolean v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mIsNeedWaterMark:Z

    if-eqz v1, :cond_9

    iget-boolean v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mWaterMarkSecondRotateEnable:Z

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mWaterMark:Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;

    invoke-virtual {v1}, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;->isFilledWithData()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 4028
    iget v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mWaterMarkSecondRotetePos:I

    if-le p1, v1, :cond_9

    iget v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mWaterMarkSecondRotetePos:I

    add-int/lit16 v1, v1, 0x1388

    if-ge p1, v1, :cond_9

    .line 4029
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mWaterMark:Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;

    invoke-virtual {v1}, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;->isRotateAnimRunning()Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-boolean v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->isFullScreen:Z

    if-eqz v1, :cond_8

    .line 4030
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mWaterMark:Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;

    invoke-virtual {v1}, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;->startRotateAnimation()V

    .line 4032
    :cond_8
    iput-boolean v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mWaterMarkSecondRotateEnable:Z

    .line 4035
    :cond_9
    iget-boolean v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mIsNeedWaterMark:Z

    if-eqz v1, :cond_b

    iget-boolean v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mWaterMarkThirdRotateEnable:Z

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mWaterMark:Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;

    invoke-virtual {v1}, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;->isFilledWithData()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 4036
    iget v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mWaterMarkThirdRotetePos:I

    if-le p1, v1, :cond_b

    iget v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mWaterMarkThirdRotetePos:I

    add-int/lit16 v1, v1, 0x1388

    if-ge p1, v1, :cond_b

    .line 4037
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mWaterMark:Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;

    invoke-virtual {v1}, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;->isRotateAnimRunning()Z

    move-result v1

    if-nez v1, :cond_a

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-boolean v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->isFullScreen:Z

    if-eqz v1, :cond_a

    .line 4038
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mWaterMark:Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;

    invoke-virtual {v1}, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;->startRotateAnimation()V

    .line 4040
    :cond_a
    iput-boolean v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mWaterMarkThirdRotateEnable:Z

    .line 4044
    :cond_b
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mVideoRecordView:Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mVideoRecordView:Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;

    invoke-virtual {v1}, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_e

    .line 4045
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mVideoRecordView:Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;

    invoke-virtual {v1, p1}, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->onCurrentPostionChange(I)V

    .line 4046
    invoke-direct {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->hideHdViews()V

    .line 4052
    :goto_2
    return-void

    .line 4003
    :cond_c
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 4012
    :cond_d
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mRegisterNum:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4013
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mLicenseNum:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4014
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mWaterMark:Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;

    invoke-virtual {v1, v4}, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;->setVisibility(I)V

    goto/16 :goto_1

    .line 4049
    :cond_e
    invoke-virtual {p0, p1}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->checkHdInfos(I)V

    goto :goto_2
.end method

.method public OnPreparedListener()V
    .locals 2

    .prologue
    .line 3865
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->errorPage:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3866
    return-void
.end method

.method public OnSeekCompleteListener()V
    .locals 0

    .prologue
    .line 3950
    return-void
.end method

.method public OnTimeoutListener()V
    .locals 1

    .prologue
    .line 3959
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-boolean v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isFullScreen:Z

    if-eqz v0, :cond_0

    .line 3960
    invoke-direct {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->showAlert()V

    .line 3962
    :cond_0
    return-void
.end method

.method public OnVideoSizeChangedListener(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 3955
    return-void
.end method

.method public alertRetry(Landroid/app/Activity;I)V
    .locals 1
    .param p1, "c"    # Landroid/app/Activity;
    .param p2, "msgId"    # I

    .prologue
    .line 3846
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3861
    :goto_0
    return-void

    .line 3848
    :cond_0
    new-instance v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$49;

    invoke-direct {v0, p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$49;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public back()V
    .locals 2

    .prologue
    .line 3230
    invoke-direct {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->enableController()V

    .line 3231
    iget-boolean v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->isVideoinfoGeted:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->isRealVideoStart:Z

    if-eqz v0, :cond_0

    .line 3232
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->danmuDialog:Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->danmuDialog:Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3251
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3252
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mBtnPlayOrPause:Landroid/view/View;

    const v1, 0x7f0206a4

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 3256
    :goto_1
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mRightPanel:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel;

    if-eqz v0, :cond_1

    .line 3257
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mRightPanel:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel;->removeAllFragment(I)V

    .line 3259
    :cond_1
    return-void

    .line 3234
    :cond_2
    invoke-direct {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->showControllerAndSystemUI()V

    .line 3235
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->userAction:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUserAction;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUserAction;->userAction()V

    goto :goto_0

    .line 3254
    :cond_3
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mBtnPlayOrPause:Landroid/view/View;

    const v1, 0x7f0206a5

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1
.end method

.method public cancelVideoRecord()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1434
    sget-object v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancelVideoRecord mMediaPlayerDelegate.isLooping() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v2}, Lcom/youku/player/plugin/MediaPlayerDelegate;->isLooping()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mNeedRestoreDanmaku = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mNeedRestoreDanmaku:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1435
    invoke-direct {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->checkVideoRecordView()V

    .line 1436
    iget-boolean v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mNeedRestoreDanmaku:Z

    if-eqz v0, :cond_0

    .line 1437
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mDetailActivity:Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v0}, Lcom/tudou/ui/activity/DetailActivity;->openDanmaku()V

    .line 1438
    iput-boolean v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mNeedRestoreDanmaku:Z

    .line 1440
    :cond_0
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mHotseat:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->getItemCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 1441
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mHotseat:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->getBtnExpand()Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;->setVisibility(I)V

    .line 1443
    :cond_1
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mHotseat:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->getBtnScreenShot()Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;->setVisibility(I)V

    .line 1444
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mVideoRecordView:Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->setVisibility(I)V

    .line 1445
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mVideoRecordView:Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->hideVideoRecordView()V

    .line 1446
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mHotseat:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->mBtnVideoRecord:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;

    invoke-virtual {v0, v3}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;->setPressed(Z)V

    .line 1447
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->isLooping()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1448
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->stopLoopVideo()V

    .line 1450
    :cond_2
    return-void
.end method

.method public cannotDownload()V
    .locals 1

    .prologue
    .line 4573
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->userInterAction:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->cannotDownloadIcon()V

    .line 4574
    return-void
.end method

.method public changeVideoQuality(I)V
    .locals 7
    .param p1, "quality"    # I

    .prologue
    const/4 v6, 0x1

    const v5, 0x7f02067f

    const v4, 0x7f020675

    const v3, -0x9a00

    .line 2177
    const/4 v0, -0x1

    .line 2178
    .local v0, "tmpquality":I
    if-nez p1, :cond_4

    .line 2179
    iget-boolean v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->superEnable:Z

    if-eqz v1, :cond_2

    .line 2180
    const/4 v0, 0x0

    .line 2181
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mCurrentQualityText:Landroid/widget/TextView;

    const-string v2, "\u8d85\u6e05"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2213
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mPopupQualityContent:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 2214
    invoke-direct {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->videoQualitySetting()V

    .line 2215
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->superTV_img:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2216
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->highTV_img:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2217
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->standandTV_img:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2220
    if-nez v0, :cond_a

    .line 2221
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->superTV:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2222
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->superTV_img:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2232
    :cond_1
    :goto_1
    return-void

    .line 2182
    :cond_2
    iget-boolean v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->highEnable:Z

    if-eqz v1, :cond_3

    .line 2183
    const/4 v0, 0x1

    .line 2184
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mCurrentQualityText:Landroid/widget/TextView;

    const-string v2, "\u9ad8\u6e05"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2186
    :cond_3
    const/4 v0, 0x2

    .line 2187
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mCurrentQualityText:Landroid/widget/TextView;

    const-string v2, "\u6807\u6e05"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2190
    :cond_4
    if-ne p1, v6, :cond_6

    .line 2191
    iget-boolean v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->highEnable:Z

    if-eqz v1, :cond_5

    .line 2192
    const/4 v0, 0x1

    .line 2193
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mCurrentQualityText:Landroid/widget/TextView;

    const-string v2, "\u9ad8\u6e05"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2195
    :cond_5
    const/4 v0, 0x2

    .line 2196
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mCurrentQualityText:Landroid/widget/TextView;

    const-string v2, "\u6807\u6e05"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2198
    :cond_6
    const/4 v1, 0x2

    if-ne p1, v1, :cond_7

    .line 2199
    const/4 v0, 0x2

    .line 2200
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mCurrentQualityText:Landroid/widget/TextView;

    const-string v2, "\u6807\u6e05"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2201
    :cond_7
    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    .line 2202
    iget-boolean v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->superEnable:Z

    if-eqz v1, :cond_8

    .line 2203
    const/4 v0, 0x0

    .line 2204
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mCurrentQualityText:Landroid/widget/TextView;

    const-string v2, "\u8d85\u6e05"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2205
    :cond_8
    iget-boolean v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->highEnable:Z

    if-eqz v1, :cond_9

    .line 2206
    const/4 v0, 0x1

    .line 2207
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mCurrentQualityText:Landroid/widget/TextView;

    const-string v2, "\u9ad8\u6e05"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2209
    :cond_9
    const/4 v0, 0x2

    .line 2210
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mCurrentQualityText:Landroid/widget/TextView;

    const-string v2, "\u6807\u6e05"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 2223
    :cond_a
    if-ne v0, v6, :cond_b

    .line 2224
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->highTV:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2225
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->highTV_img:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 2227
    :cond_b
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->standandTV:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2228
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->standandTV_img:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method

.method public checkHdInfos(I)V
    .locals 24
    .param p1, "position"    # I

    .prologue
    .line 4163
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-object/from16 v21, v0

    if-eqz v21, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    move-object/from16 v21, v0

    if-eqz v21, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/youku/player/module/VideoUrlInfo;->getVid()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_14

    .line 4164
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mGoodsInfo:Lcom/tudou/detail/vo/GoodsInfo;

    move-object/from16 v21, v0

    if-eqz v21, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mGoodsInfo:Lcom/tudou/detail/vo/GoodsInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/tudou/detail/vo/GoodsInfo;->mVid:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mGoodsInfo:Lcom/tudou/detail/vo/GoodsInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/tudou/detail/vo/GoodsInfo;->mVid:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/youku/player/module/VideoUrlInfo;->getVid()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1

    .line 4165
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mGoodsInfo:Lcom/tudou/detail/vo/GoodsInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/tudou/detail/vo/GoodsInfo;->getFirstGoodsBeShow(I)Lcom/tudou/detail/vo/GoodsInfo$GoodsArray$Goods;

    move-result-object v16

    .line 4166
    .local v16, "tGoods":Lcom/tudou/detail/vo/GoodsInfo$GoodsArray$Goods;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mRightPanel:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel;->getCurrentState()Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel$PageState;

    move-result-object v21

    sget-object v22, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel$PageState;->GOODS:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel$PageState;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_15

    const/16 v17, 0x1

    .line 4167
    .local v17, "tRightOpened":Z
    :goto_0
    if-nez v17, :cond_1

    .line 4168
    if-eqz v16, :cond_17

    .line 4169
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mVideoGoodsNotice:Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;

    move-object/from16 v21, v0

    if-nez v21, :cond_0

    .line 4170
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mStubVideoGoodsNotice:Landroid/view/ViewStub;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v21

    check-cast v21, Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mVideoGoodsNotice:Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;

    .line 4171
    invoke-direct/range {p0 .. p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->initHotseatCling()V

    .line 4172
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mControllerBottom:Landroid/view/View;

    move-object/from16 v21, v0

    if-eqz v21, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mControllerBottom:Landroid/view/View;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getVisibility()I

    move-result v21

    if-nez v21, :cond_16

    const/4 v5, 0x1

    .line 4173
    .local v5, "controllerVisible":Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mVideoGoodsNotice:Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-interface {v0, v1, v5}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay$ControllerTransitionable;->onControllerTransitionStart(ZZ)V

    .line 4174
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mVideoGoodsNotice:Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-interface {v0, v1, v5}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay$ControllerTransitionable;->onControllerTransitionEnd(ZZ)V

    .line 4175
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mVideoGoodsNotice:Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;

    move-object/from16 v21, v0

    new-instance v22, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$51;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$51;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)V

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;->mOnHideListener:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice$OnHideListener;

    .line 4205
    .end local v5    # "controllerVisible":Z
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mVideoGoodsNotice:Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;

    move-object/from16 v21, v0

    new-instance v22, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$52;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$52;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;Lcom/tudou/detail/vo/GoodsInfo$GoodsArray$Goods;)V

    invoke-virtual/range {v21 .. v22}, Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4219
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mVideoGoodsNotice:Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;->setData(Lcom/tudou/detail/vo/GoodsInfo$GoodsArray$Goods;)V

    .line 4220
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mVideoGoodsNotice:Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;->isShow()Z

    move-result v21

    if-nez v21, :cond_1

    .line 4221
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mVideoGoodsNotice:Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;->show()V

    .line 4230
    .end local v16    # "tGoods":Lcom/tudou/detail/vo/GoodsInfo$GoodsArray$Goods;
    .end local v17    # "tRightOpened":Z
    :cond_1
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/youku/player/module/VideoUrlInfo;->getVid()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mVideoNoticeVid:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1d

    .line 4231
    const/4 v12, 0x0

    .line 4232
    .local v12, "show":Z
    const/4 v10, 0x1

    .line 4233
    .local v10, "hideView":Z
    const/4 v15, 0x0

    .line 4234
    .local v15, "tAnno":Lcom/tudou/detail/vo/Annotation;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mAnnos:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    if-eqz v21, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mAnnos:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v21

    if-lez v21, :cond_5

    .line 4235
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mAnnos:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tudou/detail/vo/Annotation;

    .line 4236
    .local v3, "a":Lcom/tudou/detail/vo/Annotation;
    move/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/tudou/detail/vo/Annotation;->isShouldBeShow(I)Z

    move-result v21

    if-eqz v21, :cond_2

    .line 4237
    const/4 v12, 0x1

    .line 4238
    move-object v15, v3

    .line 4242
    .end local v3    # "a":Lcom/tudou/detail/vo/Annotation;
    :cond_3
    if-eqz v12, :cond_5

    .line 4243
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mHdNoticeView:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;

    move-object/from16 v21, v0

    if-nez v21, :cond_4

    .line 4244
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mStubVideoHdNotice:Landroid/view/ViewStub;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v21

    check-cast v21, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mHdNoticeView:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;

    .line 4245
    invoke-direct/range {p0 .. p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->initHotseatCling()V

    .line 4246
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mControllerBottom:Landroid/view/View;

    move-object/from16 v21, v0

    if-eqz v21, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mControllerBottom:Landroid/view/View;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getVisibility()I

    move-result v21

    if-nez v21, :cond_18

    const/4 v5, 0x1

    .line 4247
    .restart local v5    # "controllerVisible":Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mHdNoticeView:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-interface {v0, v1, v5}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay$ControllerTransitionable;->onControllerTransitionStart(ZZ)V

    .line 4248
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mHdNoticeView:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-interface {v0, v1, v5}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay$ControllerTransitionable;->onControllerTransitionEnd(ZZ)V

    .line 4249
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mHdNoticeView:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;

    move-object/from16 v21, v0

    new-instance v22, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$53;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$53;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)V

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;->mOnHideListener:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice$OnHideListener;

    .line 4279
    .end local v5    # "controllerVisible":Z
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mHdNoticeView:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;->setData(Lcom/tudou/detail/vo/Annotation;)V

    .line 4280
    move-object v8, v15

    .line 4281
    .local v8, "finalTAnno":Lcom/tudou/detail/vo/Annotation;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mHdNoticeView:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;

    move-object/from16 v21, v0

    new-instance v22, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$54;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v8}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$54;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;Lcom/tudou/detail/vo/Annotation;)V

    invoke-virtual/range {v21 .. v22}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4296
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mHdNoticeView:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;->isShow()Z

    move-result v21

    if-nez v21, :cond_5

    .line 4297
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mHdNoticeView:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;->show()V

    .line 4301
    .end local v8    # "finalTAnno":Lcom/tudou/detail/vo/Annotation;
    .end local v11    # "i$":Ljava/util/Iterator;
    :cond_5
    sget-object v22, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->TAG:Ljava/lang/String;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "checkHdInfos mVotes != null && mVotes.size() > 0 = "

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mVotes:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    if-eqz v21, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mVotes:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v21

    if-lez v21, :cond_19

    const/16 v21, 0x1

    :goto_4
    move-object/from16 v0, v23

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4302
    if-nez v12, :cond_a

    .line 4303
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mVotes:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    if-eqz v21, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mVotes:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v21

    if-lez v21, :cond_9

    .line 4304
    const/16 v18, 0x0

    .line 4305
    .local v18, "tVote":Lcom/tudou/detail/vo/VoteInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mVotes:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .restart local v11    # "i$":Ljava/util/Iterator;
    :cond_6
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_7

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/tudou/detail/vo/VoteInfo;

    .line 4306
    .local v20, "v":Lcom/tudou/detail/vo/VoteInfo;
    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/tudou/detail/vo/VoteInfo;->isShouldBeShow(I)Z

    move-result v21

    if-eqz v21, :cond_6

    .line 4307
    const/4 v12, 0x1

    .line 4308
    move-object/from16 v18, v20

    .line 4312
    .end local v20    # "v":Lcom/tudou/detail/vo/VoteInfo;
    :cond_7
    if-eqz v12, :cond_9

    .line 4313
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mHdNoticeView:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;

    move-object/from16 v21, v0

    if-nez v21, :cond_8

    .line 4314
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mStubVideoHdNotice:Landroid/view/ViewStub;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v21

    check-cast v21, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mHdNoticeView:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;

    .line 4315
    invoke-direct/range {p0 .. p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->initHotseatCling()V

    .line 4316
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mControllerBottom:Landroid/view/View;

    move-object/from16 v21, v0

    if-eqz v21, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mControllerBottom:Landroid/view/View;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getVisibility()I

    move-result v21

    if-nez v21, :cond_1a

    const/4 v5, 0x1

    .line 4317
    .restart local v5    # "controllerVisible":Z
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mHdNoticeView:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-interface {v0, v1, v5}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay$ControllerTransitionable;->onControllerTransitionStart(ZZ)V

    .line 4318
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mHdNoticeView:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-interface {v0, v1, v5}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay$ControllerTransitionable;->onControllerTransitionEnd(ZZ)V

    .line 4319
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mHdNoticeView:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;

    move-object/from16 v21, v0

    new-instance v22, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$55;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$55;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)V

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;->mOnHideListener:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice$OnHideListener;

    .line 4348
    .end local v5    # "controllerVisible":Z
    :cond_8
    move-object/from16 v9, v18

    .line 4349
    .local v9, "finalTVote":Lcom/tudou/detail/vo/VoteInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mHdNoticeView:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;

    move-object/from16 v21, v0

    new-instance v22, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$56;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v9}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$56;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;Lcom/tudou/detail/vo/VoteInfo;)V

    invoke-virtual/range {v21 .. v22}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4365
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mHdNoticeView:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;->setData(Lcom/tudou/detail/vo/VoteInfo;)V

    .line 4366
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mHdNoticeView:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;->isShow()Z

    move-result v21

    if-nez v21, :cond_9

    .line 4367
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mHdNoticeView:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;->show()V

    .line 4371
    .end local v9    # "finalTVote":Lcom/tudou/detail/vo/VoteInfo;
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v18    # "tVote":Lcom/tudou/detail/vo/VoteInfo;
    :cond_9
    if-nez v12, :cond_a

    .line 4372
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mHdNoticeView:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;

    move-object/from16 v21, v0

    if-eqz v21, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mHdNoticeView:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;->isShow()Z

    move-result v21

    if-eqz v21, :cond_a

    .line 4373
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mHdNoticeView:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;->hide(Z)V

    .line 4378
    :cond_a
    const/4 v12, 0x0

    .line 4379
    const/4 v14, 0x0

    .line 4380
    .local v14, "showItem":Lcom/tudou/detail/vo/VideoNoticeTop;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mVideoNoticeTops:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    if-eqz v21, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mVideoNoticeTops:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v21

    if-lez v21, :cond_f

    .line 4381
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mVideoNoticeTops:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .restart local v11    # "i$":Ljava/util/Iterator;
    :cond_b
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_c

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/tudou/detail/vo/VideoNoticeTop;

    .line 4382
    .local v19, "top":Lcom/tudou/detail/vo/VideoNoticeTop;
    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/tudou/detail/vo/VideoNoticeTop;->isShouldBeShow(I)Z

    move-result v21

    if-eqz v21, :cond_b

    .line 4383
    const/4 v12, 0x1

    .line 4384
    move-object/from16 v14, v19

    .line 4388
    .end local v19    # "top":Lcom/tudou/detail/vo/VideoNoticeTop;
    :cond_c
    if-eqz v12, :cond_1b

    .line 4389
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mVideoNoticeTopView:Lcom/youku/phone/detail/plugin/fullscreen/VideoNoticeTopView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/youku/phone/detail/plugin/fullscreen/VideoNoticeTopView;->getCurrentVideoNotice()Lcom/tudou/detail/vo/VideoNoticeTop;

    move-result-object v6

    .line 4390
    .local v6, "currentShowItem":Lcom/tudou/detail/vo/VideoNoticeTop;
    if-eqz v6, :cond_d

    if-eq v6, v14, :cond_e

    .line 4391
    :cond_d
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 4392
    .local v7, "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v21, "videoprompt"

    const-string v22, "guajiao"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v7, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4393
    const-string v21, "vid"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/youku/player/module/VideoUrlInfo;->getVid()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v7, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4394
    const-string v21, "widgetid"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14}, Lcom/tudou/detail/vo/VideoNoticeTop;->getWidgetId()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ""

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v7, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4395
    const-string v21, "\u6302\u89d2\u5c55\u793a\u6210\u529f"

    const-string v22, "\u64ad\u653e\u5668"

    const-string v23, ""

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2, v7}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 4396
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mVideoNoticeTopView:Lcom/youku/phone/detail/plugin/fullscreen/VideoNoticeTopView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Lcom/youku/phone/detail/plugin/fullscreen/VideoNoticeTopView;->setData(Lcom/tudou/detail/vo/VideoNoticeTop;)V

    .line 4399
    .end local v7    # "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mVideoNoticeTopView:Lcom/youku/phone/detail/plugin/fullscreen/VideoNoticeTopView;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Lcom/youku/phone/detail/plugin/fullscreen/VideoNoticeTopView;->setVisibility(I)V

    .line 4405
    .end local v6    # "currentShowItem":Lcom/tudou/detail/vo/VideoNoticeTop;
    .end local v11    # "i$":Ljava/util/Iterator;
    :cond_f
    :goto_6
    const/4 v12, 0x0

    .line 4406
    const/4 v13, 0x0

    .line 4407
    .local v13, "showBottom":Lcom/tudou/detail/vo/VideoNoticeBottom;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mVideoNoticeBottoms:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    if-eqz v21, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mVideoNoticeBottoms:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v21

    if-lez v21, :cond_14

    .line 4408
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mVideoNoticeBottoms:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .restart local v11    # "i$":Ljava/util/Iterator;
    :cond_10
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_11

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tudou/detail/vo/VideoNoticeBottom;

    .line 4409
    .local v4, "b":Lcom/tudou/detail/vo/VideoNoticeBottom;
    move/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/tudou/detail/vo/VideoNoticeBottom;->isShouldBeShow(I)Z

    move-result v21

    if-eqz v21, :cond_10

    .line 4410
    const/4 v12, 0x1

    .line 4411
    move-object v13, v4

    .line 4415
    .end local v4    # "b":Lcom/tudou/detail/vo/VideoNoticeBottom;
    :cond_11
    if-eqz v12, :cond_1c

    .line 4416
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mVideoNoticeBottomView:Lcom/youku/phone/detail/plugin/fullscreen/VideoNoticeBottomView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/youku/phone/detail/plugin/fullscreen/VideoNoticeBottomView;->getCurrentVideoNotice()Lcom/tudou/detail/vo/VideoNoticeBottom;

    move-result-object v6

    .line 4417
    .local v6, "currentShowItem":Lcom/tudou/detail/vo/VideoNoticeBottom;
    if-eqz v6, :cond_12

    if-eq v6, v13, :cond_13

    .line 4419
    :cond_12
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 4420
    .restart local v7    # "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v21, "videoprompt"

    const-string v22, "feimu"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v7, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4421
    const-string v21, "vid"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/youku/player/module/VideoUrlInfo;->getVid()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v7, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4422
    const-string v21, "widgetid"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14}, Lcom/tudou/detail/vo/VideoNoticeTop;->getWidgetId()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ""

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v7, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4423
    const-string v21, "\u98de\u6155\u5c55\u793a\u6210\u529f"

    const-string v22, "\u64ad\u653e\u5668"

    const-string v23, ""

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2, v7}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 4425
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mVideoNoticeBottomView:Lcom/youku/phone/detail/plugin/fullscreen/VideoNoticeBottomView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Lcom/youku/phone/detail/plugin/fullscreen/VideoNoticeBottomView;->setData(Lcom/tudou/detail/vo/VideoNoticeBottom;)V

    .line 4427
    .end local v7    # "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mVideoNoticeBottomView:Lcom/youku/phone/detail/plugin/fullscreen/VideoNoticeBottomView;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Lcom/youku/phone/detail/plugin/fullscreen/VideoNoticeBottomView;->setVisibility(I)V

    .line 4437
    .end local v6    # "currentShowItem":Lcom/tudou/detail/vo/VideoNoticeBottom;
    .end local v10    # "hideView":Z
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v12    # "show":Z
    .end local v13    # "showBottom":Lcom/tudou/detail/vo/VideoNoticeBottom;
    .end local v14    # "showItem":Lcom/tudou/detail/vo/VideoNoticeTop;
    .end local v15    # "tAnno":Lcom/tudou/detail/vo/Annotation;
    :cond_14
    :goto_7
    return-void

    .line 4166
    .restart local v16    # "tGoods":Lcom/tudou/detail/vo/GoodsInfo$GoodsArray$Goods;
    :cond_15
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 4172
    .restart local v17    # "tRightOpened":Z
    :cond_16
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 4224
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mVideoGoodsNotice:Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;

    move-object/from16 v21, v0

    if-eqz v21, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mVideoGoodsNotice:Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;->isShow()Z

    move-result v21

    if-eqz v21, :cond_1

    .line 4225
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mVideoGoodsNotice:Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;->hide(Z)V

    goto/16 :goto_2

    .line 4246
    .end local v16    # "tGoods":Lcom/tudou/detail/vo/GoodsInfo$GoodsArray$Goods;
    .end local v17    # "tRightOpened":Z
    .restart local v10    # "hideView":Z
    .restart local v11    # "i$":Ljava/util/Iterator;
    .restart local v12    # "show":Z
    .restart local v15    # "tAnno":Lcom/tudou/detail/vo/Annotation;
    :cond_18
    const/4 v5, 0x0

    goto/16 :goto_3

    .line 4301
    .end local v11    # "i$":Ljava/util/Iterator;
    :cond_19
    const/16 v21, 0x0

    goto/16 :goto_4

    .line 4316
    .restart local v11    # "i$":Ljava/util/Iterator;
    .restart local v18    # "tVote":Lcom/tudou/detail/vo/VoteInfo;
    :cond_1a
    const/4 v5, 0x0

    goto/16 :goto_5

    .line 4401
    .end local v18    # "tVote":Lcom/tudou/detail/vo/VoteInfo;
    .restart local v14    # "showItem":Lcom/tudou/detail/vo/VideoNoticeTop;
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mVideoNoticeTopView:Lcom/youku/phone/detail/plugin/fullscreen/VideoNoticeTopView;

    move-object/from16 v21, v0

    const/16 v22, 0x8

    invoke-virtual/range {v21 .. v22}, Lcom/youku/phone/detail/plugin/fullscreen/VideoNoticeTopView;->setVisibility(I)V

    goto/16 :goto_6

    .line 4429
    .restart local v13    # "showBottom":Lcom/tudou/detail/vo/VideoNoticeBottom;
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mVideoNoticeBottomView:Lcom/youku/phone/detail/plugin/fullscreen/VideoNoticeBottomView;

    move-object/from16 v21, v0

    const/16 v22, 0x8

    invoke-virtual/range {v21 .. v22}, Lcom/youku/phone/detail/plugin/fullscreen/VideoNoticeBottomView;->setVisibility(I)V

    goto :goto_7

    .line 4433
    .end local v10    # "hideView":Z
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v12    # "show":Z
    .end local v13    # "showBottom":Lcom/tudou/detail/vo/VideoNoticeBottom;
    .end local v14    # "showItem":Lcom/tudou/detail/vo/VideoNoticeTop;
    .end local v15    # "tAnno":Lcom/tudou/detail/vo/Annotation;
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mVideoNoticeTopView:Lcom/youku/phone/detail/plugin/fullscreen/VideoNoticeTopView;

    move-object/from16 v21, v0

    const/16 v22, 0x8

    invoke-virtual/range {v21 .. v22}, Lcom/youku/phone/detail/plugin/fullscreen/VideoNoticeTopView;->setVisibility(I)V

    .line 4434
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mVideoNoticeBottomView:Lcom/youku/phone/detail/plugin/fullscreen/VideoNoticeBottomView;

    move-object/from16 v21, v0

    const/16 v22, 0x8

    invoke-virtual/range {v21 .. v22}, Lcom/youku/phone/detail/plugin/fullscreen/VideoNoticeBottomView;->setVisibility(I)V

    goto :goto_7
.end method

.method public clearHdInfos()V
    .locals 1

    .prologue
    .line 638
    invoke-super {p0}, Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;->clearHdInfos()V

    .line 639
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mHotseat:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->clear()V

    .line 640
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mVideoGoodsNotice:Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;

    if-eqz v0, :cond_0

    .line 641
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mVideoGoodsNotice:Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;->clear()V

    .line 644
    :cond_0
    return-void
.end method

.method public clearKuwoDownloadBroadcast()V
    .locals 1

    .prologue
    .line 4578
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->userInterAction:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;

    if-eqz v0, :cond_0

    .line 4579
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->userInterAction:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->clearKuwoDownloadBroadcast()V

    .line 4581
    :cond_0
    return-void
.end method

.method public clearNext()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 1920
    iput-boolean v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mHasGetNext:Z

    .line 1921
    iput-boolean v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mHasNext:Z

    .line 1922
    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mCurVid:Ljava/lang/String;

    .line 1923
    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mNextVid:Ljava/lang/String;

    .line 1924
    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mNextAlbumId:Ljava/lang/String;

    .line 1925
    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mNextVideoType:Lcom/tudou/ui/activity/DetailActivity$NextVideoType;

    .line 1926
    return-void
.end method

.method public clearPayPage()V
    .locals 3

    .prologue
    .line 1716
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->pluginSmallPayPageFragment:Lcom/youku/phone/detail/plugin/PluginSmallPayPageFragment;

    if-eqz v2, :cond_0

    .line 1717
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mDetailActivity:Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v2}, Lcom/tudou/ui/activity/DetailActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 1719
    .local v0, "fragmentManager":Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 1721
    .local v1, "fragmentTransaction":Landroid/support/v4/app/FragmentTransaction;
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->pluginSmallPayPageFragment:Lcom/youku/phone/detail/plugin/PluginSmallPayPageFragment;

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 1722
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 1723
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->pluginSmallPayPageFragment:Lcom/youku/phone/detail/plugin/PluginSmallPayPageFragment;

    .line 1725
    .end local v0    # "fragmentManager":Landroid/support/v4/app/FragmentManager;
    .end local v1    # "fragmentTransaction":Landroid/support/v4/app/FragmentTransaction;
    :cond_0
    return-void
.end method

.method public clearVideoList()V
    .locals 2

    .prologue
    .line 1940
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mVideolist:Lcom/tudou/detail/vo/VideoList;

    .line 1941
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mBtnPlaylist:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1942
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mBtnPlaylist:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 1943
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mBtnPlaylist:Landroid/view/View;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 1945
    :cond_0
    return-void
.end method

.method public clearVideoTips()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 3111
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->loading:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3112
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->loadingtips:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3113
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->loadingname:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3114
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->vip_buy_tv1:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3115
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->vip_buy_tv2:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3116
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->hideController(Z)V

    .line 3117
    return-void
.end method

.method public disableDownload()V
    .locals 1

    .prologue
    .line 4563
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->userInterAction:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->disableDownloadIcon()V

    .line 4564
    return-void
.end method

.method public disableSubbtn()V
    .locals 2

    .prologue
    .line 3286
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->userInterAction:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->disableSun()V

    .line 3287
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mWaterMark:Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;->setSubscriptionVisible(I)V

    .line 3288
    return-void
.end method

.method public doPause()V
    .locals 1

    .prologue
    .line 4055
    iget v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->directionalLock:I

    if-eqz v0, :cond_0

    .line 4056
    invoke-direct {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->endGesture()V

    .line 4057
    const/4 v0, 0x0

    iput v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->directionalLock:I

    .line 4058
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->hideVolumeView()V

    .line 4059
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->hideSeekbarView()V

    .line 4060
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->hideTimeView()V

    .line 4061
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->hideBrightView()V

    .line 4063
    :cond_0
    return-void
.end method

.method public download()V
    .locals 0

    .prologue
    .line 3158
    return-void
.end method

.method public enableDownload()V
    .locals 1

    .prologue
    .line 4568
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->userInterAction:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->enableDownloadIcon()V

    .line 4569
    return-void
.end method

.method public enableSubbtn()V
    .locals 2

    .prologue
    .line 3291
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->userInterAction:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->enableSun()V

    .line 3292
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mWaterMark:Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;->setSubscriptionVisible(I)V

    .line 3293
    return-void
.end method

.method public goEndPage()V
    .locals 2

    .prologue
    .line 3773
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->hidePopWindows()V

    .line 3774
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v0, :cond_0

    const-string v0, "local"

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v1, v1, Lcom/youku/player/module/VideoUrlInfo;->playType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3775
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->finishActivity()V

    .line 3826
    :goto_0
    return-void

    .line 3778
    :cond_0
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mDetailActivity:Lcom/tudou/ui/activity/DetailActivity;

    new-instance v1, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$48;

    invoke-direct {v1, p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$48;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)V

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

    .line 2599
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x12

    if-lt v3, v4, :cond_0

    .line 2600
    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mDetailActivity:Lcom/tudou/ui/activity/DetailActivity;

    invoke-static {v3}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v1

    .line 2601
    .local v1, "hasMenuKey":Z
    const/4 v3, 0x4

    invoke-static {v3}, Landroid/view/KeyCharacterMap;->deviceHasKey(I)Z

    move-result v0

    .line 2603
    .local v0, "hasBackKey":Z
    if-nez v1, :cond_0

    if-nez v0, :cond_0

    .line 2604
    const/4 v2, 0x1

    .line 2609
    .end local v0    # "hasBackKey":Z
    .end local v1    # "hasMenuKey":Z
    :cond_0
    return v2
.end method

.method protected hideBrightView()V
    .locals 2

    .prologue
    .line 1624
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->hideBrightRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1625
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->settingBright:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1626
    return-void
.end method

.method public hideController(Z)V
    .locals 8
    .param p1, "anim"    # Z

    .prologue
    const/4 v7, 0x1

    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 4476
    sget-object v2, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->TAG:Ljava/lang/String;

    const-string v3, "hideController"

    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4}, Ljava/lang/RuntimeException;-><init>()V

    invoke-static {v2, v3, v4}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4477
    if-eqz p1, :cond_0

    .line 4478
    iput-boolean v7, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mControllIsAnimating:Z

    .line 4479
    const/4 v2, 0x2

    new-array v1, v2, [F

    .line 4480
    .local v1, "values":[F
    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v1, v5

    .line 4481
    const/4 v2, 0x0

    aput v2, v1, v7

    .line 4482
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    const-wide/16 v4, 0x12c

    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 4483
    .local v0, "animator":Landroid/animation/ValueAnimator;
    new-instance v2, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$57;

    invoke-direct {v2, p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$57;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 4498
    new-instance v2, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$58;

    invoke-direct {v2, p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$58;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 4541
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 4559
    .end local v0    # "animator":Landroid/animation/ValueAnimator;
    .end local v1    # "values":[F
    :goto_0
    return-void

    .line 4543
    :cond_0
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mControllerTop:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 4544
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mControllerBottom:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 4545
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mHotseat:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;

    invoke-virtual {v2, v6}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->setVisibility(I)V

    .line 4546
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mVideoGoodsNotice:Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mVideoGoodsNotice:Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;

    instance-of v2, v2, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay$ControllerTransitionable;

    if-eqz v2, :cond_1

    .line 4547
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mVideoGoodsNotice:Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;

    invoke-interface {v2, v5, v5}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay$ControllerTransitionable;->onControllerTransitionEnd(ZZ)V

    .line 4549
    :cond_1
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mHdNoticeView:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mHdNoticeView:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;

    instance-of v2, v2, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay$ControllerTransitionable;

    if-eqz v2, :cond_2

    .line 4550
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mHdNoticeView:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;

    invoke-interface {v2, v5, v5}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay$ControllerTransitionable;->onControllerTransitionEnd(ZZ)V

    .line 4552
    :cond_2
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->userInterAction:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;

    invoke-virtual {v2}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->hide()V

    .line 4554
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v2, v2, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v2, v2, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-static {v2}, Lcom/youku/phone/detail/DetailUtil;->isPayVideo(Lcom/youku/player/module/VideoUrlInfo;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4555
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->test_play_layout:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 4557
    :cond_3
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->hidePopWindows()V

    goto :goto_0
.end method

.method public hideControllerAndSystemUI()V
    .locals 1

    .prologue
    .line 1988
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->stopUserAction:Z

    .line 1989
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->hideController(Z)V

    .line 1990
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-boolean v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isFullScreen:Z

    if-eqz v0, :cond_0

    .line 1991
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->setFullscreenCompatibility()V

    .line 1993
    :cond_0
    return-void
.end method

.method hideControllerToleftrightbottom()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 4464
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mControllerBottom:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4465
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mControllerTop:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4466
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->userInterAction:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->hide()V

    .line 4467
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->stopUserAction:Z

    .line 4468
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-static {v0}, Lcom/youku/phone/detail/DetailUtil;->isPayVideo(Lcom/youku/player/module/VideoUrlInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4469
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->test_play_layout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4472
    :cond_0
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->hidePopWindows()V

    .line 4473
    return-void
.end method

.method public hideLoading()V
    .locals 1

    .prologue
    .line 3093
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->progressLoading:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenLoading;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenLoading;->hideLoading()V

    .line 3094
    return-void
.end method

.method public hidePopWindows()V
    .locals 1

    .prologue
    .line 3870
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->danmuDialog:Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->danmuDialog:Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3871
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->danmuDialog:Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/DanmuSendDialog;->dismiss()V

    .line 3873
    :cond_0
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->ph:Lcom/youku/phone/detail/plugin/fullscreen/PopupWindow_Hotpoint_Top;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->ph:Lcom/youku/phone/detail/plugin/fullscreen/PopupWindow_Hotpoint_Top;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/PopupWindow_Hotpoint_Top;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3874
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->ph:Lcom/youku/phone/detail/plugin/fullscreen/PopupWindow_Hotpoint_Top;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/PopupWindow_Hotpoint_Top;->dismiss()Z

    .line 3876
    :cond_1
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mPopupQuality:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mPopupQuality:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3877
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mPopupQuality:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 3879
    :cond_2
    return-void
.end method

.method protected hideSeekbarView()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 561
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->hideSeekbarRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 562
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mControllerBottom:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 564
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->isVideoRecordShow()Z

    move-result v0

    if-nez v0, :cond_0

    .line 565
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mHotseat:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;

    invoke-virtual {v0, v2}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->setVisibility(I)V

    .line 569
    :cond_0
    return-void
.end method

.method protected hideTimeView()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 592
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->hideTimeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 593
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->playGestureCenterTime:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 594
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->playGestureCenterTime_line:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 595
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->play_controller_center_time_layout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 596
    return-void
.end method

.method protected hideVolumeView()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 1673
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->hideVolumeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1674
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->settingVolume:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1675
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mHotseat:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;

    invoke-virtual {v0, v2}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->setVisibility(I)V

    .line 1676
    return-void
.end method

.method public init()V
    .locals 8

    .prologue
    .line 1537
    sget-object v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->TAG:Ljava/lang/String;

    const-string v1, "init"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1538
    new-instance v1, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;

    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/tudou/ui/activity/DetailActivity;

    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mPluginFullScreenPlay:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;

    invoke-direct {v1, p0, v2, v0, v3}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;-><init>(Landroid/view/View;Lcom/youku/player/plugin/MediaPlayerDelegate;Lcom/tudou/ui/activity/DetailActivity;Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;)V

    iput-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->userInterAction:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;

    .line 1539
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->userInterAction:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->initIneract()V

    .line 1540
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mBtnUPlus:Lcom/tudou/detail/widget/SwitchButton;

    new-instance v1, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$28;

    invoke-direct {v1, p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$28;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)V

    invoke-virtual {v0, v1}, Lcom/tudou/detail/widget/SwitchButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1565
    const-string v7, ""

    .line 1566
    .local v7, "text":Ljava/lang/String;
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v0, :cond_0

    .line 1567
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v0}, Lcom/youku/player/module/VideoUrlInfo;->getTitle()Ljava/lang/String;

    move-result-object v7

    .line 1569
    :cond_0
    new-instance v0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenLoading;

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mPluginFullScreenPlay:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;

    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mPluginFullScreenPlay:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;

    invoke-direct {v0, v1, v7, v2}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenLoading;-><init>(Landroid/view/View;Ljava/lang/String;Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;)V

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->progressLoading:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenLoading;

    .line 1570
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->progressLoading:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenLoading;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenLoading;->initSeekLoading()V

    .line 1571
    new-instance v0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenClickOperate;

    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/tudou/ui/activity/DetailActivity;

    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mPluginFullScreenPlay:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;

    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->sp:Landroid/content/SharedPreferences;

    iget-object v5, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->userAction:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUserAction;

    iget-object v6, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mPluginFullScreenPlay:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;

    invoke-direct/range {v0 .. v6}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenClickOperate;-><init>(Lcom/tudou/ui/activity/DetailActivity;Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;Lcom/youku/player/plugin/MediaPlayerDelegate;Landroid/content/SharedPreferences;Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUserAction;Lcom/youku/util/IChangeDefinition;)V

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->listener:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenClickOperate;

    .line 1573
    return-void
.end method

.method public initVolumeAndBright()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    .line 1606
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mDetailActivity:Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v2}, Lcom/tudou/ui/activity/DetailActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_brightness"

    const/4 v4, -0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->curBrightness:I

    .line 1608
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mDetailActivity:Lcom/tudou/ui/activity/DetailActivity;

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Lcom/tudou/ui/activity/DetailActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 1610
    .local v1, "mAudioManager":Landroid/media/AudioManager;
    if-eqz v1, :cond_0

    .line 1611
    invoke-virtual {v1}, Landroid/media/AudioManager;->getMode()I

    move-result v2

    const/4 v3, -0x2

    if-ne v2, v3, :cond_0

    .line 1612
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setMode(I)V

    .line 1615
    :cond_0
    invoke-virtual {v1, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    .line 1616
    .local v0, "curVolue":I
    invoke-virtual {v1, v5}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v2

    iput v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->maxVolume:I

    .line 1617
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->bright:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenBright;

    iget v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->maxBrightness:I

    mul-int/lit8 v3, v3, 0x1

    iget v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->curBrightness:I

    mul-int/lit8 v4, v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenBright;->initBrightness(II)V

    .line 1618
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->volume:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenVolume;

    iget v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->maxVolume:I

    mul-int/lit8 v3, v3, 0xf

    mul-int/lit8 v4, v0, 0xf

    const/16 v5, 0xf

    invoke-virtual {v2, v3, v4, v5}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenVolume;->initVolume(III)V

    .line 1619
    mul-int/lit8 v2, v0, 0xf

    int-to-float v2, v2

    iput v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->offsetY:F

    .line 1620
    iget v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->curBrightness:I

    mul-int/lit8 v2, v2, 0x1

    int-to-float v2, v2

    iput v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->_offsetY:F

    .line 1621
    return-void
.end method

.method public invisiblePayFragmentTitle()V
    .locals 1

    .prologue
    .line 1709
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->pluginSmallPayPageFragment:Lcom/youku/phone/detail/plugin/PluginSmallPayPageFragment;

    if-eqz v0, :cond_0

    .line 1710
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->pluginSmallPayPageFragment:Lcom/youku/phone/detail/plugin/PluginSmallPayPageFragment;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/PluginSmallPayPageFragment;->invisibleTitle()V

    .line 1712
    :cond_0
    return-void
.end method

.method public isScreenshotShow()Z
    .locals 1

    .prologue
    .line 1507
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mScreenshotShare:Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mScreenshotShare:Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 3302
    const/4 v0, 0x0

    return v0
.end method

.method isVideoRecordShow()Z
    .locals 1

    .prologue
    .line 1512
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mVideoRecordView:Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mVideoRecordView:Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isableSubbtn()Z
    .locals 1

    .prologue
    .line 3281
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->userInterAction:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->isableSun()Z

    move-result v0

    return v0
.end method

.method public loginFail()V
    .locals 0

    .prologue
    .line 3166
    return-void
.end method

.method public loginSucc()V
    .locals 0

    .prologue
    .line 3162
    return-void
.end method

.method public needDownloadDRMSo(Ljava/lang/String;)V
    .locals 0
    .param p1, "soName"    # Ljava/lang/String;

    .prologue
    .line 3383
    return-void
.end method

.method public newVideo()V
    .locals 1

    .prologue
    .line 2478
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->userInterAction:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->newVideo()V

    .line 2479
    return-void
.end method

.method public onADplaying()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3135
    sget-object v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->TAG:Ljava/lang/String;

    const-string v1, "onADplaying"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3136
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->isVideoRecordShow()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3137
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mVideoRecordView:Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->cancelVideoRecord()V

    .line 3138
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mVideoRecordView:Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->setVisibility(I)V

    .line 3139
    iget-boolean v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mNeedRestoreDanmaku:Z

    if-eqz v0, :cond_1

    .line 3140
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v0}, Lcom/youku/player/module/VideoUrlInfo;->isVerticalVideo()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3141
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mDetailActivity:Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v0}, Lcom/tudou/ui/activity/DetailActivity;->openDanmaku()V

    .line 3143
    :cond_0
    iput-boolean v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mNeedRestoreDanmaku:Z

    .line 3145
    :cond_1
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mHotseat:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->mBtnVideoRecord:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;

    invoke-virtual {v0, v2}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;->setPressed(Z)V

    .line 3147
    :cond_2
    return-void
.end method

.method public onBackPressed()Z
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v1, 0x1

    const/4 v6, 0x0

    .line 2410
    sget-object v2, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->TAG:Ljava/lang/String;

    const-string v3, "onBackPressed"

    invoke-static {v2, v3}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2412
    const/4 v0, 0x0

    .line 2413
    .local v0, "handle":Z
    const-string v2, "plugin.fullscreen.screenshot"

    const-wide/16 v4, 0x320

    invoke-static {v2, v4, v5, v6}, Lcom/youku/util/Util;->isGoOn(Ljava/lang/String;JZ)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2414
    sget-object v2, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->TAG:Ljava/lang/String;

    const-string v3, "onBackPressed plugin.fullscreen.screenshot return "

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2439
    :cond_0
    :goto_0
    return v1

    .line 2417
    :cond_1
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-boolean v2, v2, Lcom/youku/player/plugin/MediaPlayerDelegate;->isFullScreen:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mScreenshotShare:Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mScreenshotShare:Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView;

    invoke-virtual {v2}, Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    .line 2418
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mScreenshotShare:Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView;

    invoke-virtual {v2, v7}, Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView;->setVisibility(I)V

    .line 2419
    invoke-direct {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->playInternal()V

    .line 2420
    const/4 v0, 0x1

    .line 2421
    sget-object v2, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->TAG:Ljava/lang/String;

    const-string v3, "onBackPressed mScreenshotShare return "

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2423
    :cond_2
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-boolean v2, v2, Lcom/youku/player/plugin/MediaPlayerDelegate;->isFullScreen:Z

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->isVideoRecordShow()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2424
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mVideoRecordView:Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;

    iget-boolean v2, v2, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->mIsRecording:Z

    if-nez v2, :cond_0

    .line 2427
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mVideoRecordView:Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;

    invoke-virtual {v1, v7}, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->setVisibility(I)V

    .line 2428
    iget-boolean v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mNeedRestoreDanmaku:Z

    if-eqz v1, :cond_3

    .line 2429
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mDetailActivity:Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v1}, Lcom/tudou/ui/activity/DetailActivity;->openDanmaku()V

    .line 2430
    iput-boolean v6, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mNeedRestoreDanmaku:Z

    .line 2432
    :cond_3
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v1}, Lcom/youku/player/plugin/MediaPlayerDelegate;->isLooping()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2433
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v1}, Lcom/youku/player/plugin/MediaPlayerDelegate;->stopLoopVideo()V

    .line 2435
    :cond_4
    sget-object v1, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->TAG:Ljava/lang/String;

    const-string v2, "onBackPressed isVideoRecordShow return "

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2436
    const/4 v0, 0x1

    .line 2438
    :cond_5
    sget-object v1, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onBackPressed handle ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v0

    .line 2439
    goto :goto_0
.end method

.method public onBufferPercentUpdate(I)V
    .locals 0
    .param p1, "percent"    # I

    .prologue
    .line 3378
    return-void
.end method

.method public onBufferingUpdateListener(I)V
    .locals 2
    .param p1, "percent"    # I

    .prologue
    .line 3392
    const/16 v0, 0x64

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-nez v0, :cond_1

    .line 3396
    :cond_0
    :goto_0
    return-void

    .line 3395
    :cond_1
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->videoBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v1}, Lcom/youku/player/module/VideoUrlInfo;->getDurationMills()I

    move-result v1

    mul-int/2addr v1, p1

    div-int/lit8 v1, v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setSecondaryProgress(I)V

    goto :goto_0
.end method

.method public onChangeVideoDefinitionComplete()V
    .locals 4

    .prologue
    .line 3883
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mPopupQuality:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_0

    .line 3884
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mPopupQuality:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 3886
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->stopUserAction:Z

    .line 3887
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->userAction:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUserAction;

    invoke-virtual {v1}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUserAction;->userAction()V

    .line 3888
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mDetailActivity:Lcom/tudou/ui/activity/DetailActivity;

    invoke-static {v1}, Lcom/youku/player/goplay/Profile;->getVideoQuality(Landroid/content/Context;)I

    move-result v0

    .line 3889
    .local v0, "currentQuality":I
    sget-object v1, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "popupWindowInit currentQuality = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3890
    invoke-virtual {p0, v0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->changeVideoQuality(I)V

    .line 3891
    return-void
.end method

.method public onClearUpDownFav()V
    .locals 1

    .prologue
    .line 2457
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->userInterAction:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->onUnFavor()V

    .line 2458
    return-void
.end method

.method public onCompletionListener()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3400
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mPopupQuality:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mPopupQuality:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3401
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mPopupQuality:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 3403
    :cond_0
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mRightPanel:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel;

    if-eqz v0, :cond_1

    .line 3404
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mRightPanel:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel;

    invoke-virtual {v0, v2}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel;->removeAllFragment(I)V

    .line 3406
    :cond_1
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mVideoRecordView:Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mVideoRecordView:Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 3407
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->cancelVideoRecord()V

    .line 3408
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mVideoRecordView:Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->cancelVideoRecord()V

    .line 3409
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mVideoRecordView:Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->setVisibility(I)V

    .line 3410
    invoke-virtual {p0, v2}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->hideController(Z)V

    .line 3412
    :cond_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->playComplete(Z)V

    .line 3413
    return-void
.end method

.method public onDown()V
    .locals 1

    .prologue
    .line 2450
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->userInterAction:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->onDown()V

    .line 2451
    return-void
.end method

.method public onDownloadFail(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 3176
    return-void
.end method

.method public onDownloadSucc()V
    .locals 0

    .prologue
    .line 3171
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

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 3419
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mRightPanel:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel;

    if-eqz v0, :cond_0

    .line 3420
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mRightPanel:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel;->removeAllFragment()V

    .line 3422
    :cond_0
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mVideoRecordView:Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mVideoRecordView:Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 3423
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mVideoRecordView:Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->setVisibility(I)V

    .line 3424
    iget-boolean v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mNeedRestoreDanmaku:Z

    if-eqz v0, :cond_2

    .line 3425
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v0}, Lcom/youku/player/module/VideoUrlInfo;->isVerticalVideo()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3426
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mDetailActivity:Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v0}, Lcom/tudou/ui/activity/DetailActivity;->openDanmaku()V

    .line 3428
    :cond_1
    iput-boolean v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mNeedRestoreDanmaku:Z

    .line 3431
    :cond_2
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->ph:Lcom/youku/phone/detail/plugin/fullscreen/PopupWindow_Hotpoint_Top;

    if-eqz v0, :cond_3

    .line 3432
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->ph:Lcom/youku/phone/detail/plugin/fullscreen/PopupWindow_Hotpoint_Top;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/PopupWindow_Hotpoint_Top;->dismiss()Z

    .line 3434
    :cond_3
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v0, :cond_d

    .line 3435
    sget-object v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onErrorListener what = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3436
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iput-boolean v4, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isStartPlay:Z

    .line 3437
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mDetailActivity:Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v0}, Lcom/tudou/ui/activity/DetailActivity;->checkAndRestore3GPlay()V

    .line 3438
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mDetailActivity:Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v0}, Lcom/tudou/ui/activity/DetailActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3534
    :goto_0
    return v3

    .line 3441
    :cond_4
    iput p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->playErrorMsg:I

    .line 3443
    if-ne p1, v7, :cond_5

    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-boolean v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isFullScreen:Z

    if-eqz v0, :cond_5

    .line 3445
    invoke-direct {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->showAlert()V

    goto :goto_0

    .line 3448
    :cond_5
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v0, :cond_c

    const-string v0, "local"

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v1, v1, Lcom/youku/player/module/VideoUrlInfo;->playType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 3451
    if-ne p1, v5, :cond_6

    .line 3452
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mDetailActivity:Lcom/tudou/ui/activity/DetailActivity;

    new-instance v1, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$42;

    invoke-direct {v1, p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$42;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)V

    invoke-virtual {v0, v1}, Lcom/tudou/ui/activity/DetailActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 3494
    :goto_1
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->setFirstUnloaded()V

    .line 3495
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->release()V

    .line 3496
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->finishActivity()V

    goto :goto_0

    .line 3459
    :cond_6
    if-ne p1, v6, :cond_8

    .line 3460
    sget-boolean v0, Lcom/tudou/android/Youku;->isHighEnd:Z

    if-nez v0, :cond_7

    .line 3461
    const-string v0, "\u62b1\u6b49\uff0c\u8be5\u89c6\u9891\u683c\u5f0f\u6682\u4e0d\u80fd\u5728\u60a8\u624b\u673a\u4e0a\u64ad\u653e\uff0c\u60a8\u53ef\u4ee5\u70b9\u51fb\u8fdb\u5165\u571f\u8c46\u7f51\u5c1d\u8bd5\u89c2\u770b"

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    goto :goto_1

    .line 3463
    :cond_7
    const-string v0, "\u672c\u5730\u6587\u4ef6\u635f\u574f\u55bd"

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    goto :goto_1

    .line 3470
    :cond_8
    const/16 v0, 0x3ef

    if-ne p1, v0, :cond_9

    .line 3471
    const-string v0, "\u64ad\u653e\u5668\u5185\u90e8\u51fa\u9519\u5566"

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    .line 3472
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->finishActivity()V

    goto :goto_1

    .line 3473
    :cond_9
    const/16 v0, 0x3f0

    if-ne p1, v0, :cond_a

    .line 3474
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mDetailActivity:Lcom/tudou/ui/activity/DetailActivity;

    new-instance v1, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$43;

    invoke-direct {v1, p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$43;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)V

    invoke-virtual {v0, v1}, Lcom/tudou/ui/activity/DetailActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 3482
    :cond_a
    if-ne p1, v7, :cond_b

    .line 3483
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mDetailActivity:Lcom/tudou/ui/activity/DetailActivity;

    new-instance v1, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$44;

    invoke-direct {v1, p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$44;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)V

    invoke-virtual {v0, v1}, Lcom/tudou/ui/activity/DetailActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 3492
    :cond_b
    const-string v0, "\u672c\u5730\u6587\u4ef6\u635f\u574f\u55bd"

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    goto :goto_1

    .line 3499
    :cond_c
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v0, :cond_d

    const-string v0, "net"

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v1, v1, Lcom/youku/player/module/VideoUrlInfo;->playType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 3502
    if-ne p1, v5, :cond_e

    .line 3503
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 3504
    const-string v0, "\u7f51\u7edc\u4e0d\u7a33\u5b9a\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5 "

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    .line 3533
    :cond_d
    :goto_2
    invoke-direct {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->showAlert()V

    goto/16 :goto_0

    .line 3505
    :cond_e
    if-ne p1, v6, :cond_10

    .line 3506
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v0

    if-eqz v0, :cond_d

    sget-boolean v0, Lcom/tudou/android/Youku;->isHighEnd:Z

    if-eqz v0, :cond_d

    .line 3507
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v0, v0, Lcom/youku/player/module/VideoUrlInfo;->cachePath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 3509
    const-string v0, "\u672c\u5730\u6587\u4ef6\u635f\u574f\u55bd"

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    goto :goto_2

    .line 3511
    :cond_f
    const-string v0, "\u7f51\u7edc\u4e0d\u7a33\u5b9a\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5 "

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    goto :goto_2

    .line 3515
    :cond_10
    const/16 v0, 0x7d4

    if-ne p1, v0, :cond_12

    .line 3516
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 3517
    const-string v0, "\u7f51\u7edc\u4e0d\u7a33\u5b9a\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5 "

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    goto :goto_2

    .line 3519
    :cond_11
    const-string v0, "\u5f53\u524d\u65e0\u7f51\u7edc\u8fde\u63a5\uff0c\u8bf7\u68c0\u67e5\u60a8\u7684\u7f51\u7edc"

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    goto :goto_2

    .line 3520
    :cond_12
    const/16 v0, 0x3ea

    if-ne p1, v0, :cond_13

    .line 3521
    const-string v0, "\u64ad\u653e\u5668\u5185\u90e8\u51fa\u9519\u5566"

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    goto :goto_2

    .line 3522
    :cond_13
    sget-boolean v0, Lcom/tudou/android/Youku;->isHighEnd:Z

    if-nez v0, :cond_d

    .line 3524
    if-ne p1, v3, :cond_d

    .line 3525
    const v0, 0x7f0d02eb

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(I)V

    goto :goto_2
.end method

.method public onFavor()V
    .locals 1

    .prologue
    .line 2464
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->userInterAction:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->onFavor()V

    .line 2465
    return-void
.end method

.method protected onFinishInflate()V
    .locals 9

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/16 v8, 0x8

    .line 750
    sget-object v2, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->TAG:Ljava/lang/String;

    const-string v5, "onFinishInflate"

    invoke-static {v2, v5}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 751
    invoke-super {p0}, Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;->onFinishInflate()V

    .line 752
    const v2, 0x7f0c0bcf

    invoke-virtual {p0, v2}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mNoRightHint:Landroid/widget/TextView;

    .line 753
    new-instance v2, Landroid/view/GestureDetector;

    iget-object v5, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mDetailActivity:Lcom/tudou/ui/activity/DetailActivity;

    new-instance v6, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$FullScreenGestureListener;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$FullScreenGestureListener;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$1;)V

    invoke-direct {v2, v5, v6}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mGestureDetector:Landroid/view/GestureDetector;

    .line 754
    const v2, 0x7f0c0b8a

    invoke-virtual {p0, v2}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;

    iput-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mHotseat:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;

    .line 755
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mHotseat:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;

    new-instance v5, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$8;

    invoke-direct {v5, p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$8;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)V

    invoke-virtual {v2, v5}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->setCallbacks(Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat$Callbacks;)V

    .line 922
    const v2, 0x7f0c068e

    invoke-virtual {p0, v2}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mBackgroundForMusic:Landroid/view/View;

    .line 923
    const v2, 0x7f0c0b2c

    invoke-virtual {p0, v2}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mControllerTop:Landroid/view/View;

    .line 924
    const v2, 0x7f0c0b39

    invoke-virtual {p0, v2}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mControllerBottom:Landroid/view/View;

    .line 926
    const v2, 0x7f0c0693

    invoke-virtual {p0, v2}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->errorPage:Landroid/view/View;

    .line 927
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->errorPage:Landroid/view/View;

    const v5, 0x7f0c042d

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->retry:Landroid/view/View;

    .line 928
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->errorPage:Landroid/view/View;

    new-instance v5, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$9;

    invoke-direct {v5, p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$9;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 934
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->retry:Landroid/view/View;

    new-instance v5, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$10;

    invoke-direct {v5, p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$10;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1003
    const v2, 0x7f0c0bc6

    invoke-virtual {p0, v2}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel;

    iput-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mRightPanel:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel;

    .line 1006
    const v2, 0x7f0c0bcd

    invoke-virtual {p0, v2}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    iput-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->gestureGuideView:Landroid/view/ViewStub;

    .line 1008
    const v2, 0x7f0c0bc2

    invoke-virtual {p0, v2}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    iput-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mStubVideoGoodsNotice:Landroid/view/ViewStub;

    .line 1009
    const v2, 0x7f0c0bc5

    invoke-virtual {p0, v2}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    iput-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mStubVideoHdNotice:Landroid/view/ViewStub;

    .line 1010
    const v2, 0x7f0c0bd1

    invoke-virtual {p0, v2}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    iput-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mStubScreenshotShare:Landroid/view/ViewStub;

    .line 1012
    const v2, 0x7f0c0bbf

    invoke-virtual {p0, v2}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/youku/phone/detail/plugin/fullscreen/VideoNoticeTopView;

    iput-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mVideoNoticeTopView:Lcom/youku/phone/detail/plugin/fullscreen/VideoNoticeTopView;

    .line 1013
    const v2, 0x7f0c0bc0

    invoke-virtual {p0, v2}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/youku/phone/detail/plugin/fullscreen/VideoNoticeBottomView;

    iput-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mVideoNoticeBottomView:Lcom/youku/phone/detail/plugin/fullscreen/VideoNoticeBottomView;

    .line 1015
    const v2, 0x7f0c0b5a

    invoke-virtual {p0, v2}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->plugin_full_pay_layout:Landroid/view/View;

    .line 1016
    const v2, 0x7f0c0325

    invoke-virtual {p0, v2}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->test_play_layout:Landroid/view/View;

    .line 1017
    const v2, 0x7f0c0326

    invoke-virtual {p0, v2}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->vip_buy_tv1:Landroid/widget/TextView;

    .line 1018
    const v2, 0x7f0c0327

    invoke-virtual {p0, v2}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->vip_buy_tv2:Landroid/widget/TextView;

    .line 1019
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->vip_buy_tv2:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/text/TextPaint;->setFlags(I)V

    .line 1022
    const v2, 0x7f0c0b6a

    invoke-virtual {p0, v2}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/youku/widget/AlwaysMarqueeTextView;

    iput-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->title:Lcom/youku/widget/AlwaysMarqueeTextView;

    .line 1023
    const v2, 0x7f0c0b6e

    invoke-virtual {p0, v2}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mBtnPlayOrPause:Landroid/view/View;

    .line 1024
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mBtnPlayOrPause:Landroid/view/View;

    new-instance v5, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$11;

    invoke-direct {v5, p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$11;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1049
    const v2, 0x7f0c0b69

    invoke-virtual {p0, v2}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mBtnBack:Landroid/view/View;

    .line 1050
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mBtnBack:Landroid/view/View;

    iget-object v5, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mBtnBackClickLis:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1053
    const v2, 0x7f0c0b77

    invoke-virtual {p0, v2}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mBtnSmall:Landroid/view/View;

    .line 1054
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mBtnSmall:Landroid/view/View;

    iget-object v5, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mBtnSmallClickLis:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1057
    const v2, 0x7f0c0b76

    invoke-virtual {p0, v2}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mBtnScreenLock:Landroid/widget/ImageView;

    .line 1058
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mBtnScreenLock:Landroid/widget/ImageView;

    new-instance v5, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$12;

    invoke-direct {v5, p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$12;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)V

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1084
    const v2, 0x7f0c0b35

    invoke-virtual {p0, v2}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->playCenterTime:Landroid/widget/TextView;

    .line 1085
    const v2, 0x7f0c0b37

    invoke-virtual {p0, v2}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->settingBright:Landroid/view/View;

    .line 1086
    const v2, 0x7f0c0b38

    invoke-virtual {p0, v2}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->settingVolume:Landroid/view/View;

    .line 1088
    const v2, 0x7f0c0b70

    invoke-virtual {p0, v2}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mTextCurrentPosition:Landroid/widget/TextView;

    .line 1089
    const v2, 0x7f0c0b71

    invoke-virtual {p0, v2}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mTextDuration:Landroid/widget/TextView;

    .line 1091
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mControllerTop:Landroid/view/View;

    const v5, 0x7f0c0b61

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mStateWifi:Landroid/widget/ImageView;

    .line 1092
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mControllerTop:Landroid/view/View;

    const v5, 0x7f0c0b5f

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mStateTime:Landroid/widget/TextView;

    .line 1093
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mControllerTop:Landroid/view/View;

    const v5, 0x7f0c0b60

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/youku/phone/detail/plugin/fullscreen/BatteryView;

    iput-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->battery:Lcom/youku/phone/detail/plugin/fullscreen/BatteryView;

    .line 1096
    const v2, 0x7f0c0b64

    invoke-virtual {p0, v2}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mBtnPlaylist:Landroid/view/View;

    .line 1097
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mBtnPlaylist:Landroid/view/View;

    new-instance v5, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$13;

    invoke-direct {v5, p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$13;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1121
    const v2, 0x7f0c0b6f

    invoke-virtual {p0, v2}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mBtnNext:Landroid/view/View;

    .line 1122
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mBtnNext:Landroid/view/View;

    iget-object v5, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mBtnNextClickLis:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1124
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mControllerTop:Landroid/view/View;

    const v5, 0x7f0c0b62

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mBtnMore:Landroid/view/View;

    .line 1125
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mBtnMore:Landroid/view/View;

    new-instance v5, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$14;

    invoke-direct {v5, p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$14;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1137
    const v2, 0x7f0c0b67

    invoke-virtual {p0, v2}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mDeviderUPlus:Landroid/view/View;

    .line 1138
    const v2, 0x7f0c0b68

    invoke-virtual {p0, v2}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/tudou/detail/widget/SwitchButton;

    iput-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mBtnUPlus:Lcom/tudou/detail/widget/SwitchButton;

    .line 1139
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mBtnUPlus:Lcom/tudou/detail/widget/SwitchButton;

    const v5, 0x7f0206a9

    invoke-virtual {v2, v5}, Lcom/tudou/detail/widget/SwitchButton;->setDrawableNormal(I)V

    .line 1140
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mBtnUPlus:Lcom/tudou/detail/widget/SwitchButton;

    const v5, 0x7f0206a8

    invoke-virtual {v2, v5}, Lcom/tudou/detail/widget/SwitchButton;->setDrawableAtte(I)V

    .line 1141
    iget-object v5, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mBtnUPlus:Lcom/tudou/detail/widget/SwitchButton;

    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v6, "detail.player.u.plus.state"

    const/4 v7, 0x2

    invoke-static {v2, v6, v7}, Lcom/tudou/detail/DetailSettings$DetailProp;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_1

    move v2, v3

    :goto_0
    invoke-virtual {v5, v2}, Lcom/tudou/detail/widget/SwitchButton;->setChecked(Z)V

    .line 1142
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mBtnUPlus:Lcom/tudou/detail/widget/SwitchButton;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Lcom/tudou/detail/widget/SwitchButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1143
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "detail.player.u.plus.enable"

    invoke-static {v2, v3}, Lcom/tudou/detail/DetailSettings$DetailProp;->getBoolean(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 1144
    .local v0, "tUPlusEnable":Z
    if-eqz v0, :cond_2

    .line 1145
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mDeviderUPlus:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1146
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mBtnUPlus:Lcom/tudou/detail/widget/SwitchButton;

    invoke-virtual {v2, v4}, Lcom/tudou/detail/widget/SwitchButton;->setVisibility(I)V

    .line 1153
    :goto_1
    const v2, 0x7f0c0b66

    invoke-virtual {p0, v2}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mBtnQuality:Landroid/view/View;

    .line 1154
    const v2, 0x7f0c0b65

    invoke-virtual {p0, v2}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mDividerQuality:Landroid/view/View;

    .line 1155
    const v2, 0x7f0c0b47

    invoke-virtual {p0, v2}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mCurrentQualityText:Landroid/widget/TextView;

    .line 1156
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mBtnQuality:Landroid/view/View;

    new-instance v3, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$15;

    invoke-direct {v3, p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$15;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1170
    sget-boolean v2, Lcom/tudou/android/Youku;->isHighEnd:Z

    if-nez v2, :cond_0

    .line 1171
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mBtnQuality:Landroid/view/View;

    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1172
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mDividerQuality:Landroid/view/View;

    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1175
    :cond_0
    const v2, 0x7f0c0b73

    invoke-virtual {p0, v2}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mBtnDanmuSwitch:Landroid/view/View;

    .line 1176
    const v2, 0x7f0c0b72

    invoke-virtual {p0, v2}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mBtnSendDanmu:Landroid/view/View;

    .line 1177
    const v2, 0x7f0c0b75

    invoke-virtual {p0, v2}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->danmu_animation:Landroid/view/View;

    .line 1178
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mBtnDanmuSwitch:Landroid/view/View;

    new-instance v3, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$16;

    invoke-direct {v3, p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$16;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1217
    sget-object v2, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "initView mDetailActivity.isDanmakuClosed() = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mDetailActivity:Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v5}, Lcom/tudou/ui/activity/DetailActivity;->isDanmakuClosed()Z

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1218
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mDetailActivity:Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v2}, Lcom/tudou/ui/activity/DetailActivity;->isDanmakuClosed()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1219
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mBtnDanmuSwitch:Landroid/view/View;

    const v3, 0x7f020162

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1220
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mBtnSendDanmu:Landroid/view/View;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1225
    :goto_2
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mBtnSendDanmu:Landroid/view/View;

    new-instance v3, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$17;

    invoke-direct {v3, p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$17;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1240
    invoke-direct {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->showDanmuanimation()V

    .line 1242
    const v2, 0x7f0c0b78

    invoke-virtual {p0, v2}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SeekBar;

    iput-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->videoBar:Landroid/widget/SeekBar;

    .line 1243
    const v2, 0x7f0c0b3e

    invoke-virtual {p0, v2}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->videoTestBarLayout:Landroid/widget/RelativeLayout;

    .line 1244
    const v2, 0x7f0c0b3f

    invoke-virtual {p0, v2}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->testImageViewLine:Landroid/widget/ImageView;

    .line 1246
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->videoBar:Landroid/widget/SeekBar;

    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mDetailActivity:Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v3}, Lcom/tudou/ui/activity/DetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0206d9

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 1247
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->videoBar:Landroid/widget/SeekBar;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v3}, Lcom/youku/util/Util;->dip2px(F)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setThumbOffset(I)V

    .line 1248
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->videoBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    .line 1249
    .local v1, "vto":Landroid/view/ViewTreeObserver;
    new-instance v2, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$18;

    invoke-direct {v2, p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$18;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1261
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->videoBar:Landroid/widget/SeekBar;

    new-instance v3, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$19;

    invoke-direct {v3, p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$19;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)V

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 1300
    const v2, 0x7f0c0bc9

    invoke-virtual {p0, v2}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->loading:Landroid/view/View;

    .line 1301
    const v2, 0x7f0c0bcb

    invoke-virtual {p0, v2}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->loadingtips:Landroid/widget/TextView;

    .line 1302
    const v2, 0x7f0c0bcc

    invoke-virtual {p0, v2}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->loadingname:Landroid/widget/TextView;

    .line 1303
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->loading:Landroid/view/View;

    const v3, 0x7f0c09d5

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/youku/widget/Loading;

    iput-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->loadingview:Lcom/youku/widget/Loading;

    .line 1304
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->loadingview:Lcom/youku/widget/Loading;

    const v3, 0x7f02066f

    invoke-virtual {v2, v3}, Lcom/youku/widget/Loading;->setBackgroundResource(I)V

    .line 1306
    const v2, 0x7f0c0b90

    invoke-virtual {p0, v2}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mHint3GOnLineLayout:Landroid/view/View;

    .line 1307
    const v2, 0x7f0c0b91

    invoke-virtual {p0, v2}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mBtnPlay3GOnLine:Landroid/widget/ImageButton;

    .line 1308
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mBtnPlay3GOnLine:Landroid/widget/ImageButton;

    new-instance v3, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$20;

    invoke-direct {v3, p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$20;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1337
    const v2, 0x7f0c0bc3

    invoke-virtual {p0, v2}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mRegisterNum:Landroid/widget/TextView;

    .line 1338
    const v2, 0x7f0c0bc4

    invoke-virtual {p0, v2}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mLicenseNum:Landroid/widget/TextView;

    .line 1340
    const v2, 0x7f0c0bc1

    invoke-virtual {p0, v2}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;

    iput-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mWaterMark:Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;

    .line 1343
    new-instance v2, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenBright;

    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mDetailActivity:Lcom/tudou/ui/activity/DetailActivity;

    invoke-direct {v2, p0, v3}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenBright;-><init>(Landroid/view/View;Landroid/app/Activity;)V

    iput-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->bright:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenBright;

    .line 1344
    new-instance v2, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenVolume;

    const/16 v3, 0xf

    invoke-direct {v2, p0, v3}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenVolume;-><init>(Landroid/view/View;I)V

    iput-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->volume:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenVolume;

    .line 1346
    const v2, 0x7f0c0b36

    invoke-virtual {p0, v2}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->playGestureCenterTime:Landroid/widget/TextView;

    .line 1347
    const v2, 0x7f0c0b6c

    invoke-virtual {p0, v2}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->playGestureCenterTime_line:Landroid/widget/TextView;

    .line 1348
    const v2, 0x7f0c0b6b

    invoke-virtual {p0, v2}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->play_controller_center_time_layout:Landroid/view/View;

    .line 1349
    const v2, 0x7f0c0b6d

    invoke-virtual {p0, v2}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->pos_line:Landroid/view/View;

    .line 1351
    const v2, 0x7f0c0bd0

    invoke-virtual {p0, v2}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    iput-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mStubVideoRecord:Landroid/view/ViewStub;

    .line 1352
    const v2, 0x7f0c0bd2

    invoke-virtual {p0, v2}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordUpdateView;

    iput-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mVideoRecordUpdateView:Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordUpdateView;

    .line 1354
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->initVolumeAndBright()V

    .line 1355
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mDetailActivity:Lcom/tudou/ui/activity/DetailActivity;

    invoke-static {v2}, Lcom/youku/player/goplay/Profile;->getVideoQuality(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->changeVideoQuality(I)V

    .line 1356
    new-instance v2, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUserAction;

    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, v3, p0}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUserAction;-><init>(Landroid/os/Handler;Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)V

    iput-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->userAction:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUserAction;

    .line 1357
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->sp:Landroid/content/SharedPreferences;

    .line 1358
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mDetailActivity:Lcom/tudou/ui/activity/DetailActivity;

    invoke-direct {p0, v2}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->setupmSystemUiHider(Lcom/tudou/ui/activity/DetailActivity;)V

    .line 1359
    return-void

    .end local v0    # "tUPlusEnable":Z
    .end local v1    # "vto":Landroid/view/ViewTreeObserver;
    :cond_1
    move v2, v4

    .line 1141
    goto/16 :goto_0

    .line 1148
    .restart local v0    # "tUPlusEnable":Z
    :cond_2
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mDeviderUPlus:Landroid/view/View;

    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1149
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mBtnUPlus:Lcom/tudou/detail/widget/SwitchButton;

    invoke-virtual {v2, v8}, Lcom/tudou/detail/widget/SwitchButton;->setVisibility(I)V

    goto/16 :goto_1

    .line 1222
    :cond_3
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mBtnDanmuSwitch:Landroid/view/View;

    const v3, 0x7f020167

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1223
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mBtnSendDanmu:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2
.end method

.method public onFullScreen()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3923
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mRightPanel:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel;

    if-eqz v1, :cond_0

    .line 3924
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mRightPanel:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel;

    invoke-virtual {v1, v2}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel;->removeAllFragment(I)V

    .line 3928
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->initVolumeAndBright()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3933
    :goto_0
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mSystemUiHider:Lcom/youku/fullscreen/SystemUiHider;

    if-eqz v1, :cond_1

    .line 3934
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mSystemUiHider:Lcom/youku/fullscreen/SystemUiHider;

    invoke-virtual {v1}, Lcom/youku/fullscreen/SystemUiHider;->setImmersiveMode()V

    .line 3936
    :cond_1
    invoke-direct {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->showControllerAndSystemUI()V

    .line 3938
    iput-boolean v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->stopUserAction:Z

    .line 3940
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->userAction:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUserAction;

    if-eqz v1, :cond_2

    .line 3941
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->userAction:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUserAction;

    invoke-virtual {v1}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUserAction;->userAction()V

    .line 3943
    :cond_2
    invoke-virtual {p0, v2}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->setVisible(Z)V

    .line 3944
    return-void

    .line 3929
    :catch_0
    move-exception v0

    .line 3930
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onHeadsetPlug(ILjava/lang/String;I)V
    .locals 2
    .param p1, "state"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "microphone"    # I

    .prologue
    .line 4585
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mRightPanel:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mRightPanel:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel;->getCurrentState()Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel$PageState;

    move-result-object v0

    sget-object v1, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel$PageState;->MORE:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel$PageState;

    if-ne v0, v1, :cond_0

    .line 4586
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mRightPanel:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel;->onVolumnChange(I)V

    .line 4588
    :cond_0
    return-void
.end method

.method public onLoadedListener()V
    .locals 4

    .prologue
    .line 4087
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->loading:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4088
    iget-boolean v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->firstLoaded:Z

    if-nez v0, :cond_0

    .line 4089
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->firstLoaded:Z

    .line 4091
    :cond_0
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->progressLoading:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenLoading;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenLoading;->hideLoading()V

    .line 4092
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->isloading:Z

    .line 4093
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->progressLoading:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenLoading;

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenLoading;->seekLoadingContainerView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 4094
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mediaPlayer:Lcom/youku/player/BaseMediaPlayer;

    invoke-virtual {v0}, Lcom/youku/player/BaseMediaPlayer;->getTimeOut()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4095
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$50;

    invoke-direct {v1, p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$50;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4106
    :cond_1
    invoke-direct {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->enableController()V

    .line 4107
    return-void
.end method

.method public onLoadingListener()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 4118
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-boolean v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isComplete:Z

    if-eqz v0, :cond_0

    .line 4125
    :goto_0
    return-void

    .line 4120
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->isloading:Z

    .line 4121
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->progressLoading:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenLoading;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenLoading;->showLoading()V

    .line 4122
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->loading:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4123
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->playCenterTime:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4124
    invoke-direct {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->disableController()V

    goto :goto_0
.end method

.method public onMute(Z)V
    .locals 2
    .param p1, "mute"    # Z

    .prologue
    .line 2499
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mRightPanel:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel;->onVolumnChange(I)V

    .line 2500
    return-void
.end method

.method public onNetSpeedChange(I)V
    .locals 0
    .param p1, "speed"    # I

    .prologue
    .line 3266
    return-void
.end method

.method public onNotifyChangeVideoQuality()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 727
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-boolean v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isFullScreen:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-boolean v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isComplete:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/tudou/android/Youku;->isHighEnd:Z

    if-eqz v0, :cond_0

    const-string v0, "local"

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v1, v1, Lcom/youku/player/module/VideoUrlInfo;->playType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Lcom/youku/player/goplay/Profile;->from:I

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mDetailActivity:Lcom/tudou/ui/activity/DetailActivity;

    invoke-static {v0}, Lcom/youku/player/goplay/Profile;->getVideoQuality(Landroid/content/Context;)I

    move-result v0

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v0}, Lcom/youku/player/module/VideoUrlInfo;->getCurrentQuality()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 746
    :cond_0
    :goto_0
    return-void

    .line 739
    :cond_1
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mDetailActivity:Lcom/tudou/ui/activity/DetailActivity;

    new-instance v1, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$7;

    invoke-direct {v1, p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$7;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)V

    invoke-virtual {v0, v1}, Lcom/tudou/ui/activity/DetailActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 2520
    sget-object v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->TAG:Ljava/lang/String;

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2521
    iput-boolean v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->isloading:Z

    .line 2522
    iput-boolean v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->isRealVideoStartForRecord:Z

    .line 2523
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->loading:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2524
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mVideoNoticeBottomView:Lcom/youku/phone/detail/plugin/fullscreen/VideoNoticeBottomView;

    invoke-virtual {v0, v4}, Lcom/youku/phone/detail/plugin/fullscreen/VideoNoticeBottomView;->setVisibility(I)V

    .line 2525
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mVideoNoticeTopView:Lcom/youku/phone/detail/plugin/fullscreen/VideoNoticeTopView;

    invoke-virtual {v0, v4}, Lcom/youku/phone/detail/plugin/fullscreen/VideoNoticeTopView;->setVisibility(I)V

    .line 2526
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mVideoGoodsNotice:Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mVideoGoodsNotice:Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;->isShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2527
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mVideoGoodsNotice:Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;

    invoke-virtual {v0, v3}, Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;->hide(Z)V

    .line 2529
    :cond_0
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mHdNoticeView:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mHdNoticeView:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;->isShow()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2530
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mHdNoticeView:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;

    invoke-virtual {v0, v3}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;->hide(Z)V

    .line 2532
    :cond_1
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mScreenshotShare:Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mScreenshotShare:Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 2533
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mScreenshotShare:Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView;->hide()V

    .line 2536
    :cond_2
    sget-object v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPause isVideoRecordShow() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->isVideoRecordShow()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2537
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mVideoRecordView:Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->isVideoRecordShow()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2538
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mHotseat:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->getItemCount()I

    move-result v0

    if-lez v0, :cond_3

    .line 2539
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mHotseat:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->getBtnExpand()Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;->setVisibility(I)V

    .line 2541
    :cond_3
    sget-object v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPause mVideoRecordView.mIsRecording() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mVideoRecordView:Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;

    iget-boolean v2, v2, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->mIsRecording:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2542
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mVideoRecordView:Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;

    iget-boolean v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->mIsRecording:Z

    if-eqz v0, :cond_4

    .line 2543
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mVideoRecordView:Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->cancelVideoRecord()V

    .line 2545
    :cond_4
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mHotseat:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->getBtnScreenShot()Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;->setVisibility(I)V

    .line 2546
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mVideoRecordView:Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;

    invoke-virtual {v0, v4}, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->setVisibility(I)V

    .line 2547
    iget-boolean v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mNeedRestoreDanmaku:Z

    if-eqz v0, :cond_6

    .line 2548
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v0}, Lcom/youku/player/module/VideoUrlInfo;->isVerticalVideo()Z

    move-result v0

    if-nez v0, :cond_5

    .line 2549
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mDetailActivity:Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v0}, Lcom/tudou/ui/activity/DetailActivity;->openDanmaku()V

    .line 2551
    :cond_5
    iput-boolean v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mNeedRestoreDanmaku:Z

    .line 2553
    :cond_6
    sget-object v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPause isLooping() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->isVideoRecordShow()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2554
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->isLooping()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2555
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->stopLoopVideo()V

    .line 2560
    :cond_7
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mHotseat:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mHotseat:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2561
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mHotseat:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;

    invoke-virtual {v0, v3, v3}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->collapse(ZZ)V

    .line 2564
    :cond_8
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->hideLoading()V

    .line 2565
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->errorPage:Landroid/view/View;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->errorPage:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_9

    .line 2566
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->isRetry:Z

    .line 2570
    :goto_0
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->hidePopWindows()V

    .line 2571
    return-void

    .line 2568
    :cond_9
    iput-boolean v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->isRetry:Z

    goto :goto_0
.end method

.method public onPayVideo(Lcom/youku/player/module/PayInfo;ILjava/lang/String;)V
    .locals 4
    .param p1, "payinfo"    # Lcom/youku/player/module/PayInfo;
    .param p2, "vipError"    # I
    .param p3, "tip"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1682
    sget-object v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPayVideo payinfo = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", vipError = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", tip = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1683
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mVideoRecordView:Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mVideoRecordView:Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 1684
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mVideoRecordView:Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->cancelVideoRecord()V

    .line 1685
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mVideoRecordView:Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->setVisibility(I)V

    .line 1686
    iget-boolean v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mNeedRestoreDanmaku:Z

    if-eqz v0, :cond_1

    .line 1687
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v0}, Lcom/youku/player/module/VideoUrlInfo;->isVerticalVideo()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1688
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mDetailActivity:Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v0}, Lcom/tudou/ui/activity/DetailActivity;->openDanmaku()V

    .line 1690
    :cond_0
    iput-boolean v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mNeedRestoreDanmaku:Z

    .line 1692
    :cond_1
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mHotseat:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->mBtnVideoRecord:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;

    invoke-virtual {v0, v3}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;->setPressed(Z)V

    .line 1694
    :cond_2
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->ph:Lcom/youku/phone/detail/plugin/fullscreen/PopupWindow_Hotpoint_Top;

    if-eqz v0, :cond_3

    .line 1695
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->ph:Lcom/youku/phone/detail/plugin/fullscreen/PopupWindow_Hotpoint_Top;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/PopupWindow_Hotpoint_Top;->dismiss()Z

    .line 1697
    :cond_3
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-boolean v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isFullScreen:Z

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->initPayFragment(Lcom/youku/player/module/PayInfo;ZILjava/lang/String;)V

    .line 1698
    return-void
.end method

.method public onPayinfoShowLoginChange()V
    .locals 1

    .prologue
    .line 1702
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->pluginSmallPayPageFragment:Lcom/youku/phone/detail/plugin/PluginSmallPayPageFragment;

    if-eqz v0, :cond_0

    .line 1703
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->pluginSmallPayPageFragment:Lcom/youku/phone/detail/plugin/PluginSmallPayPageFragment;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/PluginSmallPayPageFragment;->onLoginchange()V

    .line 1705
    :cond_0
    return-void
.end method

.method public onPlayNoRightVideo(Lcom/youku/player/goplay/GoplayException;)V
    .locals 0
    .param p1, "e"    # Lcom/youku/player/goplay/GoplayException;

    .prologue
    .line 3125
    return-void
.end method

.method public onPlayReleateNoRightVideo()V
    .locals 0

    .prologue
    .line 3130
    return-void
.end method

.method public onPluginAdded()V
    .locals 2

    .prologue
    .line 3180
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->showLock()V

    .line 3181
    invoke-direct {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->validPlayPauseIcon()V

    .line 3182
    iget-boolean v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->isRealVideoStart:Z

    if-eqz v0, :cond_1

    .line 3183
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-boolean v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isPause:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3185
    :cond_0
    const-string v0, "test2"

    const-string v1, "onPluginAdded setBackgroundResource 2"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3186
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->progressLoading:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenLoading;

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenLoading;->seekLoadingContainerView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3191
    :cond_1
    invoke-direct {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->initLock()V

    .line 3192
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->videoBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->isPonitViewInited:Z

    if-nez v0, :cond_2

    .line 3193
    invoke-direct {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->setPointsView()V

    .line 3195
    :cond_2
    return-void
.end method

.method public onRealVideoStart()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/16 v4, 0x8

    const/4 v6, 0x1

    .line 3026
    iput-boolean v7, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->hasGotoEnd:Z

    .line 3027
    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->loading:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 3028
    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->loadingtips:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3029
    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->loadingname:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3030
    invoke-direct {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->firstLoadStuff()V

    .line 3032
    sget-object v3, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onRealVideoStart current quality"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v5, v5, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v5}, Lcom/youku/player/module/VideoUrlInfo;->getCurrentQuality()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3033
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "detail.player.u.plus.state"

    const/4 v5, 0x2

    invoke-static {v3, v4, v5}, Lcom/tudou/detail/DetailSettings$DetailProp;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v6, :cond_3

    .line 3034
    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v3}, Lcom/youku/player/plugin/MediaPlayerDelegate;->openEnhanceMode()V

    .line 3038
    :goto_0
    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v3, v3, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v3}, Lcom/youku/player/module/VideoUrlInfo;->getCurrentQuality()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->changeVideoQuality(I)V

    .line 3039
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->setKuWoMVInfo()V

    .line 3041
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "detail.player.u.plus.enable"

    invoke-static {v3, v4}, Lcom/tudou/detail/DetailSettings$DetailProp;->getBoolean(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    .line 3042
    .local v2, "tUPlusEnable":Z
    if-nez v2, :cond_0

    .line 3043
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "detail.cling.u.plus.show"

    invoke-static {v3, v4, v6}, Lcom/tudou/detail/DetailSettings$DetailProp;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    .line 3045
    :cond_0
    const-string v3, "\u89c6\u9891"

    iget-object v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v4, v4, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v4}, Lcom/youku/player/module/VideoUrlInfo;->getMediaType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 3046
    .local v1, "isVideo":Z
    iget-boolean v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->isShowCling:Z

    if-nez v3, :cond_2

    .line 3047
    const-string v3, "hasShownFingerIcon"

    invoke-static {v3}, Lcom/tudou/android/Youku;->getPreferenceBoolean(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 3048
    invoke-direct {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->initGuideView()V

    .line 3074
    :cond_1
    :goto_1
    iput-boolean v6, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->isShowCling:Z

    .line 3076
    :cond_2
    invoke-virtual {p0, v7}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->hideController(Z)V

    .line 3077
    const-string v3, "myb"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v5, v5, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v5}, Lcom/youku/player/module/VideoUrlInfo;->getCurrentQuality()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3078
    new-instance v3, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$41;

    invoke-direct {v3, p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$41;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)V

    invoke-virtual {p0, v3}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->post(Ljava/lang/Runnable;)Z

    .line 3086
    return-void

    .line 3036
    .end local v1    # "isVideo":Z
    .end local v2    # "tUPlusEnable":Z
    :cond_3
    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v3}, Lcom/youku/player/plugin/MediaPlayerDelegate;->closeEnhanceMode()V

    goto :goto_0

    .line 3049
    .restart local v1    # "isVideo":Z
    .restart local v2    # "tUPlusEnable":Z
    :cond_4
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "detail.cling.u.plus.show"

    invoke-static {v3, v4}, Lcom/tudou/detail/DetailSettings$DetailProp;->getBoolean(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    if-eqz v1, :cond_5

    .line 3050
    invoke-direct {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->showController()V

    .line 3051
    iput-boolean v6, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->stopUserAction:Z

    .line 3052
    invoke-direct {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->initClingUPlus()V

    .line 3053
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3054
    .local v0, "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "actiontype"

    const-string v4, "U+show"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3055
    const-string v3, "U+\u5f15\u5bfc\u5c55\u793a"

    const-string v4, "\u64ad\u653e\u5668"

    const-string v5, ""

    invoke-static {v3, v4, v5, v0}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_1

    .line 3056
    .end local v0    # "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_5
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "detail.cling.screenshot.show"

    invoke-static {v3, v4}, Lcom/tudou/detail/DetailSettings$DetailProp;->getBoolean(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    if-eqz v1, :cond_1

    .line 3057
    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mDetailActivity:Lcom/tudou/ui/activity/DetailActivity;

    new-instance v4, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$40;

    invoke-direct {v4, p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$40;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)V

    invoke-virtual {v3, v4}, Lcom/tudou/ui/activity/DetailActivity;->showFirstScreenshotCling(Ljava/lang/Runnable;)V

    .line 3070
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3071
    .restart local v0    # "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "action"

    const-string v4, "shootmeshow"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3072
    const-string v3, "\u622a\u5c4f\u5f15\u5bfc\u5c55\u793a"

    const-string v4, "\u64ad\u653e\u5668"

    const-string v5, ""

    invoke-static {v3, v4, v5, v0}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    goto/16 :goto_1
.end method

.method public onRealVideoStarted()V
    .locals 0

    .prologue
    .line 4136
    return-void
.end method

.method public onRelease()V
    .locals 0

    .prologue
    .line 3298
    return-void
.end method

.method public onReplay()V
    .locals 3

    .prologue
    .line 3307
    iget-boolean v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mIsNeedWaterMark:Z

    if-eqz v1, :cond_0

    .line 3308
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v1, :cond_0

    .line 3309
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-direct {p0, v1}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->calculateWaterMarkRotatePos(Lcom/youku/player/module/VideoUrlInfo;)V

    .line 3310
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mDetailActivity:Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v1}, Lcom/tudou/ui/activity/DetailActivity;->getmVideoDetail()Lcom/youku/vo/NewVideoDetail;

    move-result-object v0

    .line 3311
    .local v0, "tVideoDetail":Lcom/youku/vo/NewVideoDetail;
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mWaterMark:Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;

    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v2, v2, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v1, v0, v2}, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;->setData(Lcom/youku/vo/NewVideoDetail;Lcom/youku/player/module/VideoUrlInfo;)V

    .line 3317
    .end local v0    # "tVideoDetail":Lcom/youku/vo/NewVideoDetail;
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 3388
    return-void
.end method

.method public onSmallScreen()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3895
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mRightPanel:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel;

    if-eqz v0, :cond_0

    .line 3896
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mRightPanel:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel;

    invoke-virtual {v0, v2}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel;->removeAllFragment(I)V

    .line 3898
    :cond_0
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->hidePopWindows()V

    .line 3899
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mScreenshotShare:Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mScreenshotShare:Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 3900
    sget-object v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->TAG:Ljava/lang/String;

    const-string v1, "onSmallScreen dismiss mScreenshotShare"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3901
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mScreenshotShare:Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/ScreenShotShareView;->hide()V

    .line 3902
    invoke-direct {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->playInternal()V

    .line 3904
    :cond_1
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-boolean v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isFullScreen:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mVideoRecordView:Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mVideoRecordView:Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    .line 3905
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mVideoRecordView:Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->setVisibility(I)V

    .line 3906
    iget-boolean v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mNeedRestoreDanmaku:Z

    if-eqz v0, :cond_3

    .line 3907
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v0}, Lcom/youku/player/module/VideoUrlInfo;->isVerticalVideo()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3908
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mDetailActivity:Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v0}, Lcom/tudou/ui/activity/DetailActivity;->openDanmaku()V

    .line 3910
    :cond_2
    iput-boolean v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mNeedRestoreDanmaku:Z

    .line 3912
    :cond_3
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->isLooping()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3913
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->stopLoopVideo()V

    .line 3916
    :cond_4
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mHotseat:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mHotseat:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3917
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mHotseat:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;

    invoke-virtual {v0, v2, v2}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->collapse(ZZ)V

    .line 3919
    :cond_5
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 2514
    return-void
.end method

.method public onSubscribe()V
    .locals 2

    .prologue
    .line 3270
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mWaterMark:Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;->onAttentionChange(Z)V

    .line 3271
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->userInterAction:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->onSubscribe()V

    .line 3272
    return-void
.end method

.method public onSubtitlePrepared()V
    .locals 0

    .prologue
    .line 3373
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2320
    sget-object v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->TAG:Ljava/lang/String;

    const-string v1, "onTouch onTouch"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2321
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    if-nez v0, :cond_0

    .line 2322
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mControllerTop:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    .line 2323
    iput-boolean v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->isShowWindow:Z

    .line 2324
    sget-object v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->TAG:Ljava/lang/String;

    const-string v1, "onTouch hideControllerAndSystemUI"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2330
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    if-ne v3, v0, :cond_2

    .line 2332
    invoke-direct {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->endGesture()V

    .line 2333
    iget-boolean v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->isloading:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-boolean v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isComplete:Z

    if-nez v0, :cond_1

    .line 2334
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->loading:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 2335
    iget-boolean v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->isPayVideoShow:Z

    if-nez v0, :cond_1

    .line 2336
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->progressLoading:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenLoading;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenLoading;->showLoading()V

    .line 2340
    :cond_1
    iput v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->directionalLock:I

    .line 2343
    :cond_2
    const/4 v0, 0x3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    if-ne v0, v1, :cond_3

    .line 2345
    invoke-direct {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->endGesture()V

    .line 2346
    iput v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->directionalLock:I

    .line 2347
    sget-object v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->TAG:Ljava/lang/String;

    const-string v1, "onTouch ACTION_CANCEL"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2349
    :cond_3
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 2327
    :cond_4
    iput-boolean v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->isShowWindow:Z

    goto :goto_0
.end method

.method public onUnFavor()V
    .locals 1

    .prologue
    .line 2471
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->userInterAction:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->onUnFavor()V

    .line 2472
    return-void
.end method

.method public onUnSubscribe()V
    .locals 2

    .prologue
    .line 3276
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->userInterAction:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->onUnSubscribe()V

    .line 3277
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mWaterMark:Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;->onAttentionChange(Z)V

    .line 3278
    return-void
.end method

.method public onUp()V
    .locals 0

    .prologue
    .line 2444
    return-void
.end method

.method public onVideoChange()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2575
    invoke-super {p0}, Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;->onVideoChange()V

    .line 2576
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mRightPanel:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel;

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v1}, Lcom/youku/player/module/VideoUrlInfo;->getVid()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v2, v2, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v2}, Lcom/youku/player/module/VideoUrlInfo;->getShowId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel;->setCurrentVid(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2577
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mRightPanel:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel;

    if-eqz v0, :cond_0

    .line 2578
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mRightPanel:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel;->onVideoChanged()V

    .line 2580
    :cond_0
    iput-boolean v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->isPonitViewInited:Z

    .line 2581
    iput-boolean v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->hasGotoEnd:Z

    .line 2582
    invoke-direct {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->setMusicPlay()V

    .line 2583
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->title:Lcom/youku/widget/AlwaysMarqueeTextView;

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v1}, Lcom/youku/player/module/VideoUrlInfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/youku/widget/AlwaysMarqueeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 2584
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->isableSubbtn()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2585
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->enableSubbtn()V

    .line 2587
    :cond_1
    invoke-direct {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->resetPoints()V

    .line 2588
    return-void
.end method

.method public onVideoInfoGetFail(Z)V
    .locals 0
    .param p1, "needRetry"    # Z

    .prologue
    .line 3152
    invoke-direct {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->showAlert()V

    .line 3153
    return-void
.end method

.method public onVideoInfoGetted()V
    .locals 12

    .prologue
    .line 2719
    invoke-super {p0}, Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;->onVideoInfoGetted()V

    .line 2720
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->doPause()V

    .line 2721
    iget-object v8, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->errorPage:Landroid/view/View;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 2723
    iget-object v8, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v8, v8, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-direct {p0, v8}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->isNeedWaterMark(Lcom/youku/player/module/VideoUrlInfo;)Z

    move-result v8

    iput-boolean v8, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mIsNeedWaterMark:Z

    .line 2725
    iget-object v8, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v8, v8, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v8}, Lcom/youku/player/module/VideoUrlInfo;->getRegisterNum()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v8, v8, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v8}, Lcom/youku/player/module/VideoUrlInfo;->getLicenseNum()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 2726
    :cond_0
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mIsNeedRegisterNumOrLicenseNum:Z

    .line 2727
    iget-object v8, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mRegisterNum:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v9, v9, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v9}, Lcom/youku/player/module/VideoUrlInfo;->getRegisterNum()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2728
    iget-object v8, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mLicenseNum:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v9, v9, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v9}, Lcom/youku/player/module/VideoUrlInfo;->getLicenseNum()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2730
    :cond_1
    iget-boolean v8, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mIsNeedWaterMark:Z

    if-eqz v8, :cond_2

    .line 2731
    iget-object v8, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v8, v8, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-direct {p0, v8}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->calculateWaterMarkRotatePos(Lcom/youku/player/module/VideoUrlInfo;)V

    .line 2732
    iget-object v8, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mDetailActivity:Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v8}, Lcom/tudou/ui/activity/DetailActivity;->getmVideoDetail()Lcom/youku/vo/NewVideoDetail;

    move-result-object v6

    .line 2733
    .local v6, "tVideoDetail":Lcom/youku/vo/NewVideoDetail;
    iget-object v8, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mWaterMark:Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;

    iget-object v9, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v9, v9, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v8, v6, v9}, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;->setData(Lcom/youku/vo/NewVideoDetail;Lcom/youku/player/module/VideoUrlInfo;)V

    .line 2739
    .end local v6    # "tVideoDetail":Lcom/youku/vo/NewVideoDetail;
    :cond_2
    iget-object v8, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v8, v8, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-static {v8}, Lcom/youku/phone/detail/DetailUtil;->isPayVideo(Lcom/youku/player/module/VideoUrlInfo;)Z

    move-result v8

    if-eqz v8, :cond_12

    .line 2740
    iget-object v8, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v7, v8, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    .line 2741
    .local v7, "tVideoUrlInfo":Lcom/youku/player/module/VideoUrlInfo;
    iget-object v3, v7, Lcom/youku/player/module/VideoUrlInfo;->mPayInfo:Lcom/youku/player/module/PayInfo;

    .line 2742
    .local v3, "tPayInfo":Lcom/youku/player/module/PayInfo;
    iget-object v8, v3, Lcom/youku/player/module/PayInfo;->trail:Lcom/youku/player/module/PayInfo$Trial;

    iget-object v8, v8, Lcom/youku/player/module/PayInfo$Trial;->type:Ljava/lang/String;

    if-eqz v8, :cond_f

    const-string v8, "episodes"

    iget-object v9, v3, Lcom/youku/player/module/PayInfo;->trail:Lcom/youku/player/module/PayInfo$Trial;

    iget-object v9, v9, Lcom/youku/player/module/PayInfo$Trial;->type:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 2743
    invoke-virtual {v7}, Lcom/youku/player/module/VideoUrlInfo;->getShow_videoseq()I

    move-result v8

    iget-object v9, v3, Lcom/youku/player/module/PayInfo;->trail:Lcom/youku/player/module/PayInfo$Trial;

    iget v9, v9, Lcom/youku/player/module/PayInfo$Trial;->episodes:I

    if-le v8, v9, :cond_e

    .line 2762
    :goto_0
    iget-object v8, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->vip_buy_tv2:Landroid/widget/TextView;

    new-instance v9, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$35;

    invoke-direct {v9, p0, v3, v7}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$35;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;Lcom/youku/player/module/PayInfo;Lcom/youku/player/module/VideoUrlInfo;)V

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2811
    .end local v3    # "tPayInfo":Lcom/youku/player/module/PayInfo;
    .end local v7    # "tVideoUrlInfo":Lcom/youku/player/module/VideoUrlInfo;
    :goto_1
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->isPayVideoShow:Z

    .line 2812
    iget-object v8, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mBtnPlayOrPause:Landroid/view/View;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/view/View;->setClickable(Z)V

    .line 2813
    iget-object v8, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mBtnPlay3GOnLine:Landroid/widget/ImageButton;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/ImageButton;->setClickable(Z)V

    .line 2815
    iget-object v8, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v8, v8, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v8}, Lcom/youku/player/module/VideoUrlInfo;->getPlayType()Ljava/lang/String;

    move-result-object v4

    .line 2817
    .local v4, "tPlayType":Ljava/lang/String;
    iget-object v8, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->title:Lcom/youku/widget/AlwaysMarqueeTextView;

    iget-object v9, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v9, v9, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v9}, Lcom/youku/player/module/VideoUrlInfo;->getTitle()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/youku/widget/AlwaysMarqueeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 2818
    iget-object v8, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mTextCurrentPosition:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v9, v9, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v9}, Lcom/youku/player/module/VideoUrlInfo;->getProgress()I

    move-result v9

    int-to-long v10, v9

    invoke-static {v10, v11}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUtils;->getFormatTime(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2819
    iget-object v8, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mTextDuration:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v9, v9, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v9}, Lcom/youku/player/module/VideoUrlInfo;->getDurationMills()I

    move-result v9

    int-to-long v10, v9

    invoke-static {v10, v11}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUtils;->getFormatTime(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2820
    iget-object v8, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->videoBar:Landroid/widget/SeekBar;

    iget-object v9, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v9, v9, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v9}, Lcom/youku/player/module/VideoUrlInfo;->getDurationMills()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/SeekBar;->setMax(I)V

    .line 2821
    iget-object v8, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->videoBar:Landroid/widget/SeekBar;

    iget-object v9, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v9, v9, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v9}, Lcom/youku/player/module/VideoUrlInfo;->getProgress()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 2823
    iget-object v8, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->loadingname:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v9, v9, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v9}, Lcom/youku/player/module/VideoUrlInfo;->getTitle()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2824
    iget-object v8, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->loading:Landroid/view/View;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 2825
    iget-object v8, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->loadingtips:Landroid/widget/TextView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2826
    iget-object v8, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->loadingname:Landroid/widget/TextView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2827
    iget-object v8, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->progressLoading:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenLoading;

    iget-object v9, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v9, v9, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v9}, Lcom/youku/player/module/VideoUrlInfo;->getTitle()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenLoading;->setTitle(Ljava/lang/String;)V

    .line 2829
    iget-object v8, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mHotseat:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;

    iget-object v9, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->hotPoints:Ljava/util/ArrayList;

    invoke-virtual {v8, v9}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->setPoint(Ljava/util/ArrayList;)V

    .line 2831
    const-string v8, "local"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v8

    if-eqz v8, :cond_4

    :cond_3
    iget-object v8, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v8, v8, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-boolean v8, v8, Lcom/youku/player/module/VideoUrlInfo;->isExternalVideo:Z

    if-nez v8, :cond_4

    sget v8, Lcom/youku/player/goplay/Profile;->from:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_13

    .line 2832
    :cond_4
    iget-object v8, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mBtnPlaylist:Landroid/view/View;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setClickable(Z)V

    .line 2833
    iget-object v8, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mBtnPlaylist:Landroid/view/View;

    const/high16 v9, 0x3f000000    # 0.5f

    invoke-virtual {v8, v9}, Landroid/view/View;->setAlpha(F)V

    .line 2839
    :goto_2
    sget-object v8, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onVideoInfogetted isCached = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v10, v10, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v10}, Lcom/youku/player/module/VideoUrlInfo;->isCached()Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " tPlayType = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2840
    iget-object v8, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v8, v8, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v8, v8, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v8}, Lcom/youku/player/module/VideoUrlInfo;->isVerticalVideo()Z

    move-result v8

    if-nez v8, :cond_6

    .line 2841
    iget-object v8, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v8, v8, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v8}, Lcom/youku/player/module/VideoUrlInfo;->isCached()Z

    move-result v8

    if-nez v8, :cond_5

    const-string v8, "\u89c6\u9891"

    iget-object v9, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v9, v9, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v9}, Lcom/youku/player/module/VideoUrlInfo;->getMediaType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 2842
    :cond_5
    iget-object v8, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v8, v8, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v8, v8, Lcom/youku/player/module/VideoUrlInfo;->savePath:Ljava/lang/String;

    invoke-static {v8}, Lcom/tudou/service/download/DownloadUtils;->hasDanmu(Ljava/lang/String;)Z

    move-result v1

    .line 2843
    .local v1, "tHasDanmuFile":Z
    sget-object v8, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onVideoInfogetted tHasDanmuFile = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2844
    iget-object v8, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v8, v8, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v8}, Lcom/youku/player/module/VideoUrlInfo;->isCached()Z

    move-result v8

    if-eqz v8, :cond_16

    if-eqz v1, :cond_16

    const-string v8, "\u89c6\u9891"

    iget-object v9, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v9, v9, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v9}, Lcom/youku/player/module/VideoUrlInfo;->getMediaType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_16

    .line 2845
    iget-object v8, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mBtnDanmuSwitch:Landroid/view/View;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 2846
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->getContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "detail.current.danmu.state"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Lcom/tudou/detail/DetailSettings$DetailProp;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_14

    const/4 v0, 0x1

    .line 2847
    .local v0, "isDanmuOpen":Z
    :goto_3
    if-eqz v0, :cond_15

    .line 2848
    iget-object v8, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mDetailActivity:Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v8}, Lcom/tudou/ui/activity/DetailActivity;->openDanmaku()V

    .line 2849
    iget-object v8, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mBtnDanmuSwitch:Landroid/view/View;

    const v9, 0x7f020167

    invoke-virtual {v8, v9}, Landroid/view/View;->setBackgroundResource(I)V

    .line 2857
    .end local v0    # "isDanmuOpen":Z
    :goto_4
    iget-object v8, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mBtnSendDanmu:Landroid/view/View;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 2860
    .end local v1    # "tHasDanmuFile":Z
    :cond_6
    const-string v8, "local"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    sget v8, Lcom/youku/player/goplay/Profile;->from:I

    const/4 v9, 0x2

    if-eq v8, v9, :cond_7

    iget-object v8, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v8, v8, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v8}, Lcom/youku/player/module/VideoUrlInfo;->isCached()Z

    move-result v8

    if-eqz v8, :cond_17

    .line 2861
    :cond_7
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->isFromLocal:Z

    .line 2862
    iget-object v8, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mBtnQuality:Landroid/view/View;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 2863
    iget-object v8, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mDividerQuality:Landroid/view/View;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 2873
    :goto_5
    const-string v8, "local"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8

    sget v8, Lcom/youku/player/goplay/Profile;->from:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_1a

    .line 2874
    :cond_8
    iget-object v8, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->userInterAction:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;

    invoke-virtual {v8}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->hide()V

    .line 2875
    iget-object v8, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mBtnSmall:Landroid/view/View;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 2876
    const-string v8, "\u89c6\u9891"

    iget-object v9, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v9, v9, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v9}, Lcom/youku/player/module/VideoUrlInfo;->getMediaType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_19

    .line 2877
    iget-object v8, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mHotseat:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->showScreenshotItem(Z)V

    .line 2890
    :goto_6
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->getContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "detail.player.u.plus.enable"

    invoke-static {v8, v9}, Lcom/tudou/detail/DetailSettings$DetailProp;->getBoolean(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    .line 2891
    .local v5, "tUPlusEnable":Z
    sget-object v8, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onVideoInfogetted mediaType = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v10, v10, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v10}, Lcom/youku/player/module/VideoUrlInfo;->getMediaType()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " tUPlusEnable = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2892
    const-string v8, "\u89c6\u9891"

    iget-object v9, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v9, v9, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v9}, Lcom/youku/player/module/VideoUrlInfo;->getMediaType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1c

    if-eqz v5, :cond_1c

    .line 2893
    iget-object v8, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mBtnUPlus:Lcom/tudou/detail/widget/SwitchButton;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/tudou/detail/widget/SwitchButton;->setVisibility(I)V

    .line 2894
    iget-object v8, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mDeviderUPlus:Landroid/view/View;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 2901
    :goto_7
    const-string v8, "local"

    if-ne v4, v8, :cond_1d

    .line 2902
    iget-object v8, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->userInterAction:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;

    invoke-virtual {v8}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->disableDownloadIcon()V

    .line 2940
    :cond_9
    :goto_8
    iget-object v8, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v8, v8, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v8}, Lcom/youku/player/module/VideoUrlInfo;->isCached()Z

    move-result v8

    if-nez v8, :cond_a

    invoke-static {}, Lcom/tudou/service/download/DownloadManager;->getInstance()Lcom/tudou/service/download/DownloadManager;

    move-result-object v8

    iget-object v9, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v9, v9, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v9}, Lcom/youku/player/module/VideoUrlInfo;->getVid()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/tudou/service/download/DownloadManager;->isDownloadCreating(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 2941
    :cond_a
    iget-object v8, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->userInterAction:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;

    invoke-virtual {v8}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->disableDownloadIcon()V

    .line 2944
    :cond_b
    invoke-direct {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->setupDefinitionRadioBtn()V

    .line 2945
    iget-object v8, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mPopupQuality:Landroid/widget/PopupWindow;

    if-eqz v8, :cond_c

    .line 2946
    invoke-direct {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->videoQualitySetting()V

    .line 2949
    :cond_c
    iget-object v8, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mDetailActivity:Lcom/tudou/ui/activity/DetailActivity;

    iget-boolean v8, v8, Lcom/tudou/ui/activity/DetailActivity;->SETTING_ALLOW_PLAY_ON_3G:Z

    if-nez v8, :cond_d

    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v8

    if-eqz v8, :cond_d

    invoke-static {}, Lcom/youku/util/Util;->isWifi()Z

    move-result v8

    if-nez v8, :cond_d

    const-string v8, "allowONline3G"

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/youku/player/util/PlayerPreference;->getPreferenceBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-nez v8, :cond_d

    const-string v8, "net"

    iget-object v9, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v9, v9, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v9}, Lcom/youku/player/module/VideoUrlInfo;->getPlayType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 2950
    iget-object v8, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->progressLoading:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenLoading;

    invoke-virtual {v8}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenLoading;->hideLoading()V

    .line 2951
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->isloading:Z

    .line 2952
    iget-object v8, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->loading:Landroid/view/View;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 2953
    iget-object v8, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mHint3GOnLineLayout:Landroid/view/View;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 2954
    invoke-direct {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->showController()V

    .line 2956
    :cond_d
    return-void

    .line 2746
    .end local v4    # "tPlayType":Ljava/lang/String;
    .end local v5    # "tUPlusEnable":Z
    .restart local v3    # "tPayInfo":Lcom/youku/player/module/PayInfo;
    .restart local v7    # "tVideoUrlInfo":Lcom/youku/player/module/VideoUrlInfo;
    :cond_e
    iget-object v8, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->vip_buy_tv1:Landroid/widget/TextView;

    iget-object v9, v3, Lcom/youku/player/module/PayInfo;->trail:Lcom/youku/player/module/PayInfo$Trial;

    iget-object v9, v9, Lcom/youku/player/module/PayInfo$Trial;->tip:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2747
    iget-object v8, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->vip_buy_tv2:Landroid/widget/TextView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2748
    iget-object v8, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->test_play_layout:Landroid/view/View;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 2750
    :cond_f
    const-string v8, "time"

    iget-object v9, v3, Lcom/youku/player/module/PayInfo;->trail:Lcom/youku/player/module/PayInfo$Trial;

    iget-object v9, v9, Lcom/youku/player/module/PayInfo$Trial;->type:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_11

    .line 2751
    invoke-virtual {v3}, Lcom/youku/player/module/PayInfo;->supportMon()Z

    move-result v8

    if-eqz v8, :cond_10

    .line 2752
    iget-object v8, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->vip_buy_tv1:Landroid/widget/TextView;

    const-string v9, "\u672c\u7247\u4e3a\u4f1a\u5458\u89c6\u9891\uff0c\u89c2\u770b\u5b8c\u6574\u7248\u8bf7 "

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2753
    iget-object v8, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->vip_buy_tv2:Landroid/widget/TextView;

    const-string v9, "\u5f00\u901a\u4f1a\u5458"

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 2755
    :cond_10
    iget-object v8, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->vip_buy_tv1:Landroid/widget/TextView;

    const-string v9, "\u672c\u7247\u4e3a\u4ed8\u8d39\u89c6\u9891\uff0c\u89c2\u770b\u5b8c\u6574\u7248\u8bf7 "

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2756
    iget-object v8, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->vip_buy_tv2:Landroid/widget/TextView;

    const-string v9, "\u8d2d\u4e70\u5f71\u7247"

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 2759
    :cond_11
    iget-object v8, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mDetailActivity:Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v8}, Lcom/tudou/ui/activity/DetailActivity;->onPayClick()V

    goto/16 :goto_0

    .line 2808
    .end local v3    # "tPayInfo":Lcom/youku/player/module/PayInfo;
    .end local v7    # "tVideoUrlInfo":Lcom/youku/player/module/VideoUrlInfo;
    :cond_12
    iget-object v8, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->test_play_layout:Landroid/view/View;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 2835
    .restart local v4    # "tPlayType":Ljava/lang/String;
    :cond_13
    iget-object v8, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mBtnPlaylist:Landroid/view/View;

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-virtual {v8, v9}, Landroid/view/View;->setAlpha(F)V

    .line 2836
    iget-object v8, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mBtnPlaylist:Landroid/view/View;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/view/View;->setClickable(Z)V

    goto/16 :goto_2

    .line 2846
    .restart local v1    # "tHasDanmuFile":Z
    :cond_14
    const/4 v0, 0x0

    goto/16 :goto_3

    .line 2851
    .restart local v0    # "isDanmuOpen":Z
    :cond_15
    iget-object v8, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mDetailActivity:Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v8}, Lcom/tudou/ui/activity/DetailActivity;->closeDanmaku()V

    .line 2852
    iget-object v8, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mBtnDanmuSwitch:Landroid/view/View;

    const v9, 0x7f020162

    invoke-virtual {v8, v9}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_4

    .line 2855
    .end local v0    # "isDanmuOpen":Z
    :cond_16
    iget-object v8, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mBtnDanmuSwitch:Landroid/view/View;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_4

    .line 2865
    .end local v1    # "tHasDanmuFile":Z
    :cond_17
    sget-boolean v8, Lcom/tudou/android/Youku;->isHighEnd:Z

    if-eqz v8, :cond_18

    .line 2866
    iget-object v8, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mBtnQuality:Landroid/view/View;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 2867
    iget-object v8, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mDividerQuality:Landroid/view/View;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_5

    .line 2869
    :cond_18
    iget-object v8, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mBtnQuality:Landroid/view/View;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 2870
    iget-object v8, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mDividerQuality:Landroid/view/View;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_5

    .line 2879
    :cond_19
    iget-object v8, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mHotseat:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->showScreenshotItem(Z)V

    .line 2880
    iget-object v8, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mHotseat:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;

    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v9

    invoke-virtual {v8, v9}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->showVideoRecordItem(Z)V

    goto/16 :goto_6

    .line 2883
    :cond_1a
    iget-object v8, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mBtnSmall:Landroid/view/View;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 2884
    const-string v8, "\u89c6\u9891"

    iget-object v9, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v9, v9, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v9}, Lcom/youku/player/module/VideoUrlInfo;->getMediaType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1b

    .line 2885
    iget-object v8, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mHotseat:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->showScreenshotItem(Z)V

    goto/16 :goto_6

    .line 2887
    :cond_1b
    iget-object v8, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mHotseat:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->showScreenshotItem(Z)V

    goto/16 :goto_6

    .line 2896
    .restart local v5    # "tUPlusEnable":Z
    :cond_1c
    iget-object v8, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mBtnUPlus:Lcom/tudou/detail/widget/SwitchButton;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Lcom/tudou/detail/widget/SwitchButton;->setVisibility(I)V

    .line 2897
    iget-object v8, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mDeviderUPlus:Landroid/view/View;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_7

    .line 2904
    :cond_1d
    invoke-static {}, Lcom/tudou/service/download/DownloadManager;->getInstance()Lcom/tudou/service/download/DownloadManager;

    move-result-object v8

    iget-object v9, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v9, v9, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v9}, Lcom/youku/player/module/VideoUrlInfo;->getVid()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/tudou/service/download/DownloadManager;->existsDownloadInfo(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1e

    .line 2905
    iget-object v8, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->userInterAction:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;

    invoke-virtual {v8}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->disableDownloadIcon()V

    .line 2913
    :goto_9
    iget-object v8, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v8, :cond_9

    iget-object v8, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v8, v8, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v8, :cond_9

    iget-object v8, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v8, v8, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v8}, Lcom/youku/player/module/VideoUrlInfo;->isVerticalVideo()Z

    move-result v8

    if-nez v8, :cond_9

    .line 2914
    const-string v8, "\u89c6\u9891"

    iget-object v9, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v9, v9, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v9}, Lcom/youku/player/module/VideoUrlInfo;->getMediaType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 2915
    iget-object v8, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mDetailActivity:Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v8}, Lcom/tudou/ui/activity/DetailActivity;->getModel()Lcom/tudou/detail/DetailModel;

    move-result-object v2

    .line 2916
    .local v2, "tModel":Lcom/tudou/detail/DetailModel;
    iget-object v8, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v8, v8, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v8}, Lcom/youku/player/module/VideoUrlInfo;->getVid()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v10, v10, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v10}, Lcom/youku/player/module/VideoUrlInfo;->getCid()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v10, v10, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v10}, Lcom/youku/player/module/VideoUrlInfo;->getShowId()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$36;

    invoke-direct {v11, p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$36;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)V

    invoke-virtual {v2, v8, v9, v10, v11}, Lcom/tudou/detail/DetailModel;->getDanmuProfileAsyn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tudou/detail/DetailModel$OnGetDanmuProfileComplete;)V

    goto/16 :goto_8

    .line 2907
    .end local v2    # "tModel":Lcom/tudou/detail/DetailModel;
    :cond_1e
    iget-object v8, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v8, v8, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v8}, Lcom/youku/player/module/VideoUrlInfo;->getLimit()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_1f

    .line 2908
    iget-object v8, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->userInterAction:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;

    invoke-virtual {v8}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->cannotDownloadIcon()V

    goto :goto_9

    .line 2910
    :cond_1f
    iget-object v8, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->userInterAction:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;

    invoke-virtual {v8}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->enableDownloadIcon()V

    goto :goto_9
.end method

.method public onVideoInfoGetting()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 2659
    invoke-super {p0}, Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;->onVideoInfoGetting()V

    .line 2660
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mNoRightHint:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2661
    iput-boolean v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mIsNeedRegisterNumOrLicenseNum:Z

    .line 2662
    iput-boolean v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mIsRegisterOrLicenseShow:Z

    .line 2663
    iput-boolean v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->isRealVideoStart:Z

    .line 2664
    iput-boolean v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->isRealVideoStartForRecord:Z

    .line 2665
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mRegisterNum:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2666
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mLicenseNum:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2667
    const/4 v0, -0x1

    iput v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mCurrentPos:I

    .line 2668
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mWaterMark:Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;->clear()V

    .line 2669
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mWaterMark:Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;

    invoke-virtual {v0, v3}, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;->setVisibility(I)V

    .line 2670
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->errorPage:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2671
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->hideTimeView()V

    .line 2672
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mDetailActivity:Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v0}, Lcom/tudou/ui/activity/DetailActivity;->closeDanmaku()V

    .line 2673
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->progressLoading:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenLoading;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenLoading;->setTitle(Ljava/lang/String;)V

    .line 2674
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->videoBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setSecondaryProgress(I)V

    .line 2675
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->showLoadingBychangeVideo()V

    .line 2676
    iput v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mCurrentPositionChangeTimes:I

    .line 2678
    iput-boolean v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->isPonitViewInited:Z

    .line 2679
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mHotseat:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;

    invoke-virtual {v0, v2, v2}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->collapse(ZZ)V

    .line 2680
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mBtnSendDanmu:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2681
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mBtnDanmuSwitch:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2683
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mRightPanel:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel;

    invoke-virtual {v0, v2}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel;->removeAllFragment(I)V

    .line 2684
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mVideoNoticeBottomView:Lcom/youku/phone/detail/plugin/fullscreen/VideoNoticeBottomView;

    invoke-virtual {v0, v3}, Lcom/youku/phone/detail/plugin/fullscreen/VideoNoticeBottomView;->setVisibility(I)V

    .line 2685
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mVideoNoticeTopView:Lcom/youku/phone/detail/plugin/fullscreen/VideoNoticeTopView;

    invoke-virtual {v0, v3}, Lcom/youku/phone/detail/plugin/fullscreen/VideoNoticeTopView;->setVisibility(I)V

    .line 2687
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->userInterAction:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->clearFav()V

    .line 2688
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->userInterAction:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->cannotDownloadIcon()V

    .line 2691
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->doPause()V

    .line 2692
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mVideoGoodsNotice:Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mVideoGoodsNotice:Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;->isShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2693
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mVideoGoodsNotice:Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;

    invoke-virtual {v0, v2}, Lcom/youku/phone/detail/plugin/fullscreen/VideoGoodsNotice;->hide(Z)V

    .line 2695
    :cond_0
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mHdNoticeView:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mHdNoticeView:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;->isShow()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2696
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mHdNoticeView:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;

    invoke-virtual {v0, v2}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;->hide(Z)V

    .line 2698
    :cond_1
    return-void
.end method

.method public onVolumnDown()V
    .locals 2

    .prologue
    .line 2492
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mRightPanel:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel;->onVolumnChange(I)V

    .line 2493
    return-void
.end method

.method public onVolumnUp()V
    .locals 2

    .prologue
    .line 2485
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mRightPanel:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel;->onVolumnChange(I)V

    .line 2486
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

    .line 3538
    sget-object v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->TAG:Ljava/lang/String;

    const-string v1, "playComplete  "

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3539
    sget v0, Lcom/youku/player/goplay/Profile;->from:I

    if-eq v0, v6, :cond_0

    sget v0, Lcom/youku/player/goplay/Profile;->from:I

    if-ne v0, v7, :cond_2

    .line 3541
    :cond_0
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->finishActivity()V

    .line 3600
    :cond_1
    :goto_0
    return-void

    .line 3551
    :cond_2
    const-string v0, "playComplete"

    const-wide/16 v2, 0x12c

    invoke-static {v0, v2, v3}, Lcom/youku/util/Util;->isGoOn(Ljava/lang/String;J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3554
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-boolean v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isFullScreen:Z

    if-eqz v0, :cond_1

    .line 3556
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->hideTimeView()V

    .line 3557
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->progressLoading:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenLoading;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenLoading;->hideLoading()V

    .line 3558
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iput-boolean v4, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isComplete:Z

    .line 3559
    invoke-static {v4}, Lcom/youku/player/Track;->setplayCompleted(Z)V

    .line 3560
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iput-boolean v5, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isStartPlay:Z

    .line 3561
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-boolean v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isFullScreen:Z

    if-eqz v0, :cond_3

    .line 3562
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->onVVEnd()V

    .line 3563
    :cond_3
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-boolean v0, v0, Lcom/youku/player/module/VideoUrlInfo;->isExternalVideo:Z

    if-eqz v0, :cond_4

    .line 3564
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->finishActivity()V

    goto :goto_0

    .line 3567
    :cond_4
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mDetailActivity:Lcom/tudou/ui/activity/DetailActivity;

    invoke-static {v0}, Lcom/youku/player/goplay/Profile;->getPlayMode(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v4, :cond_5

    .line 3568
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iput-boolean v5, v0, Lcom/youku/player/module/VideoUrlInfo;->isFirstLoaded:Z

    .line 3569
    invoke-direct {p0, p1}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->playNextVideo(Z)V

    goto :goto_0

    .line 3570
    :cond_5
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mDetailActivity:Lcom/tudou/ui/activity/DetailActivity;

    invoke-static {v0}, Lcom/youku/player/goplay/Profile;->getPlayMode(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v6, :cond_7

    .line 3571
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3572
    iget-boolean v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->hasGotoEnd:Z

    if-nez v0, :cond_1

    .line 3576
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->goEndPage()V

    goto :goto_0

    .line 3579
    :cond_6
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->finishActivity()V

    goto :goto_0

    .line 3581
    :cond_7
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mDetailActivity:Lcom/tudou/ui/activity/DetailActivity;

    invoke-static {v0}, Lcom/youku/player/goplay/Profile;->getPlayMode(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v7, :cond_1

    .line 3582
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->release()V

    .line 3583
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$45;

    invoke-direct {v1, p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$45;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0
.end method

.method protected playPause()V
    .locals 1

    .prologue
    .line 2242
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2243
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->pauseInternal(Z)V

    .line 2247
    :goto_0
    return-void

    .line 2245
    :cond_0
    invoke-direct {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->playInternal()V

    goto :goto_0
.end method

.method protected playPauseNoAd()V
    .locals 1

    .prologue
    .line 2250
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2251
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->pauseInternal(Z)V

    .line 2255
    :goto_0
    return-void

    .line 2253
    :cond_0
    invoke-direct {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->playInternal()V

    goto :goto_0
.end method

.method public resetFirstPlay()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 721
    iput-boolean v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->firstLoaded:Z

    .line 722
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mRightPanel:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel;

    invoke-virtual {v0, v1}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel;->removeAllFragment(I)V

    .line 723
    return-void
.end method

.method public resetPointViews()V
    .locals 8

    .prologue
    .line 1799
    iget-object v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->pointViewList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 1800
    .local v3, "pointView":Landroid/widget/ImageView;
    invoke-virtual {v3}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/player/goplay/Point;

    .line 1801
    .local v2, "point":Lcom/youku/player/goplay/Point;
    iget-wide v4, v2, Lcom/youku/player/goplay/Point;->start:D

    iget-object v6, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->videoBar:Landroid/widget/SeekBar;

    invoke-virtual {v6}, Landroid/widget/SeekBar;->getProgress()I

    move-result v6

    int-to-double v6, v6

    sub-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    iget-object v6, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->videoBar:Landroid/widget/SeekBar;

    invoke-virtual {v6}, Landroid/widget/SeekBar;->getMax()I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x420c0000    # 35.0f

    div-float/2addr v6, v7

    float-to-double v6, v6

    cmpg-double v4, v4, v6

    if-gtz v4, :cond_0

    .line 1803
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 1810
    :goto_1
    const v4, 0x7f0203a2

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 1805
    :cond_0
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setClickable(Z)V

    goto :goto_1

    .line 1814
    .end local v2    # "point":Lcom/youku/player/goplay/Point;
    .end local v3    # "pointView":Landroid/widget/ImageView;
    :cond_1
    iget-object v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->adpointViewList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1815
    .local v0, "adpointView":Landroid/widget/ImageView;
    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/player/goplay/Point;

    .line 1817
    .restart local v2    # "point":Lcom/youku/player/goplay/Point;
    const v4, 0x7f0203a3

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 1820
    .end local v0    # "adpointView":Landroid/widget/ImageView;
    .end local v2    # "point":Lcom/youku/player/goplay/Point;
    :cond_2
    return-void
.end method

.method public resizeMediaPlayer()V
    .locals 3

    .prologue
    .line 714
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->sp:Landroid/content/SharedPreferences;

    const-string v1, "video_size"

    const/16 v2, 0x64

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->videoSize:I

    .line 715
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mDetailActivity:Lcom/tudou/ui/activity/DetailActivity;

    iget v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->videoSize:I

    invoke-virtual {v0, v1}, Lcom/tudou/ui/activity/DetailActivity;->resizeMediaPlayer(I)V

    .line 716
    return-void
.end method

.method protected seekChange(Landroid/widget/SeekBar;)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 1728
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-nez v0, :cond_1

    .line 1758
    :cond_0
    :goto_0
    return-void

    .line 1731
    :cond_1
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getMax()I

    move-result v1

    if-lt v0, v1, :cond_5

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getMax()I

    move-result v0

    if-lez v0, :cond_5

    .line 1732
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v1}, Lcom/youku/player/module/VideoUrlInfo;->getDurationMills()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/youku/player/module/VideoUrlInfo;->setProgress(I)V

    .line 1733
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-static {v0}, Lcom/youku/phone/detail/DetailUtil;->isPayVideo(Lcom/youku/player/module/VideoUrlInfo;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1736
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v0, v0, Lcom/youku/player/module/VideoUrlInfo;->mPayInfo:Lcom/youku/player/module/PayInfo;

    iget-object v0, v0, Lcom/youku/player/module/PayInfo;->trail:Lcom/youku/player/module/PayInfo$Trial;

    iget-object v0, v0, Lcom/youku/player/module/PayInfo$Trial;->type:Ljava/lang/String;

    if-eqz v0, :cond_4

    const-string v0, "episodes"

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v1, v1, Lcom/youku/player/module/VideoUrlInfo;->mPayInfo:Lcom/youku/player/module/PayInfo;

    iget-object v1, v1, Lcom/youku/player/module/PayInfo;->trail:Lcom/youku/player/module/PayInfo$Trial;

    iget-object v1, v1, Lcom/youku/player/module/PayInfo$Trial;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1737
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v0}, Lcom/youku/player/module/VideoUrlInfo;->getShow_videoseq()I

    move-result v0

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v1, v1, Lcom/youku/player/module/VideoUrlInfo;->mPayInfo:Lcom/youku/player/module/PayInfo;

    iget-object v1, v1, Lcom/youku/player/module/PayInfo;->trail:Lcom/youku/player/module/PayInfo$Trial;

    iget v1, v1, Lcom/youku/player/module/PayInfo$Trial;->episodes:I

    if-le v0, v1, :cond_2

    .line 1738
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mDetailActivity:Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v0}, Lcom/tudou/ui/activity/DetailActivity;->onPayClick()V

    goto :goto_0

    .line 1741
    :cond_2
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->test_play_layout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1750
    :cond_3
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->onComplete()V

    goto :goto_0

    .line 1744
    :cond_4
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v1, v1, Lcom/youku/player/module/VideoUrlInfo;->mPayInfo:Lcom/youku/player/module/PayInfo;

    iget-object v1, v1, Lcom/youku/player/module/PayInfo;->trail:Lcom/youku/player/module/PayInfo$Trial;

    iget v1, v1, Lcom/youku/player/module/PayInfo$Trial;->time:I

    if-lt v0, v1, :cond_3

    .line 1745
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mDetailActivity:Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v0}, Lcom/tudou/ui/activity/DetailActivity;->onPayClick()V

    goto/16 :goto_0

    .line 1751
    :cond_5
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v0, :cond_0

    .line 1752
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v0, :cond_6

    .line 1753
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/youku/player/module/VideoUrlInfo;->setProgress(I)V

    .line 1755
    :cond_6
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/youku/player/plugin/MediaPlayerDelegate;->seekTo(I)V

    .line 1756
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iput v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mCurrentPos:I

    goto/16 :goto_0
.end method

.method protected seekSlideChange(Landroid/widget/SeekBar;I)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "timeToGo"    # I

    .prologue
    .line 2371
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getMax()I

    move-result v0

    if-lt p2, v0, :cond_1

    .line 2372
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v1}, Lcom/youku/player/module/VideoUrlInfo;->getDurationMills()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/youku/player/module/VideoUrlInfo;->setProgress(I)V

    .line 2375
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->onComplete()V

    .line 2384
    :cond_0
    :goto_0
    return-void

    .line 2376
    :cond_1
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v0, :cond_0

    .line 2377
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2378
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->playPause()V

    .line 2380
    :cond_2
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v0, p2}, Lcom/youku/player/module/VideoUrlInfo;->setProgress(I)V

    .line 2381
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0, p2}, Lcom/youku/player/plugin/MediaPlayerDelegate;->seekTo(I)V

    .line 2382
    iput p2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mCurrentPos:I

    goto :goto_0
.end method

.method public setCurrentVid(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "vid"    # Ljava/lang/String;
    .param p2, "setSelectionOnly"    # Z

    .prologue
    .line 2592
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mRightPanel:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel;

    if-eqz v0, :cond_0

    .line 2593
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mRightPanel:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel;->setCurrentVid(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2595
    :cond_0
    return-void
.end method

.method public setFullscreenCompatibility()V
    .locals 1

    .prologue
    .line 1996
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->hasVirtualButtonBar()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1997
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mSystemUiHider:Lcom/youku/fullscreen/SystemUiHider;

    invoke-virtual {v0}, Lcom/youku/fullscreen/SystemUiHider;->hide()V

    .line 1999
    :cond_0
    return-void
.end method

.method public setGoodsInfo(Lcom/tudou/detail/vo/GoodsInfo;)V
    .locals 2
    .param p1, "goodsInfo"    # Lcom/tudou/detail/vo/GoodsInfo;

    .prologue
    .line 4158
    invoke-super {p0, p1}, Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;->setGoodsInfo(Lcom/tudou/detail/vo/GoodsInfo;)V

    .line 4159
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mHotseat:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mGoodsInfo:Lcom/tudou/detail/vo/GoodsInfo;

    invoke-virtual {v0, v1}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->setGoodsInfo(Lcom/tudou/detail/vo/GoodsInfo;)V

    .line 4160
    return-void
.end method

.method public setHasNextVideo(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tudou/ui/activity/DetailActivity$NextVideoType;)V
    .locals 2
    .param p1, "has"    # Z
    .param p2, "curVid"    # Ljava/lang/String;
    .param p3, "nextVid"    # Ljava/lang/String;
    .param p4, "nextAlbumId"    # Ljava/lang/String;
    .param p5, "type"    # Lcom/tudou/ui/activity/DetailActivity$NextVideoType;

    .prologue
    .line 1913
    invoke-super/range {p0 .. p5}, Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;->setHasNextVideo(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tudou/ui/activity/DetailActivity$NextVideoType;)V

    .line 1914
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mBtnNext:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1915
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mBtnNext:Landroid/view/View;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1917
    :cond_0
    return-void

    .line 1915
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setHdInfos(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "vid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tudou/detail/vo/VideoNoticeTop;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tudou/detail/vo/VideoNoticeBottom;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tudou/detail/vo/VoteInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tudou/detail/vo/Annotation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 647
    .local p2, "tops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tudou/detail/vo/VideoNoticeTop;>;"
    .local p3, "bottoms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tudou/detail/vo/VideoNoticeBottom;>;"
    .local p4, "votes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tudou/detail/vo/VoteInfo;>;"
    .local p5, "annos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tudou/detail/vo/Annotation;>;"
    invoke-super/range {p0 .. p5}, Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;->setHdInfos(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 648
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mHotseat:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;

    invoke-virtual {v0, p1, p4, p5}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->setHdInfos(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 649
    return-void
.end method

.method public setKuWoMVInfo()V
    .locals 1

    .prologue
    .line 3015
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->userInterAction:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;

    if-eqz v0, :cond_0

    .line 3016
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->userInterAction:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->initKuWoInfo()V

    .line 3018
    :cond_0
    return-void
.end method

.method public setVideoDetail(Lcom/youku/vo/NewVideoDetail;)V
    .locals 4
    .param p1, "mVideoDetail"    # Lcom/youku/vo/NewVideoDetail;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2504
    if-eqz p1, :cond_2

    .line 2505
    const-string v2, "album"

    iget-object v3, p1, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    iget-object v3, v3, Lcom/youku/vo/NewVideoDetail$Detail;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    :cond_0
    iput-boolean v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mIsNeedToEndPage:Z

    .line 2506
    iget-object v0, p1, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    iget v0, v0, Lcom/youku/vo/NewVideoDetail$Detail;->completed:I

    if-ne v0, v1, :cond_1

    .line 2510
    :cond_1
    :goto_0
    return-void

    .line 2508
    :cond_2
    iput-boolean v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mIsNeedToEndPage:Z

    goto :goto_0
.end method

.method public setVideoList(Lcom/tudou/detail/vo/VideoList;)V
    .locals 2
    .param p1, "list"    # Lcom/tudou/detail/vo/VideoList;

    .prologue
    .line 626
    invoke-super {p0, p1}, Lcom/youku/phone/detail/plugin/fullscreen/AbsPluginFullScreenInnerView;->setVideoList(Lcom/tudou/detail/vo/VideoList;)V

    .line 627
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mVideolist:Lcom/tudou/detail/vo/VideoList;

    if-eqz v0, :cond_0

    .line 628
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mBtnPlaylist:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 629
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mBtnPlaylist:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 634
    :goto_0
    return-void

    .line 631
    :cond_0
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mBtnPlaylist:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 632
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mBtnPlaylist:Landroid/view/View;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0
.end method

.method public setVisible(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 3208
    return-void
.end method

.method public setbattery(II)V
    .locals 1
    .param p1, "number"    # I
    .param p2, "states"    # I

    .prologue
    .line 2236
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->battery:Lcom/youku/phone/detail/plugin/fullscreen/BatteryView;

    if-eqz v0, :cond_0

    .line 2237
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->battery:Lcom/youku/phone/detail/plugin/fullscreen/BatteryView;

    invoke-virtual {v0, p1, p2}, Lcom/youku/phone/detail/plugin/fullscreen/BatteryView;->setNumber(II)V

    .line 2239
    :cond_0
    return-void
.end method

.method protected showBrightView()V
    .locals 4

    .prologue
    .line 585
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->progressLoading:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenLoading;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenLoading;->hideLoading()V

    .line 586
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->settingBright:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 587
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->hideBrightRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 588
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->hideBrightRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 589
    return-void
.end method

.method protected showCenterSildeTime(JIZ)V
    .locals 11
    .param p1, "time"    # J
    .param p3, "lasttime"    # I
    .param p4, "dismiss"    # Z

    .prologue
    const-wide/16 v8, 0x0

    const/4 v4, 0x0

    .line 1629
    int-to-long v6, p3

    sub-long v6, p1, v6

    cmp-long v5, v6, v8

    if-lez v5, :cond_1

    const/4 v0, 0x1

    .line 1630
    .local v0, "isForward":Z
    :goto_0
    iget-object v5, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-boolean v5, v5, Lcom/youku/player/plugin/MediaPlayerDelegate;->isADShowing:Z

    if-nez v5, :cond_0

    iget-boolean v5, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->firstLoaded:Z

    if-nez v5, :cond_2

    .line 1670
    :cond_0
    :goto_1
    return-void

    .end local v0    # "isForward":Z
    :cond_1
    move v0, v4

    .line 1629
    goto :goto_0

    .line 1634
    .restart local v0    # "isForward":Z
    :cond_2
    iget-object v5, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->playGestureCenterTime:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1635
    iget-object v5, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->playGestureCenterTime_line:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1636
    iget-object v5, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->play_controller_center_time_layout:Landroid/view/View;

    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1637
    iget-object v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->hideTimeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1638
    iget-object v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->hideSeekbarRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1639
    iget-object v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->progressLoading:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenLoading;

    invoke-virtual {v4}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenLoading;->hideLoading()V

    .line 1640
    cmp-long v4, p1, v8

    if-gez v4, :cond_3

    .line 1641
    const-wide/16 p1, 0x0

    .line 1643
    :cond_3
    const-string v2, ""

    .line 1644
    .local v2, "print":Ljava/lang/String;
    if-eqz v0, :cond_4

    .line 1645
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "+"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1649
    :goto_2
    int-to-long v4, p3

    sub-long v4, p1, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUtils;->getFormatTimeForGesture(J)Ljava/lang/String;

    move-result-object v3

    .line 1651
    .local v3, "target":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1652
    iget-object v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->playGestureCenterTime:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1653
    iget-object v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->playGestureCenterTime_line:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1, p2}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUtils;->getFormatTimeForGesture(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v6, v6, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v6}, Lcom/youku/player/module/VideoUrlInfo;->getDurationMills()I

    move-result v6

    int-to-long v6, v6

    invoke-static {v6, v7}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUtils;->getFormatTimeForGesture(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1659
    iget-object v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->pos_line:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1662
    .local v1, "params":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->play_controller_center_time_layout:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-long v4, v4

    mul-long/2addr v4, p1

    iget-object v6, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v6, v6, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v6}, Lcom/youku/player/module/VideoUrlInfo;->getDurationMills()I

    move-result v6

    int-to-long v6, v6

    div-long/2addr v4, v6

    long-to-int v4, v4

    iput v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 1665
    if-eqz p4, :cond_5

    .line 1666
    iget-object v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->hideTimeRunnable:Ljava/lang/Runnable;

    const-wide/16 v6, 0x1f4

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    .line 1647
    .end local v1    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v3    # "target":Ljava/lang/String;
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2

    .line 1668
    .restart local v1    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v3    # "target":Ljava/lang/String;
    :cond_5
    iget-object v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->videoBar:Landroid/widget/SeekBar;

    iget v5, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->currentPosition:I

    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setProgress(I)V

    goto/16 :goto_1
.end method

.method protected showCenterTime(Landroid/widget/SeekBar;)V
    .locals 4
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 1771
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->playCenterTime:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1772
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->playCenterTime:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    int-to-long v2, v1

    invoke-static {v2, v3}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUtils;->getFormatTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1774
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$29;

    invoke-direct {v1, p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$29;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1780
    return-void
.end method

.method showControllerToleftrightbottom()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 4442
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mControllerBottom:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 4443
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mControllerTop:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 4444
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-nez v0, :cond_1

    .line 4445
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->userInterAction:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->show()V

    .line 4461
    :cond_0
    :goto_0
    return-void

    .line 4448
    :cond_1
    const-string v0, "local"

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v1}, Lcom/youku/player/module/VideoUrlInfo;->getPlayType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget v0, Lcom/youku/player/goplay/Profile;->from:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    .line 4449
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->userInterAction:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->show()V

    .line 4451
    :cond_2
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-static {v0}, Lcom/youku/phone/detail/DetailUtil;->isPayVideo(Lcom/youku/player/module/VideoUrlInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4452
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v0, v0, Lcom/youku/player/module/VideoUrlInfo;->mPayInfo:Lcom/youku/player/module/PayInfo;

    iget-object v0, v0, Lcom/youku/player/module/PayInfo;->trail:Lcom/youku/player/module/PayInfo$Trial;

    iget-object v0, v0, Lcom/youku/player/module/PayInfo$Trial;->type:Ljava/lang/String;

    if-eqz v0, :cond_3

    const-string v0, "episodes"

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v1, v1, Lcom/youku/player/module/VideoUrlInfo;->mPayInfo:Lcom/youku/player/module/PayInfo;

    iget-object v1, v1, Lcom/youku/player/module/PayInfo;->trail:Lcom/youku/player/module/PayInfo$Trial;

    iget-object v1, v1, Lcom/youku/player/module/PayInfo$Trial;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4454
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v0}, Lcom/youku/player/module/VideoUrlInfo;->getShow_videoseq()I

    move-result v0

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v1, v1, Lcom/youku/player/module/VideoUrlInfo;->mPayInfo:Lcom/youku/player/module/PayInfo;

    iget-object v1, v1, Lcom/youku/player/module/PayInfo;->trail:Lcom/youku/player/module/PayInfo$Trial;

    iget v1, v1, Lcom/youku/player/module/PayInfo$Trial;->episodes:I

    if-le v0, v1, :cond_3

    .line 4455
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mDetailActivity:Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v0}, Lcom/tudou/ui/activity/DetailActivity;->onPayClick()V

    goto :goto_0

    .line 4459
    :cond_3
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->test_play_layout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public showLoadingBychangeVideo()V
    .locals 2

    .prologue
    .line 4129
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->loading:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4130
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->progressLoading:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenLoading;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenLoading;->hideLoading()V

    .line 4131
    return-void
.end method

.method protected showLock()V
    .locals 2

    .prologue
    .line 3212
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-nez v0, :cond_1

    .line 3218
    :cond_0
    :goto_0
    return-void

    .line 3215
    :cond_1
    sget v0, Lcom/youku/player/goplay/Profile;->from:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 3216
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mBtnScreenLock:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected showVolumeView()V
    .locals 4

    .prologue
    .line 578
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->progressLoading:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenLoading;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenLoading;->hideLoading()V

    .line 579
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->settingVolume:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 580
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->hideVolumeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 581
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->hideVolumeRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 582
    return-void
.end method

.method public startVideoRecord(Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;)V
    .locals 7
    .param p1, "item"    # Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;

    .prologue
    .line 1375
    invoke-direct {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->checkVideoRecordView()V

    .line 1376
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mVideoRecordView:Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->setVisibility(I)V

    .line 1378
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v0}, Lcom/youku/player/module/VideoUrlInfo;->getVid()Ljava/lang/String;

    move-result-object v1

    .line 1379
    .local v1, "vid":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u3010\u7cbe\u5f69\u7247\u6bb5\u3011"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v3, v3, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v3}, Lcom/youku/player/module/VideoUrlInfo;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1381
    .local v2, "title":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "detail.videorecord.max.duration"

    const/16 v6, 0x2710

    invoke-static {v0, v3, v6}, Lcom/tudou/detail/DetailSettings$DetailProp;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v5

    .line 1382
    .local v5, "maxDuration":I
    iget v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mCurrentPos:I

    .line 1383
    .local v4, "startPos":I
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mVideoRecordView:Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;

    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v3, v3, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v3}, Lcom/youku/player/module/VideoUrlInfo;->getTitle()Ljava/lang/String;

    move-result-object v3

    new-instance v6, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$22;

    invoke-direct {v6, p0, p1, v4, v5}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$22;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;II)V

    invoke-virtual/range {v0 .. v6}, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->startVideoRecord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/Runnable;)V

    .line 1394
    return-void
.end method

.method public stopVideoRecord(I)V
    .locals 6
    .param p1, "position"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1399
    sget-object v1, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopVideoRecord mDetailActivity.isDanmakuClosed() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mDetailActivity:Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v3}, Lcom/tudou/ui/activity/DetailActivity;->isDanmakuClosed()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1400
    invoke-direct {p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->checkVideoRecordView()V

    .line 1401
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mVideoRecordView:Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;

    invoke-virtual {v1, p1}, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->stopVideoRecord(I)Z

    move-result v0

    .line 1402
    .local v0, "result":Z
    sget-object v1, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopVideoRecord result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1403
    if-eqz v0, :cond_2

    .line 1404
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mVideoRecordView:Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;

    invoke-virtual {v2}, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->getStartPos()I

    move-result v2

    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mVideoRecordView:Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;

    invoke-virtual {v3}, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->getEndPos()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/youku/player/plugin/MediaPlayerDelegate;->startLoopVideo(II)V

    .line 1405
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mDetailActivity:Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v1}, Lcom/tudou/ui/activity/DetailActivity;->isDanmakuClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1406
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mDetailActivity:Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v1}, Lcom/tudou/ui/activity/DetailActivity;->closeDanmaku()V

    .line 1407
    iput-boolean v5, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mNeedRestoreDanmaku:Z

    .line 1409
    :cond_0
    const-string v1, "videorecordtime"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopVideoRecord  startLoopVideo "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mVideoRecordView:Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;

    invoke-virtual {v3}, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->getStartPos()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "--"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mVideoRecordView:Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;

    invoke-virtual {v3}, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->getEndPos()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1410
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mHotseat:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;

    invoke-virtual {v1}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->getItemCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 1411
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mHotseat:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;

    invoke-virtual {v1}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->getBtnExpand()Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;->setVisibility(I)V

    .line 1413
    :cond_1
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mHotseat:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;

    invoke-virtual {v1}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->getBtnScreenShot()Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;->setVisibility(I)V

    .line 1414
    invoke-virtual {p0, v4}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->hideController(Z)V

    .line 1431
    :goto_0
    return-void

    .line 1416
    :cond_2
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mHotseat:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;

    iget-object v1, v1, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->mBtnVideoRecord:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;

    invoke-virtual {v1, v4}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;->setEnabled(Z)V

    .line 1417
    invoke-direct {p0, v5}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->pauseInternal(Z)V

    .line 1418
    new-instance v1, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$23;

    invoke-direct {v1, p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$23;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {p0, v1, v2, v3}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
