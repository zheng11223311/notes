.class public Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;
.super Landroid/widget/FrameLayout;
.source "VideoRecordView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mBorderPaint:Landroid/graphics/Paint;

.field private mBtnBack:Landroid/widget/Button;

.field private mBtnBackClickLis:Ljava/lang/Runnable;

.field private mBtnMore:Landroid/view/View;

.field private mBtnPengyouquan:Landroid/view/View;

.field private mBtnQQ:Landroid/view/View;

.field private mBtnQQZone:Landroid/view/View;

.field private mBtnRetry:Landroid/view/View;

.field private mBtnShareClickLis:Landroid/view/View$OnClickListener;

.field private mBtnSinalWeibo:Landroid/view/View;

.field private mBtnWeixin:Landroid/view/View;

.field private mDetailActivity:Lcom/tudou/ui/activity/DetailActivity;

.field private mDetailModel:Lcom/tudou/detail/DetailModel;

.field private mEndPos:I

.field private mErrorView:Landroid/view/View;

.field public mHandler:Landroid/os/Handler;

.field private mIsAnimation:Z

.field public mIsRecording:Z

.field private mLoading:Landroid/view/View;

.field private mMaxDuration:I

.field private mMediaPlayer:Lcom/youku/player/plugin/MediaPlayerDelegate;

.field private mMinDuration:I

.field mProgressAnim:Landroid/animation/ValueAnimator;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mProgressRefreshRunnable:Ljava/lang/Runnable;

.field private mRecordDurationText:Ljava/lang/String;

.field private mShadow:Landroid/view/View;

.field private mShareLayout:Landroid/view/View;

.field private mStartPos:I

.field private mStop:Z

.field private mSubVideoId:Ljava/lang/String;

.field private mSuccess:Z

.field private mTitle:Ljava/lang/String;

.field private mTitleForUrl:Ljava/lang/String;

.field private mVidForUrl:Ljava/lang/String;

.field private mVideoImgForShare:Ljava/lang/String;

.field private mVideoRecordSignalHint:Landroid/widget/TextView;

.field private mVideoRecordSignalLayout:Landroid/view/ViewGroup;

.field private mVideoRecordSinalIcon:Landroid/view/View;

.field private mVideoUrlForShare:Ljava/lang/String;

.field private mWorkHandler:Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask;

.field private mWorkThread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const-class v0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, 0x0

    .line 187
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    iput-boolean v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->mIsRecording:Z

    .line 67
    iput-boolean v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->mIsAnimation:Z

    .line 96
    new-instance v0, Landroid/os/HandlerThread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VideoRecordView_WorkThread"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->mWorkThread:Landroid/os/HandlerThread;

    .line 97
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->mWorkHandler:Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask;

    .line 99
    const/16 v0, 0xbb8

    iput v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->mMinDuration:I

    .line 103
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->mHandler:Landroid/os/Handler;

    .line 105
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->mBorderPaint:Landroid/graphics/Paint;

    .line 107
    new-instance v0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$1;

    invoke-direct {v0, p0}, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$1;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;)V

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->mBtnShareClickLis:Landroid/view/View$OnClickListener;

    .line 284
    new-instance v0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$4;

    invoke-direct {v0, p0}, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$4;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;)V

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->mProgressRefreshRunnable:Ljava/lang/Runnable;

    .line 366
    iput-boolean v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->mStop:Z

    .line 367
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->mRecordDurationText:Ljava/lang/String;

    .line 368
    iput-boolean v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->mSuccess:Z

    .line 188
    invoke-virtual {p0, v4}, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->setWillNotDraw(Z)V

    .line 189
    check-cast p1, Lcom/tudou/ui/activity/DetailActivity;

    .end local p1    # "context":Landroid/content/Context;
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->mDetailActivity:Lcom/tudou/ui/activity/DetailActivity;

    .line 190
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->mDetailActivity:Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v0}, Lcom/tudou/ui/activity/DetailActivity;->getModel()Lcom/tudou/detail/DetailModel;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->mDetailModel:Lcom/tudou/detail/DetailModel;

    .line 191
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->mBorderPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {v1}, Lcom/youku/util/Util;->dip2px(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 192
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->mBorderPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 193
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->mBorderPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 194
    invoke-virtual {p0, v4}, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->setWillNotDraw(Z)V

    .line 195
    return-void
.end method

.method static synthetic access$000(Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->mVideoImgForShare:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;)I
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;

    .prologue
    .line 50
    iget v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->mStartPos:I

    return v0
.end method

.method static synthetic access$1202(Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;
    .param p1, "x1"    # Z

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->mIsAnimation:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->mStop:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;
    .param p1, "x1"    # Z

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->mStop:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;)I
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;

    .prologue
    .line 50
    iget v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->mMinDuration:I

    return v0
.end method

.method static synthetic access$200(Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;)Lcom/youku/player/plugin/MediaPlayerDelegate;
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->mMediaPlayer:Lcom/youku/player/plugin/MediaPlayerDelegate;

    return-object v0
.end method

.method static synthetic access$300(Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->mVideoUrlForShare:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->mSubVideoId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->mTitleForUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->mSuccess:Z

    return v0
.end method

.method static synthetic access$702(Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;
    .param p1, "x1"    # Z

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->mSuccess:Z

    return p1
.end method

.method static synthetic access$800(Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->mBtnBackClickLis:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$900(Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->mProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method private clearViews()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 275
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->mBtnBack:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 276
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->mLoading:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 277
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->mShadow:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 278
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->mErrorView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 279
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->mShareLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 280
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->mVideoRecordSignalLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 282
    return-void
.end method

.method private resetWorkThread()V
    .locals 4

    .prologue
    .line 453
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->mWorkThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 455
    :try_start_0
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->mWorkThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 459
    :cond_0
    :goto_0
    new-instance v0, Landroid/os/HandlerThread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VideoRecordView_WorkThread"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->mWorkThread:Landroid/os/HandlerThread;

    .line 460
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->mWorkThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 461
    new-instance v0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask;

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->mWorkThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->mWorkHandler:Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask;

    .line 462
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->mWorkHandler:Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask;

    new-instance v1, Ljava/lang/ref/WeakReference;

    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->mDetailModel:Lcom/tudou/detail/DetailModel;

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask;->mModel:Ljava/lang/ref/WeakReference;

    .line 463
    return-void

    .line 456
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private zoomIn()V
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 518
    iput-boolean v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->mIsAnimation:Z

    .line 519
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v6, 0x3f800000    # 1.0f

    move v3, v1

    move v4, v2

    move v5, v1

    move v7, v1

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 520
    .local v0, "tran":Landroid/view/animation/TranslateAnimation;
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 521
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 523
    new-instance v1, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$7;

    invoke-direct {v1, p0}, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$7;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 531
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->mShareLayout:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 532
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->mShareLayout:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 533
    return-void
.end method


# virtual methods
.method public cancelVideoRecord()V
    .locals 2

    .prologue
    .line 437
    sget-object v0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->TAG:Ljava/lang/String;

    const-string v1, "cancelVideoRecord"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->mIsRecording:Z

    .line 439
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->mProgressAnim:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 440
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->mProgressAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 442
    :cond_0
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->mWorkHandler:Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask;->access$1102(Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask;Z)Z

    .line 443
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->mWorkHandler:Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask;->cancelVideoRecord()V

    .line 444
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v1, 0x0

    .line 199
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 200
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->mMediaPlayer:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->mMediaPlayer:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->isLooping()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->mBorderPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 203
    :cond_0
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 511
    iget-boolean v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->mIsAnimation:Z

    if-eqz v0, :cond_0

    .line 512
    const/4 v0, 0x1

    .line 514
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public getEndPos()I
    .locals 1

    .prologue
    .line 433
    iget v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->mEndPos:I

    return v0
.end method

.method public getStartPos()I
    .locals 1

    .prologue
    .line 429
    iget v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->mStartPos:I

    return v0
.end method

.method public hideVideoRecordView()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 447
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->mBtnBack:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 448
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->mLoading:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 449
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->mVideoRecordSignalLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 450
    return-void
.end method

.method public onCurrentPostionChange(I)V
    .locals 7
    .param p1, "progress"    # I

    .prologue
    .line 421
    const-string v0, "videorecordtime"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCurrentPostionChange  progress "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->mMediaPlayer:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->isLooping()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 423
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->mVideoRecordSinalIcon:Landroid/view/View;

    const v1, 0x7f0206e0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 424
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->mVideoRecordSignalHint:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u6b63\u5728\u9884\u89c8  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    iget v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->mStartPos:I

    sub-int v4, p1, v4

    iget v5, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->mEndPos:I

    iget v6, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->mStartPos:I

    sub-int/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x447a0000    # 1000.0f

    div-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/youku/util/Util;->formatTime3(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->mRecordDurationText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 426
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 215
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 216
    const v0, 0x7f0c0baf

    invoke-virtual {p0, v0}, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->mBtnBack:Landroid/widget/Button;

    .line 218
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->mBtnBack:Landroid/widget/Button;

    new-instance v1, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$2;

    invoke-direct {v1, p0}, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$2;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 233
    const v0, 0x7f0c0bb0

    invoke-virtual {p0, v0}, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->mProgressBar:Landroid/widget/ProgressBar;

    .line 235
    const v0, 0x7f0c0bbc

    invoke-virtual {p0, v0}, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->mVideoRecordSignalLayout:Landroid/view/ViewGroup;

    .line 236
    const v0, 0x7f0c0bbd

    invoke-virtual {p0, v0}, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->mVideoRecordSinalIcon:Landroid/view/View;

    .line 237
    const v0, 0x7f0c0bbe

    invoke-virtual {p0, v0}, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->mVideoRecordSignalHint:Landroid/widget/TextView;

    .line 239
    const v0, 0x7f0c0bb3

    invoke-virtual {p0, v0}, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->mErrorView:Landroid/view/View;

    .line 240
    const v0, 0x7f0c0bb4

    invoke-virtual {p0, v0}, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->mBtnRetry:Landroid/view/View;

    .line 241
    const v0, 0x7f0c0bb2

    invoke-virtual {p0, v0}, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->mLoading:Landroid/view/View;

    .line 242
    const v0, 0x7f0c0bb1

    invoke-virtual {p0, v0}, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->mShadow:Landroid/view/View;

    .line 244
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->mBtnRetry:Landroid/view/View;

    new-instance v1, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$3;

    invoke-direct {v1, p0}, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$3;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 257
    const v0, 0x7f0c0bb5

    invoke-virtual {p0, v0}, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->mShareLayout:Landroid/view/View;

    .line 258
    const v0, 0x7f0c0bb6

    invoke-virtual {p0, v0}, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->mBtnWeixin:Landroid/view/View;

    .line 259
    const v0, 0x7f0c0bb7

    invoke-virtual {p0, v0}, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->mBtnPengyouquan:Landroid/view/View;

    .line 260
    const v0, 0x7f0c0bb8

    invoke-virtual {p0, v0}, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->mBtnSinalWeibo:Landroid/view/View;

    .line 261
    const v0, 0x7f0c0bb9

    invoke-virtual {p0, v0}, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->mBtnQQZone:Landroid/view/View;

    .line 262
    const v0, 0x7f0c0bba

    invoke-virtual {p0, v0}, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->mBtnQQ:Landroid/view/View;

    .line 263
    const v0, 0x7f0c0bbb

    invoke-virtual {p0, v0}, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->mBtnMore:Landroid/view/View;

    .line 265
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->mBtnWeixin:Landroid/view/View;

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->mBtnShareClickLis:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 266
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->mBtnPengyouquan:Landroid/view/View;

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->mBtnShareClickLis:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 267
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->mBtnSinalWeibo:Landroid/view/View;

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->mBtnShareClickLis:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 268
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->mBtnQQZone:Landroid/view/View;

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->mBtnShareClickLis:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 269
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->mBtnQQ:Landroid/view/View;

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->mBtnShareClickLis:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 270
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->mBtnMore:Landroid/view/View;

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->mBtnShareClickLis:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 272
    return-void
.end method

.method protected onStartComplete(Z)V
    .locals 0
    .param p1, "success"    # Z

    .prologue
    .line 467
    return-void
.end method

.method protected onStopComplete(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "subVideoId"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "fImg"    # Ljava/lang/String;

    .prologue
    .line 474
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->mSubVideoId:Ljava/lang/String;

    .line 475
    iput-object p2, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->mVideoUrlForShare:Ljava/lang/String;

    .line 476
    iput-object p3, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->mVideoImgForShare:Ljava/lang/String;

    .line 477
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->mLoading:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 478
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->mWorkThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 480
    :try_start_0
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->mWorkThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 485
    :cond_0
    :goto_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 486
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->mSuccess:Z

    .line 487
    invoke-direct {p0}, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->zoomIn()V

    .line 488
    const-string v1, "t1.detail_player.videopreview"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 496
    :goto_1
    return-void

    .line 490
    :cond_1
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->mErrorView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 491
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 492
    .local v0, "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "actiontype"

    const-string v2, "vtfailureshow"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 493
    const-string v1, "\u5931\u8d25\u5c55\u793a"

    const-string v2, "\u64ad\u653e\u5668"

    const-string v3, ""

    invoke-static {v1, v2, v3, v0}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_1

    .line 481
    .end local v0    # "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public restartVideoRecord()V
    .locals 6

    .prologue
    .line 409
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->mLoading:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 410
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->mErrorView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 411
    sget-object v0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "restartVideoRecord mVidForUrl = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->mVidForUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mTitleForUrl = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->mTitleForUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mStartPos = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->mStartPos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    invoke-direct {p0}, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->resetWorkThread()V

    .line 413
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->mWorkHandler:Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask;

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->mVidForUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->mTitleForUrl:Ljava/lang/String;

    iget v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->mStartPos:I

    iget v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->mEndPos:I

    iget v5, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->mMaxDuration:I

    invoke-virtual/range {v0 .. v5}, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask;->restartVideoRecord(Ljava/lang/String;Ljava/lang/String;III)V

    .line 414
    return-void
.end method

.method public setMediaPlayer(Lcom/youku/player/plugin/MediaPlayerDelegate;)V
    .locals 0
    .param p1, "mediaPlayer"    # Lcom/youku/player/plugin/MediaPlayerDelegate;

    .prologue
    .line 206
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->mMediaPlayer:Lcom/youku/player/plugin/MediaPlayerDelegate;

    .line 207
    return-void
.end method

.method public setOnBtnBackClickLis(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 210
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->mBtnBackClickLis:Ljava/lang/Runnable;

    .line 211
    return-void
.end method

.method public setVisibility(I)V
    .locals 2
    .param p1, "visibility"    # I

    .prologue
    .line 500
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 501
    if-eqz p1, :cond_0

    .line 502
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->mWorkHandler:Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask;

    if-eqz v0, :cond_0

    .line 503
    sget-object v0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->TAG:Ljava/lang/String;

    const-string v1, "setVisibility  set mWorkHandler.mDropped = true"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->mWorkHandler:Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask;->access$1102(Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask;Z)Z

    .line 507
    :cond_0
    return-void
.end method

.method public startVideoRecord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/Runnable;)V
    .locals 7
    .param p1, "vid"    # Ljava/lang/String;
    .param p2, "titleForUrl"    # Ljava/lang/String;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "start"    # I
    .param p5, "maxSec"    # I
    .param p6, "timeout"    # Ljava/lang/Runnable;

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 299
    sget-object v0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startVideoRecord vid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " title = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " start = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " maxSec = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    iput-boolean v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->mIsRecording:Z

    .line 302
    iput-boolean v5, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->mStop:Z

    .line 303
    iput p4, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->mStartPos:I

    .line 305
    iput p5, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->mMaxDuration:I

    .line 306
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->mVidForUrl:Ljava/lang/String;

    .line 307
    iput-object p2, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->mTitleForUrl:Ljava/lang/String;

    .line 308
    iput-object p3, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->mTitle:Ljava/lang/String;

    .line 310
    invoke-direct {p0}, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->clearViews()V

    .line 311
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->mVideoRecordSignalLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 312
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->mVideoRecordSignalHint:Landroid/widget/TextView;

    const-string v1, "\u5f55\u5236\u4e2d"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 313
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->mVideoRecordSinalIcon:Landroid/view/View;

    const v1, 0x7f0206e2

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 314
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->mVideoRecordSinalIcon:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 315
    .local v6, "tSignalIconBg":Landroid/graphics/drawable/Drawable;
    instance-of v0, v6, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    .line 316
    check-cast v6, Landroid/graphics/drawable/AnimationDrawable;

    .end local v6    # "tSignalIconBg":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v6}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 318
    :cond_0
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 319
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->mProgressBar:Landroid/widget/ProgressBar;

    iget v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->mMaxDuration:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 320
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v5}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 321
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0206da

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 322
    const/4 v0, 0x2

    new-array v0, v0, [I

    aput v5, v0, v5

    iget v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->mMaxDuration:I

    aput v1, v0, v3

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iget v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->mMaxDuration:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->mProgressAnim:Landroid/animation/ValueAnimator;

    .line 323
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->mProgressAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 324
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->mProgressAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$5;

    invoke-direct {v1, p0}, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$5;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 333
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->mProgressAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$6;

    invoke-direct {v1, p0, p6}, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$6;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 360
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->mProgressAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 362
    invoke-direct {p0}, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->resetWorkThread()V

    .line 363
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->mWorkHandler:Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask;

    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->mTitleForUrl:Ljava/lang/String;

    iget v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->mStartPos:I

    move-object v1, p1

    move v4, p5

    invoke-virtual/range {v0 .. v5}, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask;->startVideoRecord(Ljava/lang/String;Ljava/lang/String;IIZ)V

    .line 364
    return-void
.end method

.method public stopVideoRecord(I)Z
    .locals 8
    .param p1, "end"    # I

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 371
    sget-object v2, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "stopVideoRecord end = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4}, Ljava/lang/RuntimeException;-><init>()V

    invoke-static {v2, v3, v4}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 372
    const/4 v1, 0x0

    .line 373
    .local v1, "tStopSuccess":Z
    iput-boolean v5, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->mIsRecording:Z

    .line 374
    iput-boolean v6, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->mStop:Z

    .line 376
    iput p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->mEndPos:I

    .line 377
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->mProgressAnim:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_0

    .line 378
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->mProgressAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    .line 381
    :cond_0
    iget v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->mEndPos:I

    iget v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->mStartPos:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->mMinDuration:I

    if-gt v2, v3, :cond_1

    .line 382
    sget-object v2, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->TAG:Ljava/lang/String;

    const-string v3, "stopVideoRecord  set mWorkHandler.mDropped = true"

    invoke-static {v2, v3}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->mBtnBack:Landroid/widget/Button;

    invoke-virtual {v2, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 384
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->mVideoRecordSignalLayout:Landroid/view/ViewGroup;

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 385
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->mVideoRecordSignalHint:Landroid/widget/TextView;

    const-string v3, "\u65f6\u95f4\u8fc7\u77ed"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 386
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->mWorkHandler:Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask;

    invoke-static {v2, v6}, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask;->access$1102(Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask;Z)Z

    .line 387
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->mVideoRecordSinalIcon:Landroid/view/View;

    const v3, 0x7f0206df

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 388
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0206db

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 405
    :goto_0
    return v1

    .line 390
    :cond_1
    iget v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->mEndPos:I

    iget v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->mStartPos:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->mMaxDuration:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 391
    .local v0, "interval":I
    int-to-float v2, v0

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/youku/util/Util;->formatTime3(D)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->mRecordDurationText:Ljava/lang/String;

    .line 392
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->mBtnBack:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 393
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->mVideoRecordSignalLayout:Landroid/view/ViewGroup;

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 398
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v5}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 399
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 400
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->mLoading:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 401
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->mShadow:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 402
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->mWorkHandler:Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask;

    iget v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->mStartPos:I

    iget v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView;->mEndPos:I

    invoke-virtual {v2, v3, v4}, Lcom/youku/phone/detail/plugin/fullscreen/VideoRecordView$VideoRecoredTask;->stopVideoRecord(II)V

    .line 403
    const/4 v1, 0x1

    goto :goto_0
.end method
