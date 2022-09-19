.class public abstract Lcom/youku/player/plugin/PluginVideoAd;
.super Lcom/youku/player/plugin/PluginOverlay;
.source "PluginVideoAd.java"

# interfaces
.implements Lcom/youku/player/util/DetailMessage;
.implements Lcom/youku/player/apiservice/IAdPlayerCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/player/plugin/PluginVideoAd$InteractiveAdListener;
    }
.end annotation


# static fields
.field private static final INTERACTIVE_AD_TIMEOUT:I = 0x5

.field private static final TUDOU_ADSKIP_REQUESTCODE:I = 0x4e22


# instance fields
.field protected TAG:Ljava/lang/String;

.field ad_more:Landroid/widget/TextView;

.field protected canSkipTrueViewAd:Z

.field containerView:Landroid/view/View;

.field private downLoadDialog:Lcom/youku/player/ui/widget/YpYoukuDialog;

.field endPage:Landroid/widget/TextView;

.field isADPluginShowing:Z

.field private isInteractiveAdHide:Z

.field private isInteractiveAdShow:Z

.field protected final mActivity:Landroid/app/Activity;

.field private mAdApplicationContext:Lcom/youdo/ad/interfaces/IAdApplicationContext;

.field private mAdManager:Lcom/youdo/ad/interfaces/IAdManager;

.field protected mAdPageHolder:Landroid/widget/RelativeLayout;

.field mAdSkip:Landroid/widget/TextView;

.field mAdSkipBlank:Landroid/widget/LinearLayout;

.field mAdTrueViewPlay:Landroid/widget/TextView;

.field mAdTrueViewSkipLayout:Landroid/widget/RelativeLayout;

.field mAdTrueViewSkipTipTV:Landroid/widget/TextView;

.field protected mBackButton:Landroid/widget/ImageView;

.field private mCountUpdateDescripMinuteTextView:Landroid/widget/TextView;

.field private mCountUpdateMinuteTextView:Landroid/widget/TextView;

.field mCountUpdateTextView:Landroid/widget/TextView;

.field mCountUpdateWrap:Landroid/widget/LinearLayout;

.field private mCurrentAdData:Lorg/json/JSONObject;

.field private mInteractiveAdContainer:Landroid/widget/RelativeLayout;

.field private mInteractiveAdGoFull:Landroid/widget/RelativeLayout;

.field private mInteractiveAdListener:Lcom/youku/player/plugin/PluginVideoAd$InteractiveAdListener;

.field private mInteractiveAdVideoRs:Ljava/lang/String;

.field private mInteractiveOpenCounts:I

.field mLayoutInflater:Landroid/view/LayoutInflater;

.field protected mMuteButton:Landroid/widget/ImageButton;

.field protected final mPlayerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

.field protected final mPlayerUiControl:Lcom/youku/player/apiservice/IPlayerUiControl;

.field protected mSwitchParent:Landroid/view/View;

.field private mSwitchPlayer:Landroid/widget/ImageView;

.field private mVoice:I

.field protected final mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

.field private playLoadingBar:Landroid/widget/SeekBar;

.field protected play_adButton:Landroid/widget/ImageButton;

.field private seekHandler:Landroid/os/Handler;

.field private seekLoadingContainerView:Landroid/view/View;

.field private seekcount:I

.field private seekendHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/youku/player/plugin/MediaPlayerDelegate;Lcom/youku/player/apiservice/IPlayerUiControl;Lcom/youku/player/apiservice/IPlayerAdControl;)V
    .locals 3
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "mediaPlayerDelegate"    # Lcom/youku/player/plugin/MediaPlayerDelegate;
    .param p3, "playerUiControl"    # Lcom/youku/player/apiservice/IPlayerUiControl;
    .param p4, "playerAdControl"    # Lcom/youku/player/apiservice/IPlayerAdControl;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 114
    invoke-direct {p0, p1, p2}, Lcom/youku/player/plugin/PluginOverlay;-><init>(Landroid/content/Context;Lcom/youku/player/plugin/MediaPlayerDelegate;)V

    .line 90
    const-string v0, "PluginVideoAd"

    iput-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->TAG:Ljava/lang/String;

    .line 94
    iput-object v2, p0, Lcom/youku/player/plugin/PluginVideoAd;->mAdPageHolder:Landroid/widget/RelativeLayout;

    .line 96
    const/4 v0, 0x1

    iput v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->mVoice:I

    .line 100
    iput-object v2, p0, Lcom/youku/player/plugin/PluginVideoAd;->mInteractiveAdContainer:Landroid/widget/RelativeLayout;

    .line 103
    iput-object v2, p0, Lcom/youku/player/plugin/PluginVideoAd;->mAdManager:Lcom/youdo/ad/interfaces/IAdManager;

    .line 105
    iput-object v2, p0, Lcom/youku/player/plugin/PluginVideoAd;->mInteractiveAdListener:Lcom/youku/player/plugin/PluginVideoAd$InteractiveAdListener;

    .line 106
    iput-boolean v1, p0, Lcom/youku/player/plugin/PluginVideoAd;->isInteractiveAdShow:Z

    .line 107
    iput-boolean v1, p0, Lcom/youku/player/plugin/PluginVideoAd;->isInteractiveAdHide:Z

    .line 108
    iput-object v2, p0, Lcom/youku/player/plugin/PluginVideoAd;->mInteractiveAdVideoRs:Ljava/lang/String;

    .line 110
    iput-boolean v1, p0, Lcom/youku/player/plugin/PluginVideoAd;->canSkipTrueViewAd:Z

    .line 385
    iput-boolean v1, p0, Lcom/youku/player/plugin/PluginVideoAd;->isADPluginShowing:Z

    .line 541
    iput v1, p0, Lcom/youku/player/plugin/PluginVideoAd;->seekcount:I

    .line 578
    new-instance v0, Lcom/youku/player/plugin/PluginVideoAd$12;

    invoke-direct {v0, p0}, Lcom/youku/player/plugin/PluginVideoAd$12;-><init>(Lcom/youku/player/plugin/PluginVideoAd;)V

    iput-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->seekHandler:Landroid/os/Handler;

    .line 601
    new-instance v0, Lcom/youku/player/plugin/PluginVideoAd$13;

    invoke-direct {v0, p0}, Lcom/youku/player/plugin/PluginVideoAd$13;-><init>(Lcom/youku/player/plugin/PluginVideoAd;)V

    iput-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->seekendHandler:Landroid/os/Handler;

    .line 822
    iput v1, p0, Lcom/youku/player/plugin/PluginVideoAd;->mInteractiveOpenCounts:I

    .line 1034
    iput-object v2, p0, Lcom/youku/player/plugin/PluginVideoAd;->downLoadDialog:Lcom/youku/player/ui/widget/YpYoukuDialog;

    .line 115
    iput-object p2, p0, Lcom/youku/player/plugin/PluginVideoAd;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    .line 116
    iput-object p1, p0, Lcom/youku/player/plugin/PluginVideoAd;->mActivity:Landroid/app/Activity;

    .line 117
    iput-object p3, p0, Lcom/youku/player/plugin/PluginVideoAd;->mPlayerUiControl:Lcom/youku/player/apiservice/IPlayerUiControl;

    .line 118
    iput-object p4, p0, Lcom/youku/player/plugin/PluginVideoAd;->mPlayerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

    .line 119
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 120
    invoke-virtual {p0, p1}, Lcom/youku/player/plugin/PluginVideoAd;->init(Landroid/content/Context;)V

    .line 121
    return-void
.end method

.method static synthetic access$000(Lcom/youku/player/plugin/PluginVideoAd;)I
    .locals 1
    .param p0, "x0"    # Lcom/youku/player/plugin/PluginVideoAd;

    .prologue
    .line 60
    iget v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->mVoice:I

    return v0
.end method

.method static synthetic access$002(Lcom/youku/player/plugin/PluginVideoAd;I)I
    .locals 0
    .param p0, "x0"    # Lcom/youku/player/plugin/PluginVideoAd;
    .param p1, "x1"    # I

    .prologue
    .line 60
    iput p1, p0, Lcom/youku/player/plugin/PluginVideoAd;->mVoice:I

    return p1
.end method

.method static synthetic access$100(Lcom/youku/player/plugin/PluginVideoAd;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/player/plugin/PluginVideoAd;

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/youku/player/plugin/PluginVideoAd;->setMuteButtonState()V

    return-void
.end method

.method static synthetic access$1000(Lcom/youku/player/plugin/PluginVideoAd;)I
    .locals 1
    .param p0, "x0"    # Lcom/youku/player/plugin/PluginVideoAd;

    .prologue
    .line 60
    iget v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->seekcount:I

    return v0
.end method

.method static synthetic access$1008(Lcom/youku/player/plugin/PluginVideoAd;)I
    .locals 2
    .param p0, "x0"    # Lcom/youku/player/plugin/PluginVideoAd;

    .prologue
    .line 60
    iget v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->seekcount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/youku/player/plugin/PluginVideoAd;->seekcount:I

    return v0
.end method

.method static synthetic access$1100(Lcom/youku/player/plugin/PluginVideoAd;)Z
    .locals 1
    .param p0, "x0"    # Lcom/youku/player/plugin/PluginVideoAd;

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->isInteractiveAdShow:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/youku/player/plugin/PluginVideoAd;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/youku/player/plugin/PluginVideoAd;
    .param p1, "x1"    # Z

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/youku/player/plugin/PluginVideoAd;->isInteractiveAdShow:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/youku/player/plugin/PluginVideoAd;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/youku/player/plugin/PluginVideoAd;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->mInteractiveAdVideoRs:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/youku/player/plugin/PluginVideoAd;)I
    .locals 1
    .param p0, "x0"    # Lcom/youku/player/plugin/PluginVideoAd;

    .prologue
    .line 60
    iget v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->mInteractiveOpenCounts:I

    return v0
.end method

.method static synthetic access$1308(Lcom/youku/player/plugin/PluginVideoAd;)I
    .locals 2
    .param p0, "x0"    # Lcom/youku/player/plugin/PluginVideoAd;

    .prologue
    .line 60
    iget v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->mInteractiveOpenCounts:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/youku/player/plugin/PluginVideoAd;->mInteractiveOpenCounts:I

    return v0
.end method

.method static synthetic access$1400(Lcom/youku/player/plugin/PluginVideoAd;)Lcom/youku/player/ui/widget/YpYoukuDialog;
    .locals 1
    .param p0, "x0"    # Lcom/youku/player/plugin/PluginVideoAd;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->downLoadDialog:Lcom/youku/player/ui/widget/YpYoukuDialog;

    return-object v0
.end method

.method static synthetic access$202(Lcom/youku/player/plugin/PluginVideoAd;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/youku/player/plugin/PluginVideoAd;
    .param p1, "x1"    # Z

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/youku/player/plugin/PluginVideoAd;->isInteractiveAdHide:Z

    return p1
.end method

.method static synthetic access$300(Lcom/youku/player/plugin/PluginVideoAd;)Lcom/youdo/ad/interfaces/IAdApplicationContext;
    .locals 1
    .param p0, "x0"    # Lcom/youku/player/plugin/PluginVideoAd;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->mAdApplicationContext:Lcom/youdo/ad/interfaces/IAdApplicationContext;

    return-object v0
.end method

.method static synthetic access$400(Lcom/youku/player/plugin/PluginVideoAd;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/youku/player/plugin/PluginVideoAd;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->mInteractiveAdGoFull:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$500(Lcom/youku/player/plugin/PluginVideoAd;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/youku/player/plugin/PluginVideoAd;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->mInteractiveAdContainer:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$600(Lcom/youku/player/plugin/PluginVideoAd;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/youku/player/plugin/PluginVideoAd;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->mSwitchPlayer:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/youku/player/plugin/PluginVideoAd;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/youku/player/plugin/PluginVideoAd;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->seekLoadingContainerView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$800(Lcom/youku/player/plugin/PluginVideoAd;)Landroid/widget/SeekBar;
    .locals 1
    .param p0, "x0"    # Lcom/youku/player/plugin/PluginVideoAd;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->playLoadingBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$900(Lcom/youku/player/plugin/PluginVideoAd;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/youku/player/plugin/PluginVideoAd;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->seekHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private initSeekLoading()V
    .locals 2

    .prologue
    .line 509
    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->seekLoadingContainerView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 539
    :cond_0
    :goto_0
    return-void

    .line 511
    :cond_1
    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->seekLoadingContainerView:Landroid/view/View;

    sget v1, Lcom/youku/android/player/R$id;->loading_seekbar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->playLoadingBar:Landroid/widget/SeekBar;

    .line 513
    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->playLoadingBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    .line 514
    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->playLoadingBar:Landroid/widget/SeekBar;

    new-instance v1, Lcom/youku/player/plugin/PluginVideoAd$10;

    invoke-direct {v1, p0}, Lcom/youku/player/plugin/PluginVideoAd$10;-><init>(Lcom/youku/player/plugin/PluginVideoAd;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    goto :goto_0
.end method

.method private sendStat(Lcom/youku/player/goplay/Stat;)V
    .locals 2
    .param p1, "stat"    # Lcom/youku/player/goplay/Stat;

    .prologue
    .line 505
    new-instance v0, Lcom/youku/player/service/DisposableHttpTask;

    iget-object v1, p1, Lcom/youku/player/goplay/Stat;->U:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/youku/player/service/DisposableHttpTask;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/youku/player/service/DisposableHttpTask;->start()V

    .line 506
    return-void
.end method

.method private setCountUpdateText(I)V
    .locals 6
    .param p1, "count"    # I

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 1287
    iget-object v2, p0, Lcom/youku/player/plugin/PluginVideoAd;->mCountUpdateMinuteTextView:Landroid/widget/TextView;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/youku/player/plugin/PluginVideoAd;->mCountUpdateTextView:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 1288
    iget-object v2, p0, Lcom/youku/player/plugin/PluginVideoAd;->mCountUpdateTextView:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1289
    iget-object v2, p0, Lcom/youku/player/plugin/PluginVideoAd;->mCountUpdateTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1306
    :goto_0
    return-void

    .line 1292
    :cond_0
    const/16 v2, 0x78

    if-gt p1, v2, :cond_1

    .line 1293
    iget-object v2, p0, Lcom/youku/player/plugin/PluginVideoAd;->mCountUpdateTextView:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1294
    iget-object v2, p0, Lcom/youku/player/plugin/PluginVideoAd;->mCountUpdateTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1295
    iget-object v2, p0, Lcom/youku/player/plugin/PluginVideoAd;->mCountUpdateMinuteTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1296
    iget-object v2, p0, Lcom/youku/player/plugin/PluginVideoAd;->mCountUpdateDescripMinuteTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 1298
    :cond_1
    div-int/lit8 v0, p1, 0x3c

    .line 1299
    .local v0, "m":I
    rem-int/lit8 v1, p1, 0x3c

    .line 1300
    .local v1, "s":I
    iget-object v2, p0, Lcom/youku/player/plugin/PluginVideoAd;->mCountUpdateMinuteTextView:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1301
    iget-object v2, p0, Lcom/youku/player/plugin/PluginVideoAd;->mCountUpdateTextView:Landroid/widget/TextView;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1302
    iget-object v2, p0, Lcom/youku/player/plugin/PluginVideoAd;->mCountUpdateTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1303
    iget-object v2, p0, Lcom/youku/player/plugin/PluginVideoAd;->mCountUpdateMinuteTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1304
    iget-object v2, p0, Lcom/youku/player/plugin/PluginVideoAd;->mCountUpdateDescripMinuteTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private setInteractiveAdResource()V
    .locals 2

    .prologue
    .line 936
    iget-object v1, p0, Lcom/youku/player/plugin/PluginVideoAd;->mAdApplicationContext:Lcom/youdo/ad/interfaces/IAdApplicationContext;

    if-nez v1, :cond_0

    .line 950
    :goto_0
    return-void

    .line 939
    :cond_0
    new-instance v0, Lcom/youdo/XAdSDKResource;

    invoke-direct {v0}, Lcom/youdo/XAdSDKResource;-><init>()V

    .line 940
    .local v0, "resource":Lcom/youdo/XAdSDKResource;
    sget v1, Lcom/youku/android/player/R$drawable;->xadsdk_ad_mini:I

    iput v1, v0, Lcom/youdo/XAdSDKResource;->ad_mini:I

    .line 941
    sget v1, Lcom/youku/android/player/R$drawable;->xadsdk_ad_close:I

    iput v1, v0, Lcom/youdo/XAdSDKResource;->ad_close:I

    .line 942
    sget v1, Lcom/youku/android/player/R$drawable;->xadsdk_browser_bkgrnd:I

    iput v1, v0, Lcom/youdo/XAdSDKResource;->browser_bkgrnd:I

    .line 943
    sget v1, Lcom/youku/android/player/R$drawable;->xadsdk_browser_leftarrow:I

    iput v1, v0, Lcom/youdo/XAdSDKResource;->browser_leftarrow:I

    .line 944
    sget v1, Lcom/youku/android/player/R$drawable;->xadsdk_browser_unleftarrow:I

    iput v1, v0, Lcom/youdo/XAdSDKResource;->browser_unleftarrow:I

    .line 945
    sget v1, Lcom/youku/android/player/R$drawable;->xadsdk_browser_rightarrow:I

    iput v1, v0, Lcom/youdo/XAdSDKResource;->browser_rightarrow:I

    .line 946
    sget v1, Lcom/youku/android/player/R$drawable;->xadsdk_browser_unrightarrow:I

    iput v1, v0, Lcom/youdo/XAdSDKResource;->browser_unrightarrow:I

    .line 947
    sget v1, Lcom/youku/android/player/R$drawable;->xadsdk_browser_refresh:I

    iput v1, v0, Lcom/youdo/XAdSDKResource;->browser_refresh:I

    .line 948
    sget v1, Lcom/youku/android/player/R$drawable;->xadsdk_browser_close:I

    iput v1, v0, Lcom/youdo/XAdSDKResource;->browser_close:I

    .line 949
    iget-object v1, p0, Lcom/youku/player/plugin/PluginVideoAd;->mAdApplicationContext:Lcom/youdo/ad/interfaces/IAdApplicationContext;

    invoke-interface {v1, v0}, Lcom/youdo/ad/interfaces/IAdApplicationContext;->setXAdSDKResource(Lcom/youdo/XAdSDKResource;)V

    goto :goto_0
.end method

.method private setMuteButtonState()V
    .locals 2

    .prologue
    .line 1139
    iget v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->mVoice:I

    if-nez v0, :cond_0

    .line 1140
    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->mMuteButton:Landroid/widget/ImageButton;

    sget v1, Lcom/youku/android/player/R$drawable;->plugin_ad_silent_tudou:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1148
    :goto_0
    return-void

    .line 1142
    :cond_0
    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->mMuteButton:Landroid/widget/ImageButton;

    sget v1, Lcom/youku/android/player/R$drawable;->plugin_ad_silent_off_tudou:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0
.end method

.method private setupInteractiveAdData(Ljava/lang/String;I)V
    .locals 2
    .param p1, "rs"    # Ljava/lang/String;
    .param p2, "count"    # I

    .prologue
    .line 927
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->mCurrentAdData:Lorg/json/JSONObject;

    .line 929
    :try_start_0
    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->mCurrentAdData:Lorg/json/JSONObject;

    const-string v1, "BRS"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 930
    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->mCurrentAdData:Lorg/json/JSONObject;

    const-string v1, "AL"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 933
    :goto_0
    return-void

    .line 931
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public OnCurrentPositionChangeListener(I)V
    .locals 0
    .param p1, "currentPosition"    # I

    .prologue
    .line 293
    return-void
.end method

.method public OnPreparedListener()V
    .locals 0

    .prologue
    .line 274
    return-void
.end method

.method public OnSeekCompleteListener()V
    .locals 0

    .prologue
    .line 279
    return-void
.end method

.method public OnTimeoutListener()V
    .locals 0

    .prologue
    .line 289
    return-void
.end method

.method public OnVideoSizeChangedListener(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 284
    return-void
.end method

.method public back()V
    .locals 0

    .prologue
    .line 681
    return-void
.end method

.method public closeInteractiveAd()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 769
    iget-boolean v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->isInteractiveAdShow:Z

    if-eqz v0, :cond_3

    .line 770
    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->mAdApplicationContext:Lcom/youdo/ad/interfaces/IAdApplicationContext;

    if-eqz v0, :cond_0

    .line 771
    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->mAdApplicationContext:Lcom/youdo/ad/interfaces/IAdApplicationContext;

    invoke-interface {v0}, Lcom/youdo/ad/interfaces/IAdApplicationContext;->removeAllListeners()V

    .line 772
    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->mAdApplicationContext:Lcom/youdo/ad/interfaces/IAdApplicationContext;

    invoke-interface {v0}, Lcom/youdo/ad/interfaces/IAdApplicationContext;->dispose()V

    .line 773
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->mAdApplicationContext:Lcom/youdo/ad/interfaces/IAdApplicationContext;

    .line 775
    :cond_0
    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/youku/player/plugin/PluginVideoAd$15;

    invoke-direct {v1, p0}, Lcom/youku/player/plugin/PluginVideoAd$15;-><init>(Lcom/youku/player/plugin/PluginVideoAd;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 789
    iput-boolean v2, p0, Lcom/youku/player/plugin/PluginVideoAd;->isInteractiveAdShow:Z

    .line 790
    iput-boolean v2, p0, Lcom/youku/player/plugin/PluginVideoAd;->isInteractiveAdHide:Z

    .line 791
    invoke-virtual {p0}, Lcom/youku/player/plugin/PluginVideoAd;->getAdvInfo()Lcom/youku/player/goplay/AdvInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 792
    invoke-virtual {p0}, Lcom/youku/player/plugin/PluginVideoAd;->getAdvInfo()Lcom/youku/player/goplay/AdvInfo;

    move-result-object v0

    const-string/jumbo v1, "video"

    iput-object v1, v0, Lcom/youku/player/goplay/AdvInfo;->RST:Ljava/lang/String;

    .line 794
    :cond_1
    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v0, :cond_2

    const-string v0, "local"

    iget-object v1, p0, Lcom/youku/player/plugin/PluginVideoAd;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v1}, Lcom/youku/player/module/VideoUrlInfo;->getPlayType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/youku/player/util/PlayerUtil;->isYoukuTablet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 798
    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->mPlayerUiControl:Lcom/youku/player/apiservice/IPlayerUiControl;

    invoke-interface {v0}, Lcom/youku/player/apiservice/IPlayerUiControl;->setOrientionEnable()V

    .line 800
    :cond_2
    iput v2, p0, Lcom/youku/player/plugin/PluginVideoAd;->mInteractiveOpenCounts:I

    .line 802
    :cond_3
    return-void
.end method

.method public closeInteractiveAdNotIcludeUI()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 805
    iget-boolean v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->isInteractiveAdShow:Z

    if-eqz v0, :cond_2

    .line 806
    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->mAdApplicationContext:Lcom/youdo/ad/interfaces/IAdApplicationContext;

    if-eqz v0, :cond_0

    .line 807
    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->mAdApplicationContext:Lcom/youdo/ad/interfaces/IAdApplicationContext;

    invoke-interface {v0}, Lcom/youdo/ad/interfaces/IAdApplicationContext;->removeAllListeners()V

    .line 810
    :cond_0
    iput-boolean v2, p0, Lcom/youku/player/plugin/PluginVideoAd;->isInteractiveAdShow:Z

    .line 811
    iput-boolean v2, p0, Lcom/youku/player/plugin/PluginVideoAd;->isInteractiveAdHide:Z

    .line 812
    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v0, :cond_1

    const-string v0, "local"

    iget-object v1, p0, Lcom/youku/player/plugin/PluginVideoAd;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v1}, Lcom/youku/player/module/VideoUrlInfo;->getPlayType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/youku/player/util/PlayerUtil;->isYoukuTablet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 816
    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->mPlayerUiControl:Lcom/youku/player/apiservice/IPlayerUiControl;

    invoke-interface {v0}, Lcom/youku/player/apiservice/IPlayerUiControl;->setOrientionEnable()V

    .line 818
    :cond_1
    iput v2, p0, Lcom/youku/player/plugin/PluginVideoAd;->mInteractiveOpenCounts:I

    .line 820
    :cond_2
    return-void
.end method

.method protected creatSelectDownloadDialog(Landroid/app/Activity;ZLjava/lang/String;Lcom/youku/player/goplay/AdvInfo;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "isWifi"    # Z
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "advInfo"    # Lcom/youku/player/goplay/AdvInfo;

    .prologue
    .line 1049
    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->downLoadDialog:Lcom/youku/player/ui/widget/YpYoukuDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->downLoadDialog:Lcom/youku/player/ui/widget/YpYoukuDialog;

    invoke-virtual {v0}, Lcom/youku/player/ui/widget/YpYoukuDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1111
    :cond_0
    :goto_0
    return-void

    .line 1052
    :cond_1
    new-instance v0, Lcom/youku/player/ui/widget/YpYoukuDialog;

    invoke-direct {v0, p1}, Lcom/youku/player/ui/widget/YpYoukuDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->downLoadDialog:Lcom/youku/player/ui/widget/YpYoukuDialog;

    .line 1053
    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->downLoadDialog:Lcom/youku/player/ui/widget/YpYoukuDialog;

    sget v1, Lcom/youku/android/player/R$string;->youku_ad_dialog_selectdownload_cancel:I

    new-instance v2, Lcom/youku/player/plugin/PluginVideoAd$17;

    invoke-direct {v2, p0}, Lcom/youku/player/plugin/PluginVideoAd$17;-><init>(Lcom/youku/player/plugin/PluginVideoAd;)V

    invoke-virtual {v0, v1, v2}, Lcom/youku/player/ui/widget/YpYoukuDialog;->setNormalPositiveBtn(ILandroid/view/View$OnClickListener;)V

    .line 1064
    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->downLoadDialog:Lcom/youku/player/ui/widget/YpYoukuDialog;

    sget v1, Lcom/youku/android/player/R$string;->youku_ad_dialog_selectdownload_ok:I

    new-instance v2, Lcom/youku/player/plugin/PluginVideoAd$18;

    invoke-direct {v2, p0, p3, p4}, Lcom/youku/player/plugin/PluginVideoAd$18;-><init>(Lcom/youku/player/plugin/PluginVideoAd;Ljava/lang/String;Lcom/youku/player/goplay/AdvInfo;)V

    invoke-virtual {v0, v1, v2}, Lcom/youku/player/ui/widget/YpYoukuDialog;->setNormalNegtiveBtn(ILandroid/view/View$OnClickListener;)V

    .line 1081
    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->downLoadDialog:Lcom/youku/player/ui/widget/YpYoukuDialog;

    new-instance v1, Lcom/youku/player/plugin/PluginVideoAd$19;

    invoke-direct {v1, p0}, Lcom/youku/player/plugin/PluginVideoAd$19;-><init>(Lcom/youku/player/plugin/PluginVideoAd;)V

    invoke-virtual {v0, v1}, Lcom/youku/player/ui/widget/YpYoukuDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 1089
    iget-object v1, p0, Lcom/youku/player/plugin/PluginVideoAd;->downLoadDialog:Lcom/youku/player/ui/widget/YpYoukuDialog;

    if-eqz p2, :cond_2

    sget v0, Lcom/youku/android/player/R$string;->youku_ad_dialog_selectdownload_message_wifi:I

    :goto_1
    invoke-virtual {v1, v0}, Lcom/youku/player/ui/widget/YpYoukuDialog;->setMessage(I)V

    .line 1090
    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->downLoadDialog:Lcom/youku/player/ui/widget/YpYoukuDialog;

    new-instance v1, Lcom/youku/player/plugin/PluginVideoAd$20;

    invoke-direct {v1, p0}, Lcom/youku/player/plugin/PluginVideoAd$20;-><init>(Lcom/youku/player/plugin/PluginVideoAd;)V

    invoke-virtual {v0, v1}, Lcom/youku/player/ui/widget/YpYoukuDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 1102
    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->downLoadDialog:Lcom/youku/player/ui/widget/YpYoukuDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/youku/player/ui/widget/YpYoukuDialog;->setCanceledOnTouchOutside(Z)V

    .line 1103
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1106
    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->downLoadDialog:Lcom/youku/player/ui/widget/YpYoukuDialog;

    invoke-virtual {v0}, Lcom/youku/player/ui/widget/YpYoukuDialog;->show()V

    .line 1107
    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->mPlayerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

    invoke-interface {v0, p4}, Lcom/youku/player/apiservice/IPlayerAdControl;->onDownloadDialogShow(Lcom/youku/player/goplay/AdvInfo;)V

    .line 1108
    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->isAdvShowFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1109
    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->pause()V

    goto :goto_0

    .line 1089
    :cond_2
    sget v0, Lcom/youku/android/player/R$string;->youku_ad_dialog_selectdownload_message_3g:I

    goto :goto_1
.end method

.method public dismissDownloadDialog()V
    .locals 1

    .prologue
    .line 1037
    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->downLoadDialog:Lcom/youku/player/ui/widget/YpYoukuDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->downLoadDialog:Lcom/youku/player/ui/widget/YpYoukuDialog;

    invoke-virtual {v0}, Lcom/youku/player/ui/widget/YpYoukuDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1038
    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->downLoadDialog:Lcom/youku/player/ui/widget/YpYoukuDialog;

    invoke-virtual {v0}, Lcom/youku/player/ui/widget/YpYoukuDialog;->dismiss()V

    .line 1039
    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-boolean v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->pauseDuringSeek:Z

    if-eqz v0, :cond_0

    .line 1040
    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->start()V

    .line 1043
    :cond_0
    return-void
.end method

.method protected abstract getAdvInfo()Lcom/youku/player/goplay/AdvInfo;
.end method

.method protected abstract getVideoAdvInfo()Lcom/youku/player/goplay/VideoAdvInfo;
.end method

.method public hideLoading()V
    .locals 2

    .prologue
    .line 564
    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/youku/player/plugin/PluginVideoAd$11;

    invoke-direct {v1, p0}, Lcom/youku/player/plugin/PluginVideoAd$11;-><init>(Lcom/youku/player/plugin/PluginVideoAd;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 576
    return-void
.end method

.method public hideTrueViewAd()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 1218
    sget-object v0, Lcom/youku/player/LogTag;->TAG_TRUE_VIEW:Ljava/lang/String;

    const-string v1, "------> hide TrueView Ad."

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1219
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->canSkipTrueViewAd:Z

    .line 1220
    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->mAdTrueViewPlay:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1221
    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->mAdTrueViewPlay:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1223
    :cond_0
    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->mAdTrueViewSkipLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    .line 1224
    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->mAdTrueViewSkipLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1227
    :cond_1
    return-void
.end method

.method protected init(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x2711

    .line 124
    invoke-static {}, Lcom/youku/player/config/MediaPlayerConfiguration;->getInstance()Lcom/youku/player/config/MediaPlayerConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/player/config/MediaPlayerConfiguration;->getPlatform()I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 125
    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/youku/android/player/R$layout;->yp_player_ad_youku:I

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->containerView:Landroid/view/View;

    .line 131
    :goto_0
    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->containerView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/youku/player/plugin/PluginVideoAd;->addView(Landroid/view/View;)V

    .line 132
    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->containerView:Landroid/view/View;

    sget v1, Lcom/youku/android/player/R$id;->my_ad_count:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->mCountUpdateTextView:Landroid/widget/TextView;

    .line 134
    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->containerView:Landroid/view/View;

    sget v1, Lcom/youku/android/player/R$id;->my_ad_blank:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->mAdSkipBlank:Landroid/widget/LinearLayout;

    .line 136
    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->containerView:Landroid/view/View;

    sget v1, Lcom/youku/android/player/R$id;->my_ad_skip:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->mAdSkip:Landroid/widget/TextView;

    .line 137
    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->containerView:Landroid/view/View;

    sget v1, Lcom/youku/android/player/R$id;->mute:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->mMuteButton:Landroid/widget/ImageButton;

    .line 138
    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->mMuteButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->mMuteButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/youku/player/plugin/PluginVideoAd$1;

    invoke-direct {v1, p0}, Lcom/youku/player/plugin/PluginVideoAd$1;-><init>(Lcom/youku/player/plugin/PluginVideoAd;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    :cond_0
    invoke-virtual {p0}, Lcom/youku/player/plugin/PluginVideoAd;->initMuteButton()V

    .line 148
    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->containerView:Landroid/view/View;

    sget v1, Lcom/youku/android/player/R$id;->ad_page_holder:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->mAdPageHolder:Landroid/widget/RelativeLayout;

    .line 150
    invoke-static {}, Lcom/youku/player/config/MediaPlayerConfiguration;->getInstance()Lcom/youku/player/config/MediaPlayerConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/player/config/MediaPlayerConfiguration;->getPlatform()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 151
    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->containerView:Landroid/view/View;

    sget v1, Lcom/youku/android/player/R$id;->interactive_ad_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->mInteractiveAdContainer:Landroid/widget/RelativeLayout;

    .line 153
    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->containerView:Landroid/view/View;

    sget v1, Lcom/youku/android/player/R$id;->interactive_ad_gofull_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->mInteractiveAdGoFull:Landroid/widget/RelativeLayout;

    .line 155
    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->mInteractiveAdGoFull:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/youku/player/plugin/PluginVideoAd$2;

    invoke-direct {v1, p0}, Lcom/youku/player/plugin/PluginVideoAd$2;-><init>(Lcom/youku/player/plugin/PluginVideoAd;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    :cond_1
    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->containerView:Landroid/view/View;

    sget v1, Lcom/youku/android/player/R$id;->my_ad_count_wrap:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->mCountUpdateWrap:Landroid/widget/LinearLayout;

    .line 175
    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->mAdSkip:Landroid/widget/TextView;

    new-instance v1, Lcom/youku/player/plugin/PluginVideoAd$3;

    invoke-direct {v1, p0}, Lcom/youku/player/plugin/PluginVideoAd$3;-><init>(Lcom/youku/player/plugin/PluginVideoAd;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->containerView:Landroid/view/View;

    sget v1, Lcom/youku/android/player/R$id;->gofullscreen:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->mSwitchPlayer:Landroid/widget/ImageView;

    .line 194
    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->containerView:Landroid/view/View;

    sget v1, Lcom/youku/android/player/R$id;->gofulllayout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->mSwitchParent:Landroid/view/View;

    .line 195
    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->containerView:Landroid/view/View;

    sget v1, Lcom/youku/android/player/R$id;->ad_more:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->ad_more:Landroid/widget/TextView;

    .line 196
    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->containerView:Landroid/view/View;

    sget v1, Lcom/youku/android/player/R$id;->ib_detail_play_control_ad_play:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->play_adButton:Landroid/widget/ImageButton;

    .line 199
    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->mSwitchParent:Landroid/view/View;

    new-instance v1, Lcom/youku/player/plugin/PluginVideoAd$4;

    invoke-direct {v1, p0}, Lcom/youku/player/plugin/PluginVideoAd$4;-><init>(Lcom/youku/player/plugin/PluginVideoAd;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 225
    sget v0, Lcom/youku/android/player/R$id;->btn_back:I

    invoke-virtual {p0, v0}, Lcom/youku/player/plugin/PluginVideoAd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->mBackButton:Landroid/widget/ImageView;

    .line 226
    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->mBackButton:Landroid/widget/ImageView;

    new-instance v1, Lcom/youku/player/plugin/PluginVideoAd$5;

    invoke-direct {v1, p0}, Lcom/youku/player/plugin/PluginVideoAd$5;-><init>(Lcom/youku/player/plugin/PluginVideoAd;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 236
    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->containerView:Landroid/view/View;

    sget v1, Lcom/youku/android/player/R$id;->ad_trueview_play:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->mAdTrueViewPlay:Landroid/widget/TextView;

    .line 237
    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->containerView:Landroid/view/View;

    sget v1, Lcom/youku/android/player/R$id;->ad_trueview_skip_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->mAdTrueViewSkipLayout:Landroid/widget/RelativeLayout;

    .line 238
    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->containerView:Landroid/view/View;

    sget v1, Lcom/youku/android/player/R$id;->ad_trueview_skip_tip:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->mAdTrueViewSkipTipTV:Landroid/widget/TextView;

    .line 239
    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->containerView:Landroid/view/View;

    sget v1, Lcom/youku/android/player/R$id;->my_ad_count_descrip_minute:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->mCountUpdateDescripMinuteTextView:Landroid/widget/TextView;

    .line 240
    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->containerView:Landroid/view/View;

    sget v1, Lcom/youku/android/player/R$id;->my_ad_count_minute:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->mCountUpdateMinuteTextView:Landroid/widget/TextView;

    .line 242
    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->containerView:Landroid/view/View;

    sget v1, Lcom/youku/android/player/R$id;->seek_loading_bg:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->seekLoadingContainerView:Landroid/view/View;

    .line 244
    invoke-direct {p0}, Lcom/youku/player/plugin/PluginVideoAd;->initSeekLoading()V

    .line 245
    return-void

    .line 128
    :cond_2
    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/youku/android/player/R$layout;->yp_player_ad_tudou:I

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->containerView:Landroid/view/View;

    goto/16 :goto_0
.end method

.method public initMuteButton()V
    .locals 4

    .prologue
    .line 1176
    iget-object v1, p0, Lcom/youku/player/plugin/PluginVideoAd;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/youku/player/plugin/PluginVideoAd;->mMuteButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_0

    .line 1177
    iget-object v1, p0, Lcom/youku/player/plugin/PluginVideoAd;->mActivity:Landroid/app/Activity;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    .line 1178
    .local v0, "volume":I
    const-string v1, "PlayFlow"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initMuteButton:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1179
    if-nez v0, :cond_1

    .line 1180
    const/4 v1, 0x0

    iput v1, p0, Lcom/youku/player/plugin/PluginVideoAd;->mVoice:I

    .line 1183
    :goto_0
    invoke-direct {p0}, Lcom/youku/player/plugin/PluginVideoAd;->setMuteButtonState()V

    .line 1185
    .end local v0    # "volume":I
    :cond_0
    return-void

    .line 1182
    .restart local v0    # "volume":I
    :cond_1
    const/4 v1, 0x1

    iput v1, p0, Lcom/youku/player/plugin/PluginVideoAd;->mVoice:I

    goto :goto_0
.end method

.method public isCountUpdateVisible()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 696
    iget-object v1, p0, Lcom/youku/player/plugin/PluginVideoAd;->mCountUpdateTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 697
    iget-object v1, p0, Lcom/youku/player/plugin/PluginVideoAd;->mCountUpdateTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 700
    :cond_0
    return v0
.end method

.method protected isInteractiveAd(Lcom/youku/player/goplay/AdvInfo;)Z
    .locals 2
    .param p1, "advInfo"    # Lcom/youku/player/goplay/AdvInfo;

    .prologue
    .line 1131
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/youku/player/goplay/AdvInfo;->RST:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/youku/player/goplay/AdvInfo;->RST:Ljava/lang/String;

    const-string v1, "hvideo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1132
    const/4 v0, 0x1

    .line 1134
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInteractiveAdHide()Z
    .locals 1

    .prologue
    .line 957
    iget-boolean v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->isInteractiveAdHide:Z

    return v0
.end method

.method public isInteractiveAdShow()Z
    .locals 1

    .prologue
    .line 953
    iget-boolean v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->isInteractiveAdShow:Z

    return v0
.end method

.method public isInteractiveAdVisible()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 961
    iget-object v1, p0, Lcom/youku/player/plugin/PluginVideoAd;->mInteractiveAdContainer:Landroid/widget/RelativeLayout;

    if-nez v1, :cond_1

    .line 964
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/youku/player/plugin/PluginVideoAd;->mInteractiveAdContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected isTrueViewAd(Lcom/youku/player/goplay/AdvInfo;)Z
    .locals 1
    .param p1, "advInfo"    # Lcom/youku/player/goplay/AdvInfo;

    .prologue
    .line 1192
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/youku/player/goplay/AdvInfo;->EM:Lcom/youku/player/goplay/EventMonitor;

    if-eqz v0, :cond_0

    .line 1193
    const/4 v0, 0x1

    .line 1195
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public newVideo()V
    .locals 0

    .prologue
    .line 336
    return-void
.end method

.method protected notifyTrueViewSkipTime(ILcom/youku/player/goplay/AdvInfo;)V
    .locals 15
    .param p1, "count"    # I
    .param p2, "advInfo"    # Lcom/youku/player/goplay/AdvInfo;

    .prologue
    .line 1234
    if-eqz p2, :cond_0

    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/youku/player/goplay/AdvInfo;->EM:Lcom/youku/player/goplay/EventMonitor;

    if-eqz v13, :cond_0

    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/youku/player/goplay/AdvInfo;->EM:Lcom/youku/player/goplay/EventMonitor;

    iget-object v13, v13, Lcom/youku/player/goplay/EventMonitor;->SKIP:Lcom/youku/player/goplay/EMSkip;

    if-nez v13, :cond_1

    .line 1280
    :cond_0
    :goto_0
    return-void

    .line 1237
    :cond_1
    iget-object v13, p0, Lcom/youku/player/plugin/PluginVideoAd;->mAdTrueViewSkipLayout:Landroid/widget/RelativeLayout;

    if-eqz v13, :cond_0

    .line 1238
    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/youku/player/goplay/AdvInfo;->EM:Lcom/youku/player/goplay/EventMonitor;

    iget-object v13, v13, Lcom/youku/player/goplay/EventMonitor;->SKIP:Lcom/youku/player/goplay/EMSkip;

    iget v1, v13, Lcom/youku/player/goplay/EMSkip;->T:I

    .line 1239
    .local v1, "T":I
    sub-int v5, v1, p1

    .line 1240
    .local v5, "notifyCount":I
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 1241
    .local v6, "notifyCountStr":Ljava/lang/String;
    if-lez v5, :cond_4

    .line 1242
    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/youku/player/goplay/AdvInfo;->EM:Lcom/youku/player/goplay/EventMonitor;

    iget-object v13, v13, Lcom/youku/player/goplay/EventMonitor;->SKIP:Lcom/youku/player/goplay/EMSkip;

    iget-object v12, v13, Lcom/youku/player/goplay/EMSkip;->TX1:Ljava/lang/String;

    .line 1243
    .local v12, "tx1":Ljava/lang/String;
    const-string/jumbo v13, "|"

    invoke-virtual {v12, v13, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    .line 1245
    .local v10, "str":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v13, "|"

    invoke-virtual {v12, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    .line 1246
    .local v9, "start":I
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v13

    add-int v3, v9, v13

    .line 1247
    .local v3, "end":I
    iget-object v13, p0, Lcom/youku/player/plugin/PluginVideoAd;->mActivity:Landroid/app/Activity;

    invoke-virtual {v13}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    sget v14, Lcom/youku/android/player/R$color;->yp_ad_skip_trueview_text_color_youku:I

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    .line 1249
    .local v11, "textColor":I
    invoke-static {}, Lcom/youku/player/config/MediaPlayerConfiguration;->getInstance()Lcom/youku/player/config/MediaPlayerConfiguration;

    move-result-object v13

    invoke-virtual {v13}, Lcom/youku/player/config/MediaPlayerConfiguration;->getPlatform()I

    move-result v13

    const/16 v14, 0x2711

    if-ne v13, v14, :cond_3

    .line 1250
    iget-object v13, p0, Lcom/youku/player/plugin/PluginVideoAd;->mActivity:Landroid/app/Activity;

    invoke-virtual {v13}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    sget v14, Lcom/youku/android/player/R$dimen;->player_ad_trueview_count_text_size_youku:I

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 1254
    .local v4, "fontSize":I
    :goto_1
    new-instance v8, Landroid/text/SpannableString;

    invoke-direct {v8, v10}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1255
    .local v8, "span":Landroid/text/SpannableString;
    new-instance v13, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v13, v11}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v14, 0x21

    invoke-virtual {v8, v13, v9, v3, v14}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1256
    new-instance v13, Landroid/text/style/AbsoluteSizeSpan;

    invoke-direct {v13, v4}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    const/16 v14, 0x21

    invoke-virtual {v8, v13, v9, v3, v14}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1257
    iget-object v13, p0, Lcom/youku/player/plugin/PluginVideoAd;->mAdTrueViewSkipTipTV:Landroid/widget/TextView;

    invoke-virtual {v13, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1261
    .end local v3    # "end":I
    .end local v4    # "fontSize":I
    .end local v8    # "span":Landroid/text/SpannableString;
    .end local v9    # "start":I
    .end local v11    # "textColor":I
    :goto_2
    const/4 v13, 0x0

    iput-boolean v13, p0, Lcom/youku/player/plugin/PluginVideoAd;->canSkipTrueViewAd:Z

    .line 1267
    .end local v10    # "str":Ljava/lang/String;
    .end local v12    # "tx1":Ljava/lang/String;
    :goto_3
    invoke-static {}, Lcom/youku/player/config/MediaPlayerConfiguration;->getInstance()Lcom/youku/player/config/MediaPlayerConfiguration;

    move-result-object v13

    invoke-virtual {v13}, Lcom/youku/player/config/MediaPlayerConfiguration;->getPlatform()I

    move-result v13

    const/16 v14, 0x2711

    if-ne v13, v14, :cond_2

    .line 1268
    iget-object v13, p0, Lcom/youku/player/plugin/PluginVideoAd;->mAdTrueViewSkipLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v13}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1269
    .local v7, "params":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v13, p0, Lcom/youku/player/plugin/PluginVideoAd;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v13}, Lcom/youku/player/plugin/MediaPlayerDelegate;->isPlayLocalType()Z

    move-result v13

    if-eqz v13, :cond_5

    .line 1270
    iget-object v13, p0, Lcom/youku/player/plugin/PluginVideoAd;->mActivity:Landroid/app/Activity;

    invoke-virtual {v13}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    sget v14, Lcom/youku/android/player/R$dimen;->player_ad_trueview_ship_offline_width_youku:I

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v13

    iput v13, v7, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 1274
    :goto_4
    iget-object v13, p0, Lcom/youku/player/plugin/PluginVideoAd;->mAdTrueViewSkipLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v13, v7}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1277
    .end local v7    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_2
    iget-object v13, p0, Lcom/youku/player/plugin/PluginVideoAd;->mAdTrueViewSkipTipTV:Landroid/widget/TextView;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1278
    iget-object v13, p0, Lcom/youku/player/plugin/PluginVideoAd;->mAdTrueViewSkipLayout:Landroid/widget/RelativeLayout;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 1252
    .restart local v3    # "end":I
    .restart local v9    # "start":I
    .restart local v10    # "str":Ljava/lang/String;
    .restart local v11    # "textColor":I
    .restart local v12    # "tx1":Ljava/lang/String;
    :cond_3
    :try_start_1
    iget-object v13, p0, Lcom/youku/player/plugin/PluginVideoAd;->mActivity:Landroid/app/Activity;

    invoke-virtual {v13}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    sget v14, Lcom/youku/android/player/R$dimen;->player_ad_count_text_size_tudou:I

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v4

    .restart local v4    # "fontSize":I
    goto :goto_1

    .line 1258
    .end local v3    # "end":I
    .end local v4    # "fontSize":I
    .end local v9    # "start":I
    .end local v11    # "textColor":I
    :catch_0
    move-exception v2

    .line 1259
    .local v2, "e":Ljava/lang/Exception;
    iget-object v13, p0, Lcom/youku/player/plugin/PluginVideoAd;->mAdTrueViewSkipTipTV:Landroid/widget/TextView;

    invoke-virtual {v13, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 1263
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v10    # "str":Ljava/lang/String;
    .end local v12    # "tx1":Ljava/lang/String;
    :cond_4
    iget-object v13, p0, Lcom/youku/player/plugin/PluginVideoAd;->mAdTrueViewSkipTipTV:Landroid/widget/TextView;

    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/youku/player/goplay/AdvInfo;->EM:Lcom/youku/player/goplay/EventMonitor;

    iget-object v14, v14, Lcom/youku/player/goplay/EventMonitor;->SKIP:Lcom/youku/player/goplay/EMSkip;

    iget-object v14, v14, Lcom/youku/player/goplay/EMSkip;->TX2:Ljava/lang/String;

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1264
    const/4 v13, 0x1

    iput-boolean v13, p0, Lcom/youku/player/plugin/PluginVideoAd;->canSkipTrueViewAd:Z

    goto :goto_3

    .line 1272
    .restart local v7    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_5
    iget-object v13, p0, Lcom/youku/player/plugin/PluginVideoAd;->mActivity:Landroid/app/Activity;

    invoke-virtual {v13}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    sget v14, Lcom/youku/android/player/R$dimen;->player_ad_trueview_ship_width_youku:I

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v13

    iput v13, v7, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    goto :goto_4
.end method

.method public notifyUpdate(I)V
    .locals 5
    .param p1, "count"    # I

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 421
    if-gtz p1, :cond_1

    .line 422
    iget-object v3, p0, Lcom/youku/player/plugin/PluginVideoAd;->mCountUpdateTextView:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 423
    iget-object v3, p0, Lcom/youku/player/plugin/PluginVideoAd;->mCountUpdateTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 424
    invoke-static {}, Lcom/youku/player/config/MediaPlayerConfiguration;->getInstance()Lcom/youku/player/config/MediaPlayerConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Lcom/youku/player/config/MediaPlayerConfiguration;->getPlatform()I

    move-result v3

    const/16 v4, 0x2711

    if-ne v3, v4, :cond_0

    .line 425
    iget-object v3, p0, Lcom/youku/player/plugin/PluginVideoAd;->mCountUpdateWrap:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 452
    :cond_0
    :goto_0
    return-void

    .line 429
    :cond_1
    iget-object v4, p0, Lcom/youku/player/plugin/PluginVideoAd;->mCountUpdateTextView:Landroid/widget/TextView;

    if-eqz v4, :cond_2

    .line 430
    iget-object v4, p0, Lcom/youku/player/plugin/PluginVideoAd;->mCountUpdateWrap:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 431
    invoke-direct {p0, p1}, Lcom/youku/player/plugin/PluginVideoAd;->setCountUpdateText(I)V

    .line 434
    :cond_2
    iget-object v4, p0, Lcom/youku/player/plugin/PluginVideoAd;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v4}, Lcom/youku/player/plugin/MediaPlayerDelegate;->isPlayLocalType()Z

    move-result v4

    if-eqz v4, :cond_3

    move v1, v2

    .line 437
    .local v1, "visibility":I
    :goto_1
    iget-object v4, p0, Lcom/youku/player/plugin/PluginVideoAd;->mSwitchParent:Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 439
    invoke-virtual {p0}, Lcom/youku/player/plugin/PluginVideoAd;->getAdvInfo()Lcom/youku/player/goplay/AdvInfo;

    move-result-object v0

    .line 440
    .local v0, "advInfo":Lcom/youku/player/goplay/AdvInfo;
    if-eqz v0, :cond_0

    .line 441
    iget-object v4, v0, Lcom/youku/player/goplay/AdvInfo;->CU:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 442
    iget-object v3, p0, Lcom/youku/player/plugin/PluginVideoAd;->ad_more:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .end local v0    # "advInfo":Lcom/youku/player/goplay/AdvInfo;
    .end local v1    # "visibility":I
    :cond_3
    move v1, v3

    .line 434
    goto :goto_1

    .line 444
    .restart local v0    # "advInfo":Lcom/youku/player/goplay/AdvInfo;
    .restart local v1    # "visibility":I
    :cond_4
    const/4 v2, 0x2

    iget v4, v0, Lcom/youku/player/goplay/AdvInfo;->CUF:I

    if-ne v2, v4, :cond_5

    .line 445
    iget-object v2, p0, Lcom/youku/player/plugin/PluginVideoAd;->ad_more:Landroid/widget/TextView;

    sget v4, Lcom/youku/android/player/R$string;->playersdk_ad_descrip_play_youku:I

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    .line 449
    :goto_2
    iget-object v2, p0, Lcom/youku/player/plugin/PluginVideoAd;->ad_more:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 447
    :cond_5
    iget-object v2, p0, Lcom/youku/player/plugin/PluginVideoAd;->ad_more:Landroid/widget/TextView;

    sget v4, Lcom/youku/android/player/R$string;->playersdk_ad_descrip_youku:I

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2
.end method

.method public onADplaying()V
    .locals 0

    .prologue
    .line 634
    return-void
.end method

.method public onAdEnd(I)Z
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1162
    const/4 v0, 0x0

    return v0
.end method

.method public onAdStart(I)Z
    .locals 3
    .param p1, "index"    # I

    .prologue
    const/4 v2, 0x0

    .line 1153
    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->mMuteButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 1154
    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->mMuteButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1155
    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget v1, p0, Lcom/youku/player/plugin/PluginVideoAd;->mVoice:I

    invoke-virtual {v0, v1}, Lcom/youku/player/plugin/MediaPlayerDelegate;->enableVoice(I)V

    .line 1157
    :cond_0
    return v2
.end method

.method public onBufferingUpdateListener(I)V
    .locals 0
    .param p1, "percent"    # I

    .prologue
    .line 252
    return-void
.end method

.method public onClearUpDownFav()V
    .locals 0

    .prologue
    .line 649
    return-void
.end method

.method public onCompletionListener()V
    .locals 0

    .prologue
    .line 257
    return-void
.end method

.method public onDown()V
    .locals 0

    .prologue
    .line 324
    return-void
.end method

.method public onErrorListener(II)Z
    .locals 2
    .param p1, "what"    # I
    .param p2, "extra"    # I

    .prologue
    .line 261
    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/youku/player/plugin/PluginVideoAd$6;

    invoke-direct {v1, p0}, Lcom/youku/player/plugin/PluginVideoAd$6;-><init>(Lcom/youku/player/plugin/PluginVideoAd;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 268
    const/4 v0, 0x0

    return v0
.end method

.method public onFavor()V
    .locals 0

    .prologue
    .line 328
    return-void
.end method

.method public onLoadedListener()V
    .locals 2

    .prologue
    .line 297
    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/youku/player/plugin/PluginVideoAd$7;

    invoke-direct {v1, p0}, Lcom/youku/player/plugin/PluginVideoAd$7;-><init>(Lcom/youku/player/plugin/PluginVideoAd;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 304
    return-void
.end method

.method public onLoadingListener()V
    .locals 2

    .prologue
    .line 308
    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/youku/player/plugin/PluginVideoAd$8;

    invoke-direct {v1, p0}, Lcom/youku/player/plugin/PluginVideoAd$8;-><init>(Lcom/youku/player/plugin/PluginVideoAd;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 314
    return-void
.end method

.method public onMute(Z)V
    .locals 0
    .param p1, "mute"    # Z

    .prologue
    .line 361
    return-void
.end method

.method public onNotifyChangeVideoQuality()V
    .locals 0

    .prologue
    .line 626
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 653
    sget-object v0, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    const-string v1, "PluginViewAd ----> onPause()"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    invoke-virtual {p0}, Lcom/youku/player/plugin/PluginVideoAd;->getAdvInfo()Lcom/youku/player/goplay/AdvInfo;

    .line 655
    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-nez v0, :cond_0

    .line 656
    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/youku/player/plugin/PluginVideoAd$14;

    invoke-direct {v1, p0}, Lcom/youku/player/plugin/PluginVideoAd$14;-><init>(Lcom/youku/player/plugin/PluginVideoAd;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 673
    :cond_0
    return-void
.end method

.method public onPlayNoRightVideo(Lcom/youku/player/goplay/GoplayException;)V
    .locals 0
    .param p1, "e"    # Lcom/youku/player/goplay/GoplayException;

    .prologue
    .line 687
    return-void
.end method

.method public onPlayReleateNoRightVideo()V
    .locals 0

    .prologue
    .line 693
    return-void
.end method

.method public onPluginAdded()V
    .locals 2

    .prologue
    const/16 v1, 0x2712

    .line 456
    invoke-super {p0}, Lcom/youku/player/plugin/PluginOverlay;->onPluginAdded()V

    .line 457
    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-boolean v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isFullScreen:Z

    if-eqz v0, :cond_1

    .line 458
    invoke-static {}, Lcom/youku/player/config/MediaPlayerConfiguration;->getInstance()Lcom/youku/player/config/MediaPlayerConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/player/config/MediaPlayerConfiguration;->getPlatform()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 459
    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->mSwitchPlayer:Landroid/widget/ImageView;

    sget v1, Lcom/youku/android/player/R$drawable;->plugin_ad_gosmall_tudou:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 475
    :goto_0
    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/youku/player/plugin/PluginVideoAd;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-boolean v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->isFullScreen:Z

    invoke-static {v0, p0, v1}, Lcom/youku/player/util/PlayerUtil;->hideSystemUI(Landroid/content/Context;Lcom/youku/player/plugin/PluginOverlay;Z)V

    .line 476
    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->mPlayerUiControl:Lcom/youku/player/apiservice/IPlayerUiControl;

    invoke-interface {v0}, Lcom/youku/player/apiservice/IPlayerUiControl;->setPluginHolderPaddingZero()V

    .line 477
    return-void

    .line 461
    :cond_0
    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->mSwitchPlayer:Landroid/widget/ImageView;

    sget v1, Lcom/youku/android/player/R$drawable;->plugin_ad_gosmall_youku:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 464
    :cond_1
    invoke-static {}, Lcom/youku/player/config/MediaPlayerConfiguration;->getInstance()Lcom/youku/player/config/MediaPlayerConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/player/config/MediaPlayerConfiguration;->getPlatform()I

    move-result v0

    if-ne v0, v1, :cond_3

    .line 465
    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/youku/player/util/PlayerUtil;->isYoukuTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 466
    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->mSwitchPlayer:Landroid/widget/ImageView;

    sget v1, Lcom/youku/android/player/R$drawable;->plugin_ad_gofull_tudou_pad:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 468
    :cond_2
    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->mSwitchPlayer:Landroid/widget/ImageView;

    sget v1, Lcom/youku/android/player/R$drawable;->plugin_ad_gofull_tudou:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 471
    :cond_3
    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->mSwitchPlayer:Landroid/widget/ImageView;

    sget v1, Lcom/youku/android/player/R$drawable;->plugin_ad_gofull_youku:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public onRealVideoStart()V
    .locals 0

    .prologue
    .line 630
    return-void
.end method

.method public onRealVideoStarted()V
    .locals 0

    .prologue
    .line 639
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 1167
    iget-object v1, p0, Lcom/youku/player/plugin/PluginVideoAd;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/youku/player/plugin/PluginVideoAd;->mMuteButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/youku/player/plugin/PluginVideoAd;->isADPluginShowing:Z

    if-eqz v1, :cond_1

    .line 1168
    iget-object v1, p0, Lcom/youku/player/plugin/PluginVideoAd;->mActivity:Landroid/app/Activity;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    .line 1169
    .local v0, "volume":I
    if-nez v0, :cond_0

    .line 1170
    const/4 v1, 0x0

    iput v1, p0, Lcom/youku/player/plugin/PluginVideoAd;->mVoice:I

    .line 1171
    :cond_0
    invoke-direct {p0}, Lcom/youku/player/plugin/PluginVideoAd;->setMuteButtonState()V

    .line 1173
    .end local v0    # "volume":I
    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 644
    return-void
.end method

.method public onUnFavor()V
    .locals 0

    .prologue
    .line 332
    return-void
.end method

.method public onUp()V
    .locals 0

    .prologue
    .line 319
    return-void
.end method

.method public onVideoChange()V
    .locals 2

    .prologue
    .line 365
    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/youku/player/plugin/PluginVideoAd$9;

    invoke-direct {v1, p0}, Lcom/youku/player/plugin/PluginVideoAd$9;-><init>(Lcom/youku/player/plugin/PluginVideoAd;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 383
    return-void
.end method

.method public onVideoInfoGetFail(Z)V
    .locals 0
    .param p1, "needRetry"    # Z

    .prologue
    .line 406
    return-void
.end method

.method public onVideoInfoGetted()V
    .locals 0

    .prologue
    .line 401
    invoke-virtual {p0}, Lcom/youku/player/plugin/PluginVideoAd;->initMuteButton()V

    .line 402
    return-void
.end method

.method public onVideoInfoGetting()V
    .locals 1

    .prologue
    .line 389
    iget-boolean v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->isADPluginShowing:Z

    if-eqz v0, :cond_0

    .line 395
    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->mPlayerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

    invoke-interface {v0}, Lcom/youku/player/apiservice/IPlayerAdControl;->interuptAD()V

    .line 397
    :cond_0
    return-void
.end method

.method public onVolumnDown()V
    .locals 3

    .prologue
    .line 349
    iget-object v1, p0, Lcom/youku/player/plugin/PluginVideoAd;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/youku/player/plugin/PluginVideoAd;->isADPluginShowing:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/youku/player/plugin/PluginVideoAd;->mMuteButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_0

    .line 350
    iget-object v1, p0, Lcom/youku/player/plugin/PluginVideoAd;->mActivity:Landroid/app/Activity;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    .line 351
    .local v0, "volume":I
    if-nez v0, :cond_0

    .line 352
    const/4 v1, 0x0

    iput v1, p0, Lcom/youku/player/plugin/PluginVideoAd;->mVoice:I

    .line 353
    iget-object v1, p0, Lcom/youku/player/plugin/PluginVideoAd;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget v2, p0, Lcom/youku/player/plugin/PluginVideoAd;->mVoice:I

    invoke-virtual {v1, v2}, Lcom/youku/player/plugin/MediaPlayerDelegate;->enableVoice(I)V

    .line 354
    invoke-direct {p0}, Lcom/youku/player/plugin/PluginVideoAd;->setMuteButtonState()V

    .line 357
    .end local v0    # "volume":I
    :cond_0
    return-void
.end method

.method public onVolumnUp()V
    .locals 2

    .prologue
    .line 340
    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->isADPluginShowing:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->mMuteButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 341
    const/4 v0, 0x1

    iput v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->mVoice:I

    .line 342
    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget v1, p0, Lcom/youku/player/plugin/PluginVideoAd;->mVoice:I

    invoke-virtual {v0, v1}, Lcom/youku/player/plugin/MediaPlayerDelegate;->enableVoice(I)V

    .line 343
    invoke-direct {p0}, Lcom/youku/player/plugin/PluginVideoAd;->setMuteButtonState()V

    .line 345
    :cond_0
    return-void
.end method

.method public pauseInteractiveAd()V
    .locals 1

    .prologue
    .line 1026
    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->mInteractiveAdContainer:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_1

    .line 1032
    :cond_0
    :goto_0
    return-void

    .line 1029
    :cond_1
    iget-boolean v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->isInteractiveAdShow:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->mAdApplicationContext:Lcom/youdo/ad/interfaces/IAdApplicationContext;

    if-eqz v0, :cond_0

    .line 1030
    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->mAdApplicationContext:Lcom/youdo/ad/interfaces/IAdApplicationContext;

    invoke-interface {v0}, Lcom/youdo/ad/interfaces/IAdApplicationContext;->onPause()V

    goto :goto_0
.end method

.method protected abstract removeCurrentAdv()V
.end method

.method protected setInteractiveAdPlayheadTime(II)V
    .locals 4
    .param p1, "position"    # I
    .param p2, "duration"    # I

    .prologue
    .line 1119
    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->mAdApplicationContext:Lcom/youdo/ad/interfaces/IAdApplicationContext;

    if-eqz v0, :cond_0

    .line 1120
    sget-object v0, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setInteractiveAdPlayheadTime -------> position : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/ duration : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1121
    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->mAdApplicationContext:Lcom/youdo/ad/interfaces/IAdApplicationContext;

    int-to-double v2, p1

    invoke-interface {v0, v2, v3}, Lcom/youdo/ad/interfaces/IAdApplicationContext;->setVideoAdPlayheadTime(D)V

    .line 1122
    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->mAdApplicationContext:Lcom/youdo/ad/interfaces/IAdApplicationContext;

    int-to-double v2, p2

    invoke-interface {v0, v2, v3}, Lcom/youdo/ad/interfaces/IAdApplicationContext;->setVideoAdDuration(D)V

    .line 1124
    :cond_0
    return-void
.end method

.method public setInteractiveAdVisible(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    const/4 v1, 0x0

    .line 968
    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->mInteractiveAdContainer:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_1

    .line 1006
    :cond_0
    :goto_0
    return-void

    .line 971
    :cond_1
    if-eqz p1, :cond_5

    .line 972
    iget-boolean v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->isInteractiveAdShow:Z

    if-eqz v0, :cond_0

    .line 973
    iget-boolean v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->isInteractiveAdHide:Z

    if-nez v0, :cond_4

    .line 974
    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->mInteractiveAdContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 975
    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->mAdPageHolder:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_2

    .line 976
    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->mAdPageHolder:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 978
    :cond_2
    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->mAdApplicationContext:Lcom/youdo/ad/interfaces/IAdApplicationContext;

    if-eqz v0, :cond_3

    .line 979
    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->mAdApplicationContext:Lcom/youdo/ad/interfaces/IAdApplicationContext;

    invoke-interface {v0}, Lcom/youdo/ad/interfaces/IAdApplicationContext;->show()V

    .line 981
    :cond_3
    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->mPlayerUiControl:Lcom/youku/player/apiservice/IPlayerUiControl;

    invoke-interface {v0}, Lcom/youku/player/apiservice/IPlayerUiControl;->goFullScreen()V

    .line 982
    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->mPlayerUiControl:Lcom/youku/player/apiservice/IPlayerUiControl;

    invoke-interface {v0}, Lcom/youku/player/apiservice/IPlayerUiControl;->setOrientionDisable()V

    goto :goto_0

    .line 984
    :cond_4
    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->mInteractiveAdGoFull:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 988
    :cond_5
    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/youku/player/plugin/PluginVideoAd$16;

    invoke-direct {v1, p0}, Lcom/youku/player/plugin/PluginVideoAd$16;-><init>(Lcom/youku/player/plugin/PluginVideoAd;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 999
    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v0, :cond_0

    const-string v0, "local"

    iget-object v1, p0, Lcom/youku/player/plugin/PluginVideoAd;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v1}, Lcom/youku/player/module/VideoUrlInfo;->getPlayType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/youku/player/util/PlayerUtil;->isYoukuTablet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1003
    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->mPlayerUiControl:Lcom/youku/player/apiservice/IPlayerUiControl;

    invoke-interface {v0}, Lcom/youku/player/apiservice/IPlayerUiControl;->setOrientionEnable()V

    goto :goto_0
.end method

.method public setSkipVisible(Z)V
    .locals 4
    .param p1, "visible"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 704
    invoke-static {}, Lcom/youku/player/config/MediaPlayerConfiguration;->getInstance()Lcom/youku/player/config/MediaPlayerConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/player/config/MediaPlayerConfiguration;->showSkipAdButton()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->mAdSkip:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 705
    iget-object v3, p0, Lcom/youku/player/plugin/PluginVideoAd;->mAdSkip:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 706
    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->mAdSkipBlank:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 707
    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->mAdSkipBlank:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 710
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 705
    goto :goto_0

    :cond_2
    move v1, v2

    .line 707
    goto :goto_1
.end method

.method public setVisible(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    const/4 v1, 0x0

    .line 410
    if-eqz p1, :cond_0

    .line 411
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->isADPluginShowing:Z

    .line 412
    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->containerView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 417
    :goto_0
    return-void

    .line 414
    :cond_0
    iput-boolean v1, p0, Lcom/youku/player/plugin/PluginVideoAd;->isADPluginShowing:Z

    .line 415
    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->containerView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public showInteractiveAd()V
    .locals 2

    .prologue
    .line 1009
    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->mInteractiveAdContainer:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    sget-object v0, Lorg/openad/constants/IOpenAdContants$AdUnitType;->HTML5:Lorg/openad/constants/IOpenAdContants$AdUnitType;

    invoke-static {v0}, Lcom/youdo/AdApplicationContext;->support(Lorg/openad/constants/IOpenAdContants$AdUnitType;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1023
    :cond_0
    :goto_0
    return-void

    .line 1013
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->isInteractiveAdShow:Z

    .line 1014
    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-boolean v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isPause:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->mPlayerUiControl:Lcom/youku/player/apiservice/IPlayerUiControl;

    invoke-interface {v0}, Lcom/youku/player/apiservice/IPlayerUiControl;->isOnPause()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1017
    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->mPlayerUiControl:Lcom/youku/player/apiservice/IPlayerUiControl;

    invoke-interface {v0}, Lcom/youku/player/apiservice/IPlayerUiControl;->goFullScreen()V

    .line 1018
    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->mPlayerUiControl:Lcom/youku/player/apiservice/IPlayerUiControl;

    invoke-interface {v0}, Lcom/youku/player/apiservice/IPlayerUiControl;->setOrientionDisable()V

    .line 1019
    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->mAdPageHolder:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_2

    .line 1020
    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->mAdPageHolder:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1022
    :cond_2
    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->mInteractiveAdContainer:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public showLoading()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x32

    const/4 v2, 0x0

    .line 545
    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->seekLoadingContainerView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 546
    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->seekLoadingContainerView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 547
    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->seekLoadingContainerView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 548
    iput v2, p0, Lcom/youku/player/plugin/PluginVideoAd;->seekcount:I

    .line 549
    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->seekHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 552
    :cond_0
    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->getCurrentPosition()I

    move-result v0

    const/16 v1, 0x3e8

    if-le v0, v1, :cond_2

    .line 554
    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->seekendHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 555
    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->seekLoadingContainerView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 561
    :cond_1
    :goto_0
    return-void

    .line 557
    :cond_2
    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->seekLoadingContainerView:Landroid/view/View;

    sget v1, Lcom/youku/android/player/R$drawable;->bg_play:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public showPlayIcon()V
    .locals 2

    .prologue
    .line 676
    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->play_adButton:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 677
    return-void
.end method

.method protected showTrueViewAd(Lcom/youku/player/goplay/AdvInfo;)V
    .locals 2
    .param p1, "advInfo"    # Lcom/youku/player/goplay/AdvInfo;

    .prologue
    .line 1203
    invoke-virtual {p0, p1}, Lcom/youku/player/plugin/PluginVideoAd;->isTrueViewAd(Lcom/youku/player/goplay/AdvInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/youku/player/goplay/AdvInfo;->EM:Lcom/youku/player/goplay/EventMonitor;

    iget-object v0, v0, Lcom/youku/player/goplay/EventMonitor;->VIEW:Lcom/youku/player/goplay/EMView;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/youku/player/goplay/AdvInfo;->EM:Lcom/youku/player/goplay/EventMonitor;

    iget-object v0, v0, Lcom/youku/player/goplay/EventMonitor;->VIEW:Lcom/youku/player/goplay/EMView;

    iget-object v0, v0, Lcom/youku/player/goplay/EMView;->CU:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/youku/player/goplay/AdvInfo;->EM:Lcom/youku/player/goplay/EventMonitor;

    iget-object v0, v0, Lcom/youku/player/goplay/EventMonitor;->VIEW:Lcom/youku/player/goplay/EMView;

    iget-object v0, v0, Lcom/youku/player/goplay/EMView;->TX:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1206
    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->mAdTrueViewPlay:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/youku/player/goplay/AdvInfo;->EM:Lcom/youku/player/goplay/EventMonitor;

    iget-object v1, v1, Lcom/youku/player/goplay/EventMonitor;->VIEW:Lcom/youku/player/goplay/EMView;

    iget-object v1, v1, Lcom/youku/player/goplay/EMView;->TX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1207
    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->mAdTrueViewPlay:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1211
    :goto_0
    sget-object v0, Lcom/youku/player/LogTag;->TAG_TRUE_VIEW:Ljava/lang/String;

    const-string v1, "------> show TrueView Ad."

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1212
    return-void

    .line 1209
    :cond_0
    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->mAdTrueViewPlay:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public startInteractiveAd(Ljava/lang/String;I)V
    .locals 3
    .param p1, "brs"    # Ljava/lang/String;
    .param p2, "count"    # I

    .prologue
    .line 718
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->mInteractiveAdContainer:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    sget-object v0, Lorg/openad/constants/IOpenAdContants$AdUnitType;->HTML5:Lorg/openad/constants/IOpenAdContants$AdUnitType;

    invoke-static {v0}, Lcom/youdo/AdApplicationContext;->support(Lorg/openad/constants/IOpenAdContants$AdUnitType;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 766
    :cond_0
    :goto_0
    return-void

    .line 724
    :cond_1
    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->mAdManager:Lcom/youdo/ad/interfaces/IAdManager;

    if-nez v0, :cond_2

    .line 725
    new-instance v0, Lcom/youdo/AdManager;

    invoke-direct {v0}, Lcom/youdo/AdManager;-><init>()V

    iput-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->mAdManager:Lcom/youdo/ad/interfaces/IAdManager;

    .line 727
    :cond_2
    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->mAdManager:Lcom/youdo/ad/interfaces/IAdManager;

    iget-object v1, p0, Lcom/youku/player/plugin/PluginVideoAd;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/youku/player/util/DetailUtil;->getLocation(Landroid/content/Context;)Landroid/location/Location;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/youdo/ad/interfaces/IAdManager;->setLocation(Landroid/location/Location;)V

    .line 728
    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->mAdManager:Lcom/youdo/ad/interfaces/IAdManager;

    invoke-interface {v0}, Lcom/youdo/ad/interfaces/IAdManager;->getAdApplicationContext()Lcom/youdo/ad/interfaces/IAdApplicationContext;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->mAdApplicationContext:Lcom/youdo/ad/interfaces/IAdApplicationContext;

    .line 730
    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->mInteractiveAdContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 731
    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->mAdApplicationContext:Lcom/youdo/ad/interfaces/IAdApplicationContext;

    iget-object v1, p0, Lcom/youku/player/plugin/PluginVideoAd;->mInteractiveAdContainer:Landroid/widget/RelativeLayout;

    invoke-interface {v0, v1}, Lcom/youdo/ad/interfaces/IAdApplicationContext;->setWMHtml5AdViewContainer(Landroid/widget/RelativeLayout;)V

    .line 734
    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->mAdApplicationContext:Lcom/youdo/ad/interfaces/IAdApplicationContext;

    iget-object v1, p0, Lcom/youku/player/plugin/PluginVideoAd;->mActivity:Landroid/app/Activity;

    invoke-interface {v0, v1}, Lcom/youdo/ad/interfaces/IAdApplicationContext;->setActivity(Landroid/app/Activity;)V

    .line 735
    invoke-direct {p0}, Lcom/youku/player/plugin/PluginVideoAd;->setInteractiveAdResource()V

    .line 737
    invoke-direct {p0, p1, p2}, Lcom/youku/player/plugin/PluginVideoAd;->setupInteractiveAdData(Ljava/lang/String;I)V

    .line 738
    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->mAdApplicationContext:Lcom/youdo/ad/interfaces/IAdApplicationContext;

    iget-object v1, p0, Lcom/youku/player/plugin/PluginVideoAd;->mCurrentAdData:Lorg/json/JSONObject;

    invoke-interface {v0, v1}, Lcom/youdo/ad/interfaces/IAdApplicationContext;->setAdData(Lorg/json/JSONObject;)V

    .line 739
    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->mAdApplicationContext:Lcom/youdo/ad/interfaces/IAdApplicationContext;

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Lcom/youdo/ad/interfaces/IAdApplicationContext;->setTimeout(I)V

    .line 741
    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->mInteractiveAdListener:Lcom/youku/player/plugin/PluginVideoAd$InteractiveAdListener;

    if-nez v0, :cond_3

    .line 742
    new-instance v0, Lcom/youku/player/plugin/PluginVideoAd$InteractiveAdListener;

    invoke-direct {v0, p0}, Lcom/youku/player/plugin/PluginVideoAd$InteractiveAdListener;-><init>(Lcom/youku/player/plugin/PluginVideoAd;)V

    iput-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->mInteractiveAdListener:Lcom/youku/player/plugin/PluginVideoAd$InteractiveAdListener;

    .line 744
    :cond_3
    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->mAdApplicationContext:Lcom/youdo/ad/interfaces/IAdApplicationContext;

    const-string v1, "ad_prepared"

    iget-object v2, p0, Lcom/youku/player/plugin/PluginVideoAd;->mInteractiveAdListener:Lcom/youku/player/plugin/PluginVideoAd$InteractiveAdListener;

    invoke-interface {v0, v1, v2}, Lcom/youdo/ad/interfaces/IAdApplicationContext;->addEventListener(Ljava/lang/String;Lorg/openad/events/IXYDEventListener;)V

    .line 746
    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->mAdApplicationContext:Lcom/youdo/ad/interfaces/IAdApplicationContext;

    const-string v1, "ad_stop"

    iget-object v2, p0, Lcom/youku/player/plugin/PluginVideoAd;->mInteractiveAdListener:Lcom/youku/player/plugin/PluginVideoAd$InteractiveAdListener;

    invoke-interface {v0, v1, v2}, Lcom/youdo/ad/interfaces/IAdApplicationContext;->addEventListener(Ljava/lang/String;Lorg/openad/events/IXYDEventListener;)V

    .line 748
    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->mAdApplicationContext:Lcom/youdo/ad/interfaces/IAdApplicationContext;

    const-string v1, "ad_error"

    iget-object v2, p0, Lcom/youku/player/plugin/PluginVideoAd;->mInteractiveAdListener:Lcom/youku/player/plugin/PluginVideoAd$InteractiveAdListener;

    invoke-interface {v0, v1, v2}, Lcom/youdo/ad/interfaces/IAdApplicationContext;->addEventListener(Ljava/lang/String;Lorg/openad/events/IXYDEventListener;)V

    .line 750
    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->mAdApplicationContext:Lcom/youdo/ad/interfaces/IAdApplicationContext;

    const-string v1, "ad_view_mode_change"

    iget-object v2, p0, Lcom/youku/player/plugin/PluginVideoAd;->mInteractiveAdListener:Lcom/youku/player/plugin/PluginVideoAd$InteractiveAdListener;

    invoke-interface {v0, v1, v2}, Lcom/youdo/ad/interfaces/IAdApplicationContext;->addEventListener(Ljava/lang/String;Lorg/openad/events/IXYDEventListener;)V

    .line 753
    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->mAdApplicationContext:Lcom/youdo/ad/interfaces/IAdApplicationContext;

    const-string/jumbo v1, "video_pause"

    iget-object v2, p0, Lcom/youku/player/plugin/PluginVideoAd;->mInteractiveAdListener:Lcom/youku/player/plugin/PluginVideoAd$InteractiveAdListener;

    invoke-interface {v0, v1, v2}, Lcom/youdo/ad/interfaces/IAdApplicationContext;->addEventListener(Ljava/lang/String;Lorg/openad/events/IXYDEventListener;)V

    .line 755
    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->mAdApplicationContext:Lcom/youdo/ad/interfaces/IAdApplicationContext;

    const-string/jumbo v1, "video_resume"

    iget-object v2, p0, Lcom/youku/player/plugin/PluginVideoAd;->mInteractiveAdListener:Lcom/youku/player/plugin/PluginVideoAd$InteractiveAdListener;

    invoke-interface {v0, v1, v2}, Lcom/youdo/ad/interfaces/IAdApplicationContext;->addEventListener(Ljava/lang/String;Lorg/openad/events/IXYDEventListener;)V

    .line 757
    invoke-virtual {p0}, Lcom/youku/player/plugin/PluginVideoAd;->getAdvInfo()Lcom/youku/player/goplay/AdvInfo;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 758
    invoke-virtual {p0}, Lcom/youku/player/plugin/PluginVideoAd;->getAdvInfo()Lcom/youku/player/goplay/AdvInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/youku/player/goplay/AdvInfo;->RS:Ljava/lang/String;

    iput-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->mInteractiveAdVideoRs:Ljava/lang/String;

    .line 761
    :cond_4
    :try_start_0
    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->mAdApplicationContext:Lcom/youdo/ad/interfaces/IAdApplicationContext;

    invoke-interface {v0}, Lcom/youdo/ad/interfaces/IAdApplicationContext;->load()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 764
    :goto_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->isInteractiveAdHide:Z

    .line 765
    sget-object v0, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    const-string/jumbo v1, "start to show Interactive ad"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 762
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method protected abstract startPlay()V
.end method

.method public updateBackBtn()V
    .locals 2

    .prologue
    .line 1314
    sget v0, Lcom/youku/player/goplay/Profile;->PLANTFORM:I

    const/16 v1, 0x2711

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->mBackButton:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    .line 1322
    :cond_0
    :goto_0
    return-void

    .line 1317
    :cond_1
    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-boolean v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isFullScreen:Z

    if-eqz v0, :cond_2

    .line 1318
    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->mBackButton:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 1320
    :cond_2
    iget-object v0, p0, Lcom/youku/player/plugin/PluginVideoAd;->mBackButton:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method
