.class public Lcom/youku/player/plugin/PluginSimplePlayer;
.super Lcom/youku/player/plugin/PluginOverlay;
.source "PluginSimplePlayer.java"

# interfaces
.implements Lcom/youku/player/util/DetailMessage;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# static fields
.field public static final HIDE_LOADING:I = 0x458

.field private static final MSG_INFO_FAILED:I = 0x4eab

.field private static final MSG_INFO_GETTED:I = 0x4eaa

.field public static final SHOW_LOADING:I = 0x457


# instance fields
.field Adaptation_lastPercent:I

.field private final HIDE_ALL:I

.field private final HIDE_CONTROL:I

.field private final HIDE_TITLE:I

.field private TAG:Ljava/lang/String;

.field private autoPlay:Z

.field private containerView:Landroid/view/View;

.field private controlLayout:Landroid/widget/RelativeLayout;

.field currentTime:Landroid/widget/TextView;

.field private endPageView:Landroid/view/View;

.field private error:Z

.field private firstLoaded:Z

.field private full_screenButton:Landroid/widget/ImageButton;

.field private goRetry:Landroid/widget/LinearLayout;

.field private hideHandler:Landroid/os/Handler;

.field private id:Ljava/lang/String;

.field private infoFail:Z

.field private infoSeekBar:Landroid/widget/SeekBar;

.field private interactFrameLayout:Landroid/widget/FrameLayout;

.field isBack:Z

.field private isLoading:Z

.field private isRealVideoStart:Z

.field protected lastInteractTime:J

.field private loadInfoHandler:Landroid/os/Handler;

.field private loadinfoseek:I

.field private loadinfoseekend:Z

.field private loadingInfoLayout:Landroid/widget/RelativeLayout;

.field private loadingTips:Landroid/widget/TextView;

.field private mActivity:Landroid/app/Activity;

.field mBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mContainerLayout:Landroid/widget/LinearLayout;

.field private mCountUpdateTextView:Landroid/widget/TextView;

.field private nextLayout:Landroid/widget/LinearLayout;

.field private playDrawable:Landroid/graphics/drawable/Drawable;

.field private playHandler:Landroid/os/Handler;

.field private playLoadingBar:Landroid/widget/SeekBar;

.field private playNameTextView:Landroid/widget/TextView;

.field private playTitleTextView:Landroid/widget/TextView;

.field private play_pauseButton:Landroid/widget/ImageButton;

.field private playerView:Landroid/widget/FrameLayout;

.field private replayLayout:Landroid/widget/LinearLayout;

.field private retryView:Landroid/view/View;

.field private seekHandler:Landroid/os/Handler;

.field private seekLoadingContainerView:Landroid/view/View;

.field private seekcount:I

.field private seekendHandler:Landroid/os/Handler;

.field protected selectedFormat:I

.field private titleLayoutPort:Landroid/widget/LinearLayout;

.field totalTime:Landroid/widget/TextView;

.field private userPlayButton:Landroid/widget/ImageView;

.field private userPlayClickListener:Landroid/view/View$OnClickListener;

.field private userPlayImageButton:Landroid/widget/ImageButton;

.field videoBar:Landroid/widget/SeekBar;

.field private video_id:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/youku/player/plugin/MediaPlayerDelegate;)V
    .locals 5
    .param p1, "mActivity"    # Landroid/app/Activity;
    .param p2, "mediaPlayerDelegate"    # Lcom/youku/player/plugin/MediaPlayerDelegate;

    .prologue
    const/4 v4, 0x0

    .line 71
    invoke-direct {p0, p1, p2}, Lcom/youku/player/plugin/PluginOverlay;-><init>(Landroid/content/Context;Lcom/youku/player/plugin/MediaPlayerDelegate;)V

    .line 364
    const-string v1, "PluginSmallScreenPlay"

    iput-object v1, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->TAG:Ljava/lang/String;

    .line 406
    iput v4, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->seekcount:I

    .line 481
    new-instance v1, Lcom/youku/player/plugin/PluginSimplePlayer$10;

    invoke-direct {v1, p0}, Lcom/youku/player/plugin/PluginSimplePlayer$10;-><init>(Lcom/youku/player/plugin/PluginSimplePlayer;)V

    iput-object v1, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->seekHandler:Landroid/os/Handler;

    .line 512
    new-instance v1, Lcom/youku/player/plugin/PluginSimplePlayer$11;

    invoke-direct {v1, p0}, Lcom/youku/player/plugin/PluginSimplePlayer$11;-><init>(Lcom/youku/player/plugin/PluginSimplePlayer;)V

    iput-object v1, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->seekendHandler:Landroid/os/Handler;

    .line 566
    iput v4, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->loadinfoseek:I

    .line 567
    iput-boolean v4, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->loadinfoseekend:Z

    .line 568
    new-instance v1, Lcom/youku/player/plugin/PluginSimplePlayer$14;

    invoke-direct {v1, p0}, Lcom/youku/player/plugin/PluginSimplePlayer$14;-><init>(Lcom/youku/player/plugin/PluginSimplePlayer;)V

    iput-object v1, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->loadInfoHandler:Landroid/os/Handler;

    .line 590
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->autoPlay:Z

    .line 689
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->lastInteractTime:J

    .line 691
    new-instance v1, Lcom/youku/player/plugin/PluginSimplePlayer$15;

    invoke-direct {v1, p0}, Lcom/youku/player/plugin/PluginSimplePlayer$15;-><init>(Lcom/youku/player/plugin/PluginSimplePlayer;)V

    iput-object v1, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->mBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 733
    new-instance v1, Lcom/youku/player/plugin/PluginSimplePlayer$16;

    invoke-direct {v1, p0}, Lcom/youku/player/plugin/PluginSimplePlayer$16;-><init>(Lcom/youku/player/plugin/PluginSimplePlayer;)V

    iput-object v1, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->userPlayClickListener:Landroid/view/View$OnClickListener;

    .line 830
    new-instance v1, Lcom/youku/player/plugin/PluginSimplePlayer$17;

    invoke-direct {v1, p0}, Lcom/youku/player/plugin/PluginSimplePlayer$17;-><init>(Lcom/youku/player/plugin/PluginSimplePlayer;)V

    iput-object v1, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->hideHandler:Landroid/os/Handler;

    .line 861
    const/16 v1, 0x3e9

    iput v1, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->HIDE_CONTROL:I

    .line 862
    const/16 v1, 0x3ea

    iput v1, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->HIDE_TITLE:I

    .line 863
    const/16 v1, 0x3eb

    iput v1, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->HIDE_ALL:I

    .line 876
    const/4 v1, 0x5

    iput v1, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->selectedFormat:I

    .line 908
    iput v4, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->Adaptation_lastPercent:I

    .line 1138
    iput-boolean v4, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->firstLoaded:Z

    .line 1139
    iput-boolean v4, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->isLoading:Z

    .line 1295
    new-instance v1, Lcom/youku/player/plugin/PluginSimplePlayer$28;

    invoke-direct {v1, p0}, Lcom/youku/player/plugin/PluginSimplePlayer$28;-><init>(Lcom/youku/player/plugin/PluginSimplePlayer;)V

    iput-object v1, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->playHandler:Landroid/os/Handler;

    .line 1742
    iput-boolean v4, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->infoFail:Z

    .line 1759
    iput-boolean v4, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->isBack:Z

    .line 1795
    iput-boolean v4, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->isRealVideoStart:Z

    .line 72
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 73
    .local v0, "mLayoutInflater":Landroid/view/LayoutInflater;
    iput-object p1, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->mActivity:Landroid/app/Activity;

    .line 74
    sget v1, Lcom/youku/android/player/R$layout;->yp_plugin_detail_play_interact:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->containerView:Landroid/view/View;

    .line 76
    if-eqz p2, :cond_0

    iget-object v1, p2, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v1, :cond_0

    .line 78
    iget-object v1, p2, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v1}, Lcom/youku/player/module/VideoUrlInfo;->getVid()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->video_id:Ljava/lang/String;

    .line 79
    :cond_0
    iget-object v1, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->containerView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/youku/player/plugin/PluginSimplePlayer;->addView(Landroid/view/View;)V

    .line 80
    invoke-direct {p0}, Lcom/youku/player/plugin/PluginSimplePlayer;->initPlayLayout()V

    .line 81
    return-void
.end method

.method static synthetic access$002(Lcom/youku/player/plugin/PluginSimplePlayer;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/youku/player/plugin/PluginSimplePlayer;
    .param p1, "x1"    # Z

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->error:Z

    return p1
.end method

.method static synthetic access$100(Lcom/youku/player/plugin/PluginSimplePlayer;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/youku/player/plugin/PluginSimplePlayer;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->retryView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/youku/player/plugin/PluginSimplePlayer;)Landroid/widget/SeekBar;
    .locals 1
    .param p0, "x0"    # Lcom/youku/player/plugin/PluginSimplePlayer;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->playLoadingBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/youku/player/plugin/PluginSimplePlayer;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/youku/player/plugin/PluginSimplePlayer;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->seekHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/youku/player/plugin/PluginSimplePlayer;)I
    .locals 1
    .param p0, "x0"    # Lcom/youku/player/plugin/PluginSimplePlayer;

    .prologue
    .line 45
    iget v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->seekcount:I

    return v0
.end method

.method static synthetic access$1202(Lcom/youku/player/plugin/PluginSimplePlayer;I)I
    .locals 0
    .param p0, "x0"    # Lcom/youku/player/plugin/PluginSimplePlayer;
    .param p1, "x1"    # I

    .prologue
    .line 45
    iput p1, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->seekcount:I

    return p1
.end method

.method static synthetic access$1208(Lcom/youku/player/plugin/PluginSimplePlayer;)I
    .locals 2
    .param p0, "x0"    # Lcom/youku/player/plugin/PluginSimplePlayer;

    .prologue
    .line 45
    iget v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->seekcount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->seekcount:I

    return v0
.end method

.method static synthetic access$1212(Lcom/youku/player/plugin/PluginSimplePlayer;I)I
    .locals 1
    .param p0, "x0"    # Lcom/youku/player/plugin/PluginSimplePlayer;
    .param p1, "x1"    # I

    .prologue
    .line 45
    iget v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->seekcount:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->seekcount:I

    return v0
.end method

.method static synthetic access$1300(Lcom/youku/player/plugin/PluginSimplePlayer;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/youku/player/plugin/PluginSimplePlayer;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->interactFrameLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/youku/player/plugin/PluginSimplePlayer;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/youku/player/plugin/PluginSimplePlayer;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->loadingInfoLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/youku/player/plugin/PluginSimplePlayer;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/youku/player/plugin/PluginSimplePlayer;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->loadInfoHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/youku/player/plugin/PluginSimplePlayer;)I
    .locals 1
    .param p0, "x0"    # Lcom/youku/player/plugin/PluginSimplePlayer;

    .prologue
    .line 45
    iget v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->loadinfoseek:I

    return v0
.end method

.method static synthetic access$1608(Lcom/youku/player/plugin/PluginSimplePlayer;)I
    .locals 2
    .param p0, "x0"    # Lcom/youku/player/plugin/PluginSimplePlayer;

    .prologue
    .line 45
    iget v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->loadinfoseek:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->loadinfoseek:I

    return v0
.end method

.method static synthetic access$1610(Lcom/youku/player/plugin/PluginSimplePlayer;)I
    .locals 2
    .param p0, "x0"    # Lcom/youku/player/plugin/PluginSimplePlayer;

    .prologue
    .line 45
    iget v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->loadinfoseek:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->loadinfoseek:I

    return v0
.end method

.method static synthetic access$1700(Lcom/youku/player/plugin/PluginSimplePlayer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/youku/player/plugin/PluginSimplePlayer;

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->loadinfoseekend:Z

    return v0
.end method

.method static synthetic access$1702(Lcom/youku/player/plugin/PluginSimplePlayer;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/youku/player/plugin/PluginSimplePlayer;
    .param p1, "x1"    # Z

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->loadinfoseekend:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/youku/player/plugin/PluginSimplePlayer;)Landroid/widget/SeekBar;
    .locals 1
    .param p0, "x0"    # Lcom/youku/player/plugin/PluginSimplePlayer;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->infoSeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/youku/player/plugin/PluginSimplePlayer;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/player/plugin/PluginSimplePlayer;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/youku/player/plugin/PluginSimplePlayer;->changePlayPause()V

    return-void
.end method

.method static synthetic access$200(Lcom/youku/player/plugin/PluginSimplePlayer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/youku/player/plugin/PluginSimplePlayer;

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->infoFail:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/youku/player/plugin/PluginSimplePlayer;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/player/plugin/PluginSimplePlayer;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/youku/player/plugin/PluginSimplePlayer;->enableController()V

    return-void
.end method

.method static synthetic access$2100(Lcom/youku/player/plugin/PluginSimplePlayer;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/youku/player/plugin/PluginSimplePlayer;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->userPlayButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/youku/player/plugin/PluginSimplePlayer;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/youku/player/plugin/PluginSimplePlayer;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->controlLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/youku/player/plugin/PluginSimplePlayer;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/player/plugin/PluginSimplePlayer;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/youku/player/plugin/PluginSimplePlayer;->hideTitle()V

    return-void
.end method

.method static synthetic access$2400(Lcom/youku/player/plugin/PluginSimplePlayer;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/player/plugin/PluginSimplePlayer;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/youku/player/plugin/PluginSimplePlayer;->hideControl()V

    return-void
.end method

.method static synthetic access$2500(Lcom/youku/player/plugin/PluginSimplePlayer;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/player/plugin/PluginSimplePlayer;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/youku/player/plugin/PluginSimplePlayer;->disableControllerHide()V

    return-void
.end method

.method static synthetic access$2600(Lcom/youku/player/plugin/PluginSimplePlayer;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/youku/player/plugin/PluginSimplePlayer;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->playTitleTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/youku/player/plugin/PluginSimplePlayer;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/player/plugin/PluginSimplePlayer;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/youku/player/plugin/PluginSimplePlayer;->disableController()V

    return-void
.end method

.method static synthetic access$2800(Lcom/youku/player/plugin/PluginSimplePlayer;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/player/plugin/PluginSimplePlayer;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/youku/player/plugin/PluginSimplePlayer;->hideLoadinfo()V

    return-void
.end method

.method static synthetic access$2900(Lcom/youku/player/plugin/PluginSimplePlayer;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/player/plugin/PluginSimplePlayer;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/youku/player/plugin/PluginSimplePlayer;->showRetryLayout()V

    return-void
.end method

.method static synthetic access$300(Lcom/youku/player/plugin/PluginSimplePlayer;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/player/plugin/PluginSimplePlayer;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/youku/player/plugin/PluginSimplePlayer;->hideShowControl()V

    return-void
.end method

.method static synthetic access$3000(Lcom/youku/player/plugin/PluginSimplePlayer;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/youku/player/plugin/PluginSimplePlayer;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/youku/player/plugin/PluginSimplePlayer;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/player/plugin/PluginSimplePlayer;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/youku/player/plugin/PluginSimplePlayer;->hideRetryLayout()V

    return-void
.end method

.method static synthetic access$3200(Lcom/youku/player/plugin/PluginSimplePlayer;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/youku/player/plugin/PluginSimplePlayer;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->endPageView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/youku/player/plugin/PluginSimplePlayer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/youku/player/plugin/PluginSimplePlayer;

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->isLoading:Z

    return v0
.end method

.method static synthetic access$402(Lcom/youku/player/plugin/PluginSimplePlayer;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/youku/player/plugin/PluginSimplePlayer;
    .param p1, "x1"    # Z

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->isLoading:Z

    return p1
.end method

.method static synthetic access$500(Lcom/youku/player/plugin/PluginSimplePlayer;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lcom/youku/player/plugin/PluginSimplePlayer;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->play_pauseButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$600(Lcom/youku/player/plugin/PluginSimplePlayer;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/player/plugin/PluginSimplePlayer;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/youku/player/plugin/PluginSimplePlayer;->playNextVideo()V

    return-void
.end method

.method static synthetic access$700(Lcom/youku/player/plugin/PluginSimplePlayer;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/player/plugin/PluginSimplePlayer;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/youku/player/plugin/PluginSimplePlayer;->hideEndPage()V

    return-void
.end method

.method static synthetic access$800(Lcom/youku/player/plugin/PluginSimplePlayer;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/player/plugin/PluginSimplePlayer;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/youku/player/plugin/PluginSimplePlayer;->restartFromComplete()V

    return-void
.end method

.method static synthetic access$900(Lcom/youku/player/plugin/PluginSimplePlayer;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/youku/player/plugin/PluginSimplePlayer;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->seekLoadingContainerView:Landroid/view/View;

    return-object v0
.end method

.method private changePlayPause()V
    .locals 2

    .prologue
    .line 719
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->play_pauseButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-nez v0, :cond_1

    .line 731
    :cond_0
    :goto_0
    return-void

    .line 721
    :cond_1
    iget-boolean v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->isLoading:Z

    if-nez v0, :cond_0

    .line 724
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 725
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->play_pauseButton:Landroid/widget/ImageButton;

    sget v1, Lcom/youku/android/player/R$drawable;->play_btn_pause_big_detail:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 728
    :cond_2
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->play_pauseButton:Landroid/widget/ImageButton;

    sget v1, Lcom/youku/android/player/R$drawable;->play_btn_play_big_detail:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0
.end method

.method private disableController()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1638
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->controlLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 1639
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->controlLayout:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1640
    :cond_0
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->play_pauseButton:Landroid/widget/ImageButton;

    invoke-direct {p0, v2, v0}, Lcom/youku/player/plugin/PluginSimplePlayer;->setClickable(ZLandroid/view/View;)V

    .line 1641
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->videoBar:Landroid/widget/SeekBar;

    invoke-direct {p0, v2, v0}, Lcom/youku/player/plugin/PluginSimplePlayer;->setClickable(ZLandroid/view/View;)V

    .line 1642
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->mContainerLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0, v2, v0}, Lcom/youku/player/plugin/PluginSimplePlayer;->setClickable(ZLandroid/view/View;)V

    .line 1643
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->full_screenButton:Landroid/widget/ImageButton;

    invoke-direct {p0, v2, v0}, Lcom/youku/player/plugin/PluginSimplePlayer;->setClickable(ZLandroid/view/View;)V

    .line 1644
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->videoBar:Landroid/widget/SeekBar;

    invoke-direct {p0, v2, v0}, Lcom/youku/player/plugin/PluginSimplePlayer;->setClickable(ZLandroid/view/View;)V

    .line 1645
    invoke-direct {p0}, Lcom/youku/player/plugin/PluginSimplePlayer;->hideTitle()V

    .line 1646
    return-void
.end method

.method private disableControllerHide()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1652
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->play_pauseButton:Landroid/widget/ImageButton;

    invoke-direct {p0, v1, v0}, Lcom/youku/player/plugin/PluginSimplePlayer;->setClickable(ZLandroid/view/View;)V

    .line 1653
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->videoBar:Landroid/widget/SeekBar;

    invoke-direct {p0, v1, v0}, Lcom/youku/player/plugin/PluginSimplePlayer;->setClickable(ZLandroid/view/View;)V

    .line 1654
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->mContainerLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0, v1, v0}, Lcom/youku/player/plugin/PluginSimplePlayer;->setClickable(ZLandroid/view/View;)V

    .line 1655
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->full_screenButton:Landroid/widget/ImageButton;

    invoke-direct {p0, v1, v0}, Lcom/youku/player/plugin/PluginSimplePlayer;->setClickable(ZLandroid/view/View;)V

    .line 1656
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->videoBar:Landroid/widget/SeekBar;

    invoke-direct {p0, v1, v0}, Lcom/youku/player/plugin/PluginSimplePlayer;->setClickable(ZLandroid/view/View;)V

    .line 1657
    return-void
.end method

.method private enableController()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1663
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->play_pauseButton:Landroid/widget/ImageButton;

    invoke-direct {p0, v1, v0}, Lcom/youku/player/plugin/PluginSimplePlayer;->setClickable(ZLandroid/view/View;)V

    .line 1664
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->videoBar:Landroid/widget/SeekBar;

    invoke-direct {p0, v1, v0}, Lcom/youku/player/plugin/PluginSimplePlayer;->setClickable(ZLandroid/view/View;)V

    .line 1665
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->mContainerLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0, v1, v0}, Lcom/youku/player/plugin/PluginSimplePlayer;->setClickable(ZLandroid/view/View;)V

    .line 1666
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->full_screenButton:Landroid/widget/ImageButton;

    invoke-direct {p0, v1, v0}, Lcom/youku/player/plugin/PluginSimplePlayer;->setClickable(ZLandroid/view/View;)V

    .line 1667
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->videoBar:Landroid/widget/SeekBar;

    invoke-direct {p0, v1, v0}, Lcom/youku/player/plugin/PluginSimplePlayer;->setClickable(ZLandroid/view/View;)V

    .line 1668
    return-void
.end method

.method private goEndPage()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1500
    iput-boolean v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->firstLoaded:Z

    .line 1501
    iput-boolean v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->isRealVideoStart:Z

    .line 1502
    invoke-direct {p0}, Lcom/youku/player/plugin/PluginSimplePlayer;->hideLoadinfo()V

    .line 1503
    invoke-virtual {p0}, Lcom/youku/player/plugin/PluginSimplePlayer;->hideLoading()V

    .line 1504
    invoke-direct {p0}, Lcom/youku/player/plugin/PluginSimplePlayer;->hideRetryLayout()V

    .line 1505
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v0, :cond_0

    .line 1507
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->release()V

    .line 1508
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->setFirstUnloaded()V

    .line 1509
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v0}, Lcom/youku/player/module/VideoUrlInfo;->getHaveNext()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1510
    invoke-direct {p0}, Lcom/youku/player/plugin/PluginSimplePlayer;->goReplayNextPage()V

    .line 1515
    :cond_0
    :goto_0
    return-void

    .line 1512
    :cond_1
    invoke-direct {p0}, Lcom/youku/player/plugin/PluginSimplePlayer;->goReplayPage()V

    goto :goto_0
.end method

.method private goReplayNextPage()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1480
    iput-boolean v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->firstLoaded:Z

    .line 1481
    iput-boolean v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->isRealVideoStart:Z

    .line 1482
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 1483
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/youku/player/plugin/PluginSimplePlayer$31;

    invoke-direct {v1, p0}, Lcom/youku/player/plugin/PluginSimplePlayer$31;-><init>(Lcom/youku/player/plugin/PluginSimplePlayer;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1494
    :cond_0
    return-void
.end method

.method private goReplayPage()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1437
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->TAG:Ljava/lang/String;

    const-string v1, "goReplayPage"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1438
    iput-boolean v2, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->firstLoaded:Z

    .line 1439
    iput-boolean v2, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->isRealVideoStart:Z

    .line 1440
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 1441
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/youku/player/plugin/PluginSimplePlayer$29;

    invoke-direct {v1, p0}, Lcom/youku/player/plugin/PluginSimplePlayer$29;-><init>(Lcom/youku/player/plugin/PluginSimplePlayer;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1457
    :cond_0
    return-void
.end method

.method private hideControl()V
    .locals 2

    .prologue
    .line 813
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->controlLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 814
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->controlLayout:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 815
    :cond_0
    return-void
.end method

.method private hideEndPage()V
    .locals 2

    .prologue
    .line 1460
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 1461
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/youku/player/plugin/PluginSimplePlayer$30;

    invoke-direct {v1, p0}, Lcom/youku/player/plugin/PluginSimplePlayer$30;-><init>(Lcom/youku/player/plugin/PluginSimplePlayer;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1476
    :cond_0
    return-void
.end method

.method private hideLoadinfo()V
    .locals 2

    .prologue
    .line 552
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 553
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/youku/player/plugin/PluginSimplePlayer$13;

    invoke-direct {v1, p0}, Lcom/youku/player/plugin/PluginSimplePlayer$13;-><init>(Lcom/youku/player/plugin/PluginSimplePlayer;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 564
    :cond_0
    return-void
.end method

.method private hideRetryLayout()V
    .locals 2

    .prologue
    .line 1202
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 1203
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/youku/player/plugin/PluginSimplePlayer$26;

    invoke-direct {v1, p0}, Lcom/youku/player/plugin/PluginSimplePlayer$26;-><init>(Lcom/youku/player/plugin/PluginSimplePlayer;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1212
    :cond_0
    return-void
.end method

.method private hideShowControl()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 746
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->controlLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->play_pauseButton:Landroid/widget/ImageButton;

    if-nez v0, :cond_1

    .line 768
    :cond_0
    :goto_0
    return-void

    .line 748
    :cond_1
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->controlLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 749
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->controlLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 750
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->play_pauseButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    .line 752
    :cond_2
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->controlLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 753
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->play_pauseButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 754
    iget-boolean v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->isLoading:Z

    if-eqz v0, :cond_3

    .line 755
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->play_pauseButton:Landroid/widget/ImageButton;

    sget v1, Lcom/youku/android/player/R$drawable;->play_btn_pause_big_detail_down:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 759
    :cond_3
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 761
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->play_pauseButton:Landroid/widget/ImageButton;

    sget v1, Lcom/youku/android/player/R$drawable;->play_btn_pause_big_detail:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 764
    :cond_4
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->play_pauseButton:Landroid/widget/ImageButton;

    sget v1, Lcom/youku/android/player/R$drawable;->play_btn_play_big_detail:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0
.end method

.method private hideTitle()V
    .locals 2

    .prologue
    .line 803
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->titleLayoutPort:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 804
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->titleLayoutPort:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 805
    :cond_0
    return-void
.end method

.method private initEndPage()V
    .locals 3

    .prologue
    .line 299
    iget-object v1, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->mActivity:Landroid/app/Activity;

    if-nez v1, :cond_1

    .line 341
    :cond_0
    :goto_0
    return-void

    .line 301
    :cond_1
    iget-object v1, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 302
    .local v0, "mLayoutInflater":Landroid/view/LayoutInflater;
    if-eqz v0, :cond_0

    .line 304
    sget v1, Lcom/youku/android/player/R$layout;->yp_detail_play_end_page:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->endPageView:Landroid/view/View;

    .line 306
    iget-object v1, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->endPageView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 308
    iget-object v1, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->endPageView:Landroid/view/View;

    sget v2, Lcom/youku/android/player/R$id;->ll_next_play:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->nextLayout:Landroid/widget/LinearLayout;

    .line 309
    iget-object v1, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->endPageView:Landroid/view/View;

    sget v2, Lcom/youku/android/player/R$id;->ll_replay:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->replayLayout:Landroid/widget/LinearLayout;

    .line 310
    iget-object v1, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->nextLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_2

    .line 311
    iget-object v1, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->nextLayout:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/youku/player/plugin/PluginSimplePlayer$6;

    invoke-direct {v2, p0}, Lcom/youku/player/plugin/PluginSimplePlayer$6;-><init>(Lcom/youku/player/plugin/PluginSimplePlayer;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 322
    :cond_2
    iget-object v1, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->replayLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    .line 323
    iget-object v1, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->replayLayout:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/youku/player/plugin/PluginSimplePlayer$7;

    invoke-direct {v2, p0}, Lcom/youku/player/plugin/PluginSimplePlayer$7;-><init>(Lcom/youku/player/plugin/PluginSimplePlayer;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private initLoadInfoPage()V
    .locals 3

    .prologue
    .line 347
    iget-object v1, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->mActivity:Landroid/app/Activity;

    if-nez v1, :cond_1

    .line 359
    :cond_0
    :goto_0
    return-void

    .line 349
    :cond_1
    iget-object v1, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 350
    .local v0, "mLayoutInflater":Landroid/view/LayoutInflater;
    if-eqz v0, :cond_0

    .line 352
    sget v1, Lcom/youku/android/player/R$layout;->yp_detail_loading_info_page:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->loadingInfoLayout:Landroid/widget/RelativeLayout;

    .line 354
    iget-object v1, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->loadingInfoLayout:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_0

    .line 356
    iget-object v1, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->loadingInfoLayout:Landroid/widget/RelativeLayout;

    sget v2, Lcom/youku/android/player/R$id;->loading_info_seekbar:I

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    iput-object v1, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->infoSeekBar:Landroid/widget/SeekBar;

    goto :goto_0
.end method

.method private initPlayLayout()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 165
    iget-object v1, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->containerView:Landroid/view/View;

    if-nez v1, :cond_0

    .line 289
    :goto_0
    return-void

    .line 167
    :cond_0
    iget-object v1, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->containerView:Landroid/view/View;

    sget v2, Lcom/youku/android/player/R$id;->seek_loading_bg:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->seekLoadingContainerView:Landroid/view/View;

    .line 169
    iget-object v1, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->seekLoadingContainerView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 170
    iget-object v1, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->containerView:Landroid/view/View;

    sget v2, Lcom/youku/android/player/R$id;->ll_detail_container:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->mContainerLayout:Landroid/widget/LinearLayout;

    .line 172
    iget-object v1, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->mContainerLayout:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/youku/player/plugin/PluginSimplePlayer$2;

    invoke-direct {v2, p0}, Lcom/youku/player/plugin/PluginSimplePlayer$2;-><init>(Lcom/youku/player/plugin/PluginSimplePlayer;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    invoke-static {}, Lcom/baseproject/utils/UIUtils;->hasHoneycomb()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 180
    iget-object v1, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->mContainerLayout:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/youku/player/plugin/PluginSimplePlayer$3;

    invoke-direct {v2, p0}, Lcom/youku/player/plugin/PluginSimplePlayer$3;-><init>(Lcom/youku/player/plugin/PluginSimplePlayer;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 189
    :cond_1
    iget-object v1, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->containerView:Landroid/view/View;

    sget v2, Lcom/youku/android/player/R$id;->fl_interact:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->interactFrameLayout:Landroid/widget/FrameLayout;

    .line 191
    iget-object v1, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->mContainerLayout:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 193
    iget-object v1, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->containerView:Landroid/view/View;

    sget v2, Lcom/youku/android/player/R$id;->layout_play_control:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->controlLayout:Landroid/widget/RelativeLayout;

    .line 195
    iget-object v1, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->controlLayout:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_2

    .line 196
    iget-object v1, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->controlLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 197
    :cond_2
    iget-object v1, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->containerView:Landroid/view/View;

    sget v2, Lcom/youku/android/player/R$id;->sb_detail_play_progress:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    iput-object v1, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->videoBar:Landroid/widget/SeekBar;

    .line 199
    iget-object v1, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->containerView:Landroid/view/View;

    sget v2, Lcom/youku/android/player/R$id;->total_time:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->totalTime:Landroid/widget/TextView;

    .line 200
    iget-object v1, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->containerView:Landroid/view/View;

    sget v2, Lcom/youku/android/player/R$id;->current_time:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->currentTime:Landroid/widget/TextView;

    .line 201
    iget-object v1, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->videoBar:Landroid/widget/SeekBar;

    if-eqz v1, :cond_3

    .line 202
    iget-object v1, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->videoBar:Landroid/widget/SeekBar;

    iget-object v2, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->mBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 203
    :cond_3
    iget-object v1, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->containerView:Landroid/view/View;

    sget v2, Lcom/youku/android/player/R$id;->ib_detail_play_control:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->play_pauseButton:Landroid/widget/ImageButton;

    .line 205
    iget-object v1, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->play_pauseButton:Landroid/widget/ImageButton;

    new-instance v2, Lcom/youku/player/plugin/PluginSimplePlayer$4;

    invoke-direct {v2, p0}, Lcom/youku/player/plugin/PluginSimplePlayer$4;-><init>(Lcom/youku/player/plugin/PluginSimplePlayer;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 245
    iget-object v1, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->containerView:Landroid/view/View;

    sget v2, Lcom/youku/android/player/R$id;->ib_detail_play_full:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->full_screenButton:Landroid/widget/ImageButton;

    .line 247
    iget-object v1, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->full_screenButton:Landroid/widget/ImageButton;

    new-instance v2, Lcom/youku/player/plugin/PluginSimplePlayer$5;

    invoke-direct {v2, p0}, Lcom/youku/player/plugin/PluginSimplePlayer$5;-><init>(Lcom/youku/player/plugin/PluginSimplePlayer;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 259
    iget-object v1, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->containerView:Landroid/view/View;

    sget v2, Lcom/youku/android/player/R$id;->tv_detail_play_title:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->playTitleTextView:Landroid/widget/TextView;

    .line 261
    iget-object v1, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->containerView:Landroid/view/View;

    sget v2, Lcom/youku/android/player/R$id;->layout_title:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->titleLayoutPort:Landroid/widget/LinearLayout;

    .line 263
    iget-object v1, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->titleLayoutPort:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 265
    invoke-direct {p0}, Lcom/youku/player/plugin/PluginSimplePlayer;->initSeekLoading()V

    .line 266
    iget-object v1, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v1, :cond_4

    .line 268
    iget-object v1, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v1}, Lcom/youku/player/module/VideoUrlInfo;->getDurationMills()I

    move-result v0

    .line 269
    .local v0, "duration":I
    iget-object v1, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->videoBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setMax(I)V

    .line 271
    .end local v0    # "duration":I
    :cond_4
    iget-object v1, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->containerView:Landroid/view/View;

    sget v2, Lcom/youku/android/player/R$id;->ib_user_play:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->userPlayButton:Landroid/widget/ImageView;

    .line 273
    iget-object v1, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->userPlayButton:Landroid/widget/ImageView;

    if-eqz v1, :cond_5

    .line 274
    iget-object v1, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->userPlayButton:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->userPlayClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 275
    iget-object v1, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->userPlayButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 278
    :cond_5
    iget-object v1, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v1, :cond_6

    .line 279
    iget-object v1, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v1}, Lcom/youku/player/plugin/MediaPlayerDelegate;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 280
    iget-object v1, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->play_pauseButton:Landroid/widget/ImageButton;

    sget v2, Lcom/youku/android/player/R$drawable;->play_btn_pause_big_detail:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 286
    :cond_6
    :goto_1
    invoke-direct {p0}, Lcom/youku/player/plugin/PluginSimplePlayer;->initRetry()V

    .line 287
    invoke-direct {p0}, Lcom/youku/player/plugin/PluginSimplePlayer;->initEndPage()V

    .line 288
    invoke-direct {p0}, Lcom/youku/player/plugin/PluginSimplePlayer;->initLoadInfoPage()V

    goto/16 :goto_0

    .line 283
    :cond_7
    iget-object v1, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->play_pauseButton:Landroid/widget/ImageButton;

    sget v2, Lcom/youku/android/player/R$drawable;->play_btn_play_big_detail:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_1
.end method

.method private initRetry()V
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->containerView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 158
    :cond_0
    :goto_0
    return-void

    .line 116
    :cond_1
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->containerView:Landroid/view/View;

    sget v1, Lcom/youku/android/player/R$id;->view_restart:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->retryView:Landroid/view/View;

    .line 117
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->containerView:Landroid/view/View;

    sget v1, Lcom/youku/android/player/R$id;->go_retry:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->goRetry:Landroid/widget/LinearLayout;

    .line 118
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->goRetry:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->goRetry:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/youku/player/plugin/PluginSimplePlayer$1;

    invoke-direct {v1, p0}, Lcom/youku/player/plugin/PluginSimplePlayer$1;-><init>(Lcom/youku/player/plugin/PluginSimplePlayer;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private initSeekLoading()V
    .locals 2

    .prologue
    .line 370
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->seekLoadingContainerView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 404
    :cond_0
    :goto_0
    return-void

    .line 372
    :cond_1
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->seekLoadingContainerView:Landroid/view/View;

    sget v1, Lcom/youku/android/player/R$id;->detail_play_load_name:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->playNameTextView:Landroid/widget/TextView;

    .line 374
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->seekLoadingContainerView:Landroid/view/View;

    sget v1, Lcom/youku/android/player/R$id;->loading_seekbar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->playLoadingBar:Landroid/widget/SeekBar;

    .line 376
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->seekLoadingContainerView:Landroid/view/View;

    sget v1, Lcom/youku/android/player/R$id;->loading_tips:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->loadingTips:Landroid/widget/TextView;

    .line 378
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->playLoadingBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    .line 379
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->playLoadingBar:Landroid/widget/SeekBar;

    new-instance v1, Lcom/youku/player/plugin/PluginSimplePlayer$8;

    invoke-direct {v1, p0}, Lcom/youku/player/plugin/PluginSimplePlayer$8;-><init>(Lcom/youku/player/plugin/PluginSimplePlayer;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    goto :goto_0
.end method

.method private playANewVideo()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1683
    iput-boolean v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->firstLoaded:Z

    .line 1684
    iput-boolean v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->isRealVideoStart:Z

    .line 1685
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->userPlayButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 1686
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->userPlayButton:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1687
    :cond_0
    invoke-virtual {p0}, Lcom/youku/player/plugin/PluginSimplePlayer;->clearPlayState()V

    .line 1688
    invoke-direct {p0}, Lcom/youku/player/plugin/PluginSimplePlayer;->hideEndPage()V

    .line 1689
    invoke-direct {p0}, Lcom/youku/player/plugin/PluginSimplePlayer;->disableController()V

    .line 1690
    invoke-direct {p0}, Lcom/youku/player/plugin/PluginSimplePlayer;->restartFromComplete()V

    .line 1691
    return-void
.end method

.method private playLocalNext()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 1418
    iget-object v2, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v2, v2, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-nez v2, :cond_1

    .line 1433
    :cond_0
    :goto_0
    return-void

    .line 1421
    :cond_1
    sget-object v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mICacheInfo:Lcom/youku/player/apiservice/ICacheInfo;

    .line 1422
    .local v0, "download":Lcom/youku/player/apiservice/ICacheInfo;
    iget-object v2, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v2, v2, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v2}, Lcom/youku/player/module/VideoUrlInfo;->getVid()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/youku/player/apiservice/ICacheInfo;->getNextDownloadInfo(Ljava/lang/String;)Lcom/youku/player/module/VideoCacheInfo;

    move-result-object v1

    .line 1424
    .local v1, "info":Lcom/youku/player/module/VideoCacheInfo;
    if-nez v1, :cond_2

    .line 1425
    iget-object v2, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v2}, Lcom/youku/player/plugin/MediaPlayerDelegate;->finishActivity()V

    goto :goto_0

    .line 1428
    :cond_2
    iput-boolean v3, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->firstLoaded:Z

    .line 1429
    iput-boolean v3, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->isRealVideoStart:Z

    .line 1430
    iget-object v2, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v3, v1, Lcom/youku/player/module/VideoCacheInfo;->videoid:Ljava/lang/String;

    const-string v4, "local"

    iget-object v5, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v5, v5, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v5}, Lcom/youku/player/module/VideoUrlInfo;->getPlayType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/youku/player/plugin/MediaPlayerDelegate;->playVideo(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private playNextVideo()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1378
    invoke-direct {p0}, Lcom/youku/player/plugin/PluginSimplePlayer;->restartFromComplete()V

    .line 1379
    invoke-virtual {p0}, Lcom/youku/player/plugin/PluginSimplePlayer;->clearPlayState()V

    .line 1380
    iput-boolean v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->firstLoaded:Z

    .line 1381
    iput-boolean v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->isRealVideoStart:Z

    .line 1382
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-nez v0, :cond_1

    .line 1412
    :cond_0
    :goto_0
    return-void

    .line 1385
    :cond_1
    invoke-static {}, Lcom/baseproject/utils/Util;->hasInternet()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1386
    invoke-direct {p0}, Lcom/youku/player/plugin/PluginSimplePlayer;->playLocalNext()V

    goto :goto_0

    .line 1406
    :cond_2
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v0}, Lcom/youku/player/module/VideoUrlInfo;->getHaveNext()I

    move-result v0

    if-nez v0, :cond_3

    .line 1407
    invoke-direct {p0}, Lcom/youku/player/plugin/PluginSimplePlayer;->goEndPage()V

    goto :goto_0

    .line 1410
    :cond_3
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v1, v1, Lcom/youku/player/module/VideoUrlInfo;->nextVideoId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/youku/player/plugin/MediaPlayerDelegate;->playVideo(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private restartFromComplete()V
    .locals 1

    .prologue
    .line 1250
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v0, :cond_0

    .line 1251
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->clearEnd()V

    .line 1252
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->setOrientionDisable()V

    .line 1254
    :cond_0
    return-void
.end method

.method private setClickable(ZLandroid/view/View;)V
    .locals 0
    .param p1, "state"    # Z
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 1629
    if-nez p2, :cond_0

    .line 1632
    :goto_0
    return-void

    .line 1631
    :cond_0
    invoke-virtual {p2, p1}, Landroid/view/View;->setClickable(Z)V

    goto :goto_0
.end method

.method private showControl()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 818
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->controlLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 819
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->controlLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 820
    :cond_0
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 821
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->play_pauseButton:Landroid/widget/ImageButton;

    sget v1, Lcom/youku/android/player/R$drawable;->play_btn_pause_big_detail:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 828
    :goto_0
    return-void

    .line 824
    :cond_1
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->play_pauseButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 825
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->play_pauseButton:Landroid/widget/ImageButton;

    sget v1, Lcom/youku/android/player/R$drawable;->play_btn_play_big_detail:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0
.end method

.method private showHideTitle()V
    .locals 1

    .prologue
    .line 792
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->titleLayoutPort:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    .line 800
    :goto_0
    return-void

    .line 794
    :cond_0
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->titleLayoutPort:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 795
    invoke-direct {p0}, Lcom/youku/player/plugin/PluginSimplePlayer;->hideTitle()V

    goto :goto_0

    .line 797
    :cond_1
    invoke-direct {p0}, Lcom/youku/player/plugin/PluginSimplePlayer;->showTitle()V

    goto :goto_0
.end method

.method private showLoadinfo()V
    .locals 2

    .prologue
    .line 533
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 534
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/youku/player/plugin/PluginSimplePlayer$12;

    invoke-direct {v1, p0}, Lcom/youku/player/plugin/PluginSimplePlayer$12;-><init>(Lcom/youku/player/plugin/PluginSimplePlayer;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 546
    :cond_0
    return-void
.end method

.method private showRetryLayout()V
    .locals 2

    .prologue
    .line 1187
    invoke-direct {p0}, Lcom/youku/player/plugin/PluginSimplePlayer;->hideEndPage()V

    .line 1188
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 1189
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/youku/player/plugin/PluginSimplePlayer$25;

    invoke-direct {v1, p0}, Lcom/youku/player/plugin/PluginSimplePlayer$25;-><init>(Lcom/youku/player/plugin/PluginSimplePlayer;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1198
    :cond_0
    return-void
.end method

.method private showTitle()V
    .locals 2

    .prologue
    .line 808
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->titleLayoutPort:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 809
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->titleLayoutPort:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 810
    :cond_0
    return-void
.end method

.method private startPlay()V
    .locals 2

    .prologue
    .line 662
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-nez v0, :cond_1

    .line 672
    :cond_0
    :goto_0
    return-void

    .line 664
    :cond_1
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-boolean v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isADShowing:Z

    if-eqz v0, :cond_2

    .line 665
    invoke-direct {p0}, Lcom/youku/player/plugin/PluginSimplePlayer;->startPlayByAdButton()V

    goto :goto_0

    .line 667
    :cond_2
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->start()V

    .line 668
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->play_pauseButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 669
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->play_pauseButton:Landroid/widget/ImageButton;

    sget v1, Lcom/youku/android/player/R$drawable;->play_btn_pause_big_detail:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0
.end method

.method private startPlayByAdButton()V
    .locals 2

    .prologue
    .line 675
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_1

    .line 686
    :cond_0
    :goto_0
    return-void

    .line 677
    :cond_1
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-boolean v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isPause:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->isAdvShowFinished()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 678
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isPause:Z

    goto :goto_0

    .line 680
    :cond_2
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->start()V

    .line 681
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v0}, Lcom/youku/player/module/VideoUrlInfo;->isAdvEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 683
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v1}, Lcom/youku/player/plugin/MediaPlayerDelegate;->getAdPausedPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/youku/player/plugin/MediaPlayerDelegate;->seekToPausedADShowing(I)V

    goto :goto_0
.end method


# virtual methods
.method public OnCurrentPositionChangeListener(I)V
    .locals 1
    .param p1, "currentPosition"    # I

    .prologue
    .line 1560
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->videoBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    .line 1561
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->videoBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1563
    :cond_0
    invoke-virtual {p0, p1}, Lcom/youku/player/plugin/PluginSimplePlayer;->onCurrentPostionUpdate(I)V

    .line 1565
    return-void
.end method

.method public OnPreparedListener()V
    .locals 2

    .prologue
    .line 1094
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->TAG:Ljava/lang/String;

    const-string v1, " OnPreparedListener()"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1095
    const/4 v0, 0x0

    iput v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->seekcount:I

    .line 1096
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->retryView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1097
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->retryView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1098
    :cond_0
    return-void
.end method

.method public OnSeekCompleteListener()V
    .locals 2

    .prologue
    .line 1102
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->isLoading:Z

    .line 1103
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->videoBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    .line 1104
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/youku/player/plugin/PluginSimplePlayer$22;

    invoke-direct {v1, p0}, Lcom/youku/player/plugin/PluginSimplePlayer$22;-><init>(Lcom/youku/player/plugin/PluginSimplePlayer;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1112
    :cond_0
    return-void
.end method

.method public OnTimeoutListener()V
    .locals 2

    .prologue
    .line 1121
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 1136
    :goto_0
    return-void

    .line 1123
    :cond_0
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/youku/player/plugin/PluginSimplePlayer$23;

    invoke-direct {v1, p0}, Lcom/youku/player/plugin/PluginSimplePlayer$23;-><init>(Lcom/youku/player/plugin/PluginSimplePlayer;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1130
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->TAG:Ljava/lang/String;

    const-string v1, " OnTimeoutListener()"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public OnVideoSizeChangedListener(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 1117
    return-void
.end method

.method public alertRetry(Landroid/app/Activity;I)V
    .locals 1
    .param p1, "c"    # Landroid/app/Activity;
    .param p2, "msgId"    # I

    .prologue
    .line 1067
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1090
    :goto_0
    return-void

    .line 1070
    :cond_0
    new-instance v0, Lcom/youku/player/plugin/PluginSimplePlayer$21;

    invoke-direct {v0, p0}, Lcom/youku/player/plugin/PluginSimplePlayer$21;-><init>(Lcom/youku/player/plugin/PluginSimplePlayer;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public back()V
    .locals 1

    .prologue
    .line 1762
    iget-boolean v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->firstLoaded:Z

    if-eqz v0, :cond_0

    .line 1763
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->isBack:Z

    .line 1764
    invoke-direct {p0}, Lcom/youku/player/plugin/PluginSimplePlayer;->showTitle()V

    .line 1765
    invoke-direct {p0}, Lcom/youku/player/plugin/PluginSimplePlayer;->showControl()V

    .line 1766
    invoke-virtual {p0}, Lcom/youku/player/plugin/PluginSimplePlayer;->userAction()V

    .line 1768
    :cond_0
    return-void
.end method

.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 87
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->seekHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 88
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->seekendHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 89
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->loadInfoHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 90
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->hideHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 91
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->playHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 92
    iput-object v1, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->playLoadingBar:Landroid/widget/SeekBar;

    .line 93
    iput-object v1, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->seekLoadingContainerView:Landroid/view/View;

    .line 94
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->mContainerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    iput-object v1, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->mContainerLayout:Landroid/widget/LinearLayout;

    .line 96
    iput-object v1, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->interactFrameLayout:Landroid/widget/FrameLayout;

    .line 97
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->userPlayButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->userPlayButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 99
    iput-object v1, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->userPlayButton:Landroid/widget/ImageView;

    .line 100
    iput-object v1, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->containerView:Landroid/view/View;

    .line 101
    return-void
.end method

.method public clearPlayState()V
    .locals 2

    .prologue
    .line 886
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 906
    :goto_0
    return-void

    .line 888
    :cond_0
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/youku/player/plugin/PluginSimplePlayer$18;

    invoke-direct {v1, p0}, Lcom/youku/player/plugin/PluginSimplePlayer$18;-><init>(Lcom/youku/player/plugin/PluginSimplePlayer;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public getTitleHeight()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 614
    iget-object v2, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->playTitleTextView:Landroid/widget/TextView;

    if-nez v2, :cond_1

    .line 621
    :cond_0
    :goto_0
    return v1

    .line 616
    :cond_1
    iget-object v2, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->playTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 618
    .local v0, "mParams":Landroid/widget/LinearLayout$LayoutParams;
    if-eqz v0, :cond_0

    .line 619
    iget v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    goto :goto_0
.end method

.method public hideLoading()V
    .locals 2

    .prologue
    .line 465
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 479
    :goto_0
    return-void

    .line 467
    :cond_0
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/youku/player/plugin/PluginSimplePlayer$9;

    invoke-direct {v1, p0}, Lcom/youku/player/plugin/PluginSimplePlayer$9;-><init>(Lcom/youku/player/plugin/PluginSimplePlayer;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public newVideo()V
    .locals 0

    .prologue
    .line 1577
    return-void
.end method

.method public onADplaying()V
    .locals 0

    .prologue
    .line 1835
    return-void
.end method

.method public onBufferingUpdateListener(I)V
    .locals 2
    .param p1, "percent"    # I

    .prologue
    .line 912
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 935
    :goto_0
    return-void

    .line 914
    :cond_0
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/youku/player/plugin/PluginSimplePlayer$19;

    invoke-direct {v1, p0, p1}, Lcom/youku/player/plugin/PluginSimplePlayer$19;-><init>(Lcom/youku/player/plugin/PluginSimplePlayer;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onClearUpDownFav()V
    .locals 0

    .prologue
    .line 1850
    return-void
.end method

.method public onCompletionListener()V
    .locals 2

    .prologue
    .line 939
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->error:Z

    if-eqz v0, :cond_1

    .line 964
    :cond_0
    :goto_0
    return-void

    .line 941
    :cond_1
    iget-boolean v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->pluginEnable:Z

    if-eqz v0, :cond_0

    .line 944
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/youku/player/plugin/PluginSimplePlayer$20;

    invoke-direct {v1, p0}, Lcom/youku/player/plugin/PluginSimplePlayer$20;-><init>(Lcom/youku/player/plugin/PluginSimplePlayer;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method protected onContainerClick()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 771
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->controlLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->titleLayoutPort:Landroid/widget/LinearLayout;

    if-nez v0, :cond_1

    .line 788
    :cond_0
    :goto_0
    return-void

    .line 773
    :cond_1
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->hideHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 774
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->hideHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 775
    :cond_2
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->controlLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->titleLayoutPort:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 777
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->controlLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 780
    :cond_3
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->controlLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_4

    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->titleLayoutPort:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    .line 782
    invoke-direct {p0}, Lcom/youku/player/plugin/PluginSimplePlayer;->hideTitle()V

    goto :goto_0

    .line 785
    :cond_4
    invoke-direct {p0}, Lcom/youku/player/plugin/PluginSimplePlayer;->hideShowControl()V

    .line 786
    invoke-direct {p0}, Lcom/youku/player/plugin/PluginSimplePlayer;->showHideTitle()V

    .line 787
    invoke-virtual {p0}, Lcom/youku/player/plugin/PluginSimplePlayer;->userAction()V

    goto :goto_0
.end method

.method protected onCurrentPostionUpdate(I)V
    .locals 6
    .param p1, "currentPostion"    # I

    .prologue
    .line 1519
    invoke-direct {p0}, Lcom/youku/player/plugin/PluginSimplePlayer;->enableController()V

    .line 1520
    iget-object v2, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->userPlayButton:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    .line 1521
    iget-object v2, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->userPlayButton:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1522
    :cond_0
    iget-object v2, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v2, v2, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-boolean v2, v2, Lcom/youku/player/plugin/MediaPlayerDelegate;->isADShowing:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-boolean v2, v2, Lcom/youku/player/plugin/MediaPlayerDelegate;->isReleased:Z

    if-eqz v2, :cond_2

    .line 1556
    :cond_1
    :goto_0
    return-void

    .line 1526
    :cond_2
    invoke-static {}, Lcom/youku/player/goplay/Profile;->isSkipHeadAndTail()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-boolean v2, v2, Lcom/youku/player/plugin/MediaPlayerDelegate;->isFullScreen:Z

    if-nez v2, :cond_5

    .line 1527
    iget-object v2, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v2, v2, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v2}, Lcom/youku/player/module/VideoUrlInfo;->isHasHead()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1528
    iget-object v2, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v2, v2, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v2}, Lcom/youku/player/module/VideoUrlInfo;->getHeadPosition()I

    move-result v0

    .line 1530
    .local v0, "headPosition":I
    add-int/lit16 v2, v0, -0x3a98

    if-ge p1, v2, :cond_4

    .line 1532
    iget-object v2, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->videoBar:Landroid/widget/SeekBar;

    if-eqz v2, :cond_3

    .line 1533
    iget-object v2, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->videoBar:Landroid/widget/SeekBar;

    invoke-virtual {v2, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1534
    :cond_3
    iget-object v2, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v2, v2, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v2, v0}, Lcom/youku/player/module/VideoUrlInfo;->setProgress(I)V

    .line 1535
    iget-object v2, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v2, v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->seekTo(I)V

    goto :goto_0

    .line 1539
    .end local v0    # "headPosition":I
    :cond_4
    iget-object v2, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v2, v2, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v2}, Lcom/youku/player/module/VideoUrlInfo;->isHasTail()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1540
    iget-object v2, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v2, v2, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v2}, Lcom/youku/player/module/VideoUrlInfo;->getTailPosition()I

    move-result v1

    .line 1542
    .local v1, "tailPosition":I
    sub-int v2, v1, p1

    const/16 v3, 0x7d0

    if-gt v2, v3, :cond_5

    .line 1544
    iget-object v2, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v2, v2, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    add-int/lit16 v3, v1, -0x1388

    invoke-virtual {v2, v3}, Lcom/youku/player/module/VideoUrlInfo;->setProgress(I)V

    .line 1546
    invoke-virtual {p0}, Lcom/youku/player/plugin/PluginSimplePlayer;->playComplete()V

    goto :goto_0

    .line 1551
    .end local v1    # "tailPosition":I
    :cond_5
    iget-object v2, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->currentTime:Landroid/widget/TextView;

    int-to-long v4, p1

    invoke-static {v4, v5}, Lcom/youku/player/util/PlayerUtil;->getFormatTime(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1553
    iget-object v2, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->videoBar:Landroid/widget/SeekBar;

    if-eqz v2, :cond_6

    .line 1554
    iget-object v2, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->videoBar:Landroid/widget/SeekBar;

    invoke-virtual {v2, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1555
    :cond_6
    iget-object v2, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v2, v2, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v2, p1}, Lcom/youku/player/module/VideoUrlInfo;->setProgress(I)V

    goto :goto_0
.end method

.method public onDown()V
    .locals 0

    .prologue
    .line 1820
    return-void
.end method

.method public onErrorListener(II)Z
    .locals 12
    .param p1, "what"    # I
    .param p2, "extra"    # I

    .prologue
    const/16 v6, 0x3f1

    const/16 v5, 0x3ed

    const/4 v0, 0x0

    const/16 v4, 0x3ee

    const/4 v11, 0x1

    .line 970
    iget-object v1, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u64ad\u653e\u9519\u8bef onErrorListener-->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 972
    iput-boolean v11, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->error:Z

    .line 973
    iget-object v1, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->mActivity:Landroid/app/Activity;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    move v0, v11

    .line 1053
    :cond_0
    :goto_0
    return v0

    .line 977
    :cond_1
    iget-object v1, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v1, :cond_d

    .line 978
    iget-object v1, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-boolean v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->isFullScreen:Z

    if-nez v1, :cond_0

    .line 980
    iget-object v1, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iput-boolean v0, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->isStartPlay:Z

    .line 981
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-boolean v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isADShowing:Z

    if-eqz v0, :cond_2

    .line 982
    invoke-virtual {p0}, Lcom/youku/player/plugin/PluginSimplePlayer;->showAlert()V

    move v0, v11

    .line 983
    goto :goto_0

    .line 985
    :cond_2
    if-ne p1, v4, :cond_3

    .line 986
    invoke-virtual {p0}, Lcom/youku/player/plugin/PluginSimplePlayer;->showAlert()V

    move v0, v11

    .line 987
    goto :goto_0

    .line 989
    :cond_3
    const/16 v0, 0x3ea

    if-ne p1, v0, :cond_4

    .line 990
    invoke-virtual {p0}, Lcom/youku/player/plugin/PluginSimplePlayer;->showAlert()V

    move v0, v11

    .line 991
    goto :goto_0

    .line 993
    :cond_4
    if-ne p1, v6, :cond_5

    .line 994
    invoke-virtual {p0}, Lcom/youku/player/plugin/PluginSimplePlayer;->showAlert()V

    move v0, v11

    .line 995
    goto :goto_0

    .line 997
    :cond_5
    const/16 v0, 0x3f2

    if-ne p1, v0, :cond_6

    .line 999
    invoke-virtual {p0}, Lcom/youku/player/plugin/PluginSimplePlayer;->showAlert()V

    move v0, v11

    .line 1000
    goto :goto_0

    .line 1002
    :cond_6
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v0, :cond_c

    const-string v0, "local"

    iget-object v1, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v1, v1, Lcom/youku/player/module/VideoUrlInfo;->playType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1005
    if-ne p1, v5, :cond_8

    .line 1006
    invoke-virtual {p0}, Lcom/youku/player/plugin/PluginSimplePlayer;->playComplete()V

    .line 1031
    :cond_7
    :goto_1
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->setFirstUnloaded()V

    .line 1032
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->release()V

    .line 1033
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->finishActivity()V

    move v0, v11

    .line 1034
    goto :goto_0

    .line 1007
    :cond_8
    if-ne p1, v4, :cond_9

    .line 1009
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v1}, Lcom/youku/player/module/VideoUrlInfo;->getVid()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/youku/player/goplay/Profile;->GUID:Ljava/lang/String;

    iget-object v3, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v3, v3, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v3, v3, Lcom/youku/player/module/VideoUrlInfo;->playType:Ljava/lang/String;

    const-string v4, "-106"

    iget-object v5, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v5, v5, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v5, v5, Lcom/youku/player/module/VideoUrlInfo;->mSource:Lcom/youku/player/module/VideoUrlInfo$Source;

    iget-object v6, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v6, v6, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v6}, Lcom/youku/player/module/VideoUrlInfo;->getCurrentQuality()I

    move-result v6

    iget-object v7, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v7, v7, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v7}, Lcom/youku/player/module/VideoUrlInfo;->getProgress()I

    move-result v7

    iget-object v8, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-boolean v8, v8, Lcom/youku/player/plugin/MediaPlayerDelegate;->isFullScreen:Z

    iget-object v9, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v9, v9, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v10, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v10}, Lcom/youku/player/plugin/MediaPlayerDelegate;->getPlayVideoInfo()Lcom/youku/player/module/PlayVideoInfo;

    move-result-object v10

    invoke-static/range {v0 .. v10}, Lcom/youku/player/Track;->onError(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/youku/player/module/VideoUrlInfo$Source;IIZLcom/youku/player/module/VideoUrlInfo;Lcom/youku/player/module/PlayVideoInfo;)V

    goto :goto_1

    .line 1019
    :cond_9
    const/16 v0, 0x3ef

    if-ne p1, v0, :cond_a

    .line 1021
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->finishActivity()V

    goto :goto_1

    .line 1022
    :cond_a
    const/16 v0, 0x3f0

    if-ne p1, v0, :cond_b

    .line 1023
    invoke-virtual {p0}, Lcom/youku/player/plugin/PluginSimplePlayer;->playComplete()V

    move v0, v11

    .line 1024
    goto/16 :goto_0

    .line 1025
    :cond_b
    if-ne p1, v6, :cond_7

    .line 1026
    invoke-virtual {p0}, Lcom/youku/player/plugin/PluginSimplePlayer;->playComplete()V

    move v0, v11

    .line 1027
    goto/16 :goto_0

    .line 1036
    :cond_c
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v0, :cond_d

    const-string v0, "net"

    iget-object v1, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v1, v1, Lcom/youku/player/module/VideoUrlInfo;->playType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1039
    if-ne p1, v5, :cond_e

    .line 1051
    :cond_d
    :goto_2
    invoke-virtual {p0}, Lcom/youku/player/plugin/PluginSimplePlayer;->showAlert()V

    move v0, v11

    .line 1053
    goto/16 :goto_0

    .line 1042
    :cond_e
    if-eq p1, v4, :cond_d

    .line 1045
    const/16 v0, 0x3f2

    if-ne p1, v0, :cond_d

    goto :goto_2
.end method

.method public onFavor()V
    .locals 0

    .prologue
    .line 1825
    return-void
.end method

.method public onLoadedListener()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1144
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->TAG:Ljava/lang/String;

    const-string v1, " onLoadedListener()"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1148
    iput-boolean v2, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->isLoading:Z

    .line 1149
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-nez v0, :cond_1

    .line 1183
    :cond_0
    :goto_0
    return-void

    .line 1151
    :cond_1
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-boolean v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isComplete:Z

    if-nez v0, :cond_0

    .line 1153
    iget-boolean v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->firstLoaded:Z

    if-nez v0, :cond_2

    .line 1156
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->firstLoaded:Z

    .line 1158
    :cond_2
    iput-boolean v2, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->error:Z

    .line 1159
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->seekHandler:Landroid/os/Handler;

    if-eqz v0, :cond_3

    .line 1160
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->seekHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1161
    :cond_3
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->seekendHandler:Landroid/os/Handler;

    if-eqz v0, :cond_4

    .line 1162
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->seekendHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1163
    :cond_4
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_5

    .line 1164
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/youku/player/plugin/PluginSimplePlayer$24;

    invoke-direct {v1, p0}, Lcom/youku/player/plugin/PluginSimplePlayer$24;-><init>(Lcom/youku/player/plugin/PluginSimplePlayer;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1173
    :cond_5
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1174
    invoke-virtual {p0}, Lcom/youku/player/plugin/PluginSimplePlayer;->hideLoading()V

    .line 1175
    invoke-direct {p0}, Lcom/youku/player/plugin/PluginSimplePlayer;->hideRetryLayout()V

    goto :goto_0
.end method

.method public onLoadingListener()V
    .locals 2

    .prologue
    .line 1216
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->TAG:Ljava/lang/String;

    const-string v1, "onLoadingListener"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1217
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->isLoading:Z

    .line 1218
    iget-boolean v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->error:Z

    if-eqz v0, :cond_1

    .line 1219
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->TAG:Ljava/lang/String;

    const-string v1, "null == error "

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1244
    :cond_0
    :goto_0
    return-void

    .line 1223
    :cond_1
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-boolean v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isComplete:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-boolean v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isReleased:Z

    if-eqz v0, :cond_3

    .line 1225
    :cond_2
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->TAG:Ljava/lang/String;

    const-string v1, "null == mMediaPlayerDelegate "

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1228
    :cond_3
    iget-boolean v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->autoPlay:Z

    if-nez v0, :cond_4

    .line 1229
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->TAG:Ljava/lang/String;

    const-string v1, "!autoPlay"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1233
    :cond_4
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 1234
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/youku/player/plugin/PluginSimplePlayer$27;

    invoke-direct {v1, p0}, Lcom/youku/player/plugin/PluginSimplePlayer$27;-><init>(Lcom/youku/player/plugin/PluginSimplePlayer;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onMute(Z)V
    .locals 0
    .param p1, "mute"    # Z

    .prologue
    .line 1616
    return-void
.end method

.method public onNotifyChangeVideoQuality()V
    .locals 0

    .prologue
    .line 1757
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 1855
    return-void
.end method

.method public onPlayNoRightVideo(Lcom/youku/player/goplay/GoplayException;)V
    .locals 0
    .param p1, "e"    # Lcom/youku/player/goplay/GoplayException;

    .prologue
    .line 1861
    return-void
.end method

.method public onPlayReleateNoRightVideo()V
    .locals 0

    .prologue
    .line 1867
    return-void
.end method

.method public onPluginAdded()V
    .locals 2

    .prologue
    .line 1771
    invoke-super {p0}, Lcom/youku/player/plugin/PluginOverlay;->onPluginAdded()V

    .line 1772
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->TAG:Ljava/lang/String;

    const-string v1, "onPluginAdded()"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1774
    invoke-direct {p0}, Lcom/youku/player/plugin/PluginSimplePlayer;->changePlayPause()V

    .line 1775
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-boolean v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isFullScreen:Z

    if-eqz v0, :cond_0

    .line 1776
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->full_screenButton:Landroid/widget/ImageButton;

    sget v1, Lcom/youku/android/player/R$drawable;->plugin_ad_gosmall:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1782
    :goto_0
    return-void

    .line 1778
    :cond_0
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->full_screenButton:Landroid/widget/ImageButton;

    sget v1, Lcom/youku/android/player/R$drawable;->detail_play_btn_full_screen:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0
.end method

.method public onRealVideoStart()V
    .locals 1

    .prologue
    .line 1807
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->isRealVideoStart:Z

    .line 1808
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->isLoading:Z

    .line 1809
    invoke-direct {p0}, Lcom/youku/player/plugin/PluginSimplePlayer;->enableController()V

    .line 1810
    return-void
.end method

.method public onRealVideoStarted()V
    .locals 0

    .prologue
    .line 1840
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 1845
    return-void
.end method

.method public onUnFavor()V
    .locals 0

    .prologue
    .line 1830
    return-void
.end method

.method public onUp()V
    .locals 0

    .prologue
    .line 1815
    return-void
.end method

.method public onVideoChange()V
    .locals 1

    .prologue
    .line 1620
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->firstLoaded:Z

    .line 1621
    return-void
.end method

.method public onVideoInfoGetFail(Z)V
    .locals 2
    .param p1, "needRetry"    # Z

    .prologue
    .line 1727
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->infoFail:Z

    .line 1729
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 1730
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/youku/player/plugin/PluginSimplePlayer$33;

    invoke-direct {v1, p0}, Lcom/youku/player/plugin/PluginSimplePlayer$33;-><init>(Lcom/youku/player/plugin/PluginSimplePlayer;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1740
    :cond_0
    return-void
.end method

.method public onVideoInfoGetted()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1695
    iput-boolean v1, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->firstLoaded:Z

    .line 1696
    iput-boolean v1, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->isRealVideoStart:Z

    .line 1697
    invoke-direct {p0}, Lcom/youku/player/plugin/PluginSimplePlayer;->hideLoadinfo()V

    .line 1698
    invoke-virtual {p0}, Lcom/youku/player/plugin/PluginSimplePlayer;->showLoading()V

    .line 1699
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v0, :cond_0

    .line 1701
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v0}, Lcom/youku/player/module/VideoUrlInfo;->getVid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->video_id:Ljava/lang/String;

    .line 1702
    :cond_0
    iput-boolean v1, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->infoFail:Z

    .line 1703
    invoke-direct {p0}, Lcom/youku/player/plugin/PluginSimplePlayer;->disableController()V

    .line 1704
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/youku/player/plugin/PluginSimplePlayer$32;

    invoke-direct {v1, p0}, Lcom/youku/player/plugin/PluginSimplePlayer$32;-><init>(Lcom/youku/player/plugin/PluginSimplePlayer;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1723
    return-void
.end method

.method public onVideoInfoGetting()V
    .locals 0

    .prologue
    .line 1673
    invoke-direct {p0}, Lcom/youku/player/plugin/PluginSimplePlayer;->hideRetryLayout()V

    .line 1675
    invoke-direct {p0}, Lcom/youku/player/plugin/PluginSimplePlayer;->playANewVideo()V

    .line 1676
    invoke-direct {p0}, Lcom/youku/player/plugin/PluginSimplePlayer;->initSeekLoading()V

    .line 1678
    invoke-direct {p0}, Lcom/youku/player/plugin/PluginSimplePlayer;->showLoadinfo()V

    .line 1679
    invoke-direct {p0}, Lcom/youku/player/plugin/PluginSimplePlayer;->disableController()V

    .line 1680
    return-void
.end method

.method public onVolumnDown()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1598
    iget-object v1, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->mActivity:Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 1599
    iget-object v1, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->mActivity:Landroid/app/Activity;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1601
    .local v0, "audioMa":Landroid/media/AudioManager;
    iget-object v1, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-boolean v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->isFullScreen:Z

    if-eqz v1, :cond_1

    .line 1603
    const/4 v1, 0x4

    invoke-virtual {v0, v3, v1}, Landroid/media/AudioManager;->adjustVolume(II)V

    .line 1611
    .end local v0    # "audioMa":Landroid/media/AudioManager;
    :cond_0
    :goto_0
    return-void

    .line 1606
    .restart local v0    # "audioMa":Landroid/media/AudioManager;
    :cond_1
    const/4 v1, 0x3

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    goto :goto_0
.end method

.method public onVolumnUp()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1581
    iget-object v1, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->mActivity:Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 1582
    iget-object v1, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->mActivity:Landroid/app/Activity;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1584
    .local v0, "audioMa":Landroid/media/AudioManager;
    iget-object v1, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-boolean v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->isFullScreen:Z

    if-eqz v1, :cond_1

    .line 1586
    const/4 v1, 0x4

    invoke-virtual {v0, v3, v1}, Landroid/media/AudioManager;->adjustVolume(II)V

    .line 1594
    .end local v0    # "audioMa":Landroid/media/AudioManager;
    :cond_0
    :goto_0
    return-void

    .line 1589
    .restart local v0    # "audioMa":Landroid/media/AudioManager;
    :cond_1
    const/4 v1, 0x3

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    goto :goto_0
.end method

.method protected playComplete()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1257
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->TAG:Ljava/lang/String;

    const-string v1, "playComplete()"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1258
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-nez v0, :cond_1

    .line 1283
    :cond_0
    :goto_0
    return-void

    .line 1260
    :cond_1
    iget-boolean v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->pluginEnable:Z

    if-eqz v0, :cond_0

    .line 1263
    invoke-virtual {p0}, Lcom/youku/player/plugin/PluginSimplePlayer;->clearPlayState()V

    .line 1264
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v0, :cond_2

    .line 1268
    :cond_2
    sget v0, Lcom/youku/player/goplay/Profile;->from:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    sget v0, Lcom/youku/player/goplay/Profile;->from:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    .line 1270
    :cond_3
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->finishActivity()V

    goto :goto_0

    .line 1273
    :cond_4
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isStartPlay:Z

    .line 1274
    invoke-static {v2}, Lcom/youku/player/Track;->setplayCompleted(Z)V

    .line 1275
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iput-boolean v2, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isComplete:Z

    .line 1277
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v0}, Lcom/youku/player/module/VideoUrlInfo;->getPlayType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "local"

    if-eq v0, v1, :cond_5

    .line 1279
    invoke-direct {p0}, Lcom/youku/player/plugin/PluginSimplePlayer;->goEndPage()V

    goto :goto_0

    .line 1281
    :cond_5
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->finishActivity()V

    goto :goto_0
.end method

.method protected seekChange(Landroid/widget/SeekBar;)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 630
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-nez v0, :cond_1

    .line 656
    :cond_0
    :goto_0
    return-void

    .line 632
    :cond_1
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getMax()I

    move-result v1

    if-ne v0, v1, :cond_3

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getMax()I

    move-result v0

    if-lez v0, :cond_3

    .line 634
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v0, :cond_2

    .line 635
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v1, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v1}, Lcom/youku/player/module/VideoUrlInfo;->getDurationMills()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/youku/player/module/VideoUrlInfo;->setProgress(I)V

    .line 639
    :cond_2
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->onComplete()V

    goto :goto_0

    .line 645
    :cond_3
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v0, :cond_0

    .line 646
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v0, :cond_4

    .line 647
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/youku/player/module/VideoUrlInfo;->setProgress(I)V

    .line 649
    :cond_4
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_5

    .line 650
    invoke-direct {p0}, Lcom/youku/player/plugin/PluginSimplePlayer;->startPlay()V

    .line 652
    :cond_5
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/youku/player/plugin/MediaPlayerDelegate;->seekTo(I)V

    .line 653
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->isLoading:Z

    .line 654
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->videoBar:Landroid/widget/SeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    goto :goto_0
.end method

.method public set3GTips()V
    .locals 0

    .prologue
    .line 1792
    return-void
.end method

.method public setAutoPlay(Z)V
    .locals 2
    .param p1, "autoplay"    # Z

    .prologue
    .line 596
    iput-boolean p1, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->autoPlay:Z

    .line 597
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->userPlayButton:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    .line 607
    :cond_0
    :goto_0
    return-void

    .line 600
    :cond_1
    if-nez p1, :cond_3

    .line 601
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->userPlayButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 602
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->userPlayButton:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 603
    :cond_2
    invoke-direct {p0}, Lcom/youku/player/plugin/PluginSimplePlayer;->disableController()V

    .line 604
    invoke-virtual {p0}, Lcom/youku/player/plugin/PluginSimplePlayer;->hideLoading()V

    goto :goto_0

    .line 605
    :cond_3
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->userPlayButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 606
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->userPlayButton:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setPlayImg(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "mDrawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1570
    iput-object p1, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->playDrawable:Landroid/graphics/drawable/Drawable;

    .line 1572
    return-void
.end method

.method public setVideoImage(Lcom/baseproject/image/ImageResizer;Ljava/lang/String;)V
    .locals 0
    .param p1, "maker"    # Lcom/baseproject/image/ImageResizer;
    .param p2, "imageurl"    # Ljava/lang/String;

    .prologue
    .line 874
    return-void
.end method

.method public setVisible(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 1746
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->containerView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 1753
    :goto_0
    return-void

    .line 1748
    :cond_0
    if-eqz p1, :cond_1

    .line 1749
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->containerView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1751
    :cond_1
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->containerView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public share()V
    .locals 0

    .prologue
    .line 883
    return-void
.end method

.method public showAlert()V
    .locals 2

    .prologue
    .line 1057
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v0}, Lcom/youku/player/module/VideoUrlInfo;->getPlayType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "local"

    if-ne v0, v1, :cond_0

    .line 1060
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->mActivity:Landroid/app/Activity;

    sget v1, Lcom/youku/android/player/R$string;->player_error_native:I

    invoke-virtual {p0, v0, v1}, Lcom/youku/player/plugin/PluginSimplePlayer;->alertRetry(Landroid/app/Activity;I)V

    .line 1064
    :goto_0
    return-void

    .line 1062
    :cond_0
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->mActivity:Landroid/app/Activity;

    sget v1, Lcom/youku/android/player/R$string;->Player_error_timeout:I

    invoke-virtual {p0, v0, v1}, Lcom/youku/player/plugin/PluginSimplePlayer;->alertRetry(Landroid/app/Activity;I)V

    goto :goto_0
.end method

.method public showLoading()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 415
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "showLoading()"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-boolean v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isADShowing:Z

    if-eqz v0, :cond_1

    .line 417
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->TAG:Ljava/lang/String;

    const-string v1, "mMediaPlayerDelegate.isADShowing()"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    :cond_0
    :goto_0
    return-void

    .line 420
    :cond_1
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->seekLoadingContainerView:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 421
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->seekLoadingContainerView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v5, :cond_3

    .line 422
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->seekLoadingContainerView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 423
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->seekLoadingContainerView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 424
    :cond_2
    iput v4, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->seekcount:I

    .line 425
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->seekendHandler:Landroid/os/Handler;

    if-eqz v0, :cond_3

    .line 426
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->seekHandler:Landroid/os/Handler;

    const/16 v1, 0x457

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 430
    :cond_3
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v0}, Lcom/youku/player/module/VideoUrlInfo;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/youku/player/util/DetailUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 434
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->playNameTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 435
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->playNameTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v1}, Lcom/youku/player/module/VideoUrlInfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 438
    :cond_4
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->firstLoaded:Z

    if-eqz v0, :cond_7

    .line 440
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->loadingTips:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    .line 441
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->loadingTips:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 442
    :cond_5
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->playNameTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    .line 443
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->playNameTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 444
    :cond_6
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->seekLoadingContainerView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->firstLoaded:Z

    if-eqz v0, :cond_0

    .line 445
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->seekLoadingContainerView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 447
    :cond_7
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->loadingTips:Landroid/widget/TextView;

    if-eqz v0, :cond_8

    .line 448
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->loadingTips:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/youku/player/plugin/PluginSimplePlayer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/youku/android/player/R$string;->player_tip_loading:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 450
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->loadingTips:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 452
    :cond_8
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->playNameTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    .line 453
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->playNameTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 454
    :cond_9
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->seekLoadingContainerView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 455
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->seekLoadingContainerView:Landroid/view/View;

    sget v1, Lcom/youku/android/player/R$drawable;->bg_play:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_0
.end method

.method protected startCache()V
    .locals 1

    .prologue
    .line 1798
    sget-object v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mIUserInfo:Lcom/youku/player/apiservice/IUserInfo;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->mIUserInfo:Lcom/youku/player/apiservice/IUserInfo;

    invoke-interface {v0}, Lcom/youku/player/apiservice/IUserInfo;->isLogin()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1803
    :cond_0
    return-void
.end method

.method protected userAction()V
    .locals 4

    .prologue
    .line 866
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->hideHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 867
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->hideHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 868
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer;->hideHandler:Landroid/os/Handler;

    const/16 v1, 0x3eb

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 870
    :cond_0
    return-void
.end method
