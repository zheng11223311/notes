.class public Lcom/youku/player/plugin/PluginInvestigate;
.super Lcom/youku/player/plugin/PluginOverlay;
.source "PluginInvestigate.java"

# interfaces
.implements Lcom/youku/player/util/DetailMessage;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/player/plugin/PluginInvestigate$InvestCountDownTimer;
    }
.end annotation


# static fields
.field private static final DEFAULT_DURATION:I = 0x78

.field private static final DEFAULT_NAME:Ljava/lang/String; = "\u53c2\u4e0e\u8c03\u7814"

.field private static final MARGIN_BOTTOM_HORIZONTAL:I = 0x5a

.field private static final MARGIN_BOTTOM_HORIZONTAL_PAD:I = 0xa0

.field private static final MARGIN_BOTTOM_VERTICAL:I = 0x32

.field private static final MARGIN_BOTTOM_VERTICAL_PAD:I = 0x82


# instance fields
.field private final TAG:Ljava/lang/String;

.field containerView:Landroid/view/View;

.field private isHide:Z

.field private isOpen:Z

.field mActivity:Landroid/app/Activity;

.field private mAdvInfo:Lcom/youku/player/goplay/AdvInfo;

.field mAnimator:Landroid/widget/RelativeLayout;

.field mArrowRight:Landroid/widget/LinearLayout;

.field private mClickURL:Ljava/lang/String;

.field mClose:Landroid/widget/LinearLayout;

.field mInvestigate:Landroid/widget/LinearLayout;

.field mLayoutInflater:Landroid/view/LayoutInflater;

.field private mName:Ljava/lang/String;

.field private mPlayerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

.field private mPlayerUiControl:Lcom/youku/player/apiservice/IPlayerUiControl;

.field private mSavedCount:I

.field mText:Landroid/widget/TextView;

.field private mTimer:Lcom/youku/player/plugin/PluginInvestigate$InvestCountDownTimer;

.field mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/youku/player/plugin/MediaPlayerDelegate;Lcom/youku/player/apiservice/IPlayerUiControl;Lcom/youku/player/apiservice/IPlayerAdControl;)V
    .locals 2
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "mediaPlayerDelegate"    # Lcom/youku/player/plugin/MediaPlayerDelegate;
    .param p3, "playerUiControl"    # Lcom/youku/player/apiservice/IPlayerUiControl;
    .param p4, "playerAdControl"    # Lcom/youku/player/apiservice/IPlayerAdControl;

    .prologue
    const/4 v1, 0x0

    .line 64
    invoke-direct {p0, p1, p2}, Lcom/youku/player/plugin/PluginOverlay;-><init>(Landroid/content/Context;Lcom/youku/player/plugin/MediaPlayerDelegate;)V

    .line 47
    const/16 v0, 0x78

    iput v0, p0, Lcom/youku/player/plugin/PluginInvestigate;->mSavedCount:I

    .line 50
    iput-boolean v1, p0, Lcom/youku/player/plugin/PluginInvestigate;->isOpen:Z

    .line 51
    iput-boolean v1, p0, Lcom/youku/player/plugin/PluginInvestigate;->isHide:Z

    .line 60
    const-string v0, "investigate"

    iput-object v0, p0, Lcom/youku/player/plugin/PluginInvestigate;->TAG:Ljava/lang/String;

    .line 65
    iput-object p2, p0, Lcom/youku/player/plugin/PluginInvestigate;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    .line 66
    iput-object p1, p0, Lcom/youku/player/plugin/PluginInvestigate;->mActivity:Landroid/app/Activity;

    .line 67
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/player/plugin/PluginInvestigate;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 68
    iput-object p3, p0, Lcom/youku/player/plugin/PluginInvestigate;->mPlayerUiControl:Lcom/youku/player/apiservice/IPlayerUiControl;

    .line 69
    iput-object p4, p0, Lcom/youku/player/plugin/PluginInvestigate;->mPlayerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

    .line 70
    invoke-direct {p0, p1}, Lcom/youku/player/plugin/PluginInvestigate;->init(Landroid/content/Context;)V

    .line 71
    return-void
.end method

.method static synthetic access$000(Lcom/youku/player/plugin/PluginInvestigate;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/player/plugin/PluginInvestigate;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/youku/player/plugin/PluginInvestigate;->close()V

    return-void
.end method

.method static synthetic access$100(Lcom/youku/player/plugin/PluginInvestigate;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/youku/player/plugin/PluginInvestigate;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/youku/player/plugin/PluginInvestigate;->mClickURL:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/youku/player/plugin/PluginInvestigate;)I
    .locals 1
    .param p0, "x0"    # Lcom/youku/player/plugin/PluginInvestigate;

    .prologue
    .line 32
    iget v0, p0, Lcom/youku/player/plugin/PluginInvestigate;->mSavedCount:I

    return v0
.end method

.method static synthetic access$202(Lcom/youku/player/plugin/PluginInvestigate;I)I
    .locals 0
    .param p0, "x0"    # Lcom/youku/player/plugin/PluginInvestigate;
    .param p1, "x1"    # I

    .prologue
    .line 32
    iput p1, p0, Lcom/youku/player/plugin/PluginInvestigate;->mSavedCount:I

    return p1
.end method

.method private close()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 440
    const-string v1, "investigate"

    const-string v2, "investigate : close()"

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    iget-object v1, p0, Lcom/youku/player/plugin/PluginInvestigate;->mActivity:Landroid/app/Activity;

    sget v2, Lcom/youku/android/player/R$anim;->yp_slide_out_to_right:I

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 443
    .local v0, "outAnimation":Landroid/view/animation/Animation;
    iget-object v1, p0, Lcom/youku/player/plugin/PluginInvestigate;->mAnimator:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 444
    iget-object v1, p0, Lcom/youku/player/plugin/PluginInvestigate;->mTimer:Lcom/youku/player/plugin/PluginInvestigate$InvestCountDownTimer;

    if-eqz v1, :cond_0

    .line 445
    iget-object v1, p0, Lcom/youku/player/plugin/PluginInvestigate;->mTimer:Lcom/youku/player/plugin/PluginInvestigate$InvestCountDownTimer;

    invoke-virtual {v1}, Lcom/youku/player/plugin/PluginInvestigate$InvestCountDownTimer;->cancel()V

    .line 446
    iput-object v4, p0, Lcom/youku/player/plugin/PluginInvestigate;->mTimer:Lcom/youku/player/plugin/PluginInvestigate$InvestCountDownTimer;

    .line 448
    :cond_0
    iget-object v1, p0, Lcom/youku/player/plugin/PluginInvestigate;->containerView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 449
    iput v3, p0, Lcom/youku/player/plugin/PluginInvestigate;->mSavedCount:I

    .line 450
    iput-object v4, p0, Lcom/youku/player/plugin/PluginInvestigate;->mAdvInfo:Lcom/youku/player/goplay/AdvInfo;

    .line 451
    iput-boolean v3, p0, Lcom/youku/player/plugin/PluginInvestigate;->isOpen:Z

    .line 452
    return-void
.end method

.method private disposeVC()V
    .locals 4

    .prologue
    .line 505
    iget-object v0, p0, Lcom/youku/player/plugin/PluginInvestigate;->mAdvInfo:Lcom/youku/player/goplay/AdvInfo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/youku/player/plugin/PluginInvestigate;->mAdvInfo:Lcom/youku/player/goplay/AdvInfo;

    iget-object v0, v0, Lcom/youku/player/goplay/AdvInfo;->VT:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/youku/player/plugin/PluginInvestigate;->mAdvInfo:Lcom/youku/player/goplay/AdvInfo;

    iget-object v0, v0, Lcom/youku/player/goplay/AdvInfo;->VT:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/youku/player/plugin/PluginInvestigate;->mAdvInfo:Lcom/youku/player/goplay/AdvInfo;

    iget-object v0, v0, Lcom/youku/player/goplay/AdvInfo;->VT:Ljava/lang/String;

    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/youku/player/plugin/PluginInvestigate;->mAdvInfo:Lcom/youku/player/goplay/AdvInfo;

    iget-object v0, v0, Lcom/youku/player/goplay/AdvInfo;->VC:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/youku/player/plugin/PluginInvestigate;->mAdvInfo:Lcom/youku/player/goplay/AdvInfo;

    iget-object v0, v0, Lcom/youku/player/goplay/AdvInfo;->VC:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 510
    new-instance v0, Lcom/youku/player/service/DisposableHttpTask;

    sget-object v1, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    iget-object v2, p0, Lcom/youku/player/plugin/PluginInvestigate;->mAdvInfo:Lcom/youku/player/goplay/AdvInfo;

    iget-object v2, v2, Lcom/youku/player/goplay/AdvInfo;->VC:Ljava/lang/String;

    const-string v3, "VC"

    invoke-direct {v0, v1, v2, v3}, Lcom/youku/player/service/DisposableHttpTask;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/youku/player/service/DisposableHttpTask;->start()V

    .line 511
    iget-object v0, p0, Lcom/youku/player/plugin/PluginInvestigate;->mAdvInfo:Lcom/youku/player/goplay/AdvInfo;

    const-string v1, ""

    iput-object v1, v0, Lcom/youku/player/goplay/AdvInfo;->VC:Ljava/lang/String;

    .line 513
    :cond_1
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/youku/player/plugin/PluginInvestigate;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/youku/android/player/R$layout;->yp_player_investigate_youku:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/player/plugin/PluginInvestigate;->containerView:Landroid/view/View;

    .line 76
    iget-object v0, p0, Lcom/youku/player/plugin/PluginInvestigate;->containerView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/youku/player/plugin/PluginInvestigate;->addView(Landroid/view/View;)V

    .line 77
    iget-object v0, p0, Lcom/youku/player/plugin/PluginInvestigate;->containerView:Landroid/view/View;

    sget v1, Lcom/youku/android/player/R$id;->yp_investigate_holder:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/youku/player/plugin/PluginInvestigate;->mAnimator:Landroid/widget/RelativeLayout;

    .line 79
    iget-object v0, p0, Lcom/youku/player/plugin/PluginInvestigate;->containerView:Landroid/view/View;

    sget v1, Lcom/youku/android/player/R$id;->yp_investigate:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/youku/player/plugin/PluginInvestigate;->mInvestigate:Landroid/widget/LinearLayout;

    .line 81
    iget-object v0, p0, Lcom/youku/player/plugin/PluginInvestigate;->containerView:Landroid/view/View;

    sget v1, Lcom/youku/android/player/R$id;->investigate_close:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/youku/player/plugin/PluginInvestigate;->mClose:Landroid/widget/LinearLayout;

    .line 83
    iget-object v0, p0, Lcom/youku/player/plugin/PluginInvestigate;->mClose:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/youku/player/plugin/PluginInvestigate$1;

    invoke-direct {v1, p0}, Lcom/youku/player/plugin/PluginInvestigate$1;-><init>(Lcom/youku/player/plugin/PluginInvestigate;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    iget-object v0, p0, Lcom/youku/player/plugin/PluginInvestigate;->containerView:Landroid/view/View;

    sget v1, Lcom/youku/android/player/R$id;->yp_investigate_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/youku/player/plugin/PluginInvestigate;->mText:Landroid/widget/TextView;

    .line 91
    iget-object v0, p0, Lcom/youku/player/plugin/PluginInvestigate;->mText:Landroid/widget/TextView;

    new-instance v1, Lcom/youku/player/plugin/PluginInvestigate$2;

    invoke-direct {v1, p0}, Lcom/youku/player/plugin/PluginInvestigate$2;-><init>(Lcom/youku/player/plugin/PluginInvestigate;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    iget-object v0, p0, Lcom/youku/player/plugin/PluginInvestigate;->containerView:Landroid/view/View;

    sget v1, Lcom/youku/android/player/R$id;->yp_investigate_arrowright:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/youku/player/plugin/PluginInvestigate;->mArrowRight:Landroid/widget/LinearLayout;

    .line 115
    iget-object v0, p0, Lcom/youku/player/plugin/PluginInvestigate;->mArrowRight:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/youku/player/plugin/PluginInvestigate$3;

    invoke-direct {v1, p0}, Lcom/youku/player/plugin/PluginInvestigate$3;-><init>(Lcom/youku/player/plugin/PluginInvestigate;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    iget-object v0, p0, Lcom/youku/player/plugin/PluginInvestigate;->containerView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 138
    return-void
.end method

.method private pauseTimer()V
    .locals 1

    .prologue
    .line 516
    iget-object v0, p0, Lcom/youku/player/plugin/PluginInvestigate;->mTimer:Lcom/youku/player/plugin/PluginInvestigate$InvestCountDownTimer;

    if-eqz v0, :cond_0

    .line 517
    iget-object v0, p0, Lcom/youku/player/plugin/PluginInvestigate;->mTimer:Lcom/youku/player/plugin/PluginInvestigate$InvestCountDownTimer;

    invoke-virtual {v0}, Lcom/youku/player/plugin/PluginInvestigate$InvestCountDownTimer;->cancel()V

    .line 518
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/youku/player/plugin/PluginInvestigate;->mTimer:Lcom/youku/player/plugin/PluginInvestigate$InvestCountDownTimer;

    .line 520
    :cond_0
    return-void
.end method

.method private startTimer()V
    .locals 6

    .prologue
    .line 523
    iget v0, p0, Lcom/youku/player/plugin/PluginInvestigate;->mSavedCount:I

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/youku/player/plugin/PluginInvestigate;->isOpen:Z

    if-eqz v0, :cond_0

    .line 524
    new-instance v0, Lcom/youku/player/plugin/PluginInvestigate$InvestCountDownTimer;

    iget v1, p0, Lcom/youku/player/plugin/PluginInvestigate;->mSavedCount:I

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v2, v1

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/youku/player/plugin/PluginInvestigate$InvestCountDownTimer;-><init>(Lcom/youku/player/plugin/PluginInvestigate;JJ)V

    iput-object v0, p0, Lcom/youku/player/plugin/PluginInvestigate;->mTimer:Lcom/youku/player/plugin/PluginInvestigate$InvestCountDownTimer;

    .line 525
    iget-object v0, p0, Lcom/youku/player/plugin/PluginInvestigate;->mTimer:Lcom/youku/player/plugin/PluginInvestigate$InvestCountDownTimer;

    invoke-virtual {v0}, Lcom/youku/player/plugin/PluginInvestigate$InvestCountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 527
    :cond_0
    return-void
.end method


# virtual methods
.method public OnCurrentPositionChangeListener(I)V
    .locals 0
    .param p1, "currentPosition"    # I

    .prologue
    .line 183
    return-void
.end method

.method public OnPreparedListener()V
    .locals 0

    .prologue
    .line 161
    return-void
.end method

.method public OnSeekCompleteListener()V
    .locals 0

    .prologue
    .line 167
    return-void
.end method

.method public OnTimeoutListener()V
    .locals 0

    .prologue
    .line 177
    return-void
.end method

.method public OnVideoSizeChangedListener(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 173
    return-void
.end method

.method public back()V
    .locals 0

    .prologue
    .line 329
    return-void
.end method

.method public getNavigationBarHeight(Landroid/app/Activity;)I
    .locals 5
    .param p1, "context"    # Landroid/app/Activity;

    .prologue
    .line 389
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 390
    .local v1, "resources":Landroid/content/res/Resources;
    const-string v2, "navigation_bar_height"

    const-string v3, "dimen"

    const-string v4, "android"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 391
    .local v0, "resourceId":I
    if-lez v0, :cond_0

    .line 392
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 394
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public hide()V
    .locals 2

    .prologue
    .line 426
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youku/player/plugin/PluginInvestigate;->isHide:Z

    .line 427
    iget-object v0, p0, Lcom/youku/player/plugin/PluginInvestigate;->containerView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 428
    iget-object v0, p0, Lcom/youku/player/plugin/PluginInvestigate;->containerView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 429
    invoke-direct {p0}, Lcom/youku/player/plugin/PluginInvestigate;->pauseTimer()V

    .line 431
    :cond_0
    return-void
.end method

.method public initData(Lcom/youku/player/goplay/VideoAdvInfo;)V
    .locals 6
    .param p1, "videoAdvInfo"    # Lcom/youku/player/goplay/VideoAdvInfo;

    .prologue
    .line 467
    iget-object v4, p0, Lcom/youku/player/plugin/PluginInvestigate;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v4, :cond_0

    if-eqz p1, :cond_0

    .line 468
    iget-object v4, p1, Lcom/youku/player/goplay/VideoAdvInfo;->VAL:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 469
    .local v3, "size":I
    if-nez v3, :cond_1

    .line 502
    .end local v3    # "size":I
    :cond_0
    :goto_0
    return-void

    .line 472
    .restart local v3    # "size":I
    :cond_1
    const-string v4, "investigate"

    const-string v5, "investigate : start()"

    invoke-static {v4, v5}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    invoke-virtual {p0}, Lcom/youku/player/plugin/PluginInvestigate;->release()V

    .line 474
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v3, :cond_0

    .line 475
    iget-object v4, p1, Lcom/youku/player/goplay/VideoAdvInfo;->VAL:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/youku/player/goplay/AdvInfo;

    iget-object v4, v4, Lcom/youku/player/goplay/AdvInfo;->VSC:Ljava/lang/String;

    if-eqz v4, :cond_4

    iget-object v4, p1, Lcom/youku/player/goplay/VideoAdvInfo;->VAL:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/youku/player/goplay/AdvInfo;

    iget-object v4, v4, Lcom/youku/player/goplay/AdvInfo;->VSC:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 477
    iget-object v4, p1, Lcom/youku/player/goplay/VideoAdvInfo;->VAL:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/youku/player/goplay/AdvInfo;

    iput-object v4, p0, Lcom/youku/player/plugin/PluginInvestigate;->mAdvInfo:Lcom/youku/player/goplay/AdvInfo;

    .line 478
    iget-object v4, p0, Lcom/youku/player/plugin/PluginInvestigate;->mAdvInfo:Lcom/youku/player/goplay/AdvInfo;

    iget-object v4, v4, Lcom/youku/player/goplay/AdvInfo;->VSC:Ljava/lang/String;

    iput-object v4, p0, Lcom/youku/player/plugin/PluginInvestigate;->mClickURL:Ljava/lang/String;

    .line 479
    iget-object v4, p0, Lcom/youku/player/plugin/PluginInvestigate;->mAdvInfo:Lcom/youku/player/goplay/AdvInfo;

    iget v0, v4, Lcom/youku/player/goplay/AdvInfo;->VP:I

    .line 480
    .local v0, "duration":I
    if-lez v0, :cond_2

    .end local v0    # "duration":I
    :goto_2
    iput v0, p0, Lcom/youku/player/plugin/PluginInvestigate;->mSavedCount:I

    .line 481
    iget-object v4, p0, Lcom/youku/player/plugin/PluginInvestigate;->mAdvInfo:Lcom/youku/player/goplay/AdvInfo;

    iget-object v2, v4, Lcom/youku/player/goplay/AdvInfo;->VN:Ljava/lang/String;

    .line 482
    .local v2, "name":Ljava/lang/String;
    if-eqz v2, :cond_3

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 483
    iput-object v2, p0, Lcom/youku/player/plugin/PluginInvestigate;->mName:Ljava/lang/String;

    .line 487
    :goto_3
    iget-object v4, p0, Lcom/youku/player/plugin/PluginInvestigate;->mText:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/youku/player/plugin/PluginInvestigate;->mName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 488
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/youku/player/plugin/PluginInvestigate;->isOpen:Z

    .line 489
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/youku/player/plugin/PluginInvestigate;->isHide:Z

    goto :goto_0

    .line 480
    .end local v2    # "name":Ljava/lang/String;
    .restart local v0    # "duration":I
    :cond_2
    const/16 v0, 0x78

    goto :goto_2

    .line 485
    .end local v0    # "duration":I
    .restart local v2    # "name":Ljava/lang/String;
    :cond_3
    const-string/jumbo v4, "\u53c2\u4e0e\u8c03\u7814"

    iput-object v4, p0, Lcom/youku/player/plugin/PluginInvestigate;->mName:Ljava/lang/String;

    goto :goto_3

    .line 474
    .end local v2    # "name":Ljava/lang/String;
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 559
    iget-object v0, p0, Lcom/youku/player/plugin/PluginInvestigate;->containerView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public newVideo()V
    .locals 0

    .prologue
    .line 241
    return-void
.end method

.method public onADplaying()V
    .locals 0

    .prologue
    .line 307
    return-void
.end method

.method public onBufferingUpdateListener(I)V
    .locals 0
    .param p1, "percent"    # I

    .prologue
    .line 144
    return-void
.end method

.method public onClearUpDownFav()V
    .locals 0

    .prologue
    .line 223
    return-void
.end method

.method public onCompletionListener()V
    .locals 0

    .prologue
    .line 149
    return-void
.end method

.method public onDown()V
    .locals 0

    .prologue
    .line 217
    return-void
.end method

.method public onErrorListener(II)Z
    .locals 1
    .param p1, "what"    # I
    .param p2, "extra"    # I

    .prologue
    .line 154
    const/4 v0, 0x0

    return v0
.end method

.method public onFavor()V
    .locals 0

    .prologue
    .line 229
    return-void
.end method

.method public onLoadedListener()V
    .locals 0

    .prologue
    .line 188
    return-void
.end method

.method public onLoadingListener()V
    .locals 0

    .prologue
    .line 193
    return-void
.end method

.method public onMute(Z)V
    .locals 0
    .param p1, "mute"    # Z

    .prologue
    .line 259
    return-void
.end method

.method public onNotifyChangeVideoQuality()V
    .locals 0

    .prologue
    .line 199
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 269
    invoke-virtual {p0}, Lcom/youku/player/plugin/PluginInvestigate;->hide()V

    .line 270
    return-void
.end method

.method public onPlayNoRightVideo(Lcom/youku/player/goplay/GoplayException;)V
    .locals 0
    .param p1, "e"    # Lcom/youku/player/goplay/GoplayException;

    .prologue
    .line 295
    return-void
.end method

.method public onPlayReleateNoRightVideo()V
    .locals 0

    .prologue
    .line 301
    return-void
.end method

.method public onRealVideoStart()V
    .locals 0

    .prologue
    .line 289
    return-void
.end method

.method public onRealVideoStarted()V
    .locals 0

    .prologue
    .line 205
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 265
    return-void
.end method

.method public onUnFavor()V
    .locals 0

    .prologue
    .line 235
    return-void
.end method

.method public onUp()V
    .locals 0

    .prologue
    .line 211
    return-void
.end method

.method public onVideoChange()V
    .locals 0

    .prologue
    .line 274
    return-void
.end method

.method public onVideoInfoGetFail(Z)V
    .locals 0
    .param p1, "needRetry"    # Z

    .prologue
    .line 313
    return-void
.end method

.method public onVideoInfoGetted()V
    .locals 0

    .prologue
    .line 285
    return-void
.end method

.method public onVideoInfoGetting()V
    .locals 0

    .prologue
    .line 278
    invoke-virtual {p0}, Lcom/youku/player/plugin/PluginInvestigate;->hide()V

    .line 279
    return-void
.end method

.method public onVolumnDown()V
    .locals 0

    .prologue
    .line 253
    return-void
.end method

.method public onVolumnUp()V
    .locals 0

    .prologue
    .line 247
    return-void
.end method

.method public release()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 455
    const-string v0, "investigate"

    const-string v1, "investigate : release()"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    iput-boolean v2, p0, Lcom/youku/player/plugin/PluginInvestigate;->isOpen:Z

    .line 457
    iget-object v0, p0, Lcom/youku/player/plugin/PluginInvestigate;->containerView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 458
    iput v2, p0, Lcom/youku/player/plugin/PluginInvestigate;->mSavedCount:I

    .line 459
    iget-object v0, p0, Lcom/youku/player/plugin/PluginInvestigate;->mTimer:Lcom/youku/player/plugin/PluginInvestigate$InvestCountDownTimer;

    if-eqz v0, :cond_0

    .line 460
    iget-object v0, p0, Lcom/youku/player/plugin/PluginInvestigate;->mTimer:Lcom/youku/player/plugin/PluginInvestigate$InvestCountDownTimer;

    invoke-virtual {v0}, Lcom/youku/player/plugin/PluginInvestigate$InvestCountDownTimer;->cancel()V

    .line 461
    iput-object v3, p0, Lcom/youku/player/plugin/PluginInvestigate;->mTimer:Lcom/youku/player/plugin/PluginInvestigate$InvestCountDownTimer;

    .line 463
    :cond_0
    iput-object v3, p0, Lcom/youku/player/plugin/PluginInvestigate;->mAdvInfo:Lcom/youku/player/goplay/AdvInfo;

    .line 464
    return-void
.end method

.method public setVisible(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 323
    return-void
.end method

.method public show()V
    .locals 3

    .prologue
    .line 398
    iget-boolean v1, p0, Lcom/youku/player/plugin/PluginInvestigate;->isHide:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/youku/player/plugin/PluginInvestigate;->isOpen:Z

    if-eqz v1, :cond_0

    .line 399
    iget-object v1, p0, Lcom/youku/player/plugin/PluginInvestigate;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/youku/player/plugin/PluginInvestigate;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v1}, Lcom/youku/player/plugin/MediaPlayerDelegate;->isAdvShowFinished()Z

    move-result v1

    if-nez v1, :cond_1

    .line 423
    :cond_0
    :goto_0
    return-void

    .line 404
    :cond_1
    iget-object v1, p0, Lcom/youku/player/plugin/PluginInvestigate;->mPlayerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/youku/player/plugin/PluginInvestigate;->mPlayerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

    invoke-interface {v1}, Lcom/youku/player/apiservice/IPlayerAdControl;->isImageAdShowing()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    iget-object v1, p0, Lcom/youku/player/plugin/PluginInvestigate;->mAdvInfo:Lcom/youku/player/goplay/AdvInfo;

    if-eqz v1, :cond_0

    .line 408
    iget-object v1, p0, Lcom/youku/player/plugin/PluginInvestigate;->containerView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 411
    const-string v1, "investigate"

    const-string v2, "investigate : show()"

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    invoke-virtual {p0}, Lcom/youku/player/plugin/PluginInvestigate;->updateLayout()V

    .line 413
    iget-object v1, p0, Lcom/youku/player/plugin/PluginInvestigate;->mPlayerUiControl:Lcom/youku/player/apiservice/IPlayerUiControl;

    if-eqz v1, :cond_3

    .line 414
    iget-object v1, p0, Lcom/youku/player/plugin/PluginInvestigate;->mPlayerUiControl:Lcom/youku/player/apiservice/IPlayerUiControl;

    const/4 v2, 0x6

    invoke-interface {v1, v2}, Lcom/youku/player/apiservice/IPlayerUiControl;->updatePlugin(I)V

    .line 416
    :cond_3
    iget-object v1, p0, Lcom/youku/player/plugin/PluginInvestigate;->mActivity:Landroid/app/Activity;

    sget v2, Lcom/youku/android/player/R$anim;->yp_slide_in_from_right:I

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 418
    .local v0, "inAnimation":Landroid/view/animation/Animation;
    iget-object v1, p0, Lcom/youku/player/plugin/PluginInvestigate;->mAnimator:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 419
    iget-object v1, p0, Lcom/youku/player/plugin/PluginInvestigate;->containerView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 420
    invoke-direct {p0}, Lcom/youku/player/plugin/PluginInvestigate;->startTimer()V

    .line 421
    invoke-direct {p0}, Lcom/youku/player/plugin/PluginInvestigate;->disposeVC()V

    goto :goto_0
.end method

.method public unHide()V
    .locals 2

    .prologue
    .line 434
    const-string v0, "investigate"

    const-string v1, "investigate : unHide()"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youku/player/plugin/PluginInvestigate;->isHide:Z

    .line 436
    invoke-virtual {p0}, Lcom/youku/player/plugin/PluginInvestigate;->show()V

    .line 437
    return-void
.end method

.method public updateLayout()V
    .locals 4

    .prologue
    .line 332
    iget-boolean v2, p0, Lcom/youku/player/plugin/PluginInvestigate;->isOpen:Z

    if-eqz v2, :cond_0

    .line 333
    const-string v2, "investigate"

    const-string v3, "investigate : updateLayout()"

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 335
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    iget-object v2, p0, Lcom/youku/player/plugin/PluginInvestigate;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 337
    iget-object v2, p0, Lcom/youku/player/plugin/PluginInvestigate;->mInvestigate:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 339
    .local v1, "params":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v2, p0, Lcom/youku/player/plugin/PluginInvestigate;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-boolean v2, v2, Lcom/youku/player/plugin/MediaPlayerDelegate;->isFullScreen:Z

    if-nez v2, :cond_2

    .line 340
    iget-object v2, p0, Lcom/youku/player/plugin/PluginInvestigate;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/baseproject/utils/UIUtils;->isTablet(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 341
    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v3, 0x42480000    # 50.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 352
    :goto_0
    const/4 v2, 0x0

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 353
    iget-object v2, p0, Lcom/youku/player/plugin/PluginInvestigate;->mInvestigate:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 354
    iget-object v2, p0, Lcom/youku/player/plugin/PluginInvestigate;->mInvestigate:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 356
    .end local v0    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v1    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    return-void

    .line 343
    .restart local v0    # "displayMetrics":Landroid/util/DisplayMetrics;
    .restart local v1    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_1
    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v3, 0x43020000    # 130.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    goto :goto_0

    .line 346
    :cond_2
    iget-object v2, p0, Lcom/youku/player/plugin/PluginInvestigate;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/baseproject/utils/UIUtils;->isTablet(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 347
    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v3, 0x42b40000    # 90.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    goto :goto_0

    .line 349
    :cond_3
    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v3, 0x43200000    # 160.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    goto :goto_0
.end method

.method public declared-synchronized updateLayoutWithVirtualKey(Z)V
    .locals 4
    .param p1, "isVirtualKeyDisplay"    # Z

    .prologue
    .line 359
    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Lcom/youku/player/plugin/PluginInvestigate;->isOpen:Z

    if-eqz v2, :cond_1

    .line 360
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 361
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    iget-object v2, p0, Lcom/youku/player/plugin/PluginInvestigate;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 363
    iget-object v2, p0, Lcom/youku/player/plugin/PluginInvestigate;->mInvestigate:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 365
    .local v1, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v2, 0x0

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 366
    iget-object v2, p0, Lcom/youku/player/plugin/PluginInvestigate;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-boolean v2, v2, Lcom/youku/player/plugin/MediaPlayerDelegate;->isFullScreen:Z

    if-nez v2, :cond_3

    .line 367
    iget-object v2, p0, Lcom/youku/player/plugin/PluginInvestigate;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/baseproject/utils/UIUtils;->isTablet(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 368
    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v3, 0x42480000    # 50.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 383
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/youku/player/plugin/PluginInvestigate;->mInvestigate:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 384
    iget-object v2, p0, Lcom/youku/player/plugin/PluginInvestigate;->mInvestigate:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->requestLayout()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 386
    .end local v0    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v1    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_1
    monitor-exit p0

    return-void

    .line 370
    .restart local v0    # "displayMetrics":Landroid/util/DisplayMetrics;
    .restart local v1    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_2
    :try_start_1
    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v3, 0x43020000    # 130.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 359
    .end local v0    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v1    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 373
    .restart local v0    # "displayMetrics":Landroid/util/DisplayMetrics;
    .restart local v1    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_3
    :try_start_2
    iget-object v2, p0, Lcom/youku/player/plugin/PluginInvestigate;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/baseproject/utils/UIUtils;->isTablet(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 374
    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v3, 0x42b40000    # 90.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 375
    if-eqz p1, :cond_0

    .line 376
    iget-object v2, p0, Lcom/youku/player/plugin/PluginInvestigate;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/youku/player/util/DetailUtil;->getFullScreentNavigationBarHeight(Landroid/app/Activity;)I

    move-result v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    goto :goto_0

    .line 380
    :cond_4
    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v3, 0x43200000    # 160.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
