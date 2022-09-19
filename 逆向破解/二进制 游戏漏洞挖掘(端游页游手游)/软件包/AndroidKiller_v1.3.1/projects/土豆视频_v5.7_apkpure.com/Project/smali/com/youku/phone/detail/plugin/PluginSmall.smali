.class public Lcom/youku/phone/detail/plugin/PluginSmall;
.super Lcom/youku/player/plugin/PluginOverlay;
.source "PluginSmall.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/phone/detail/plugin/PluginSmall$FullScreenGestureListener;
    }
.end annotation


# instance fields
.field Adaptation_lastPercent:I

.field private final HIDE_ALL:I

.field private final HIDE_CONTROL:I

.field private final HIDE_TITLE:I

.field private final TAG:Ljava/lang/String;

.field private _currentPosition:I

.field private _offsetY:F

.field private final _zoom:I

.field private autoPlay:Z

.field black:Landroid/view/View;

.field black_music_bg:Landroid/view/View;

.field public bright:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenBright;

.field private clickListener:Landroid/view/View$OnClickListener;

.field private containerView:Landroid/view/View;

.field private context:Lcom/tudou/ui/activity/DetailActivity;

.field private controlLayout:Landroid/widget/RelativeLayout;

.field private controlLayoutGesture:Landroid/view/View;

.field count:I

.field private curBrightness:I

.field private currentPosition:I

.field private directionalLock:I

.field private disableController:Z

.field private downloadImageButton:Landroid/widget/ImageButton;

.field private duration:I

.field private endPageView:Landroid/view/View;

.field private error:Z

.field private firstLoaded:Z

.field private goRetry:Landroid/widget/LinearLayout;

.field hideBrightRunnable:Ljava/lang/Runnable;

.field private hideHandler:Landroid/os/Handler;

.field hideSeekbarRunnable:Ljava/lang/Runnable;

.field hideTimeRunnable:Ljava/lang/Runnable;

.field hideVolumeRunnable:Ljava/lang/Runnable;

.field private indexBlankLeft:Landroid/view/View;

.field private indexBlankRight:Landroid/view/View;

.field private indexClose:Landroid/widget/ImageButton;

.field private indexCom:Landroid/widget/TextView;

.field private indexFav:Landroid/widget/TextView;

.field private indexPlay:Landroid/widget/TextView;

.field private indexSch:Landroid/widget/TextView;

.field private indexShowView:Landroid/view/View;

.field private infoFail:Z

.field private infoSeekBar:Lcom/youku/widget/Loading;

.field private interactFrameLayout:Landroid/widget/FrameLayout;

.field private isGesture:Z

.field private isLoading:Z

.field private isPayVideoShow:Z

.field isRealVideoStart:Z

.field private isRetry:Z

.field private isShowWindow:Z

.field private landscapeLimitSlope:F

.field protected lastInteractTime:J

.field private loadingInfoLayout:Landroid/widget/RelativeLayout;

.field mBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mBtnFullScreen:Landroid/widget/ImageButton;

.field private mBtnPlay3GOnLine:Landroid/widget/ImageButton;

.field private mContainerLayout:Landroid/widget/LinearLayout;

.field protected mCurVid:Ljava/lang/String;

.field private mCurrentPositionChangeTimes:I

.field private mGestureDetector:Landroid/view/GestureDetector;

.field mHandler:Landroid/os/Handler;

.field protected mHasGetNext:Z

.field protected mHasNext:Z

.field private mHint3GOnLineLayout:Landroid/view/View;

.field private mIsNeedRegisterNumOrLicenseNum:Z

.field public mIsNoRight:Z

.field private mIsRegisterOrLicenseShow:Z

.field private mLicenseNum:Landroid/widget/TextView;

.field protected mNextAlbumId:Ljava/lang/String;

.field protected mNextVid:Ljava/lang/String;

.field protected mNextVideoType:Lcom/tudou/ui/activity/DetailActivity$NextVideoType;

.field private mNoRightHint:Landroid/widget/TextView;

.field private mRegisterNum:Landroid/widget/TextView;

.field private maxBrightness:I

.field private maxVolume:I

.field private moreImageButton:Landroid/widget/ImageButton;

.field private moreTextView:Landroid/widget/TextView;

.field private nextLayout:Landroid/widget/LinearLayout;

.field private offsetY:F

.field private padInteractLayout:Landroid/widget/RelativeLayout;

.field private play:Landroid/view/View;

.field private playErrorMsg:I

.field playGestureCenterTime:Landroid/widget/TextView;

.field playGestureCenterTime_line:Landroid/widget/TextView;

.field private playLoadingBar:Lcom/youku/widget/Loading;

.field private playNameTextView:Landroid/widget/TextView;

.field private playTitleTextView:Landroid/widget/TextView;

.field play_controller_center_time_layout:Landroid/view/View;

.field private play_pauseButton:Landroid/widget/ImageButton;

.field private playerView:Landroid/widget/FrameLayout;

.field pluginSmallPayPageFragment:Lcom/youku/phone/detail/plugin/PluginSmallPayPageFragment;

.field private portraitLimitSlope:F

.field pos_line:Landroid/view/View;

.field private position:I

.field private progress_zoom:I

.field private replayLayout:Landroid/widget/LinearLayout;

.field private retryIV:Landroid/widget/ImageView;

.field private retryTV:Landroid/widget/TextView;

.field private retryView:Landroid/view/View;

.field private sb_detail_play_progress_hide:Landroid/widget/SeekBar;

.field private seekLoadingContainerView:Landroid/view/View;

.field private settingBright:Landroid/view/View;

.field private settingVolume:Landroid/view/View;

.field private sp:Landroid/content/SharedPreferences;

.field test_play_layout:Landroid/view/View;

.field thumbMoving:Z

.field private time:Landroid/widget/TextView;

.field private title:Lcom/youku/widget/AlwaysMarqueeTextView;

.field private total_time:Landroid/widget/TextView;

.field private userPlayClickListener:Landroid/view/View$OnClickListener;

.field private userPlayImageButton:Landroid/widget/ImageButton;

.field videoBar:Landroid/widget/SeekBar;

.field private video_id:Ljava/lang/String;

.field vip_buy_tv1:Landroid/widget/TextView;

.field vip_buy_tv2:Landroid/widget/TextView;

.field public volume:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenVolume;

.field water_mark_bg:Landroid/view/View;

.field private final zoom:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 219
    invoke-direct {p0, p1}, Lcom/youku/player/plugin/PluginOverlay;-><init>(Landroid/content/Context;)V

    .line 117
    const-string v0, "PluginSmall"

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->TAG:Ljava/lang/String;

    .line 125
    iput-boolean v2, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->infoFail:Z

    .line 126
    iput v2, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->count:I

    .line 127
    iput-boolean v2, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->firstLoaded:Z

    .line 128
    iput-boolean v2, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->isRealVideoStart:Z

    .line 130
    iput v2, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->playErrorMsg:I

    .line 132
    iput-boolean v2, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->isRetry:Z

    .line 142
    iput-object v5, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mGestureDetector:Landroid/view/GestureDetector;

    .line 143
    iput-boolean v3, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->isGesture:Z

    .line 144
    iput-boolean v2, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->isShowWindow:Z

    .line 146
    const/high16 v0, 0x40800000    # 4.0f

    iput v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->portraitLimitSlope:F

    .line 147
    const/high16 v0, 0x3e800000    # 0.25f

    iput v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->landscapeLimitSlope:F

    .line 149
    iput v4, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->offsetY:F

    .line 150
    iput v4, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->_offsetY:F

    .line 152
    const/16 v0, 0xf

    iput v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->zoom:I

    .line 156
    iput v3, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->_zoom:I

    .line 158
    iput v2, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->curBrightness:I

    .line 159
    const/16 v0, 0xff

    iput v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->maxBrightness:I

    .line 161
    iput v1, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->duration:I

    .line 162
    iput v1, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->position:I

    .line 166
    iput v1, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->currentPosition:I

    .line 170
    iput v1, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->_currentPosition:I

    .line 171
    const/16 v0, 0x1388

    iput v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->progress_zoom:I

    .line 175
    iput v2, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->directionalLock:I

    .line 200
    iput-boolean v2, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->thumbMoving:Z

    .line 295
    iput-boolean v2, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->isPayVideoShow:Z

    .line 478
    new-instance v0, Lcom/youku/phone/detail/plugin/PluginSmall$2;

    invoke-direct {v0, p0}, Lcom/youku/phone/detail/plugin/PluginSmall$2;-><init>(Lcom/youku/phone/detail/plugin/PluginSmall;)V

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->hideVolumeRunnable:Ljava/lang/Runnable;

    .line 487
    new-instance v0, Lcom/youku/phone/detail/plugin/PluginSmall$3;

    invoke-direct {v0, p0}, Lcom/youku/phone/detail/plugin/PluginSmall$3;-><init>(Lcom/youku/phone/detail/plugin/PluginSmall;)V

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->hideBrightRunnable:Ljava/lang/Runnable;

    .line 496
    new-instance v0, Lcom/youku/phone/detail/plugin/PluginSmall$4;

    invoke-direct {v0, p0}, Lcom/youku/phone/detail/plugin/PluginSmall$4;-><init>(Lcom/youku/phone/detail/plugin/PluginSmall;)V

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->hideTimeRunnable:Ljava/lang/Runnable;

    .line 512
    new-instance v0, Lcom/youku/phone/detail/plugin/PluginSmall$5;

    invoke-direct {v0, p0}, Lcom/youku/phone/detail/plugin/PluginSmall$5;-><init>(Lcom/youku/phone/detail/plugin/PluginSmall;)V

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->hideSeekbarRunnable:Ljava/lang/Runnable;

    .line 872
    iput v2, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->Adaptation_lastPercent:I

    .line 906
    iput-boolean v2, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mHasNext:Z

    .line 907
    iput-boolean v2, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mHasGetNext:Z

    .line 908
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mCurVid:Ljava/lang/String;

    .line 909
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mNextVid:Ljava/lang/String;

    .line 910
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mNextAlbumId:Ljava/lang/String;

    .line 911
    iput-object v5, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mNextVideoType:Lcom/tudou/ui/activity/DetailActivity$NextVideoType;

    .line 1142
    iput v2, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mCurrentPositionChangeTimes:I

    .line 1759
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->lastInteractTime:J

    .line 1761
    new-instance v0, Lcom/youku/phone/detail/plugin/PluginSmall$18;

    invoke-direct {v0, p0}, Lcom/youku/phone/detail/plugin/PluginSmall$18;-><init>(Lcom/youku/phone/detail/plugin/PluginSmall;)V

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 1935
    new-instance v0, Lcom/youku/phone/detail/plugin/PluginSmall$19;

    invoke-direct {v0, p0}, Lcom/youku/phone/detail/plugin/PluginSmall$19;-><init>(Lcom/youku/phone/detail/plugin/PluginSmall;)V

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->userPlayClickListener:Landroid/view/View$OnClickListener;

    .line 1951
    iput-boolean v3, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->disableController:Z

    .line 2097
    iput-boolean v3, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->autoPlay:Z

    .line 2124
    new-instance v0, Lcom/youku/phone/detail/plugin/PluginSmall$23;

    invoke-direct {v0, p0}, Lcom/youku/phone/detail/plugin/PluginSmall$23;-><init>(Lcom/youku/phone/detail/plugin/PluginSmall;)V

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->clickListener:Landroid/view/View$OnClickListener;

    .line 2368
    new-instance v0, Lcom/youku/phone/detail/plugin/PluginSmall$26;

    invoke-direct {v0, p0}, Lcom/youku/phone/detail/plugin/PluginSmall$26;-><init>(Lcom/youku/phone/detail/plugin/PluginSmall;)V

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->hideHandler:Landroid/os/Handler;

    .line 2388
    new-instance v0, Lcom/youku/phone/detail/plugin/PluginSmall$27;

    invoke-direct {v0, p0}, Lcom/youku/phone/detail/plugin/PluginSmall$27;-><init>(Lcom/youku/phone/detail/plugin/PluginSmall;)V

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mHandler:Landroid/os/Handler;

    .line 2397
    const/16 v0, 0x3e9

    iput v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->HIDE_CONTROL:I

    .line 2398
    const/16 v0, 0x3ea

    iput v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->HIDE_TITLE:I

    .line 2399
    const/16 v0, 0x3eb

    iput v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->HIDE_ALL:I

    .line 2707
    iput-boolean v2, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mIsNoRight:Z

    .line 221
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/youku/player/plugin/MediaPlayerDelegate;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mediaPlayerDelegate"    # Lcom/youku/player/plugin/MediaPlayerDelegate;

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v2, -0x1

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 224
    invoke-direct {p0, p1, p2}, Lcom/youku/player/plugin/PluginOverlay;-><init>(Landroid/content/Context;Lcom/youku/player/plugin/MediaPlayerDelegate;)V

    .line 117
    const-string v1, "PluginSmall"

    iput-object v1, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->TAG:Ljava/lang/String;

    .line 125
    iput-boolean v4, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->infoFail:Z

    .line 126
    iput v4, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->count:I

    .line 127
    iput-boolean v4, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->firstLoaded:Z

    .line 128
    iput-boolean v4, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->isRealVideoStart:Z

    .line 130
    iput v4, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->playErrorMsg:I

    .line 132
    iput-boolean v4, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->isRetry:Z

    .line 142
    iput-object v6, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mGestureDetector:Landroid/view/GestureDetector;

    .line 143
    iput-boolean v5, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->isGesture:Z

    .line 144
    iput-boolean v4, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->isShowWindow:Z

    .line 146
    const/high16 v1, 0x40800000    # 4.0f

    iput v1, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->portraitLimitSlope:F

    .line 147
    const/high16 v1, 0x3e800000    # 0.25f

    iput v1, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->landscapeLimitSlope:F

    .line 149
    iput v3, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->offsetY:F

    .line 150
    iput v3, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->_offsetY:F

    .line 152
    const/16 v1, 0xf

    iput v1, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->zoom:I

    .line 156
    iput v5, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->_zoom:I

    .line 158
    iput v4, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->curBrightness:I

    .line 159
    const/16 v1, 0xff

    iput v1, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->maxBrightness:I

    .line 161
    iput v2, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->duration:I

    .line 162
    iput v2, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->position:I

    .line 166
    iput v2, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->currentPosition:I

    .line 170
    iput v2, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->_currentPosition:I

    .line 171
    const/16 v1, 0x1388

    iput v1, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->progress_zoom:I

    .line 175
    iput v4, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->directionalLock:I

    .line 200
    iput-boolean v4, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->thumbMoving:Z

    .line 295
    iput-boolean v4, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->isPayVideoShow:Z

    .line 478
    new-instance v1, Lcom/youku/phone/detail/plugin/PluginSmall$2;

    invoke-direct {v1, p0}, Lcom/youku/phone/detail/plugin/PluginSmall$2;-><init>(Lcom/youku/phone/detail/plugin/PluginSmall;)V

    iput-object v1, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->hideVolumeRunnable:Ljava/lang/Runnable;

    .line 487
    new-instance v1, Lcom/youku/phone/detail/plugin/PluginSmall$3;

    invoke-direct {v1, p0}, Lcom/youku/phone/detail/plugin/PluginSmall$3;-><init>(Lcom/youku/phone/detail/plugin/PluginSmall;)V

    iput-object v1, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->hideBrightRunnable:Ljava/lang/Runnable;

    .line 496
    new-instance v1, Lcom/youku/phone/detail/plugin/PluginSmall$4;

    invoke-direct {v1, p0}, Lcom/youku/phone/detail/plugin/PluginSmall$4;-><init>(Lcom/youku/phone/detail/plugin/PluginSmall;)V

    iput-object v1, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->hideTimeRunnable:Ljava/lang/Runnable;

    .line 512
    new-instance v1, Lcom/youku/phone/detail/plugin/PluginSmall$5;

    invoke-direct {v1, p0}, Lcom/youku/phone/detail/plugin/PluginSmall$5;-><init>(Lcom/youku/phone/detail/plugin/PluginSmall;)V

    iput-object v1, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->hideSeekbarRunnable:Ljava/lang/Runnable;

    .line 872
    iput v4, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->Adaptation_lastPercent:I

    .line 906
    iput-boolean v4, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mHasNext:Z

    .line 907
    iput-boolean v4, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mHasGetNext:Z

    .line 908
    const-string v1, ""

    iput-object v1, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mCurVid:Ljava/lang/String;

    .line 909
    const-string v1, ""

    iput-object v1, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mNextVid:Ljava/lang/String;

    .line 910
    const-string v1, ""

    iput-object v1, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mNextAlbumId:Ljava/lang/String;

    .line 911
    iput-object v6, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mNextVideoType:Lcom/tudou/ui/activity/DetailActivity$NextVideoType;

    .line 1142
    iput v4, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mCurrentPositionChangeTimes:I

    .line 1759
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->lastInteractTime:J

    .line 1761
    new-instance v1, Lcom/youku/phone/detail/plugin/PluginSmall$18;

    invoke-direct {v1, p0}, Lcom/youku/phone/detail/plugin/PluginSmall$18;-><init>(Lcom/youku/phone/detail/plugin/PluginSmall;)V

    iput-object v1, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 1935
    new-instance v1, Lcom/youku/phone/detail/plugin/PluginSmall$19;

    invoke-direct {v1, p0}, Lcom/youku/phone/detail/plugin/PluginSmall$19;-><init>(Lcom/youku/phone/detail/plugin/PluginSmall;)V

    iput-object v1, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->userPlayClickListener:Landroid/view/View$OnClickListener;

    .line 1951
    iput-boolean v5, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->disableController:Z

    .line 2097
    iput-boolean v5, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->autoPlay:Z

    .line 2124
    new-instance v1, Lcom/youku/phone/detail/plugin/PluginSmall$23;

    invoke-direct {v1, p0}, Lcom/youku/phone/detail/plugin/PluginSmall$23;-><init>(Lcom/youku/phone/detail/plugin/PluginSmall;)V

    iput-object v1, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->clickListener:Landroid/view/View$OnClickListener;

    .line 2368
    new-instance v1, Lcom/youku/phone/detail/plugin/PluginSmall$26;

    invoke-direct {v1, p0}, Lcom/youku/phone/detail/plugin/PluginSmall$26;-><init>(Lcom/youku/phone/detail/plugin/PluginSmall;)V

    iput-object v1, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->hideHandler:Landroid/os/Handler;

    .line 2388
    new-instance v1, Lcom/youku/phone/detail/plugin/PluginSmall$27;

    invoke-direct {v1, p0}, Lcom/youku/phone/detail/plugin/PluginSmall$27;-><init>(Lcom/youku/phone/detail/plugin/PluginSmall;)V

    iput-object v1, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mHandler:Landroid/os/Handler;

    .line 2397
    const/16 v1, 0x3e9

    iput v1, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->HIDE_CONTROL:I

    .line 2398
    const/16 v1, 0x3ea

    iput v1, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->HIDE_TITLE:I

    .line 2399
    const/16 v1, 0x3eb

    iput v1, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->HIDE_ALL:I

    .line 2707
    iput-boolean v4, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mIsNoRight:Z

    move-object v1, p1

    .line 225
    check-cast v1, Lcom/tudou/ui/activity/DetailActivity;

    iput-object v1, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->context:Lcom/tudou/ui/activity/DetailActivity;

    .line 226
    iput-object p2, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    .line 227
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 228
    .local v0, "mLayoutInflater":Landroid/view/LayoutInflater;
    const v1, 0x7f030267

    invoke-virtual {v0, v1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->containerView:Landroid/view/View;

    .line 229
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->containerView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/youku/phone/detail/plugin/PluginSmall;->addView(Landroid/view/View;)V

    .line 230
    invoke-direct {p0}, Lcom/youku/phone/detail/plugin/PluginSmall;->findView()V

    .line 231
    invoke-direct {p0}, Lcom/youku/phone/detail/plugin/PluginSmall;->initGesture()V

    .line 232
    invoke-direct {p0, v5}, Lcom/youku/phone/detail/plugin/PluginSmall;->setTouchListener(Z)V

    .line 233
    return-void
.end method

.method static synthetic access$000(Lcom/youku/phone/detail/plugin/PluginSmall;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/PluginSmall;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->controlLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$100(Lcom/youku/phone/detail/plugin/PluginSmall;)Z
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/PluginSmall;

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->isShowWindow:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/youku/phone/detail/plugin/PluginSmall;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/PluginSmall;
    .param p1, "x1"    # Z

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->error:Z

    return p1
.end method

.method static synthetic access$102(Lcom/youku/phone/detail/plugin/PluginSmall;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/PluginSmall;
    .param p1, "x1"    # Z

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->isShowWindow:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/youku/phone/detail/plugin/PluginSmall;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/PluginSmall;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->retryView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/youku/phone/detail/plugin/PluginSmall;)Lcom/tudou/ui/activity/DetailActivity;
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/PluginSmall;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->context:Lcom/tudou/ui/activity/DetailActivity;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/youku/phone/detail/plugin/PluginSmall;)I
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/PluginSmall;

    .prologue
    .line 80
    iget v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->playErrorMsg:I

    return v0
.end method

.method static synthetic access$1400(Lcom/youku/phone/detail/plugin/PluginSmall;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/PluginSmall;
    .param p1, "x1"    # Z

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/youku/phone/detail/plugin/PluginSmall;->playNextVideo(Z)V

    return-void
.end method

.method static synthetic access$1500(Lcom/youku/phone/detail/plugin/PluginSmall;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/PluginSmall;

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/youku/phone/detail/plugin/PluginSmall;->hideEndPage()V

    return-void
.end method

.method static synthetic access$1600(Lcom/youku/phone/detail/plugin/PluginSmall;)Landroid/widget/SeekBar;
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/PluginSmall;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->sb_detail_play_progress_hide:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/youku/phone/detail/plugin/PluginSmall;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/PluginSmall;

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/youku/phone/detail/plugin/PluginSmall;->disableController()V

    return-void
.end method

.method static synthetic access$1800(Lcom/youku/phone/detail/plugin/PluginSmall;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/PluginSmall;

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/youku/phone/detail/plugin/PluginSmall;->hideLoadinfo()V

    return-void
.end method

.method static synthetic access$1900(Lcom/youku/phone/detail/plugin/PluginSmall;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/PluginSmall;

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/youku/phone/detail/plugin/PluginSmall;->showRetryLayout()V

    return-void
.end method

.method static synthetic access$200(Lcom/youku/phone/detail/plugin/PluginSmall;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/PluginSmall;

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/youku/phone/detail/plugin/PluginSmall;->endGesture()V

    return-void
.end method

.method static synthetic access$2000(Lcom/youku/phone/detail/plugin/PluginSmall;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/PluginSmall;

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/youku/phone/detail/plugin/PluginSmall;->hideRetryLayout()V

    return-void
.end method

.method static synthetic access$2100(Lcom/youku/phone/detail/plugin/PluginSmall;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/PluginSmall;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->playTitleTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/youku/phone/detail/plugin/PluginSmall;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/PluginSmall;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->time:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/youku/phone/detail/plugin/PluginSmall;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/PluginSmall;

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/youku/phone/detail/plugin/PluginSmall;->changePlayPause()V

    return-void
.end method

.method static synthetic access$2400(Lcom/youku/phone/detail/plugin/PluginSmall;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/PluginSmall;

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/youku/phone/detail/plugin/PluginSmall;->enableController()V

    return-void
.end method

.method static synthetic access$2500(Lcom/youku/phone/detail/plugin/PluginSmall;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/PluginSmall;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->seekLoadingContainerView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/youku/phone/detail/plugin/PluginSmall;)Lcom/youku/widget/Loading;
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/PluginSmall;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->playLoadingBar:Lcom/youku/widget/Loading;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/youku/phone/detail/plugin/PluginSmall;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/PluginSmall;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->interactFrameLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/youku/phone/detail/plugin/PluginSmall;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/PluginSmall;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->loadingInfoLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/youku/phone/detail/plugin/PluginSmall;)Lcom/youku/widget/Loading;
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/PluginSmall;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->infoSeekBar:Lcom/youku/widget/Loading;

    return-object v0
.end method

.method static synthetic access$300(Lcom/youku/phone/detail/plugin/PluginSmall;)Z
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/PluginSmall;

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->isLoading:Z

    return v0
.end method

.method static synthetic access$3000(Lcom/youku/phone/detail/plugin/PluginSmall;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/PluginSmall;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->hideHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/youku/phone/detail/plugin/PluginSmall;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/PluginSmall;
    .param p1, "x1"    # Z

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/youku/phone/detail/plugin/PluginSmall;->showBottomSeekBar(Z)V

    return-void
.end method

.method static synthetic access$3200(Lcom/youku/phone/detail/plugin/PluginSmall;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/PluginSmall;

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/youku/phone/detail/plugin/PluginSmall;->hideShowControl()V

    return-void
.end method

.method static synthetic access$3300(Lcom/youku/phone/detail/plugin/PluginSmall;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/PluginSmall;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->play_pauseButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/youku/phone/detail/plugin/PluginSmall;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/PluginSmall;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->play:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/youku/phone/detail/plugin/PluginSmall;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/PluginSmall;

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/youku/phone/detail/plugin/PluginSmall;->startPlay()V

    return-void
.end method

.method static synthetic access$3600(Lcom/youku/phone/detail/plugin/PluginSmall;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/PluginSmall;

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/youku/phone/detail/plugin/PluginSmall;->hideControl()V

    return-void
.end method

.method static synthetic access$3700(Lcom/youku/phone/detail/plugin/PluginSmall;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/PluginSmall;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->endPageView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/youku/phone/detail/plugin/PluginSmall;)Z
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/PluginSmall;

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->infoFail:Z

    return v0
.end method

.method static synthetic access$3900(Lcom/youku/phone/detail/plugin/PluginSmall;)Z
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/PluginSmall;

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->disableController:Z

    return v0
.end method

.method static synthetic access$400(Lcom/youku/phone/detail/plugin/PluginSmall;)Z
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/PluginSmall;

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->isPayVideoShow:Z

    return v0
.end method

.method static synthetic access$4000(Lcom/youku/phone/detail/plugin/PluginSmall;)Z
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/PluginSmall;

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->firstLoaded:Z

    return v0
.end method

.method static synthetic access$4100(Lcom/youku/phone/detail/plugin/PluginSmall;)F
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/PluginSmall;

    .prologue
    .line 80
    iget v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->portraitLimitSlope:F

    return v0
.end method

.method static synthetic access$4200(Lcom/youku/phone/detail/plugin/PluginSmall;)F
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/PluginSmall;

    .prologue
    .line 80
    iget v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->offsetY:F

    return v0
.end method

.method static synthetic access$4202(Lcom/youku/phone/detail/plugin/PluginSmall;F)F
    .locals 0
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/PluginSmall;
    .param p1, "x1"    # F

    .prologue
    .line 80
    iput p1, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->offsetY:F

    return p1
.end method

.method static synthetic access$4216(Lcom/youku/phone/detail/plugin/PluginSmall;F)F
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/PluginSmall;
    .param p1, "x1"    # F

    .prologue
    .line 80
    iget v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->offsetY:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->offsetY:F

    return v0
.end method

.method static synthetic access$4300(Lcom/youku/phone/detail/plugin/PluginSmall;)I
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/PluginSmall;

    .prologue
    .line 80
    iget v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->maxVolume:I

    return v0
.end method

.method static synthetic access$4302(Lcom/youku/phone/detail/plugin/PluginSmall;I)I
    .locals 0
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/PluginSmall;
    .param p1, "x1"    # I

    .prologue
    .line 80
    iput p1, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->maxVolume:I

    return p1
.end method

.method static synthetic access$4400(Lcom/youku/phone/detail/plugin/PluginSmall;)F
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/PluginSmall;

    .prologue
    .line 80
    iget v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->_offsetY:F

    return v0
.end method

.method static synthetic access$4402(Lcom/youku/phone/detail/plugin/PluginSmall;F)F
    .locals 0
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/PluginSmall;
    .param p1, "x1"    # F

    .prologue
    .line 80
    iput p1, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->_offsetY:F

    return p1
.end method

.method static synthetic access$4416(Lcom/youku/phone/detail/plugin/PluginSmall;F)F
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/PluginSmall;
    .param p1, "x1"    # F

    .prologue
    .line 80
    iget v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->_offsetY:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->_offsetY:F

    return v0
.end method

.method static synthetic access$4500(Lcom/youku/phone/detail/plugin/PluginSmall;)I
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/PluginSmall;

    .prologue
    .line 80
    iget v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->maxBrightness:I

    return v0
.end method

.method static synthetic access$4600(Lcom/youku/phone/detail/plugin/PluginSmall;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/PluginSmall;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->sp:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$4700(Lcom/youku/phone/detail/plugin/PluginSmall;)F
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/PluginSmall;

    .prologue
    .line 80
    iget v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->landscapeLimitSlope:F

    return v0
.end method

.method static synthetic access$4800(Lcom/youku/phone/detail/plugin/PluginSmall;)I
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/PluginSmall;

    .prologue
    .line 80
    iget v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->duration:I

    return v0
.end method

.method static synthetic access$4802(Lcom/youku/phone/detail/plugin/PluginSmall;I)I
    .locals 0
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/PluginSmall;
    .param p1, "x1"    # I

    .prologue
    .line 80
    iput p1, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->duration:I

    return p1
.end method

.method static synthetic access$4900(Lcom/youku/phone/detail/plugin/PluginSmall;)I
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/PluginSmall;

    .prologue
    .line 80
    iget v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->progress_zoom:I

    return v0
.end method

.method static synthetic access$4902(Lcom/youku/phone/detail/plugin/PluginSmall;I)I
    .locals 0
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/PluginSmall;
    .param p1, "x1"    # I

    .prologue
    .line 80
    iput p1, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->progress_zoom:I

    return p1
.end method

.method static synthetic access$500(Lcom/youku/phone/detail/plugin/PluginSmall;)I
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/PluginSmall;

    .prologue
    .line 80
    iget v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->directionalLock:I

    return v0
.end method

.method static synthetic access$5000(Lcom/youku/phone/detail/plugin/PluginSmall;)I
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/PluginSmall;

    .prologue
    .line 80
    iget v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->currentPosition:I

    return v0
.end method

.method static synthetic access$5002(Lcom/youku/phone/detail/plugin/PluginSmall;I)I
    .locals 0
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/PluginSmall;
    .param p1, "x1"    # I

    .prologue
    .line 80
    iput p1, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->currentPosition:I

    return p1
.end method

.method static synthetic access$502(Lcom/youku/phone/detail/plugin/PluginSmall;I)I
    .locals 0
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/PluginSmall;
    .param p1, "x1"    # I

    .prologue
    .line 80
    iput p1, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->directionalLock:I

    return p1
.end method

.method static synthetic access$5024(Lcom/youku/phone/detail/plugin/PluginSmall;F)I
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/PluginSmall;
    .param p1, "x1"    # F

    .prologue
    .line 80
    iget v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->currentPosition:I

    int-to-float v0, v0

    sub-float/2addr v0, p1

    float-to-int v0, v0

    iput v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->currentPosition:I

    return v0
.end method

.method static synthetic access$5100(Lcom/youku/phone/detail/plugin/PluginSmall;)I
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/PluginSmall;

    .prologue
    .line 80
    iget v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->_currentPosition:I

    return v0
.end method

.method static synthetic access$5102(Lcom/youku/phone/detail/plugin/PluginSmall;I)I
    .locals 0
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/PluginSmall;
    .param p1, "x1"    # I

    .prologue
    .line 80
    iput p1, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->_currentPosition:I

    return p1
.end method

.method static synthetic access$600(Lcom/youku/phone/detail/plugin/PluginSmall;)Landroid/view/GestureDetector;
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/PluginSmall;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mGestureDetector:Landroid/view/GestureDetector;

    return-object v0
.end method

.method static synthetic access$700(Lcom/youku/phone/detail/plugin/PluginSmall;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/PluginSmall;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->settingVolume:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$800(Lcom/youku/phone/detail/plugin/PluginSmall;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/PluginSmall;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->settingBright:Landroid/view/View;

    return-object v0
.end method

.method private changePlayPause()V
    .locals 2

    .prologue
    .line 1799
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->play_pauseButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-nez v0, :cond_1

    .line 1808
    :cond_0
    :goto_0
    return-void

    .line 1801
    :cond_1
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1802
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->play_pauseButton:Landroid/widget/ImageButton;

    const v1, 0x7f02005c

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1803
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->play:Landroid/view/View;

    const v1, 0x7f0201e7

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 1805
    :cond_2
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->play_pauseButton:Landroid/widget/ImageButton;

    const v1, 0x7f02005d

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1806
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->play:Landroid/view/View;

    const v1, 0x7f0201e8

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method private disableController()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1981
    const-string v0, "PluginSmall"

    const-string v1, "disableController"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1982
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->disableController:Z

    .line 1983
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->controlLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 1984
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->controlLayout:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1986
    :cond_0
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->interactFrameLayout:Landroid/widget/FrameLayout;

    invoke-direct {p0, v2, v0}, Lcom/youku/phone/detail/plugin/PluginSmall;->setClickable(ZLandroid/view/View;)V

    .line 1987
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->play_pauseButton:Landroid/widget/ImageButton;

    invoke-direct {p0, v2, v0}, Lcom/youku/phone/detail/plugin/PluginSmall;->setClickable(ZLandroid/view/View;)V

    .line 1988
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->videoBar:Landroid/widget/SeekBar;

    invoke-direct {p0, v2, v0}, Lcom/youku/phone/detail/plugin/PluginSmall;->setClickable(ZLandroid/view/View;)V

    .line 1989
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->moreImageButton:Landroid/widget/ImageButton;

    invoke-direct {p0, v2, v0}, Lcom/youku/phone/detail/plugin/PluginSmall;->setClickable(ZLandroid/view/View;)V

    .line 1990
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->moreTextView:Landroid/widget/TextView;

    invoke-direct {p0, v2, v0}, Lcom/youku/phone/detail/plugin/PluginSmall;->setClickable(ZLandroid/view/View;)V

    .line 1991
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mContainerLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0, v2, v0}, Lcom/youku/phone/detail/plugin/PluginSmall;->setClickable(ZLandroid/view/View;)V

    .line 1992
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mBtnFullScreen:Landroid/widget/ImageButton;

    invoke-direct {p0, v2, v0}, Lcom/youku/phone/detail/plugin/PluginSmall;->setClickable(ZLandroid/view/View;)V

    .line 1993
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->videoBar:Landroid/widget/SeekBar;

    invoke-direct {p0, v2, v0}, Lcom/youku/phone/detail/plugin/PluginSmall;->setClickable(ZLandroid/view/View;)V

    .line 1995
    return-void
.end method

.method private disableControllerHide()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1954
    const-string v0, "PluginSmall"

    const-string v1, "disableControllerHide"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1955
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->play_pauseButton:Landroid/widget/ImageButton;

    invoke-direct {p0, v2, v0}, Lcom/youku/phone/detail/plugin/PluginSmall;->setClickable(ZLandroid/view/View;)V

    .line 1956
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->videoBar:Landroid/widget/SeekBar;

    invoke-direct {p0, v2, v0}, Lcom/youku/phone/detail/plugin/PluginSmall;->setClickable(ZLandroid/view/View;)V

    .line 1957
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->moreImageButton:Landroid/widget/ImageButton;

    invoke-direct {p0, v2, v0}, Lcom/youku/phone/detail/plugin/PluginSmall;->setClickable(ZLandroid/view/View;)V

    .line 1958
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->moreTextView:Landroid/widget/TextView;

    invoke-direct {p0, v2, v0}, Lcom/youku/phone/detail/plugin/PluginSmall;->setClickable(ZLandroid/view/View;)V

    .line 1960
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mContainerLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0, v2, v0}, Lcom/youku/phone/detail/plugin/PluginSmall;->setClickable(ZLandroid/view/View;)V

    .line 1961
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mBtnFullScreen:Landroid/widget/ImageButton;

    invoke-direct {p0, v2, v0}, Lcom/youku/phone/detail/plugin/PluginSmall;->setClickable(ZLandroid/view/View;)V

    .line 1962
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->videoBar:Landroid/widget/SeekBar;

    invoke-direct {p0, v2, v0}, Lcom/youku/phone/detail/plugin/PluginSmall;->setClickable(ZLandroid/view/View;)V

    .line 1963
    return-void
.end method

.method private enableController()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1966
    const-string v0, "PluginSmall"

    const-string v1, "enableController"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1967
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->disableController:Z

    .line 1968
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->interactFrameLayout:Landroid/widget/FrameLayout;

    invoke-direct {p0, v2, v0}, Lcom/youku/phone/detail/plugin/PluginSmall;->setClickable(ZLandroid/view/View;)V

    .line 1969
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->play_pauseButton:Landroid/widget/ImageButton;

    invoke-direct {p0, v2, v0}, Lcom/youku/phone/detail/plugin/PluginSmall;->setClickable(ZLandroid/view/View;)V

    .line 1970
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->videoBar:Landroid/widget/SeekBar;

    invoke-direct {p0, v2, v0}, Lcom/youku/phone/detail/plugin/PluginSmall;->setClickable(ZLandroid/view/View;)V

    .line 1971
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->moreImageButton:Landroid/widget/ImageButton;

    invoke-direct {p0, v2, v0}, Lcom/youku/phone/detail/plugin/PluginSmall;->setClickable(ZLandroid/view/View;)V

    .line 1972
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->moreTextView:Landroid/widget/TextView;

    invoke-direct {p0, v2, v0}, Lcom/youku/phone/detail/plugin/PluginSmall;->setClickable(ZLandroid/view/View;)V

    .line 1974
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mContainerLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0, v2, v0}, Lcom/youku/phone/detail/plugin/PluginSmall;->setClickable(ZLandroid/view/View;)V

    .line 1975
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mBtnFullScreen:Landroid/widget/ImageButton;

    invoke-direct {p0, v2, v0}, Lcom/youku/phone/detail/plugin/PluginSmall;->setClickable(ZLandroid/view/View;)V

    .line 1976
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->videoBar:Landroid/widget/SeekBar;

    invoke-direct {p0, v2, v0}, Lcom/youku/phone/detail/plugin/PluginSmall;->setClickable(ZLandroid/view/View;)V

    .line 1978
    return-void
.end method

.method private endGesture()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 379
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-boolean v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isADShowing:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->firstLoaded:Z

    if-nez v0, :cond_1

    .line 394
    :cond_0
    :goto_0
    return-void

    .line 383
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->lastInteractTime:J

    .line 385
    iget v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->currentPosition:I

    iget v1, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->_currentPosition:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-ltz v0, :cond_2

    iget v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->directionalLock:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 388
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->videoBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->currentPosition:I

    invoke-virtual {p0, v0, v1}, Lcom/youku/phone/detail/plugin/PluginSmall;->seekSlideChange(Landroid/widget/SeekBar;I)V

    .line 389
    iget v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->currentPosition:I

    iget v1, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->_currentPosition:I

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/youku/phone/detail/plugin/PluginSmall;->showCenterSildeTime(IIZ)V

    .line 391
    :cond_2
    iput v3, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->currentPosition:I

    .line 392
    iput v3, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->duration:I

    .line 393
    iput v3, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->_currentPosition:I

    goto :goto_0
.end method

.method private findView()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 564
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->containerView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 646
    :goto_0
    return-void

    .line 567
    :cond_0
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->containerView:Landroid/view/View;

    const v1, 0x7f0c0c0e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mNoRightHint:Landroid/widget/TextView;

    .line 569
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->containerView:Landroid/view/View;

    const v1, 0x7f0c0c06

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mRegisterNum:Landroid/widget/TextView;

    .line 570
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->containerView:Landroid/view/View;

    const v1, 0x7f0c0c07

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mLicenseNum:Landroid/widget/TextView;

    .line 572
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->containerView:Landroid/view/View;

    const v1, 0x7f0c0c0f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mHint3GOnLineLayout:Landroid/view/View;

    .line 573
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->containerView:Landroid/view/View;

    const v1, 0x7f0c0c10

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mBtnPlay3GOnLine:Landroid/widget/ImageButton;

    .line 574
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mBtnPlay3GOnLine:Landroid/widget/ImageButton;

    invoke-direct {p0, v0}, Lcom/youku/phone/detail/plugin/PluginSmall;->setClickListener(Landroid/view/View;)V

    .line 576
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->containerView:Landroid/view/View;

    const v1, 0x7f0c0c04

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->water_mark_bg:Landroid/view/View;

    .line 577
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->containerView:Landroid/view/View;

    const v1, 0x7f0c0694

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->seekLoadingContainerView:Landroid/view/View;

    .line 579
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->containerView:Landroid/view/View;

    const v1, 0x7f0c068d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->black:Landroid/view/View;

    .line 580
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->containerView:Landroid/view/View;

    const v1, 0x7f0c0e3a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mContainerLayout:Landroid/widget/LinearLayout;

    .line 582
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->containerView:Landroid/view/View;

    const v1, 0x7f0c0c03

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->interactFrameLayout:Landroid/widget/FrameLayout;

    .line 584
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->context:Lcom/tudou/ui/activity/DetailActivity;

    new-instance v2, Lcom/youku/phone/detail/plugin/PluginSmall$FullScreenGestureListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/youku/phone/detail/plugin/PluginSmall$FullScreenGestureListener;-><init>(Lcom/youku/phone/detail/plugin/PluginSmall;Lcom/youku/phone/detail/plugin/PluginSmall$1;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mGestureDetector:Landroid/view/GestureDetector;

    .line 586
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->interactFrameLayout:Landroid/widget/FrameLayout;

    invoke-direct {p0, v0}, Lcom/youku/phone/detail/plugin/PluginSmall;->setClickListener(Landroid/view/View;)V

    .line 588
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->moreImageButton:Landroid/widget/ImageButton;

    invoke-direct {p0, v0}, Lcom/youku/phone/detail/plugin/PluginSmall;->setClickListener(Landroid/view/View;)V

    .line 589
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->downloadImageButton:Landroid/widget/ImageButton;

    invoke-direct {p0, v0}, Lcom/youku/phone/detail/plugin/PluginSmall;->setClickListener(Landroid/view/View;)V

    .line 590
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->moreImageButton:Landroid/widget/ImageButton;

    invoke-direct {p0, v4, v0}, Lcom/youku/phone/detail/plugin/PluginSmall;->setClickable(ZLandroid/view/View;)V

    .line 591
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mContainerLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0, v4, v0}, Lcom/youku/phone/detail/plugin/PluginSmall;->setClickable(ZLandroid/view/View;)V

    .line 592
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->containerView:Landroid/view/View;

    const v1, 0x7f0c0c09

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->controlLayout:Landroid/widget/RelativeLayout;

    .line 593
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->containerView:Landroid/view/View;

    const v1, 0x7f0c0c08

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->controlLayoutGesture:Landroid/view/View;

    .line 595
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->controlLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    .line 596
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->controlLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 597
    :cond_1
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->containerView:Landroid/view/View;

    const v1, 0x7f0c032d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->videoBar:Landroid/widget/SeekBar;

    .line 599
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->containerView:Landroid/view/View;

    const v1, 0x7f0c0c0a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->sb_detail_play_progress_hide:Landroid/widget/SeekBar;

    .line 601
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->videoBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_2

    .line 602
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->videoBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 603
    :cond_2
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->containerView:Landroid/view/View;

    const v1, 0x7f0c0331

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->play_pauseButton:Landroid/widget/ImageButton;

    .line 604
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->containerView:Landroid/view/View;

    const v1, 0x7f0c0329

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mBtnFullScreen:Landroid/widget/ImageButton;

    .line 606
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->containerView:Landroid/view/View;

    const v1, 0x7f0c068e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->black_music_bg:Landroid/view/View;

    .line 608
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->play_pauseButton:Landroid/widget/ImageButton;

    invoke-direct {p0, v0}, Lcom/youku/phone/detail/plugin/PluginSmall;->setClickListener(Landroid/view/View;)V

    .line 609
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mBtnFullScreen:Landroid/widget/ImageButton;

    invoke-direct {p0, v0}, Lcom/youku/phone/detail/plugin/PluginSmall;->setClickListener(Landroid/view/View;)V

    .line 610
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->containerView:Landroid/view/View;

    const v1, 0x7f0c0e00

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->playTitleTextView:Landroid/widget/TextView;

    .line 612
    invoke-direct {p0}, Lcom/youku/phone/detail/plugin/PluginSmall;->initSeekLoading()V

    .line 613
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v0, :cond_3

    .line 615
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->videoBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v1}, Lcom/youku/player/module/VideoUrlInfo;->getDurationMills()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 616
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->sb_detail_play_progress_hide:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v1}, Lcom/youku/player/module/VideoUrlInfo;->getDurationMills()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 619
    :cond_3
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->containerView:Landroid/view/View;

    const v1, 0x7f0c032b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->play:Landroid/view/View;

    .line 620
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->play:Landroid/view/View;

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->clickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 621
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v0, :cond_4

    .line 622
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 623
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->play_pauseButton:Landroid/widget/ImageButton;

    const v1, 0x7f02005c

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 624
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->play:Landroid/view/View;

    const v1, 0x7f0201e7

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 629
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->containerView:Landroid/view/View;

    const v1, 0x7f0c032f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->time:Landroid/widget/TextView;

    .line 631
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->containerView:Landroid/view/View;

    const v1, 0x7f0c0330

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->total_time:Landroid/widget/TextView;

    .line 633
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->containerView:Landroid/view/View;

    const v1, 0x7f0c00f2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/youku/widget/AlwaysMarqueeTextView;

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->title:Lcom/youku/widget/AlwaysMarqueeTextView;

    .line 637
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->containerView:Landroid/view/View;

    const v1, 0x7f0c0325

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->test_play_layout:Landroid/view/View;

    .line 638
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->containerView:Landroid/view/View;

    const v1, 0x7f0c0326

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->vip_buy_tv1:Landroid/widget/TextView;

    .line 639
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->containerView:Landroid/view/View;

    const v1, 0x7f0c0327

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->vip_buy_tv2:Landroid/widget/TextView;

    .line 640
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->vip_buy_tv2:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/text/TextPaint;->setFlags(I)V

    .line 642
    invoke-direct {p0}, Lcom/youku/phone/detail/plugin/PluginSmall;->initRetry()V

    .line 643
    invoke-direct {p0}, Lcom/youku/phone/detail/plugin/PluginSmall;->initEndPage()V

    .line 644
    invoke-direct {p0}, Lcom/youku/phone/detail/plugin/PluginSmall;->initLoadInfoPage()V

    goto/16 :goto_0

    .line 626
    :cond_5
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->play_pauseButton:Landroid/widget/ImageButton;

    const v1, 0x7f02005d

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 627
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->play:Landroid/view/View;

    const v1, 0x7f0201e8

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1
.end method

.method private goReplayNextPage()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2520
    iput-boolean v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->firstLoaded:Z

    .line 2521
    iput-boolean v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->isRealVideoStart:Z

    .line 2522
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->context:Lcom/tudou/ui/activity/DetailActivity;

    if-eqz v0, :cond_0

    .line 2523
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->context:Lcom/tudou/ui/activity/DetailActivity;

    new-instance v1, Lcom/youku/phone/detail/plugin/PluginSmall$29;

    invoke-direct {v1, p0}, Lcom/youku/phone/detail/plugin/PluginSmall$29;-><init>(Lcom/youku/phone/detail/plugin/PluginSmall;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2534
    :cond_0
    return-void
.end method

.method private goReplayPage()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2477
    const-string v0, "PluginSmall"

    const-string v1, "goReplayPage"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2478
    iput-boolean v2, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->firstLoaded:Z

    .line 2479
    iput-boolean v2, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->isRealVideoStart:Z

    .line 2480
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->context:Lcom/tudou/ui/activity/DetailActivity;

    if-eqz v0, :cond_0

    .line 2481
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->context:Lcom/tudou/ui/activity/DetailActivity;

    new-instance v1, Lcom/youku/phone/detail/plugin/PluginSmall$28;

    invoke-direct {v1, p0}, Lcom/youku/phone/detail/plugin/PluginSmall$28;-><init>(Lcom/youku/phone/detail/plugin/PluginSmall;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2497
    :cond_0
    return-void
.end method

.method private hideControl()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 2325
    invoke-direct {p0, v4}, Lcom/youku/phone/detail/plugin/PluginSmall;->showBottomSeekBar(Z)V

    .line 2327
    const/4 v2, 0x2

    new-array v1, v2, [F

    .line 2328
    .local v1, "values":[F
    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v1, v2

    .line 2329
    const/4 v2, 0x0

    aput v2, v1, v4

    .line 2330
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    const-wide/16 v4, 0x12c

    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 2331
    .local v0, "animator":Landroid/animation/ValueAnimator;
    new-instance v2, Lcom/youku/phone/detail/plugin/PluginSmall$24;

    invoke-direct {v2, p0}, Lcom/youku/phone/detail/plugin/PluginSmall$24;-><init>(Lcom/youku/phone/detail/plugin/PluginSmall;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2338
    new-instance v2, Lcom/youku/phone/detail/plugin/PluginSmall$25;

    invoke-direct {v2, p0}, Lcom/youku/phone/detail/plugin/PluginSmall$25;-><init>(Lcom/youku/phone/detail/plugin/PluginSmall;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2347
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 2348
    return-void
.end method

.method private hideEndPage()V
    .locals 3

    .prologue
    .line 2500
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->context:Lcom/tudou/ui/activity/DetailActivity;

    if-eqz v1, :cond_0

    .line 2505
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->interactFrameLayout:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->endPageView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 2506
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->interactFrameLayout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->endPageView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 2507
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->endPageView:Landroid/view/View;

    const v2, 0x7f0c0428

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 2509
    .local v0, "nextLayout":Landroid/widget/LinearLayout;
    if-eqz v0, :cond_0

    .line 2510
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2516
    .end local v0    # "nextLayout":Landroid/widget/LinearLayout;
    :cond_0
    return-void
.end method

.method private hideLoadinfo()V
    .locals 2

    .prologue
    .line 2085
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->context:Lcom/tudou/ui/activity/DetailActivity;

    if-eqz v0, :cond_0

    .line 2086
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->context:Lcom/tudou/ui/activity/DetailActivity;

    new-instance v1, Lcom/youku/phone/detail/plugin/PluginSmall$22;

    invoke-direct {v1, p0}, Lcom/youku/phone/detail/plugin/PluginSmall$22;-><init>(Lcom/youku/phone/detail/plugin/PluginSmall;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2095
    :cond_0
    return-void
.end method

.method private hideRetryLayout()V
    .locals 2

    .prologue
    .line 1727
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->context:Lcom/tudou/ui/activity/DetailActivity;

    if-eqz v0, :cond_0

    .line 1731
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->retryView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1732
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->retryView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1737
    :cond_0
    return-void
.end method

.method private hideShowControl()V
    .locals 2

    .prologue
    .line 2302
    const-string v0, "PluginSmall"

    const-string v1, "hideShowControl()"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2303
    const-string v0, "plugin"

    invoke-static {v0}, Lcom/youku/util/Util;->showCurTrack(Ljava/lang/String;)V

    .line 2304
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->controlLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->play_pauseButton:Landroid/widget/ImageButton;

    if-nez v0, :cond_1

    .line 2312
    :cond_0
    :goto_0
    return-void

    .line 2307
    :cond_1
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->controlLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 2308
    invoke-direct {p0}, Lcom/youku/phone/detail/plugin/PluginSmall;->hideControl()V

    goto :goto_0

    .line 2310
    :cond_2
    invoke-direct {p0}, Lcom/youku/phone/detail/plugin/PluginSmall;->showControl()V

    goto :goto_0
.end method

.method private initEndPage()V
    .locals 3

    .prologue
    .line 794
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->context:Lcom/tudou/ui/activity/DetailActivity;

    if-nez v1, :cond_1

    .line 864
    :cond_0
    :goto_0
    return-void

    .line 796
    :cond_1
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->context:Lcom/tudou/ui/activity/DetailActivity;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 797
    .local v0, "mLayoutInflater":Landroid/view/LayoutInflater;
    if-eqz v0, :cond_0

    .line 799
    const v1, 0x7f0300e1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->endPageView:Landroid/view/View;

    .line 801
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->endPageView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 803
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->endPageView:Landroid/view/View;

    new-instance v2, Lcom/youku/phone/detail/plugin/PluginSmall$7;

    invoke-direct {v2, p0}, Lcom/youku/phone/detail/plugin/PluginSmall$7;-><init>(Lcom/youku/phone/detail/plugin/PluginSmall;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 810
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->endPageView:Landroid/view/View;

    const v2, 0x7f0c0428

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->nextLayout:Landroid/widget/LinearLayout;

    .line 811
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->endPageView:Landroid/view/View;

    const v2, 0x7f0c0427

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->replayLayout:Landroid/widget/LinearLayout;

    .line 812
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->nextLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_2

    .line 813
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->nextLayout:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/youku/phone/detail/plugin/PluginSmall$8;

    invoke-direct {v2, p0}, Lcom/youku/phone/detail/plugin/PluginSmall$8;-><init>(Lcom/youku/phone/detail/plugin/PluginSmall;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 824
    :cond_2
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->replayLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    .line 825
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->replayLayout:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/youku/phone/detail/plugin/PluginSmall$9;

    invoke-direct {v2, p0}, Lcom/youku/phone/detail/plugin/PluginSmall$9;-><init>(Lcom/youku/phone/detail/plugin/PluginSmall;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private initGesture()V
    .locals 3

    .prologue
    .line 236
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->context:Lcom/tudou/ui/activity/DetailActivity;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->sp:Landroid/content/SharedPreferences;

    .line 237
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->containerView:Landroid/view/View;

    const v1, 0x7f0c0b36

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->playGestureCenterTime:Landroid/widget/TextView;

    .line 239
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->containerView:Landroid/view/View;

    const v1, 0x7f0c0b6c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->playGestureCenterTime_line:Landroid/widget/TextView;

    .line 241
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->containerView:Landroid/view/View;

    const v1, 0x7f0c0b6b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->play_controller_center_time_layout:Landroid/view/View;

    .line 243
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->containerView:Landroid/view/View;

    const v1, 0x7f0c0b6d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->pos_line:Landroid/view/View;

    .line 244
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->containerView:Landroid/view/View;

    const v1, 0x7f0c0b37

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->settingBright:Landroid/view/View;

    .line 246
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->containerView:Landroid/view/View;

    const v1, 0x7f0c0b38

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->settingVolume:Landroid/view/View;

    .line 249
    new-instance v0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenBright;

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->containerView:Landroid/view/View;

    iget-object v2, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->context:Lcom/tudou/ui/activity/DetailActivity;

    invoke-direct {v0, v1, v2}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenBright;-><init>(Landroid/view/View;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->bright:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenBright;

    .line 250
    new-instance v0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenVolume;

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->containerView:Landroid/view/View;

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenVolume;-><init>(Landroid/view/View;I)V

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->volume:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenVolume;

    .line 251
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/PluginSmall;->initVolumeAndBright()V

    .line 252
    return-void
.end method

.method private initLoadInfoPage()V
    .locals 3

    .prologue
    .line 778
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->context:Lcom/tudou/ui/activity/DetailActivity;

    if-nez v1, :cond_1

    .line 791
    :cond_0
    :goto_0
    return-void

    .line 780
    :cond_1
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->context:Lcom/tudou/ui/activity/DetailActivity;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 781
    .local v0, "mLayoutInflater":Landroid/view/LayoutInflater;
    if-eqz v0, :cond_0

    .line 783
    const v1, 0x7f0300e0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->loadingInfoLayout:Landroid/widget/RelativeLayout;

    .line 785
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->loadingInfoLayout:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_0

    .line 787
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->loadingInfoLayout:Landroid/widget/RelativeLayout;

    const v2, 0x7f0c0425

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/youku/widget/Loading;

    iput-object v1, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->infoSeekBar:Lcom/youku/widget/Loading;

    .line 789
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->infoSeekBar:Lcom/youku/widget/Loading;

    const v2, 0x7f02066f

    invoke-virtual {v1, v2}, Lcom/youku/widget/Loading;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method private initPayFragment(Lcom/youku/player/module/PayInfo;ZILjava/lang/String;)V
    .locals 9
    .param p1, "payInfo"    # Lcom/youku/player/module/PayInfo;
    .param p2, "isFullScreen"    # Z
    .param p3, "vipError"    # I
    .param p4, "tip"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 2841
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->infoSeekBar:Lcom/youku/widget/Loading;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/youku/widget/Loading;->setVisibility(I)V

    .line 2842
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/PluginSmall;->hideLoading()V

    .line 2843
    invoke-direct {p0}, Lcom/youku/phone/detail/plugin/PluginSmall;->hideRetryLayout()V

    .line 2844
    iput-boolean v4, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->isPayVideoShow:Z

    .line 2845
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->pluginSmallPayPageFragment:Lcom/youku/phone/detail/plugin/PluginSmallPayPageFragment;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->context:Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v0}, Lcom/tudou/ui/activity/DetailActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2846
    new-instance v0, Lcom/youku/phone/detail/plugin/PluginSmallPayPageFragment;

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v1}, Lcom/youku/player/module/VideoUrlInfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-object v2, p1

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/youku/phone/detail/plugin/PluginSmallPayPageFragment;-><init>(Ljava/lang/String;Lcom/youku/player/module/PayInfo;Lcom/youku/player/plugin/MediaPlayerDelegate;ZILjava/lang/String;)V

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->pluginSmallPayPageFragment:Lcom/youku/phone/detail/plugin/PluginSmallPayPageFragment;

    .line 2849
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->context:Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v0}, Lcom/tudou/ui/activity/DetailActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v7

    .line 2850
    .local v7, "fragmentManager":Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v7}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v8

    .line 2851
    .local v8, "fragmentTransaction":Landroid/support/v4/app/FragmentTransaction;
    const v0, 0x7f0c0c0b

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->pluginSmallPayPageFragment:Lcom/youku/phone/detail/plugin/PluginSmallPayPageFragment;

    invoke-virtual {v8, v0, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 2852
    invoke-virtual {v8}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 2855
    .end local v7    # "fragmentManager":Landroid/support/v4/app/FragmentManager;
    .end local v8    # "fragmentTransaction":Landroid/support/v4/app/FragmentTransaction;
    :cond_0
    return-void
.end method

.method private initRetry()V
    .locals 2

    .prologue
    .line 661
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->containerView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 775
    :cond_0
    :goto_0
    return-void

    .line 663
    :cond_1
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->containerView:Landroid/view/View;

    const v1, 0x7f0c0c0d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->retryView:Landroid/view/View;

    .line 664
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->containerView:Landroid/view/View;

    const v1, 0x7f0c042d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->goRetry:Landroid/widget/LinearLayout;

    .line 665
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->containerView:Landroid/view/View;

    const v1, 0x7f0c042e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->retryIV:Landroid/widget/ImageView;

    .line 666
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->containerView:Landroid/view/View;

    const v1, 0x7f0c042f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->retryTV:Landroid/widget/TextView;

    .line 667
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->goRetry:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 668
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->goRetry:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/youku/phone/detail/plugin/PluginSmall$6;

    invoke-direct {v1, p0}, Lcom/youku/phone/detail/plugin/PluginSmall$6;-><init>(Lcom/youku/phone/detail/plugin/PluginSmall;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private initSeekLoading()V
    .locals 2

    .prologue
    .line 1924
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->seekLoadingContainerView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 1933
    :goto_0
    return-void

    .line 1926
    :cond_0
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->seekLoadingContainerView:Landroid/view/View;

    const v1, 0x7f0c042b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->playNameTextView:Landroid/widget/TextView;

    .line 1928
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->seekLoadingContainerView:Landroid/view/View;

    const v1, 0x7f0c042a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/youku/widget/Loading;

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->playLoadingBar:Lcom/youku/widget/Loading;

    .line 1930
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->playLoadingBar:Lcom/youku/widget/Loading;

    const v1, 0x7f02066f

    invoke-virtual {v0, v1}, Lcom/youku/widget/Loading;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method private isLand()Z
    .locals 3

    .prologue
    .line 559
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->context:Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v1}, Lcom/tudou/ui/activity/DetailActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 560
    .local v0, "getOrient":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v2

    if-le v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private playLocalNext(Z)V
    .locals 5
    .param p1, "auto"    # Z

    .prologue
    const/4 v3, 0x0

    .line 2446
    iget-object v4, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v4, v4, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-nez v4, :cond_1

    .line 2473
    :cond_0
    :goto_0
    return-void

    .line 2449
    :cond_1
    invoke-static {}, Lcom/tudou/service/download/DownloadManager;->getInstance()Lcom/tudou/service/download/DownloadManager;

    move-result-object v1

    .line 2450
    .local v1, "download":Lcom/tudou/service/download/DownloadManager;
    iget-object v4, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v4, v4, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v4}, Lcom/youku/player/module/VideoUrlInfo;->getVid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/tudou/service/download/DownloadManager;->getNextDownloadInfo(Ljava/lang/String;)Lcom/tudou/service/download/DownloadInfo;

    move-result-object v2

    .line 2452
    .local v2, "info":Lcom/tudou/service/download/DownloadInfo;
    if-nez v2, :cond_3

    .line 2454
    const-string v3, "local"

    iget-object v4, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v4, v4, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v4}, Lcom/youku/player/module/VideoUrlInfo;->getPlayType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 2456
    iget-object v3, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v3}, Lcom/youku/player/plugin/MediaPlayerDelegate;->release()V

    .line 2457
    iget-object v3, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v3}, Lcom/youku/player/plugin/MediaPlayerDelegate;->setFirstUnloaded()V

    .line 2458
    invoke-direct {p0}, Lcom/youku/phone/detail/plugin/PluginSmall;->goReplayPage()V

    goto :goto_0

    .line 2460
    :cond_2
    iget-object v3, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v3}, Lcom/youku/player/plugin/MediaPlayerDelegate;->finishActivity()V

    goto :goto_0

    .line 2464
    :cond_3
    iput-boolean v3, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->firstLoaded:Z

    .line 2465
    iput-boolean v3, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->isRealVideoStart:Z

    .line 2470
    new-instance v0, Lcom/youku/player/module/PlayVideoInfo$Builder;

    iget-object v4, v2, Lcom/tudou/service/download/DownloadInfo;->videoid:Ljava/lang/String;

    invoke-direct {v0, v4}, Lcom/youku/player/module/PlayVideoInfo$Builder;-><init>(Ljava/lang/String;)V

    .line 2471
    .local v0, "builder":Lcom/youku/player/module/PlayVideoInfo$Builder;
    sget-object v4, Lcom/youku/player/base/PlayType;->LOCAL_DOWNLOAD:Lcom/youku/player/base/PlayType;

    invoke-virtual {v0, v4}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setPlayType(Lcom/youku/player/base/PlayType;)Lcom/youku/player/module/PlayVideoInfo$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setFromYouku(Z)Lcom/youku/player/module/PlayVideoInfo$Builder;

    move-result-object v4

    if-eqz p1, :cond_4

    const/4 v3, 0x1

    :cond_4
    invoke-virtual {v4, v3}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setAutoPlay(I)Lcom/youku/player/module/PlayVideoInfo$Builder;

    .line 2472
    iget-object v3, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0}, Lcom/youku/player/module/PlayVideoInfo$Builder;->build()Lcom/youku/player/module/PlayVideoInfo;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/youku/player/plugin/MediaPlayerDelegate;->playVideo(Lcom/youku/player/module/PlayVideoInfo;)V

    goto :goto_0
.end method

.method private playNextVideo(Z)V
    .locals 5
    .param p1, "auto"    # Z

    .prologue
    const/4 v1, 0x0

    .line 2413
    iput-boolean v1, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->firstLoaded:Z

    .line 2414
    iput-boolean v1, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->isRealVideoStart:Z

    .line 2415
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v2, v2, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-nez v2, :cond_1

    .line 2440
    :cond_0
    :goto_0
    return-void

    .line 2417
    :cond_1
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v2

    if-nez v2, :cond_2

    .line 2418
    invoke-direct {p0, p1}, Lcom/youku/phone/detail/plugin/PluginSmall;->playLocalNext(Z)V

    goto :goto_0

    .line 2421
    :cond_2
    iget-boolean v2, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mHasNext:Z

    if-nez v2, :cond_3

    .line 2422
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/PluginSmall;->goEndPage()V

    goto :goto_0

    .line 2425
    :cond_3
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mNextVideoType:Lcom/tudou/ui/activity/DetailActivity$NextVideoType;

    sget-object v3, Lcom/tudou/ui/activity/DetailActivity$NextVideoType;->RECOMMEND:Lcom/tudou/ui/activity/DetailActivity$NextVideoType;

    if-ne v2, v3, :cond_4

    .line 2426
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->context:Lcom/tudou/ui/activity/DetailActivity;

    iget-object v2, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mNextVid:Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mNextAlbumId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Lcom/tudou/ui/activity/DetailActivity;->goRelatedVideo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2434
    :cond_4
    new-instance v0, Lcom/youku/player/module/PlayVideoInfo$Builder;

    iget-object v2, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mNextVid:Ljava/lang/String;

    invoke-direct {v0, v2}, Lcom/youku/player/module/PlayVideoInfo$Builder;-><init>(Ljava/lang/String;)V

    .line 2435
    .local v0, "builder":Lcom/youku/player/module/PlayVideoInfo$Builder;
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setTudouQuality(I)Lcom/youku/player/module/PlayVideoInfo$Builder;

    .line 2436
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v2, v2, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v2, v2, Lcom/youku/player/module/VideoUrlInfo;->playlistCode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setPlaylistCode(Ljava/lang/String;)Lcom/youku/player/module/PlayVideoInfo$Builder;

    .line 2437
    invoke-virtual {v0, v1}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setNoAdv(Z)Lcom/youku/player/module/PlayVideoInfo$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setFromYouku(Z)Lcom/youku/player/module/PlayVideoInfo$Builder;

    move-result-object v2

    if-eqz p1, :cond_5

    const/4 v1, 0x1

    :cond_5
    invoke-virtual {v2, v1}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setAutoPlay(I)Lcom/youku/player/module/PlayVideoInfo$Builder;

    .line 2438
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0}, Lcom/youku/player/module/PlayVideoInfo$Builder;->build()Lcom/youku/player/module/PlayVideoInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/youku/player/plugin/MediaPlayerDelegate;->playVideo(Lcom/youku/player/module/PlayVideoInfo;)V

    goto :goto_0
.end method

.method private setClickListener(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 867
    if-nez p1, :cond_0

    .line 870
    :goto_0
    return-void

    .line 869
    :cond_0
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->clickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private setClickable(ZLandroid/view/View;)V
    .locals 0
    .param p1, "state"    # Z
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 1751
    if-nez p2, :cond_0

    .line 1754
    :goto_0
    return-void

    .line 1753
    :cond_0
    invoke-virtual {p2, p1}, Landroid/view/View;->setClickable(Z)V

    goto :goto_0
.end method

.method private setMusicPlay()V
    .locals 2

    .prologue
    .line 545
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v0}, Lcom/youku/player/module/VideoUrlInfo;->getMediaType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-nez v0, :cond_1

    .line 556
    :cond_0
    :goto_0
    return-void

    .line 549
    :cond_1
    const-string/jumbo v0, "\u89c6\u9891"

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v1}, Lcom/youku/player/module/VideoUrlInfo;->getMediaType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 551
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->black_music_bg:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 554
    :cond_2
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->black_music_bg:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private setTouchListener(Z)V
    .locals 2
    .param p1, "isTouch"    # Z

    .prologue
    .line 298
    if-eqz p1, :cond_0

    .line 299
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->controlLayoutGesture:Landroid/view/View;

    new-instance v1, Lcom/youku/phone/detail/plugin/PluginSmall$1;

    invoke-direct {v1, p0}, Lcom/youku/phone/detail/plugin/PluginSmall$1;-><init>(Lcom/youku/phone/detail/plugin/PluginSmall;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 339
    :goto_0
    return-void

    .line 337
    :cond_0
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->controlLayoutGesture:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0
.end method

.method private showBottomSeekBar(Z)V
    .locals 2
    .param p1, "isshow"    # Z

    .prologue
    .line 2315
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->sb_detail_play_progress_hide:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    .line 2316
    if-eqz p1, :cond_1

    .line 2317
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->sb_detail_play_progress_hide:Landroid/widget/SeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 2322
    :cond_0
    :goto_0
    return-void

    .line 2319
    :cond_1
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->sb_detail_play_progress_hide:Landroid/widget/SeekBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setVisibility(I)V

    goto :goto_0
.end method

.method private showControl()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2351
    const-string v0, "PluginSmall"

    const-string/jumbo v1, "showControl()"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2352
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->controlLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 2353
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->controlLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2355
    :cond_0
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->title:Lcom/youku/widget/AlwaysMarqueeTextView;

    if-eqz v0, :cond_1

    .line 2356
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->title:Lcom/youku/widget/AlwaysMarqueeTextView;

    invoke-virtual {v0}, Lcom/youku/widget/AlwaysMarqueeTextView;->requestFocus()Z

    .line 2358
    :cond_1
    invoke-direct {p0, v2}, Lcom/youku/phone/detail/plugin/PluginSmall;->showBottomSeekBar(Z)V

    .line 2359
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2360
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->play_pauseButton:Landroid/widget/ImageButton;

    const v1, 0x7f02005c

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 2361
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->play:Landroid/view/View;

    const v1, 0x7f0201e7

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 2366
    :goto_0
    return-void

    .line 2363
    :cond_2
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->play_pauseButton:Landroid/widget/ImageButton;

    const v1, 0x7f02005d

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 2364
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->play:Landroid/view/View;

    const v1, 0x7f0201e8

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method private showLoadinfo()V
    .locals 2

    .prologue
    .line 2069
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->context:Lcom/tudou/ui/activity/DetailActivity;

    if-eqz v0, :cond_0

    .line 2070
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->context:Lcom/tudou/ui/activity/DetailActivity;

    new-instance v1, Lcom/youku/phone/detail/plugin/PluginSmall$21;

    invoke-direct {v1, p0}, Lcom/youku/phone/detail/plugin/PluginSmall$21;-><init>(Lcom/youku/phone/detail/plugin/PluginSmall;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2082
    :cond_0
    return-void
.end method

.method private showRetryLayout()V
    .locals 2

    .prologue
    .line 1709
    invoke-direct {p0}, Lcom/youku/phone/detail/plugin/PluginSmall;->hideEndPage()V

    .line 1714
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->retryView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1715
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->retryView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1721
    :cond_0
    return-void
.end method

.method private startPlay()V
    .locals 4

    .prologue
    .line 1869
    const-string v0, "PluginSmall"

    const-string/jumbo v1, "startPlay()"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1870
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-nez v0, :cond_1

    .line 1886
    :cond_0
    :goto_0
    return-void

    .line 1872
    :cond_1
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-boolean v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isADShowing:Z

    if-nez v0, :cond_0

    .line 1875
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->start()V

    .line 1876
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v0, :cond_2

    .line 1877
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->context:Lcom/tudou/ui/activity/DetailActivity;

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v1}, Lcom/youku/player/module/VideoUrlInfo;->getVid()Ljava/lang/String;

    move-result-object v1

    const-string v2, "200"

    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/youku/vo/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/youku/player/util/AnalyticsWrapper;->playContinue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1881
    :cond_2
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->play_pauseButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_3

    .line 1882
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->play_pauseButton:Landroid/widget/ImageButton;

    const v1, 0x7f02005c

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1883
    :cond_3
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->play:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1884
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->play:Landroid/view/View;

    const v1, 0x7f0201e7

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0
.end method


# virtual methods
.method public OnCurrentPositionChangeListener(I)V
    .locals 10
    .param p1, "currentPosition"    # I

    .prologue
    const/4 v7, 0x0

    const-wide v8, 0x3fa1eb851eb851ecL    # 0.035

    const/16 v6, 0x8

    .line 1148
    invoke-virtual {p0, p1}, Lcom/youku/phone/detail/plugin/PluginSmall;->onCurrentPostionUpdate(I)V

    .line 1149
    const/4 v0, 0x0

    .line 1150
    .local v0, "isRegisterOrLicenseShow":Z
    const/16 v2, 0x1388

    if-ge p1, v2, :cond_3

    .line 1151
    iget-boolean v2, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mIsNeedRegisterNumOrLicenseNum:Z

    if-eqz v2, :cond_0

    .line 1152
    const/4 v0, 0x1

    .line 1158
    :cond_0
    :goto_0
    iget-boolean v2, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mIsRegisterOrLicenseShow:Z

    if-ne v0, v2, :cond_1

    iget v2, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mCurrentPositionChangeTimes:I

    const/4 v3, 0x2

    if-gt v2, v3, :cond_2

    .line 1159
    :cond_1
    if-eqz v0, :cond_4

    .line 1160
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mRegisterNum:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 1161
    .local v1, "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/PluginSmall;->getWidth()I

    move-result v2

    int-to-double v2, v2

    mul-double/2addr v2, v8

    double-to-int v2, v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 1162
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/PluginSmall;->getHeight()I

    move-result v2

    int-to-double v2, v2

    const-wide v4, 0x3fa47ae147ae147bL    # 0.04

    mul-double/2addr v2, v4

    double-to-int v2, v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1163
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mLicenseNum:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .end local v1    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 1164
    .restart local v1    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/PluginSmall;->getWidth()I

    move-result v2

    int-to-double v2, v2

    mul-double/2addr v2, v8

    double-to-int v2, v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 1165
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/PluginSmall;->getHeight()I

    move-result v2

    int-to-double v2, v2

    const-wide v4, 0x3fc1eb851eb851ecL    # 0.14

    mul-double/2addr v2, v4

    double-to-int v2, v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 1166
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mRegisterNum:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1167
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mLicenseNum:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1168
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->water_mark_bg:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1175
    .end local v1    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_2
    :goto_1
    iput-boolean v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mIsRegisterOrLicenseShow:Z

    .line 1176
    return-void

    .line 1155
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 1170
    :cond_4
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mRegisterNum:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1171
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mLicenseNum:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1172
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/PluginSmall;->setWaterMarkVisibility()V

    goto :goto_1
.end method

.method public OnPreparedListener()V
    .locals 2

    .prologue
    .line 1103
    const-string v0, "PluginSmall"

    const-string v1, " OnPreparedListener()"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1104
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->retryView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1105
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->retryView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1107
    :cond_0
    return-void
.end method

.method public OnSeekCompleteListener()V
    .locals 0

    .prologue
    .line 1113
    return-void
.end method

.method public OnTimeoutListener()V
    .locals 2

    .prologue
    .line 1123
    const-string v0, "PluginSmall"

    const-string v1, "OnTimeoutListener"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1124
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->context:Lcom/tudou/ui/activity/DetailActivity;

    if-nez v0, :cond_0

    .line 1139
    :goto_0
    return-void

    .line 1126
    :cond_0
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->context:Lcom/tudou/ui/activity/DetailActivity;

    new-instance v1, Lcom/youku/phone/detail/plugin/PluginSmall$13;

    invoke-direct {v1, p0}, Lcom/youku/phone/detail/plugin/PluginSmall$13;-><init>(Lcom/youku/phone/detail/plugin/PluginSmall;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1133
    const-string v0, "PluginSmall"

    const-string v1, " OnTimeoutListener()"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public OnVideoSizeChangedListener(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 1119
    return-void
.end method

.method public alertRetry(Landroid/app/Activity;I)V
    .locals 1
    .param p1, "c"    # Landroid/app/Activity;
    .param p2, "msgId"    # I

    .prologue
    .line 1075
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1099
    :goto_0
    return-void

    .line 1078
    :cond_0
    new-instance v0, Lcom/youku/phone/detail/plugin/PluginSmall$12;

    invoke-direct {v0, p0}, Lcom/youku/phone/detail/plugin/PluginSmall$12;-><init>(Lcom/youku/phone/detail/plugin/PluginSmall;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public back()V
    .locals 2

    .prologue
    .line 2563
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v0, :cond_3

    const-string v0, "net"

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v1, v1, Lcom/youku/player/module/VideoUrlInfo;->playType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2566
    iget-boolean v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->isRetry:Z

    if-eqz v0, :cond_1

    .line 2567
    invoke-direct {p0}, Lcom/youku/phone/detail/plugin/PluginSmall;->showRetryLayout()V

    .line 2586
    :cond_0
    :goto_0
    return-void

    .line 2569
    :cond_1
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-boolean v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isFullScreen:Z

    if-nez v0, :cond_2

    .line 2570
    invoke-direct {p0}, Lcom/youku/phone/detail/plugin/PluginSmall;->showControl()V

    .line 2572
    :cond_2
    invoke-direct {p0}, Lcom/youku/phone/detail/plugin/PluginSmall;->enableController()V

    goto :goto_0

    .line 2578
    :cond_3
    iget-boolean v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->isRealVideoStart:Z

    if-eqz v0, :cond_4

    .line 2579
    invoke-direct {p0}, Lcom/youku/phone/detail/plugin/PluginSmall;->enableController()V

    .line 2581
    :cond_4
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-boolean v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isFullScreen:Z

    if-nez v0, :cond_0

    .line 2582
    invoke-direct {p0}, Lcom/youku/phone/detail/plugin/PluginSmall;->showControl()V

    goto :goto_0
.end method

.method public clearNext()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 914
    iput-boolean v1, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mHasGetNext:Z

    .line 915
    iput-boolean v1, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mHasNext:Z

    .line 916
    iput-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mCurVid:Ljava/lang/String;

    .line 917
    iput-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mNextVid:Ljava/lang/String;

    .line 918
    iput-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mNextAlbumId:Ljava/lang/String;

    .line 919
    iput-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mNextVideoType:Lcom/tudou/ui/activity/DetailActivity$NextVideoType;

    .line 920
    return-void
.end method

.method public clearPayPage()V
    .locals 3

    .prologue
    .line 2829
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->pluginSmallPayPageFragment:Lcom/youku/phone/detail/plugin/PluginSmallPayPageFragment;

    if-eqz v2, :cond_0

    .line 2830
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->context:Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v2}, Lcom/tudou/ui/activity/DetailActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 2832
    .local v0, "fragmentManager":Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 2834
    .local v1, "fragmentTransaction":Landroid/support/v4/app/FragmentTransaction;
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->pluginSmallPayPageFragment:Lcom/youku/phone/detail/plugin/PluginSmallPayPageFragment;

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 2835
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 2836
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->pluginSmallPayPageFragment:Lcom/youku/phone/detail/plugin/PluginSmallPayPageFragment;

    .line 2838
    .end local v0    # "fragmentManager":Landroid/support/v4/app/FragmentManager;
    .end local v1    # "fragmentTransaction":Landroid/support/v4/app/FragmentTransaction;
    :cond_0
    return-void
.end method

.method public clearPlayState()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1460
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->context:Lcom/tudou/ui/activity/DetailActivity;

    if-nez v0, :cond_1

    .line 1469
    :cond_0
    :goto_0
    return-void

    .line 1462
    :cond_1
    iput v2, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->count:I

    .line 1463
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->playTitleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 1464
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->playTitleTextView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1465
    :cond_2
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->videoBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    .line 1466
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->videoBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1467
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->videoBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setMax(I)V

    goto :goto_0
.end method

.method public clearVideoTips()V
    .locals 0

    .prologue
    .line 3053
    return-void
.end method

.method public doPause()V
    .locals 1

    .prologue
    .line 342
    iget v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->directionalLock:I

    if-eqz v0, :cond_0

    .line 343
    invoke-direct {p0}, Lcom/youku/phone/detail/plugin/PluginSmall;->endGesture()V

    .line 344
    const/4 v0, 0x0

    iput v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->directionalLock:I

    .line 345
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/PluginSmall;->hideVolumeView()V

    .line 346
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/PluginSmall;->hideTimeView()V

    .line 347
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/PluginSmall;->hideBrightView()V

    .line 349
    :cond_0
    return-void
.end method

.method public getTitleHeight()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 2114
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->playTitleTextView:Landroid/widget/TextView;

    if-nez v2, :cond_1

    .line 2121
    :cond_0
    :goto_0
    return v1

    .line 2116
    :cond_1
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->playTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 2118
    .local v0, "mParams":Landroid/widget/LinearLayout$LayoutParams;
    if-eqz v0, :cond_0

    .line 2119
    iget v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    goto :goto_0
.end method

.method public goEndPage()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2540
    iput-boolean v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->firstLoaded:Z

    .line 2541
    iput-boolean v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->isRealVideoStart:Z

    .line 2542
    invoke-direct {p0}, Lcom/youku/phone/detail/plugin/PluginSmall;->hideLoadinfo()V

    .line 2543
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/PluginSmall;->hideLoading()V

    .line 2544
    invoke-direct {p0}, Lcom/youku/phone/detail/plugin/PluginSmall;->hideRetryLayout()V

    .line 2545
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v0, :cond_0

    .line 2547
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->release()V

    .line 2548
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->setFirstUnloaded()V

    .line 2549
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v0}, Lcom/youku/player/module/VideoUrlInfo;->getHaveNext()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v0}, Lcom/youku/player/module/VideoUrlInfo;->getCid()I

    move-result v0

    const/16 v1, 0x16

    if-eq v0, v1, :cond_1

    .line 2551
    invoke-direct {p0}, Lcom/youku/phone/detail/plugin/PluginSmall;->goReplayNextPage()V

    .line 2555
    :goto_0
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->context:Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v0}, Lcom/tudou/ui/activity/DetailActivity;->disableOrientation()V

    .line 2559
    :cond_0
    return-void

    .line 2553
    :cond_1
    invoke-direct {p0}, Lcom/youku/phone/detail/plugin/PluginSmall;->goReplayPage()V

    goto :goto_0
.end method

.method protected hideBrightView()V
    .locals 2

    .prologue
    .line 355
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->hideHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->hideBrightRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 356
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->settingBright:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 357
    return-void
.end method

.method public hideLoading()V
    .locals 2

    .prologue
    .line 2052
    const-string v0, "PluginSmall"

    const-string v1, "hideLoading() "

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2054
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->context:Lcom/tudou/ui/activity/DetailActivity;

    if-nez v0, :cond_0

    .line 2066
    :goto_0
    return-void

    .line 2056
    :cond_0
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->context:Lcom/tudou/ui/activity/DetailActivity;

    new-instance v1, Lcom/youku/phone/detail/plugin/PluginSmall$20;

    invoke-direct {v1, p0}, Lcom/youku/phone/detail/plugin/PluginSmall$20;-><init>(Lcom/youku/phone/detail/plugin/PluginSmall;)V

    invoke-virtual {v0, v1}, Lcom/tudou/ui/activity/DetailActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method protected hideTimeView()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 363
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->hideHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->hideTimeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 364
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->playGestureCenterTime:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 365
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->playGestureCenterTime_line:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 366
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->play_controller_center_time_layout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 367
    return-void
.end method

.method protected hideVolumeView()V
    .locals 2

    .prologue
    .line 373
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->hideHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->hideVolumeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 374
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->settingVolume:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 375
    return-void
.end method

.method public initVolumeAndBright()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    .line 255
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->context:Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v2}, Lcom/tudou/ui/activity/DetailActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "screen_brightness"

    const/4 v4, -0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->curBrightness:I

    .line 256
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->context:Lcom/tudou/ui/activity/DetailActivity;

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Lcom/tudou/ui/activity/DetailActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 257
    .local v1, "mAudioManager":Landroid/media/AudioManager;
    if-eqz v1, :cond_0

    .line 258
    invoke-virtual {v1}, Landroid/media/AudioManager;->getMode()I

    move-result v2

    const/4 v3, -0x2

    if-ne v2, v3, :cond_0

    .line 259
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setMode(I)V

    .line 262
    :cond_0
    invoke-virtual {v1, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    .line 263
    .local v0, "curVolue":I
    invoke-virtual {v1, v5}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v2

    iput v2, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->maxVolume:I

    .line 264
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->bright:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenBright;

    iget v3, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->maxBrightness:I

    mul-int/lit8 v3, v3, 0x1

    iget v4, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->curBrightness:I

    mul-int/lit8 v4, v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenBright;->initBrightness(II)V

    .line 265
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->volume:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenVolume;

    iget v3, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->maxVolume:I

    mul-int/lit8 v3, v3, 0xf

    mul-int/lit8 v4, v0, 0xf

    const/16 v5, 0xf

    invoke-virtual {v2, v3, v4, v5}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenVolume;->initVolume(III)V

    .line 266
    mul-int/lit8 v2, v0, 0xf

    int-to-float v2, v2

    iput v2, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->offsetY:F

    .line 267
    iget v2, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->curBrightness:I

    mul-int/lit8 v2, v2, 0x1

    int-to-float v2, v2

    iput v2, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->_offsetY:F

    .line 268
    return-void
.end method

.method public invisiblePayFragmentTitle()V
    .locals 1

    .prologue
    .line 2814
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->pluginSmallPayPageFragment:Lcom/youku/phone/detail/plugin/PluginSmallPayPageFragment;

    if-eqz v0, :cond_0

    .line 2815
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->pluginSmallPayPageFragment:Lcom/youku/phone/detail/plugin/PluginSmallPayPageFragment;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/PluginSmallPayPageFragment;->invisibleTitle()V

    .line 2817
    :cond_0
    return-void
.end method

.method public login(Z)V
    .locals 5
    .param p1, "isFromFullScreen"    # Z

    .prologue
    .line 2779
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->context:Lcom/tudou/ui/activity/DetailActivity;

    const-class v2, Lcom/tudou/ui/activity/LoginActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2780
    .local v0, "intent":Landroid/content/Intent;
    if-nez p1, :cond_0

    .line 2781
    const-string v1, "from"

    const/16 v2, 0x3ee

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2786
    :goto_0
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->context:Lcom/tudou/ui/activity/DetailActivity;

    const/16 v2, 0x7d0

    const v3, 0x7f040005

    const v4, 0x7f040004

    invoke-static {v1, v0, v2, v3, v4}, Lcom/tudou/android/Youku;->startActivityForResult(Landroid/content/Context;Landroid/content/Intent;III)V

    .line 2787
    return-void

    .line 2784
    :cond_0
    const-string v1, "from"

    const/16 v2, 0x3f0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0
.end method

.method public newVideo()V
    .locals 0

    .prologue
    .line 1382
    return-void
.end method

.method public onADplaying()V
    .locals 0

    .prologue
    .line 1678
    return-void
.end method

.method public onBufferingUpdateListener(I)V
    .locals 2
    .param p1, "percent"    # I

    .prologue
    .line 877
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->context:Lcom/tudou/ui/activity/DetailActivity;

    if-nez v0, :cond_0

    .line 904
    :goto_0
    return-void

    .line 879
    :cond_0
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->context:Lcom/tudou/ui/activity/DetailActivity;

    new-instance v1, Lcom/youku/phone/detail/plugin/PluginSmall$10;

    invoke-direct {v1, p0, p1}, Lcom/youku/phone/detail/plugin/PluginSmall$10;-><init>(Lcom/youku/phone/detail/plugin/PluginSmall;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onClearUpDownFav()V
    .locals 0

    .prologue
    .line 2699
    return-void
.end method

.method public onCompletionListener()V
    .locals 5

    .prologue
    .line 933
    const-string v0, "PluginSmall"

    const-string v1, "onCompletionListener"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 934
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-boolean v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isFullScreen:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->error:Z

    if-eqz v0, :cond_1

    .line 960
    :cond_0
    :goto_0
    return-void

    .line 937
    :cond_1
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->context:Lcom/tudou/ui/activity/DetailActivity;

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->context:Lcom/tudou/ui/activity/DetailActivity;

    invoke-static {v1}, Lcom/youku/player/goplay/Profile;->getPlayMode(Landroid/content/Context;)I

    move-result v1

    iget-object v2, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mCurVid:Ljava/lang/String;

    iget-object v3, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mNextVid:Ljava/lang/String;

    iget-object v4, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mNextVideoType:Lcom/tudou/ui/activity/DetailActivity$NextVideoType;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/tudou/ui/activity/DetailActivity;->onPlayComplete(ILjava/lang/String;Ljava/lang/String;Lcom/tudou/ui/activity/DetailActivity$NextVideoType;)V

    .line 939
    const/4 v0, 0x0

    iput v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->count:I

    .line 940
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isComplete:Z

    .line 941
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->context:Lcom/tudou/ui/activity/DetailActivity;

    new-instance v1, Lcom/youku/phone/detail/plugin/PluginSmall$11;

    invoke-direct {v1, p0}, Lcom/youku/phone/detail/plugin/PluginSmall$11;-><init>(Lcom/youku/phone/detail/plugin/PluginSmall;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method protected onCurrentPostionUpdate(I)V
    .locals 6
    .param p1, "currentPostion"    # I

    .prologue
    .line 1180
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->black:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1186
    iget-boolean v2, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->disableController:Z

    if-eqz v2, :cond_0

    .line 1187
    invoke-direct {p0}, Lcom/youku/phone/detail/plugin/PluginSmall;->enableController()V

    .line 1189
    :cond_0
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v2, v2, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-boolean v2, v2, Lcom/youku/player/plugin/MediaPlayerDelegate;->isADShowing:Z

    if-eqz v2, :cond_2

    .line 1267
    :cond_1
    :goto_0
    return-void

    .line 1192
    :cond_2
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-boolean v2, v2, Lcom/youku/player/plugin/MediaPlayerDelegate;->isReleased:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-boolean v2, v2, Lcom/youku/player/plugin/MediaPlayerDelegate;->isComplete:Z

    if-nez v2, :cond_1

    .line 1195
    iget-boolean v2, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->firstLoaded:Z

    if-eqz v2, :cond_1

    .line 1198
    invoke-static {}, Lcom/youku/player/goplay/Profile;->isSkipHeadAndTail()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-boolean v2, v2, Lcom/youku/player/plugin/MediaPlayerDelegate;->isFullScreen:Z

    if-nez v2, :cond_4

    .line 1199
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v2, v2, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v2}, Lcom/youku/player/module/VideoUrlInfo;->isHasHead()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1200
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v2, v2, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v2}, Lcom/youku/player/module/VideoUrlInfo;->getHeadPosition()I

    move-result v0

    .line 1202
    .local v0, "headPosition":I
    add-int/lit16 v2, v0, -0x3a98

    if-ge p1, v2, :cond_3

    .line 1203
    const-string/jumbo v2, "\u4e3a\u60a8\u8df3\u8fc7\u7247\u5934"

    const-wide/16 v4, 0x0

    invoke-static {v2, v4, v5}, Lcom/youku/util/Util;->showTipsShort(Ljava/lang/String;J)V

    .line 1204
    const-string v2, "pluginsmall"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u4e3a\u60a8\u8df3\u8fc7\u7247\u5934 pluginsmall headPosition = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1216
    .end local v0    # "headPosition":I
    :cond_3
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v2, v2, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v2}, Lcom/youku/player/module/VideoUrlInfo;->isHasTail()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1217
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v2, v2, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v2}, Lcom/youku/player/module/VideoUrlInfo;->getTailPosition()I

    move-result v1

    .line 1219
    .local v1, "tailPosition":I
    sub-int v2, v1, p1

    const/16 v3, 0x7d0

    if-gt v2, v3, :cond_4

    .line 1221
    const-string/jumbo v2, "zpy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u4e3a\u60a8\u8df3\u8fc7\u7247\u5c3e pluginsmall"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1222
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v2}, Lcom/youku/player/plugin/MediaPlayerDelegate;->setFirstUnloaded()V

    .line 1223
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v2, v2, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/youku/player/module/VideoUrlInfo;->setProgress(I)V

    .line 1224
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v2}, Lcom/youku/player/plugin/MediaPlayerDelegate;->release()V

    .line 1225
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/PluginSmall;->onCompletionListener()V

    goto/16 :goto_0

    .line 1230
    .end local v1    # "tailPosition":I
    :cond_4
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->videoBar:Landroid/widget/SeekBar;

    if-eqz v2, :cond_5

    .line 1231
    iget-boolean v2, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->thumbMoving:Z

    if-nez v2, :cond_5

    .line 1232
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v2, v2, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v2}, Lcom/youku/player/module/VideoUrlInfo;->getDurationMills()I

    move-result v2

    if-lt p1, v2, :cond_6

    .line 1234
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->videoBar:Landroid/widget/SeekBar;

    iget-object v3, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->videoBar:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getMax()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1235
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->sb_detail_play_progress_hide:Landroid/widget/SeekBar;

    if-eqz v2, :cond_5

    .line 1236
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->sb_detail_play_progress_hide:Landroid/widget/SeekBar;

    iget-object v3, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->sb_detail_play_progress_hide:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getMax()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1257
    :cond_5
    :goto_1
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v2, v2, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v2, p1}, Lcom/youku/player/module/VideoUrlInfo;->setProgress(I)V

    .line 1258
    iget-boolean v2, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->thumbMoving:Z

    if-nez v2, :cond_1

    .line 1259
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->time:Landroid/widget/TextView;

    int-to-long v4, p1

    invoke-static {v4, v5}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUtils;->getFormatTime(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1241
    :cond_6
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->videoBar:Landroid/widget/SeekBar;

    invoke-virtual {v2, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1242
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->sb_detail_play_progress_hide:Landroid/widget/SeekBar;

    if-eqz v2, :cond_5

    .line 1243
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->sb_detail_play_progress_hide:Landroid/widget/SeekBar;

    invoke-virtual {v2, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_1
.end method

.method public onDown()V
    .locals 0

    .prologue
    .line 2695
    return-void
.end method

.method public onErrorListener(II)Z
    .locals 8
    .param p1, "what"    # I
    .param p2, "extra"    # I

    .prologue
    const/16 v7, 0x3f2

    const/16 v6, 0x3f1

    const/16 v5, 0x3ee

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 964
    const-string v2, "PluginSmall"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onErrorListener what = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " extra = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 965
    iput-boolean v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->error:Z

    .line 966
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->context:Lcom/tudou/ui/activity/DetailActivity;

    iput-boolean v0, v2, Lcom/tudou/ui/activity/DetailActivity;->mIsError:Z

    .line 967
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->context:Lcom/tudou/ui/activity/DetailActivity;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->context:Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v2}, Lcom/tudou/ui/activity/DetailActivity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1060
    :cond_0
    :goto_0
    return v0

    .line 970
    :cond_1
    iput p1, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->playErrorMsg:I

    .line 971
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v2, :cond_0

    .line 972
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iput-boolean v1, v2, Lcom/youku/player/plugin/MediaPlayerDelegate;->isStartPlay:Z

    .line 973
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->context:Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v2}, Lcom/tudou/ui/activity/DetailActivity;->checkAndRestore3GPlay()V

    .line 974
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-boolean v2, v2, Lcom/youku/player/plugin/MediaPlayerDelegate;->isADShowing:Z

    if-eqz v2, :cond_2

    .line 975
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/PluginSmall;->showAlert()V

    goto :goto_0

    .line 978
    :cond_2
    if-eq p1, v5, :cond_3

    const/16 v2, 0x7d4

    if-ne p1, v2, :cond_4

    .line 980
    :cond_3
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/PluginSmall;->showAlert()V

    goto :goto_0

    .line 983
    :cond_4
    if-ne p1, v7, :cond_5

    .line 984
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/PluginSmall;->showAlert()V

    .line 985
    const v1, 0x7f0d0002

    invoke-static {v1}, Lcom/youku/util/Util;->showTips(I)V

    goto :goto_0

    .line 989
    :cond_5
    if-ne p1, v6, :cond_6

    .line 990
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/PluginSmall;->showAlert()V

    goto :goto_0

    .line 993
    :cond_6
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/PluginSmall;->showAlert()V

    .line 994
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-boolean v2, v2, Lcom/youku/player/plugin/MediaPlayerDelegate;->isFullScreen:Z

    if-eqz v2, :cond_7

    move v0, v1

    .line 995
    goto :goto_0

    .line 1004
    :cond_7
    if-ne p1, v7, :cond_8

    .line 1006
    const-string/jumbo v1, "\u7f51\u7edc\u4e0d\u7a33\u5b9a\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5 "

    invoke-static {v1}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    .line 1007
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/PluginSmall;->showAlert()V

    goto :goto_0

    .line 1010
    :cond_8
    if-ne p1, v6, :cond_9

    iget-object v2, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v2, v2, Lcom/youku/player/plugin/MediaPlayerDelegate;->currentOriention:Lcom/youku/player/plugin/Orientation;

    sget-object v3, Lcom/youku/player/plugin/Orientation;->VERTICAL:Lcom/youku/player/plugin/Orientation;

    if-ne v2, v3, :cond_9

    .line 1012
    invoke-virtual {p0, v1}, Lcom/youku/phone/detail/plugin/PluginSmall;->playComplete(Z)V

    goto :goto_0

    .line 1015
    :cond_9
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v2, v2, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v2, :cond_f

    const-string v2, "local"

    iget-object v3, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v3, v3, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v3, v3, Lcom/youku/player/module/VideoUrlInfo;->playType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1018
    const/16 v2, 0x3ed

    if-ne p1, v2, :cond_a

    .line 1019
    invoke-virtual {p0, v1}, Lcom/youku/phone/detail/plugin/PluginSmall;->playComplete(Z)V

    .line 1039
    :goto_1
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v1}, Lcom/youku/player/plugin/MediaPlayerDelegate;->setFirstUnloaded()V

    .line 1040
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v1}, Lcom/youku/player/plugin/MediaPlayerDelegate;->release()V

    .line 1041
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v1}, Lcom/youku/player/plugin/MediaPlayerDelegate;->finishActivity()V

    goto/16 :goto_0

    .line 1020
    :cond_a
    if-ne p1, v5, :cond_b

    .line 1021
    const-string/jumbo v1, "\u672c\u5730\u6587\u4ef6\u5df2\u635f\u574f"

    invoke-static {v1}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    goto :goto_1

    .line 1027
    :cond_b
    const/16 v2, 0x3ef

    if-ne p1, v2, :cond_c

    .line 1028
    const-string/jumbo v1, "\u64ad\u653e\u5668\u5185\u90e8\u51fa\u9519"

    invoke-static {v1}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    .line 1029
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v1}, Lcom/youku/player/plugin/MediaPlayerDelegate;->finishActivity()V

    goto :goto_1

    .line 1030
    :cond_c
    const/16 v2, 0x3f0

    if-ne p1, v2, :cond_d

    .line 1031
    invoke-virtual {p0, v1}, Lcom/youku/phone/detail/plugin/PluginSmall;->playComplete(Z)V

    goto/16 :goto_0

    .line 1033
    :cond_d
    if-ne p1, v6, :cond_e

    .line 1034
    invoke-virtual {p0, v1}, Lcom/youku/phone/detail/plugin/PluginSmall;->playComplete(Z)V

    goto/16 :goto_0

    .line 1037
    :cond_e
    const-string/jumbo v1, "\u672c\u5730\u6587\u4ef6\u5df2\u635f\u574f"

    invoke-static {v1}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    goto :goto_1

    .line 1044
    :cond_f
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v1, :cond_0

    const-string v1, "net"

    iget-object v2, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v2, v2, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v2, v2, Lcom/youku/player/module/VideoUrlInfo;->playType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1047
    const/16 v1, 0x3ed

    if-ne p1, v1, :cond_10

    .line 1048
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1049
    const-string/jumbo v1, "\u7f51\u7edc\u4e0d\u7a33\u5b9a\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5 "

    invoke-static {v1}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1050
    :cond_10
    if-ne p1, v5, :cond_11

    .line 1051
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1052
    const-string/jumbo v1, "\u7f51\u7edc\u4e0d\u7a33\u5b9a\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5 "

    invoke-static {v1}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1053
    :cond_11
    if-ne p1, v7, :cond_0

    .line 1054
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1055
    const-string/jumbo v1, "\u7f51\u7edc\u4e0d\u7a33\u5b9a\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5 "

    invoke-static {v1}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onFavor()V
    .locals 1

    .prologue
    .line 2703
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->context:Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v0}, Lcom/tudou/ui/activity/DetailActivity;->onFavor()V

    .line 2704
    return-void
.end method

.method public onFullScreen()V
    .locals 0

    .prologue
    .line 541
    invoke-direct {p0}, Lcom/youku/phone/detail/plugin/PluginSmall;->hideControl()V

    .line 542
    return-void
.end method

.method public onLoadedListener()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1272
    const-string v0, "PluginSmall"

    const-string v1, " onLoadedListener()"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1273
    iput-boolean v2, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->isLoading:Z

    .line 1274
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-nez v0, :cond_1

    .line 1327
    :cond_0
    :goto_0
    return-void

    .line 1276
    :cond_1
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-boolean v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isComplete:Z

    if-nez v0, :cond_0

    .line 1278
    iget-boolean v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->firstLoaded:Z

    if-nez v0, :cond_3

    .line 1279
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-boolean v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isFullScreen:Z

    if-nez v0, :cond_2

    .line 1284
    :cond_2
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->seekToHistory()V

    .line 1285
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->firstLoaded:Z

    .line 1287
    :cond_3
    invoke-direct {p0}, Lcom/youku/phone/detail/plugin/PluginSmall;->enableController()V

    .line 1288
    iput-boolean v2, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->error:Z

    .line 1289
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->context:Lcom/tudou/ui/activity/DetailActivity;

    if-eqz v0, :cond_4

    .line 1290
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->context:Lcom/tudou/ui/activity/DetailActivity;

    new-instance v1, Lcom/youku/phone/detail/plugin/PluginSmall$14;

    invoke-direct {v1, p0}, Lcom/youku/phone/detail/plugin/PluginSmall$14;-><init>(Lcom/youku/phone/detail/plugin/PluginSmall;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1320
    :cond_4
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->context:Lcom/tudou/ui/activity/DetailActivity;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->context:Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1321
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/PluginSmall;->hideLoading()V

    .line 1322
    invoke-direct {p0}, Lcom/youku/phone/detail/plugin/PluginSmall;->hideRetryLayout()V

    .line 1324
    :cond_5
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->black:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1325
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->black:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public onLoadingListener()V
    .locals 3

    .prologue
    .line 1332
    const-string v0, "PluginSmall"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLoadingListener firstLoaded = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->firstLoaded:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1333
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->isLoading:Z

    .line 1334
    iget-boolean v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->error:Z

    if-eqz v0, :cond_1

    .line 1335
    const-string v0, "PluginSmall"

    const-string v1, "null == error "

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1361
    :cond_0
    :goto_0
    return-void

    .line 1350
    :cond_1
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->context:Lcom/tudou/ui/activity/DetailActivity;

    if-eqz v0, :cond_0

    .line 1351
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->context:Lcom/tudou/ui/activity/DetailActivity;

    new-instance v1, Lcom/youku/phone/detail/plugin/PluginSmall$15;

    invoke-direct {v1, p0}, Lcom/youku/phone/detail/plugin/PluginSmall$15;-><init>(Lcom/youku/phone/detail/plugin/PluginSmall;)V

    invoke-virtual {v0, v1}, Lcom/tudou/ui/activity/DetailActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onMute(Z)V
    .locals 0
    .param p1, "mute"    # Z

    .prologue
    .line 1427
    return-void
.end method

.method public onNotifyChangeVideoQuality()V
    .locals 0

    .prologue
    .line 1367
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1437
    iput-boolean v1, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->isLoading:Z

    .line 1438
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/PluginSmall;->hideLoading()V

    .line 1439
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->retryView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->retryView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1440
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->isRetry:Z

    .line 1445
    :goto_0
    return-void

    .line 1442
    :cond_0
    iput-boolean v1, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->isRetry:Z

    .line 1443
    invoke-direct {p0, v1}, Lcom/youku/phone/detail/plugin/PluginSmall;->showBottomSeekBar(Z)V

    goto :goto_0
.end method

.method public onPayVideo(Lcom/youku/player/module/PayInfo;ILjava/lang/String;)V
    .locals 3
    .param p1, "payinfo"    # Lcom/youku/player/module/PayInfo;
    .param p2, "vipError"    # I
    .param p3, "tip"    # Ljava/lang/String;

    .prologue
    .line 2802
    const-string v0, "PluginSmall"

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

    .line 2803
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-boolean v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isFullScreen:Z

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/youku/phone/detail/plugin/PluginSmall;->initPayFragment(Lcom/youku/player/module/PayInfo;ZILjava/lang/String;)V

    .line 2804
    return-void
.end method

.method public onPayinfoShowLoginChange()V
    .locals 1

    .prologue
    .line 2807
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->pluginSmallPayPageFragment:Lcom/youku/phone/detail/plugin/PluginSmallPayPageFragment;

    if-eqz v0, :cond_0

    .line 2808
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->pluginSmallPayPageFragment:Lcom/youku/phone/detail/plugin/PluginSmallPayPageFragment;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/PluginSmallPayPageFragment;->onLoginchange()V

    .line 2810
    :cond_0
    return-void
.end method

.method public onPlayNoRightVideo(Lcom/youku/player/goplay/GoplayException;)V
    .locals 2
    .param p1, "e"    # Lcom/youku/player/goplay/GoplayException;

    .prologue
    .line 2710
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->context:Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v0, p1}, Lcom/tudou/ui/activity/DetailActivity;->onPlayNoRightVideo(Lcom/youku/player/goplay/GoplayException;)V

    .line 2711
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mIsNoRight:Z

    .line 2712
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mNoRightHint:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2713
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mNoRightHint:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/youku/player/goplay/GoplayException;->getErrorInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2717
    return-void
.end method

.method public onPlayReleateNoRightVideo()V
    .locals 2

    .prologue
    .line 2721
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->goRetry:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 2722
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->retryIV:Landroid/widget/ImageView;

    const v1, 0x7f020661

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2723
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->retryTV:Landroid/widget/TextView;

    const-string/jumbo v1, "\u91cd\u8bd5"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2724
    invoke-direct {p0}, Lcom/youku/phone/detail/plugin/PluginSmall;->hideControl()V

    .line 2725
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->goRetry:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/youku/phone/detail/plugin/PluginSmall$31;

    invoke-direct {v1, p0}, Lcom/youku/phone/detail/plugin/PluginSmall$31;-><init>(Lcom/youku/phone/detail/plugin/PluginSmall;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2776
    return-void
.end method

.method public onPluginAdded()V
    .locals 0

    .prologue
    .line 2590
    invoke-super {p0}, Lcom/youku/player/plugin/PluginOverlay;->onPluginAdded()V

    .line 2595
    return-void
.end method

.method public onRealVideoStart()V
    .locals 2

    .prologue
    .line 1644
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->isRealVideoStart:Z

    .line 1645
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->context:Lcom/tudou/ui/activity/DetailActivity;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/tudou/ui/activity/DetailActivity;->mIsChangingQuality:Z

    .line 1646
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/PluginSmall;->setWaterMarkVisibility()V

    .line 1647
    invoke-direct {p0}, Lcom/youku/phone/detail/plugin/PluginSmall;->enableController()V

    .line 1649
    invoke-direct {p0}, Lcom/youku/phone/detail/plugin/PluginSmall;->hideControl()V

    .line 1650
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/PluginSmall;->userAction()V

    .line 1651
    return-void
.end method

.method public onRealVideoStarted()V
    .locals 2

    .prologue
    .line 1371
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isADShowing:Z

    .line 1372
    return-void
.end method

.method public onSmallscreen()V
    .locals 3

    .prologue
    .line 278
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v0, :cond_0

    .line 280
    const-string v0, "PluginSmall"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSmallScreen isLoading = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-boolean v2, v2, Lcom/youku/player/plugin/MediaPlayerDelegate;->isLoading:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-boolean v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isLoading:Z

    if-nez v0, :cond_1

    .line 282
    invoke-direct {p0}, Lcom/youku/phone/detail/plugin/PluginSmall;->showControl()V

    .line 283
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/PluginSmall;->userAction()V

    .line 292
    :cond_0
    :goto_0
    return-void

    .line 285
    :cond_1
    invoke-direct {p0}, Lcom/youku/phone/detail/plugin/PluginSmall;->hideControl()V

    goto :goto_0
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 1433
    return-void
.end method

.method public onSubscribe()V
    .locals 1

    .prologue
    .line 2791
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->context:Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v0}, Lcom/tudou/ui/activity/DetailActivity;->onSubscribe()V

    .line 2792
    return-void
.end method

.method public onUnFavor()V
    .locals 1

    .prologue
    .line 1376
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->context:Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v0}, Lcom/tudou/ui/activity/DetailActivity;->onUnFavor()V

    .line 1377
    return-void
.end method

.method public onUnSubscribe()V
    .locals 1

    .prologue
    .line 2796
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->context:Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v0}, Lcom/tudou/ui/activity/DetailActivity;->onUnSubscribe()V

    .line 2797
    return-void
.end method

.method public onUp()V
    .locals 0

    .prologue
    .line 2689
    return-void
.end method

.method public onVideoChange()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1449
    const-string v0, "PluginSmall"

    const-string v1, "onvideochange"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1450
    iput-boolean v2, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->firstLoaded:Z

    .line 1451
    iput-boolean v2, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->isRealVideoStart:Z

    .line 1452
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/PluginSmall;->clearPlayState()V

    .line 1453
    invoke-direct {p0}, Lcom/youku/phone/detail/plugin/PluginSmall;->hideEndPage()V

    .line 1455
    invoke-direct {p0}, Lcom/youku/phone/detail/plugin/PluginSmall;->setMusicPlay()V

    .line 1457
    return-void
.end method

.method public onVideoInfoGetFail(Z)V
    .locals 3
    .param p1, "needRetry"    # Z

    .prologue
    .line 1682
    const-string v0, "PluginSmall"

    const-string v1, "onVideoInfoGetFail"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1683
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->infoFail:Z

    .line 1685
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->context:Lcom/tudou/ui/activity/DetailActivity;

    if-eqz v0, :cond_1

    .line 1689
    invoke-direct {p0}, Lcom/youku/phone/detail/plugin/PluginSmall;->showRetryLayout()V

    .line 1690
    invoke-direct {p0}, Lcom/youku/phone/detail/plugin/PluginSmall;->hideLoadinfo()V

    .line 1693
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v0, :cond_0

    .line 1695
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v0}, Lcom/youku/player/module/VideoUrlInfo;->getVid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->video_id:Ljava/lang/String;

    .line 1696
    :cond_0
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->context:Lcom/tudou/ui/activity/DetailActivity;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->video_id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/tudou/ui/activity/DetailActivity;->onVideoInfoGetted(ZLjava/lang/String;)V

    .line 1702
    :cond_1
    return-void
.end method

.method public onVideoInfoGetted()V
    .locals 12

    .prologue
    const/16 v8, 0x8

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1504
    const-string v6, "PluginSmall"

    const-string v7, "onVideoInfoGetted"

    invoke-static {v6, v7}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1505
    iput-boolean v10, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->firstLoaded:Z

    .line 1506
    iput-boolean v10, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->isRealVideoStart:Z

    .line 1507
    iput-boolean v10, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->isPayVideoShow:Z

    .line 1508
    invoke-direct {p0}, Lcom/youku/phone/detail/plugin/PluginSmall;->hideLoadinfo()V

    .line 1509
    iget-object v6, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v6, v6, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v6, :cond_0

    .line 1511
    iget-object v6, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v6, v6, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v6}, Lcom/youku/player/module/VideoUrlInfo;->getVid()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->video_id:Ljava/lang/String;

    .line 1515
    :cond_0
    iget-object v6, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->context:Lcom/tudou/ui/activity/DetailActivity;

    iget-object v7, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->video_id:Ljava/lang/String;

    invoke-virtual {v6, v11, v7}, Lcom/tudou/ui/activity/DetailActivity;->onVideoInfoGetted(ZLjava/lang/String;)V

    .line 1517
    iget-object v6, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v6, v6, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v6}, Lcom/youku/player/module/VideoUrlInfo;->getRegisterNum()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v6, v6, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v6}, Lcom/youku/player/module/VideoUrlInfo;->getLicenseNum()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 1518
    :cond_1
    iput-boolean v11, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mIsNeedRegisterNumOrLicenseNum:Z

    .line 1519
    iget-object v6, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mRegisterNum:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v7, v7, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v7}, Lcom/youku/player/module/VideoUrlInfo;->getRegisterNum()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1520
    iget-object v6, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mLicenseNum:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v7, v7, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v7}, Lcom/youku/player/module/VideoUrlInfo;->getLicenseNum()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1523
    :cond_2
    iget-object v6, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v6, v6, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-static {v6}, Lcom/youku/phone/detail/DetailUtil;->isPayVideo(Lcom/youku/player/module/VideoUrlInfo;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 1524
    iget-object v6, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v4, v6, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    .line 1525
    .local v4, "tVideoUrlInfo":Lcom/youku/player/module/VideoUrlInfo;
    iget-object v2, v4, Lcom/youku/player/module/VideoUrlInfo;->mPayInfo:Lcom/youku/player/module/PayInfo;

    .line 1526
    .local v2, "tPayInfo":Lcom/youku/player/module/PayInfo;
    iget-object v6, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->test_play_layout:Landroid/view/View;

    invoke-virtual {v6, v10}, Landroid/view/View;->setVisibility(I)V

    .line 1527
    iget-object v6, v2, Lcom/youku/player/module/PayInfo;->trail:Lcom/youku/player/module/PayInfo$Trial;

    iget-object v6, v6, Lcom/youku/player/module/PayInfo$Trial;->type:Ljava/lang/String;

    if-eqz v6, :cond_6

    const-string v6, "episodes"

    iget-object v7, v2, Lcom/youku/player/module/PayInfo;->trail:Lcom/youku/player/module/PayInfo$Trial;

    iget-object v7, v7, Lcom/youku/player/module/PayInfo$Trial;->type:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1528
    iget-object v6, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v6, v6, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v6}, Lcom/youku/player/module/VideoUrlInfo;->getShow_videoseq()I

    move-result v6

    iget-object v7, v2, Lcom/youku/player/module/PayInfo;->trail:Lcom/youku/player/module/PayInfo$Trial;

    iget v7, v7, Lcom/youku/player/module/PayInfo$Trial;->episodes:I

    if-le v6, v7, :cond_5

    .line 1529
    iget-object v6, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->context:Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v6}, Lcom/tudou/ui/activity/DetailActivity;->onPayClick()V

    .line 1545
    :goto_0
    iget-object v6, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->vip_buy_tv2:Landroid/widget/TextView;

    new-instance v7, Lcom/youku/phone/detail/plugin/PluginSmall$16;

    invoke-direct {v7, p0, v2, v4}, Lcom/youku/phone/detail/plugin/PluginSmall$16;-><init>(Lcom/youku/phone/detail/plugin/PluginSmall;Lcom/youku/player/module/PayInfo;Lcom/youku/player/module/VideoUrlInfo;)V

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1591
    .end local v2    # "tPayInfo":Lcom/youku/player/module/PayInfo;
    .end local v4    # "tVideoUrlInfo":Lcom/youku/player/module/VideoUrlInfo;
    :goto_1
    iget-object v6, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->total_time:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v7, v7, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v7}, Lcom/youku/player/module/VideoUrlInfo;->getDurationMills()I

    move-result v7

    int-to-long v8, v7

    invoke-static {v8, v9}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUtils;->getFormatTime(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1592
    iget-object v6, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v5, v6, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    .line 1593
    .local v5, "videoUrlInfo":Lcom/youku/player/module/VideoUrlInfo;
    iget-object v6, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v6, v6, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v6}, Lcom/youku/player/module/VideoUrlInfo;->getTitle()Ljava/lang/String;

    move-result-object v3

    .line 1594
    .local v3, "tTitle":Ljava/lang/String;
    iget-object v6, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->title:Lcom/youku/widget/AlwaysMarqueeTextView;

    invoke-virtual {v6, v3}, Lcom/youku/widget/AlwaysMarqueeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1595
    iget-object v6, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->time:Landroid/widget/TextView;

    const-wide/16 v8, 0x0

    invoke-static {v8, v9}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUtils;->getFormatTime(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1597
    iput-boolean v10, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->infoFail:Z

    .line 1598
    invoke-direct {p0}, Lcom/youku/phone/detail/plugin/PluginSmall;->disableController()V

    .line 1599
    invoke-virtual {p0, v11}, Lcom/youku/phone/detail/plugin/PluginSmall;->showLoading(Z)V

    .line 1601
    iget-object v6, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->context:Lcom/tudou/ui/activity/DetailActivity;

    iget-boolean v6, v6, Lcom/tudou/ui/activity/DetailActivity;->SETTING_ALLOW_PLAY_ON_3G:Z

    if-nez v6, :cond_3

    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-static {}, Lcom/youku/util/Util;->isWifi()Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "allowONline3G"

    invoke-static {v6, v10}, Lcom/youku/player/util/PlayerPreference;->getPreferenceBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "net"

    iget-object v7, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v7, v7, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v7}, Lcom/youku/player/module/VideoUrlInfo;->getPlayType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1602
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/PluginSmall;->hideLoading()V

    .line 1603
    invoke-direct {p0}, Lcom/youku/phone/detail/plugin/PluginSmall;->hideLoadinfo()V

    .line 1604
    iget-object v6, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mHint3GOnLineLayout:Landroid/view/View;

    invoke-virtual {v6, v10}, Landroid/view/View;->setVisibility(I)V

    .line 1605
    invoke-direct {p0}, Lcom/youku/phone/detail/plugin/PluginSmall;->showControl()V

    .line 1606
    invoke-direct {p0}, Lcom/youku/phone/detail/plugin/PluginSmall;->enableController()V

    .line 1608
    :cond_3
    iget-object v6, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v6, v6, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v6}, Lcom/youku/player/module/VideoUrlInfo;->getTitle()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v6, v6, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v6}, Lcom/youku/player/module/VideoUrlInfo;->getTitle()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 1640
    :cond_4
    :goto_2
    return-void

    .line 1531
    .end local v3    # "tTitle":Ljava/lang/String;
    .end local v5    # "videoUrlInfo":Lcom/youku/player/module/VideoUrlInfo;
    .restart local v2    # "tPayInfo":Lcom/youku/player/module/PayInfo;
    .restart local v4    # "tVideoUrlInfo":Lcom/youku/player/module/VideoUrlInfo;
    :cond_5
    iget-object v6, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->vip_buy_tv1:Landroid/widget/TextView;

    iget-object v7, v2, Lcom/youku/player/module/PayInfo;->trail:Lcom/youku/player/module/PayInfo$Trial;

    iget-object v7, v7, Lcom/youku/player/module/PayInfo$Trial;->tip:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1532
    iget-object v6, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->vip_buy_tv2:Landroid/widget/TextView;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 1534
    :cond_6
    const-string/jumbo v6, "time"

    iget-object v7, v2, Lcom/youku/player/module/PayInfo;->trail:Lcom/youku/player/module/PayInfo$Trial;

    iget-object v7, v7, Lcom/youku/player/module/PayInfo$Trial;->type:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1535
    invoke-virtual {v2}, Lcom/youku/player/module/PayInfo;->supportMon()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1536
    iget-object v6, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->vip_buy_tv1:Landroid/widget/TextView;

    const-string/jumbo v7, "\u672c\u7247\u4e3a\u4f1a\u5458\u89c6\u9891\uff0c\u89c2\u770b\u5b8c\u6574\u7248\u8bf7 "

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1537
    iget-object v6, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->vip_buy_tv2:Landroid/widget/TextView;

    const-string/jumbo v7, "\u5f00\u901a\u4f1a\u5458"

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1539
    :cond_7
    iget-object v6, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->vip_buy_tv1:Landroid/widget/TextView;

    const-string/jumbo v7, "\u672c\u7247\u4e3a\u4ed8\u8d39\u89c6\u9891\uff0c\u89c2\u770b\u5b8c\u6574\u7248\u8bf7 "

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1540
    iget-object v6, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->vip_buy_tv2:Landroid/widget/TextView;

    const-string/jumbo v7, "\u8d2d\u4e70\u5f71\u7247"

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1543
    :cond_8
    iget-object v6, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->context:Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v6}, Lcom/tudou/ui/activity/DetailActivity;->onPayClick()V

    goto/16 :goto_0

    .line 1589
    .end local v2    # "tPayInfo":Lcom/youku/player/module/PayInfo;
    .end local v4    # "tVideoUrlInfo":Lcom/youku/player/module/VideoUrlInfo;
    :cond_9
    iget-object v6, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->test_play_layout:Landroid/view/View;

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 1611
    .restart local v3    # "tTitle":Ljava/lang/String;
    .restart local v5    # "videoUrlInfo":Lcom/youku/player/module/VideoUrlInfo;
    :cond_a
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/PluginSmall;->doPause()V

    .line 1612
    const-string v6, "local"

    iget-object v7, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v7, v7, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v7}, Lcom/youku/player/module/VideoUrlInfo;->getPlayType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    sget v6, Lcom/youku/player/goplay/Profile;->from:I

    const/4 v7, 0x2

    if-eq v6, v7, :cond_4

    .line 1613
    iget-object v6, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->context:Lcom/tudou/ui/activity/DetailActivity;

    if-eqz v6, :cond_4

    .line 1614
    iget-object v6, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->context:Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v6}, Lcom/tudou/ui/activity/DetailActivity;->getModel()Lcom/tudou/detail/DetailModel;

    move-result-object v0

    .line 1615
    .local v0, "model":Lcom/tudou/detail/DetailModel;
    if-eqz v0, :cond_4

    .line 1616
    iget-object v6, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->context:Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v6}, Lcom/tudou/ui/activity/DetailActivity;->getmVideoDetail()Lcom/youku/vo/NewVideoDetail;

    move-result-object v1

    .line 1617
    .local v1, "tDetail":Lcom/youku/vo/NewVideoDetail;
    if-eqz v1, :cond_4

    .line 1618
    iget-object v6, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->context:Lcom/tudou/ui/activity/DetailActivity;

    new-instance v7, Lcom/youku/phone/detail/plugin/PluginSmall$17;

    invoke-direct {v7, p0, v1}, Lcom/youku/phone/detail/plugin/PluginSmall$17;-><init>(Lcom/youku/phone/detail/plugin/PluginSmall;Lcom/youku/vo/NewVideoDetail;)V

    invoke-virtual {v0, v6, v1, v7}, Lcom/tudou/detail/DetailModel;->getAttentionAsync(Landroid/app/Activity;Lcom/youku/vo/NewVideoDetail;Lcom/tudou/service/attention/IAttention$GetCallBack;)V

    goto/16 :goto_2
.end method

.method public onVideoInfoGetting()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 1473
    const-string v0, "PluginSmall"

    const-string v1, "onVideoInfoGetting"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1474
    iput-boolean v2, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mIsNoRight:Z

    .line 1476
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->context:Lcom/tudou/ui/activity/DetailActivity;

    iput-boolean v2, v0, Lcom/tudou/ui/activity/DetailActivity;->mIsError:Z

    .line 1477
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->context:Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v0}, Lcom/tudou/ui/activity/DetailActivity;->onVideoInfogetting()V

    .line 1478
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->context:Lcom/tudou/ui/activity/DetailActivity;

    iget-boolean v0, v0, Lcom/tudou/ui/activity/DetailActivity;->isFromLocal:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->context:Lcom/tudou/ui/activity/DetailActivity;

    iget-boolean v0, v0, Lcom/tudou/ui/activity/DetailActivity;->isFromKuWo:Z

    if-nez v0, :cond_0

    .line 1479
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->context:Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v0}, Lcom/tudou/ui/activity/DetailActivity;->enableOrientation()V

    .line 1481
    :cond_0
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->context:Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v0}, Lcom/tudou/ui/activity/DetailActivity;->checkAndRestore3GPlay()V

    .line 1483
    iput v2, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mCurrentPositionChangeTimes:I

    .line 1484
    iput-boolean v2, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mIsNeedRegisterNumOrLicenseNum:Z

    .line 1485
    iput-boolean v2, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mIsRegisterOrLicenseShow:Z

    .line 1486
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mRegisterNum:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1487
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mLicenseNum:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1488
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mLicenseNum:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1489
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mRegisterNum:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1491
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mNoRightHint:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1492
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->retryView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1493
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->videoBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setSecondaryProgress(I)V

    .line 1494
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->context:Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v0}, Lcom/tudou/ui/activity/DetailActivity;->clearUpDownFav()V

    .line 1495
    invoke-direct {p0}, Lcom/youku/phone/detail/plugin/PluginSmall;->initSeekLoading()V

    .line 1496
    invoke-direct {p0}, Lcom/youku/phone/detail/plugin/PluginSmall;->showLoadinfo()V

    .line 1497
    invoke-direct {p0}, Lcom/youku/phone/detail/plugin/PluginSmall;->disableController()V

    .line 1498
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/PluginSmall;->doPause()V

    .line 1499
    return-void
.end method

.method public onVolumnDown()V
    .locals 0

    .prologue
    .line 1421
    return-void
.end method

.method public onVolumnUp()V
    .locals 0

    .prologue
    .line 1403
    return-void
.end method

.method protected playComplete(Z)V
    .locals 5
    .param p1, "auto"    # Z

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 2598
    const-string v0, "PluginSmall"

    const-string v1, "playComplete()"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2599
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-boolean v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isFullScreen:Z

    if-eqz v0, :cond_1

    .line 2671
    :cond_0
    :goto_0
    return-void

    .line 2603
    :cond_1
    invoke-static {v2}, Lcom/youku/player/Track;->setplayCompleted(Z)V

    .line 2604
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-boolean v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isFullScreen:Z

    if-nez v0, :cond_2

    .line 2605
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->onVVEnd()V

    .line 2607
    :cond_2
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/PluginSmall;->clearPlayState()V

    .line 2608
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/PluginSmall;->hideTimeView()V

    .line 2609
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iput-boolean v2, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isComplete:Z

    .line 2610
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v0, :cond_3

    .line 2611
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->onEnd()V

    .line 2612
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->setOrientionDisable()V

    .line 2614
    :cond_3
    sget v0, Lcom/youku/player/goplay/Profile;->from:I

    if-eq v0, v3, :cond_4

    sget v0, Lcom/youku/player/goplay/Profile;->from:I

    if-ne v0, v4, :cond_5

    .line 2616
    :cond_4
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->finishActivity()V

    goto :goto_0

    .line 2620
    :cond_5
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iput-boolean v2, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isComplete:Z

    .line 2621
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->context:Lcom/tudou/ui/activity/DetailActivity;

    invoke-static {v0}, Lcom/youku/player/goplay/Profile;->getPlayMode(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v2, :cond_6

    .line 2623
    invoke-direct {p0, p1}, Lcom/youku/phone/detail/plugin/PluginSmall;->playNextVideo(Z)V

    goto :goto_0

    .line 2624
    :cond_6
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->context:Lcom/tudou/ui/activity/DetailActivity;

    invoke-static {v0}, Lcom/youku/player/goplay/Profile;->getPlayMode(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v3, :cond_8

    .line 2625
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v0}, Lcom/youku/player/module/VideoUrlInfo;->getPlayType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "local"

    if-eq v0, v1, :cond_7

    .line 2627
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/PluginSmall;->goEndPage()V

    goto :goto_0

    .line 2629
    :cond_7
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->finishActivity()V

    goto :goto_0

    .line 2631
    :cond_8
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->context:Lcom/tudou/ui/activity/DetailActivity;

    invoke-static {v0}, Lcom/youku/player/goplay/Profile;->getPlayMode(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v4, :cond_0

    .line 2632
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->release()V

    .line 2633
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->hideHandler:Landroid/os/Handler;

    new-instance v1, Lcom/youku/phone/detail/plugin/PluginSmall$30;

    invoke-direct {v1, p0}, Lcom/youku/phone/detail/plugin/PluginSmall$30;-><init>(Lcom/youku/phone/detail/plugin/PluginSmall;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0
.end method

.method public playParse(Z)V
    .locals 3
    .param p1, "hasLog"    # Z

    .prologue
    .line 2274
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-nez v0, :cond_0

    .line 2299
    :goto_0
    return-void

    .line 2276
    :cond_0
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/youku/util/Util;->isWifi()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "allowONline3G"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/youku/player/util/PlayerPreference;->getPreferenceBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2277
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->context:Lcom/tudou/ui/activity/DetailActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tudou/ui/activity/DetailActivity;->setEnable3GPLAY(Z)V

    .line 2279
    :cond_1
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2280
    if-eqz p1, :cond_2

    .line 2281
    const-string/jumbo v0, "\u8be6\u60c5\u9875\u6682\u505c\u6309\u94ae\u70b9\u51fb"

    const-class v1, Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "\u6682\u505c\u6309\u94ae"

    invoke-static {v0, v1, v2}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2283
    :cond_2
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mediaPlayer:Lcom/youku/player/BaseMediaPlayer;

    invoke-virtual {v0}, Lcom/youku/player/BaseMediaPlayer;->pause()V

    .line 2284
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->pause()V

    .line 2285
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->play_pauseButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_3

    .line 2286
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->play_pauseButton:Landroid/widget/ImageButton;

    const v1, 0x7f02005d

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 2287
    :cond_3
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->play:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 2288
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->play:Landroid/view/View;

    const v1, 0x7f0201e8

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 2289
    :cond_4
    const-string v0, "PluginSmall"

    const-string/jumbo v1, "startPlay"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2298
    :goto_1
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/PluginSmall;->userAction()V

    goto :goto_0

    .line 2292
    :cond_5
    const-string v0, "PluginSmall"

    const-string v1, "pause"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2293
    if-eqz p1, :cond_6

    .line 2294
    const-string/jumbo v0, "\u8be6\u60c5\u9875\u64ad\u653e\u6309\u94ae\u70b9\u51fb"

    const-class v1, Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "\u64ad\u653e\u6309\u94ae"

    invoke-static {v0, v1, v2}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2296
    :cond_6
    invoke-direct {p0}, Lcom/youku/phone/detail/plugin/PluginSmall;->startPlay()V

    goto :goto_1
.end method

.method protected seekChange(Landroid/widget/SeekBar;)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 1818
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-nez v0, :cond_1

    .line 1866
    :cond_0
    :goto_0
    return-void

    .line 1821
    :cond_1
    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getMax()I

    move-result v1

    if-ne v0, v1, :cond_6

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getMax()I

    move-result v0

    if-lez v0, :cond_6

    .line 1823
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v0, :cond_2

    .line 1824
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v1}, Lcom/youku/player/module/VideoUrlInfo;->getDurationMills()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/youku/player/module/VideoUrlInfo;->setProgress(I)V

    .line 1828
    :cond_2
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-static {v0}, Lcom/youku/phone/detail/DetailUtil;->isPayVideo(Lcom/youku/player/module/VideoUrlInfo;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1830
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v0, v0, Lcom/youku/player/module/VideoUrlInfo;->mPayInfo:Lcom/youku/player/module/PayInfo;

    iget-object v0, v0, Lcom/youku/player/module/PayInfo;->trail:Lcom/youku/player/module/PayInfo$Trial;

    iget-object v0, v0, Lcom/youku/player/module/PayInfo$Trial;->type:Ljava/lang/String;

    if-eqz v0, :cond_5

    const-string v0, "episodes"

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v1, v1, Lcom/youku/player/module/VideoUrlInfo;->mPayInfo:Lcom/youku/player/module/PayInfo;

    iget-object v1, v1, Lcom/youku/player/module/PayInfo;->trail:Lcom/youku/player/module/PayInfo$Trial;

    iget-object v1, v1, Lcom/youku/player/module/PayInfo$Trial;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1832
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v0}, Lcom/youku/player/module/VideoUrlInfo;->getShow_videoseq()I

    move-result v0

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v1, v1, Lcom/youku/player/module/VideoUrlInfo;->mPayInfo:Lcom/youku/player/module/PayInfo;

    iget-object v1, v1, Lcom/youku/player/module/PayInfo;->trail:Lcom/youku/player/module/PayInfo$Trial;

    iget v1, v1, Lcom/youku/player/module/PayInfo$Trial;->episodes:I

    if-le v0, v1, :cond_3

    .line 1833
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->context:Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v0}, Lcom/tudou/ui/activity/DetailActivity;->onPayClick()V

    goto :goto_0

    .line 1836
    :cond_3
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->test_play_layout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1852
    :cond_4
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->onComplete()V

    goto :goto_0

    .line 1841
    :cond_5
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v1, v1, Lcom/youku/player/module/VideoUrlInfo;->mPayInfo:Lcom/youku/player/module/PayInfo;

    iget-object v1, v1, Lcom/youku/player/module/PayInfo;->trail:Lcom/youku/player/module/PayInfo$Trial;

    iget v1, v1, Lcom/youku/player/module/PayInfo$Trial;->time:I

    if-lt v0, v1, :cond_4

    .line 1845
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->context:Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v0}, Lcom/tudou/ui/activity/DetailActivity;->onPayClick()V

    goto/16 :goto_0

    .line 1854
    :cond_6
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v0, :cond_0

    .line 1855
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v0, :cond_7

    .line 1856
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/youku/player/module/VideoUrlInfo;->setProgress(I)V

    .line 1858
    :cond_7
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_8

    .line 1859
    invoke-direct {p0}, Lcom/youku/phone/detail/plugin/PluginSmall;->startPlay()V

    .line 1861
    :cond_8
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

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
    .line 526
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getMax()I

    move-result v0

    if-lt p2, v0, :cond_1

    .line 527
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v1}, Lcom/youku/player/module/VideoUrlInfo;->getDurationMills()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/youku/player/module/VideoUrlInfo;->setProgress(I)V

    .line 528
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->onComplete()V

    .line 538
    :cond_0
    :goto_0
    return-void

    .line 529
    :cond_1
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v0, :cond_0

    .line 530
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_2

    .line 531
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/youku/phone/detail/plugin/PluginSmall;->playParse(Z)V

    .line 533
    :cond_2
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v0, :cond_0

    .line 534
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v0, p2}, Lcom/youku/player/module/VideoUrlInfo;->setProgress(I)V

    .line 535
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0, p2}, Lcom/youku/player/plugin/MediaPlayerDelegate;->seekTo(I)V

    goto :goto_0
.end method

.method public set3GTips()V
    .locals 2

    .prologue
    .line 2674
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->seekLoadingContainerView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2675
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->seekLoadingContainerView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2676
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->seekLoadingContainerView:Landroid/view/View;

    const v1, 0x7f020050

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 2683
    :cond_0
    return-void
.end method

.method public setAutoPlay(Z)V
    .locals 0
    .param p1, "autoplay"    # Z

    .prologue
    .line 2100
    iput-boolean p1, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->autoPlay:Z

    .line 2111
    return-void
.end method

.method public setHasNextVideo(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tudou/ui/activity/DetailActivity$NextVideoType;)V
    .locals 1
    .param p1, "has"    # Z
    .param p2, "curVid"    # Ljava/lang/String;
    .param p3, "nextVid"    # Ljava/lang/String;
    .param p4, "nextAlbumId"    # Ljava/lang/String;
    .param p5, "type"    # Lcom/tudou/ui/activity/DetailActivity$NextVideoType;

    .prologue
    .line 923
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mHasGetNext:Z

    .line 924
    iput-boolean p1, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mHasNext:Z

    .line 925
    iput-object p2, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mCurVid:Ljava/lang/String;

    .line 926
    iput-object p3, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mNextVid:Ljava/lang/String;

    .line 927
    iput-object p4, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mNextAlbumId:Ljava/lang/String;

    .line 928
    iput-object p5, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mNextVideoType:Lcom/tudou/ui/activity/DetailActivity$NextVideoType;

    .line 929
    return-void
.end method

.method public setIndex(Ljava/lang/String;III)V
    .locals 2
    .param p1, "playtimes"    # Ljava/lang/String;
    .param p2, "comtimes"    # I
    .param p3, "favtimes"    # I
    .param p4, "searchtimes"    # I

    .prologue
    .line 650
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->indexPlay:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->indexCom:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->indexFav:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->indexSch:Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 657
    :cond_0
    :goto_0
    return-void

    .line 653
    :cond_1
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->indexPlay:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 654
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->indexCom:Landroid/widget/TextView;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 655
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->indexFav:Landroid/widget/TextView;

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 656
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->indexSch:Landroid/widget/TextView;

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setIndexHeight(II)V
    .locals 2
    .param p1, "height"    # I
    .param p2, "margintop"    # I

    .prologue
    .line 1912
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->indexShowView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 1913
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->indexShowView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 1915
    .local v0, "mLayoutParams":Landroid/widget/FrameLayout$LayoutParams;
    if-eqz v0, :cond_0

    .line 1916
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1917
    const/4 v1, -0x1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1918
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->indexShowView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1921
    .end local v0    # "mLayoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    return-void
.end method

.method public setVisible(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 1741
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->containerView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 1748
    :goto_0
    return-void

    .line 1743
    :cond_0
    if-eqz p1, :cond_1

    .line 1744
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->containerView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1746
    :cond_1
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->containerView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setWaterMarkVisibility()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 1654
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-nez v0, :cond_1

    .line 1656
    :cond_0
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->water_mark_bg:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1673
    :goto_0
    return-void

    .line 1659
    :cond_1
    const-string v0, "local"

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v1}, Lcom/youku/player/module/VideoUrlInfo;->getPlayType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1661
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-boolean v0, v0, Lcom/youku/player/module/VideoUrlInfo;->isLocalWaterMark:Z

    if-eqz v0, :cond_2

    .line 1662
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->water_mark_bg:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1664
    :cond_2
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->water_mark_bg:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1667
    :cond_3
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-boolean v0, v0, Lcom/youku/player/module/VideoUrlInfo;->need_mark:Z

    if-eqz v0, :cond_4

    .line 1668
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->water_mark_bg:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1670
    :cond_4
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->water_mark_bg:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public showAlert()V
    .locals 2

    .prologue
    .line 1065
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v0}, Lcom/youku/player/module/VideoUrlInfo;->getPlayType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "local"

    if-ne v0, v1, :cond_0

    .line 1068
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->context:Lcom/tudou/ui/activity/DetailActivity;

    const v1, 0x7f0d02e5

    invoke-virtual {p0, v0, v1}, Lcom/youku/phone/detail/plugin/PluginSmall;->alertRetry(Landroid/app/Activity;I)V

    .line 1072
    :goto_0
    return-void

    .line 1070
    :cond_0
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->context:Lcom/tudou/ui/activity/DetailActivity;

    const v1, 0x7f0d0002

    invoke-virtual {p0, v0, v1}, Lcom/youku/phone/detail/plugin/PluginSmall;->alertRetry(Landroid/app/Activity;I)V

    goto :goto_0
.end method

.method protected showBrightView()V
    .locals 4

    .prologue
    .line 472
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/PluginSmall;->hideLoading()V

    .line 473
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->settingBright:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 474
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->hideBrightRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 475
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->hideBrightRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 476
    return-void
.end method

.method protected showCenterSildeTime(IIZ)V
    .locals 10
    .param p1, "time"    # I
    .param p2, "lasttime"    # I
    .param p3, "dismiss"    # Z

    .prologue
    const-wide/16 v8, 0x1f4

    const/4 v4, 0x0

    .line 400
    sub-int v5, p1, p2

    if-lez v5, :cond_1

    const/4 v0, 0x1

    .line 401
    .local v0, "isForward":Z
    :goto_0
    iget-object v5, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-boolean v5, v5, Lcom/youku/player/plugin/MediaPlayerDelegate;->isADShowing:Z

    if-nez v5, :cond_0

    iget-boolean v5, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->firstLoaded:Z

    if-nez v5, :cond_2

    .line 456
    :cond_0
    :goto_1
    return-void

    .end local v0    # "isForward":Z
    :cond_1
    move v0, v4

    .line 400
    goto :goto_0

    .line 405
    .restart local v0    # "isForward":Z
    :cond_2
    iget-object v5, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->playGestureCenterTime:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 406
    iget-object v5, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->playGestureCenterTime_line:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 407
    iget-object v5, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->play_controller_center_time_layout:Landroid/view/View;

    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    .line 408
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/PluginSmall;->hideLoading()V

    .line 409
    iget-object v4, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->hideTimeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 410
    iget-object v4, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->hideSeekbarRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 412
    if-gez p1, :cond_3

    .line 413
    const/4 p1, 0x0

    .line 428
    :cond_3
    const-string v2, ""

    .line 429
    .local v2, "print":Ljava/lang/String;
    if-eqz v0, :cond_5

    .line 430
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "+"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 434
    :goto_2
    sub-int v4, p1, p2

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-long v4, v4

    invoke-static {v4, v5}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUtils;->getFormatTimeForGesture(J)Ljava/lang/String;

    move-result-object v3

    .line 436
    .local v3, "target":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 437
    iget-object v4, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->playGestureCenterTime:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 438
    iget-object v4, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->playGestureCenterTime_line:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    int-to-long v6, p1

    invoke-static {v6, v7}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUtils;->getFormatTimeForGesture(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

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

    .line 444
    iget-object v4, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->pos_line:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 446
    .local v1, "params":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v4, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v4, v4, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v4}, Lcom/youku/player/module/VideoUrlInfo;->getDurationMills()I

    move-result v4

    if-eqz v4, :cond_4

    .line 447
    iget-object v4, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->play_controller_center_time_layout:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    mul-int/2addr v4, p1

    iget-object v5, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v5, v5, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v5}, Lcom/youku/player/module/VideoUrlInfo;->getDurationMills()I

    move-result v5

    div-int/2addr v4, v5

    iput v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 450
    :cond_4
    if-eqz p3, :cond_6

    .line 451
    iget-object v4, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->hideTimeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v5, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 452
    iget-object v4, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->hideSeekbarRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v5, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    .line 432
    .end local v1    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v3    # "target":Ljava/lang/String;
    :cond_5
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

    .line 454
    .restart local v1    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v3    # "target":Ljava/lang/String;
    :cond_6
    iget-object v4, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->videoBar:Landroid/widget/SeekBar;

    iget v5, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->currentPosition:I

    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setProgress(I)V

    goto/16 :goto_1
.end method

.method public showLoading(Z)V
    .locals 6
    .param p1, "videoInfoGeted"    # Z

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 1998
    const-string v1, "PluginSmall"

    const-string/jumbo v2, "showLoading() 1"

    invoke-static {v1, v2}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1999
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-nez v1, :cond_0

    .line 2000
    const-string v1, "PluginSmall"

    const-string v2, "mMediaPlayerDelegate==null"

    invoke-static {v1, v2}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2001
    :cond_0
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-boolean v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->isADShowing:Z

    if-eqz v1, :cond_2

    .line 2002
    :cond_1
    const-string v1, "PluginSmall"

    const-string v2, "mMediaPlayerDelegate.isADShowing()"

    invoke-static {v1, v2}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2049
    :goto_0
    return-void

    .line 2005
    :cond_2
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->seekLoadingContainerView:Landroid/view/View;

    if-eqz v1, :cond_3

    .line 2006
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->seekLoadingContainerView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2007
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->playLoadingBar:Lcom/youku/widget/Loading;

    invoke-virtual {v1, v4}, Lcom/youku/widget/Loading;->setVisibility(I)V

    .line 2009
    :cond_3
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v1}, Lcom/youku/player/module/VideoUrlInfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/youku/phone/detail/DetailUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 2012
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->playNameTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_4

    .line 2013
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v1}, Lcom/youku/player/module/VideoUrlInfo;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 2014
    .local v0, "tTitle":Ljava/lang/String;
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->playNameTextView:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u5373\u5c06\u4e3a\u60a8\u64ad\u653e: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2017
    .end local v0    # "tTitle":Ljava/lang/String;
    :cond_4
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v1, :cond_8

    if-nez p1, :cond_8

    iget-boolean v1, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->firstLoaded:Z

    if-eqz v1, :cond_8

    .line 2023
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->playNameTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_5

    .line 2024
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->playNameTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2025
    :cond_5
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->seekLoadingContainerView:Landroid/view/View;

    if-eqz v1, :cond_6

    iget-boolean v1, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->firstLoaded:Z

    if-eqz v1, :cond_6

    .line 2026
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->seekLoadingContainerView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 2028
    :cond_6
    const-string/jumbo v1, "zpy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mMediaPlayerDelegate.videoInfo.getProgress() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v3, v3, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v3}, Lcom/youku/player/module/VideoUrlInfo;->getProgress()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2048
    :cond_7
    :goto_1
    const-string v1, "PluginSmall"

    const-string/jumbo v2, "showLoading() 2"

    invoke-static {v1, v2}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2036
    :cond_8
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->playNameTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_9

    .line 2037
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->playNameTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2038
    :cond_9
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->playNameTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 2039
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->playNameTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2044
    :goto_2
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->seekLoadingContainerView:Landroid/view/View;

    if-eqz v1, :cond_7

    .line 2045
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->seekLoadingContainerView:Landroid/view/View;

    const v2, 0x7f020050

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    .line 2041
    :cond_a
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->playNameTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2
.end method

.method protected showVolumeView()V
    .locals 4

    .prologue
    .line 462
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/PluginSmall;->hideLoading()V

    .line 463
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->settingVolume:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 464
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->hideVolumeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 465
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->hideVolumeRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 466
    return-void
.end method

.method protected userAction()V
    .locals 4

    .prologue
    .line 2402
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->hideHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 2403
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->hideHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 2404
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall;->hideHandler:Landroid/os/Handler;

    const/16 v1, 0x3eb

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2406
    :cond_0
    return-void
.end method
