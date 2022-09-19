.class public final Lcom/mobisage/android/MobiSageActivity;
.super Landroid/app/Activity;
.source "MobiSageActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mobisage/android/MobiSageActivity$RemainingTime;,
        Lcom/mobisage/android/MobiSageActivity$IMediaPlayPauseListener;,
        Lcom/mobisage/android/MobiSageActivity$IOnPreparedListener;,
        Lcom/mobisage/android/MobiSageActivity$IOnErrorListener;,
        Lcom/mobisage/android/MobiSageActivity$IOnCompletionListener;,
        Lcom/mobisage/android/MobiSageActivity$Download;
    }
.end annotation


# static fields
.field private static final BUNDLE_DIALOG_SHOWING:Ljava/lang/String; = "dialog_showing"

.field private static final BUNDLE_SEEK_TIME:Ljava/lang/String; = "seek_time"

.field protected static final COVER_SCREEN_PARAMS:Landroid/widget/FrameLayout$LayoutParams;

.field private static ConfigurationChange:Z = false

.field private static final DIALOG_WARNING_ID:I = 0x0

.field public static final EXTRA_ADVIEW_ID:Ljava/lang/String; = "adview_id"

.field static final sAdViewMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/mobisage/android/MobiSageAdView;",
            ">;"
        }
    .end annotation
.end field

.field private static streamingVideo:Z = false

.field private static textSize:I = 0x0

.field private static videoError:Z = false

.field private static final videoSecondsText:Ljava/lang/String; = " \u79d2"

.field private static final videoWillResumeText:Ljava/lang/String; = ""


# instance fields
.field private adGroupID:Ljava/lang/String;

.field private adID:Ljava/lang/String;

.field private allowBackKey:Z

.field private customData:Ljava/lang/String;

.field dialog:Landroid/app/Dialog;

.field private dialogShowing:Z

.field private final imageUrl:Ljava/lang/String;

.field private mAdViewId:I

.field final mHandler:Landroid/os/Handler;

.field final mUpdateResults:Ljava/lang/Runnable;

.field private mVideoView:Lcom/mobisage/android/MobiSageVideoView;

.field private mainView:Lcom/mobisage/android/MobiSageAdPageWebView;

.field mobiSageAdWebChromeClient:Lcom/mobisage/android/MobiSageAdWebChromeClient;

.field mobiSageVideoView:Landroid/widget/RelativeLayout;

.field private overlayText:Landroid/widget/TextView;

.field private pid:Ljava/lang/String;

.field private seekTime:I

.field private timeRemaining:I

.field private timer:Ljava/util/Timer;

.field private token:Ljava/lang/String;

.field private videoPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 53
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v0, Lcom/mobisage/android/MobiSageActivity;->sAdViewMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 62
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    sput-object v0, Lcom/mobisage/android/MobiSageActivity;->COVER_SCREEN_PARAMS:Landroid/widget/FrameLayout$LayoutParams;

    .line 69
    sput-boolean v2, Lcom/mobisage/android/MobiSageActivity;->streamingVideo:Z

    .line 70
    sput-boolean v2, Lcom/mobisage/android/MobiSageActivity;->videoError:Z

    .line 71
    sput-boolean v2, Lcom/mobisage/android/MobiSageActivity;->ConfigurationChange:Z

    .line 80
    const/16 v0, 0x10

    sput v0, Lcom/mobisage/android/MobiSageActivity;->textSize:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 51
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 66
    iput-object v2, p0, Lcom/mobisage/android/MobiSageActivity;->overlayText:Landroid/widget/TextView;

    .line 67
    const-string v0, ""

    iput-object v0, p0, Lcom/mobisage/android/MobiSageActivity;->videoPath:Ljava/lang/String;

    .line 72
    iput v1, p0, Lcom/mobisage/android/MobiSageActivity;->timeRemaining:I

    .line 73
    iput-boolean v1, p0, Lcom/mobisage/android/MobiSageActivity;->allowBackKey:Z

    .line 77
    iput v1, p0, Lcom/mobisage/android/MobiSageActivity;->seekTime:I

    .line 78
    iput-boolean v1, p0, Lcom/mobisage/android/MobiSageActivity;->dialogShowing:Z

    .line 84
    iput-object v2, p0, Lcom/mobisage/android/MobiSageActivity;->timer:Ljava/util/Timer;

    .line 85
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/mobisage/android/MobiSageActivity;->mHandler:Landroid/os/Handler;

    .line 175
    iput-object v2, p0, Lcom/mobisage/android/MobiSageActivity;->imageUrl:Ljava/lang/String;

    .line 505
    new-instance v0, Lcom/mobisage/android/MobiSageActivity$1;

    invoke-direct {v0, p0}, Lcom/mobisage/android/MobiSageActivity$1;-><init>(Lcom/mobisage/android/MobiSageActivity;)V

    iput-object v0, p0, Lcom/mobisage/android/MobiSageActivity;->mUpdateResults:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/mobisage/android/MobiSageActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mobisage/android/MobiSageActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/mobisage/android/MobiSageActivity;->videoTrack(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/mobisage/android/MobiSageActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/mobisage/android/MobiSageActivity;
    .param p1, "x1"    # I

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/mobisage/android/MobiSageActivity;->seekToStart(I)V

    return-void
.end method

.method static synthetic access$102(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 51
    sput-boolean p0, Lcom/mobisage/android/MobiSageActivity;->videoError:Z

    return p0
.end method

.method static synthetic access$1102(Lcom/mobisage/android/MobiSageActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mobisage/android/MobiSageActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/mobisage/android/MobiSageActivity;->dialogShowing:Z

    return p1
.end method

.method static synthetic access$202(Lcom/mobisage/android/MobiSageActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mobisage/android/MobiSageActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/mobisage/android/MobiSageActivity;->allowBackKey:Z

    return p1
.end method

.method static synthetic access$300(Lcom/mobisage/android/MobiSageActivity;)Ljava/util/Timer;
    .locals 1
    .param p0, "x0"    # Lcom/mobisage/android/MobiSageActivity;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/mobisage/android/MobiSageActivity;->timer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$400()Z
    .locals 1

    .prologue
    .line 51
    sget-boolean v0, Lcom/mobisage/android/MobiSageActivity;->ConfigurationChange:Z

    return v0
.end method

.method static synthetic access$402(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 51
    sput-boolean p0, Lcom/mobisage/android/MobiSageActivity;->ConfigurationChange:Z

    return p0
.end method

.method static synthetic access$600(Lcom/mobisage/android/MobiSageActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/mobisage/android/MobiSageActivity;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/mobisage/android/MobiSageActivity;->overlayText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/mobisage/android/MobiSageActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/mobisage/android/MobiSageActivity;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/mobisage/android/MobiSageActivity;->getRemainingVideoTime()I

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/mobisage/android/MobiSageActivity;)Lcom/mobisage/android/MobiSageVideoView;
    .locals 1
    .param p0, "x0"    # Lcom/mobisage/android/MobiSageActivity;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/mobisage/android/MobiSageActivity;->mVideoView:Lcom/mobisage/android/MobiSageVideoView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/mobisage/android/MobiSageActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/mobisage/android/MobiSageActivity;

    .prologue
    .line 51
    iget v0, p0, Lcom/mobisage/android/MobiSageActivity;->seekTime:I

    return v0
.end method

.method private getRemainingVideoTime()I
    .locals 3

    .prologue
    .line 515
    iget-object v1, p0, Lcom/mobisage/android/MobiSageActivity;->mVideoView:Lcom/mobisage/android/MobiSageVideoView;

    if-nez v1, :cond_1

    .line 516
    const/4 v0, 0x0

    .line 524
    :cond_0
    :goto_0
    return v0

    .line 518
    :cond_1
    iget-object v1, p0, Lcom/mobisage/android/MobiSageActivity;->mVideoView:Lcom/mobisage/android/MobiSageVideoView;

    invoke-virtual {v1}, Lcom/mobisage/android/MobiSageVideoView;->getDuration()I

    move-result v1

    iget-object v2, p0, Lcom/mobisage/android/MobiSageActivity;->mVideoView:Lcom/mobisage/android/MobiSageVideoView;

    invoke-virtual {v2}, Lcom/mobisage/android/MobiSageVideoView;->getCurrentPosition()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit16 v0, v1, 0x3e8

    .line 521
    .local v0, "timeRemaining":I
    if-gez v0, :cond_0

    .line 522
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initVideoView()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x2

    .line 342
    iget-object v2, p0, Lcom/mobisage/android/MobiSageActivity;->mobiSageVideoView:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 343
    iget-object v2, p0, Lcom/mobisage/android/MobiSageActivity;->mobiSageVideoView:Landroid/widget/RelativeLayout;

    const/high16 v3, -0x1000000

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 344
    iget-object v2, p0, Lcom/mobisage/android/MobiSageActivity;->mVideoView:Lcom/mobisage/android/MobiSageVideoView;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/mobisage/android/MobiSageActivity;->overlayText:Landroid/widget/TextView;

    if-nez v2, :cond_0

    .line 348
    new-instance v2, Lcom/mobisage/android/MobiSageVideoView;

    invoke-direct {v2, p0}, Lcom/mobisage/android/MobiSageVideoView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/mobisage/android/MobiSageActivity;->mVideoView:Lcom/mobisage/android/MobiSageVideoView;

    .line 349
    iget-object v2, p0, Lcom/mobisage/android/MobiSageActivity;->mVideoView:Lcom/mobisage/android/MobiSageVideoView;

    new-instance v3, Lcom/mobisage/android/MobiSageActivity$IOnPreparedListener;

    invoke-direct {v3, p0}, Lcom/mobisage/android/MobiSageActivity$IOnPreparedListener;-><init>(Lcom/mobisage/android/MobiSageActivity;)V

    invoke-virtual {v2, v3}, Lcom/mobisage/android/MobiSageVideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 350
    iget-object v2, p0, Lcom/mobisage/android/MobiSageActivity;->mVideoView:Lcom/mobisage/android/MobiSageVideoView;

    new-instance v3, Landroid/widget/MediaController;

    invoke-direct {v3, p0}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Lcom/mobisage/android/MobiSageVideoView;->setMediaController(Landroid/widget/MediaController;)V

    .line 351
    iget-object v2, p0, Lcom/mobisage/android/MobiSageActivity;->mVideoView:Lcom/mobisage/android/MobiSageVideoView;

    new-instance v3, Lcom/mobisage/android/MobiSageActivity$IOnCompletionListener;

    invoke-direct {v3, p0}, Lcom/mobisage/android/MobiSageActivity$IOnCompletionListener;-><init>(Lcom/mobisage/android/MobiSageActivity;)V

    invoke-virtual {v2, v3}, Lcom/mobisage/android/MobiSageVideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 352
    iget-object v2, p0, Lcom/mobisage/android/MobiSageActivity;->mVideoView:Lcom/mobisage/android/MobiSageVideoView;

    new-instance v3, Lcom/mobisage/android/MobiSageActivity$IOnErrorListener;

    invoke-direct {v3, p0}, Lcom/mobisage/android/MobiSageActivity$IOnErrorListener;-><init>(Lcom/mobisage/android/MobiSageActivity;)V

    invoke-virtual {v2, v3}, Lcom/mobisage/android/MobiSageVideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 353
    iget-object v2, p0, Lcom/mobisage/android/MobiSageActivity;->mVideoView:Lcom/mobisage/android/MobiSageVideoView;

    new-instance v3, Lcom/mobisage/android/MobiSageActivity$IMediaPlayPauseListener;

    invoke-direct {v3, p0}, Lcom/mobisage/android/MobiSageActivity$IMediaPlayPauseListener;-><init>(Lcom/mobisage/android/MobiSageActivity;)V

    invoke-virtual {v2, v3}, Lcom/mobisage/android/MobiSageVideoView;->setMediaPlayPauseListener(Lcom/mobisage/android/MobiSageVideoView$MediaPlayPauseListener;)V

    .line 354
    sget-boolean v2, Lcom/mobisage/android/MobiSageActivity;->streamingVideo:Z

    if-eqz v2, :cond_1

    .line 355
    iget-object v2, p0, Lcom/mobisage/android/MobiSageActivity;->mVideoView:Lcom/mobisage/android/MobiSageVideoView;

    iget-object v3, p0, Lcom/mobisage/android/MobiSageActivity;->videoPath:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mobisage/android/MobiSageVideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 359
    :goto_0
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 361
    .local v0, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 362
    iget-object v2, p0, Lcom/mobisage/android/MobiSageActivity;->mVideoView:Lcom/mobisage/android/MobiSageVideoView;

    invoke-virtual {v2, v0}, Lcom/mobisage/android/MobiSageVideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 367
    iget-object v2, p0, Lcom/mobisage/android/MobiSageActivity;->mVideoView:Lcom/mobisage/android/MobiSageVideoView;

    invoke-virtual {v2}, Lcom/mobisage/android/MobiSageVideoView;->getDuration()I

    move-result v2

    div-int/lit16 v2, v2, 0x3e8

    iput v2, p0, Lcom/mobisage/android/MobiSageActivity;->timeRemaining:I

    .line 369
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mVideoView.getDuration(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mobisage/android/MobiSageActivity;->mVideoView:Lcom/mobisage/android/MobiSageVideoView;

    invoke-virtual {v4}, Lcom/mobisage/android/MobiSageVideoView;->getDuration()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mobisage/android/MobiSageLog;->i(Ljava/lang/Class;Ljava/lang/String;)V

    .line 371
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "timeRemaining: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/mobisage/android/MobiSageActivity;->timeRemaining:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mobisage/android/MobiSageLog;->i(Ljava/lang/Class;Ljava/lang/String;)V

    .line 373
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/mobisage/android/MobiSageActivity;->overlayText:Landroid/widget/TextView;

    .line 374
    iget-object v2, p0, Lcom/mobisage/android/MobiSageActivity;->overlayText:Landroid/widget/TextView;

    sget v3, Lcom/mobisage/android/MobiSageActivity;->textSize:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 375
    iget-object v2, p0, Lcom/mobisage/android/MobiSageActivity;->overlayText:Landroid/widget/TextView;

    const-string v3, "default"

    invoke-static {v3, v6}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 378
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 380
    .local v1, "textParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 381
    iget-object v2, p0, Lcom/mobisage/android/MobiSageActivity;->overlayText:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 383
    .end local v0    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v1    # "textParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    invoke-direct {p0}, Lcom/mobisage/android/MobiSageActivity;->startVideo()V

    .line 384
    iget-object v2, p0, Lcom/mobisage/android/MobiSageActivity;->mobiSageVideoView:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/mobisage/android/MobiSageActivity;->mVideoView:Lcom/mobisage/android/MobiSageVideoView;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 385
    iget-object v2, p0, Lcom/mobisage/android/MobiSageActivity;->mobiSageVideoView:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/mobisage/android/MobiSageActivity;->overlayText:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 386
    return-void

    .line 357
    :cond_1
    iget-object v2, p0, Lcom/mobisage/android/MobiSageActivity;->mVideoView:Lcom/mobisage/android/MobiSageVideoView;

    iget-object v3, p0, Lcom/mobisage/android/MobiSageActivity;->videoPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/mobisage/android/MobiSageVideoView;->setVideoPath(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private seekToStart(I)V
    .locals 1
    .param p1, "seekTime"    # I

    .prologue
    .line 680
    iget-object v0, p0, Lcom/mobisage/android/MobiSageActivity;->mVideoView:Lcom/mobisage/android/MobiSageVideoView;

    invoke-virtual {v0, p1}, Lcom/mobisage/android/MobiSageVideoView;->seekTo(I)V

    .line 681
    iget-object v0, p0, Lcom/mobisage/android/MobiSageActivity;->mVideoView:Lcom/mobisage/android/MobiSageVideoView;

    invoke-virtual {v0}, Lcom/mobisage/android/MobiSageVideoView;->requestFocus()Z

    .line 682
    iget-object v0, p0, Lcom/mobisage/android/MobiSageActivity;->mVideoView:Lcom/mobisage/android/MobiSageVideoView;

    invoke-virtual {v0}, Lcom/mobisage/android/MobiSageVideoView;->start()V

    .line 683
    return-void
.end method

.method private startVideo()V
    .locals 6

    .prologue
    .line 481
    iget-object v0, p0, Lcom/mobisage/android/MobiSageActivity;->mVideoView:Lcom/mobisage/android/MobiSageVideoView;

    invoke-virtual {v0}, Lcom/mobisage/android/MobiSageVideoView;->requestFocus()Z

    .line 483
    iget-boolean v0, p0, Lcom/mobisage/android/MobiSageActivity;->dialogShowing:Z

    if-eqz v0, :cond_1

    .line 484
    iget-object v0, p0, Lcom/mobisage/android/MobiSageActivity;->mVideoView:Lcom/mobisage/android/MobiSageVideoView;

    iget v1, p0, Lcom/mobisage/android/MobiSageActivity;->seekTime:I

    invoke-virtual {v0, v1}, Lcom/mobisage/android/MobiSageVideoView;->seekTo(I)V

    .line 490
    :goto_0
    iget-object v0, p0, Lcom/mobisage/android/MobiSageActivity;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 491
    iget-object v0, p0, Lcom/mobisage/android/MobiSageActivity;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 494
    :cond_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/mobisage/android/MobiSageActivity;->timer:Ljava/util/Timer;

    .line 495
    iget-object v0, p0, Lcom/mobisage/android/MobiSageActivity;->timer:Ljava/util/Timer;

    new-instance v1, Lcom/mobisage/android/MobiSageActivity$RemainingTime;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/mobisage/android/MobiSageActivity$RemainingTime;-><init>(Lcom/mobisage/android/MobiSageActivity;Lcom/mobisage/android/MobiSageActivity$1;)V

    const-wide/16 v2, 0x1f4

    const-wide/16 v4, 0x64

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 496
    return-void

    .line 486
    :cond_1
    iget-object v0, p0, Lcom/mobisage/android/MobiSageActivity;->mVideoView:Lcom/mobisage/android/MobiSageVideoView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mobisage/android/MobiSageVideoView;->seekTo(I)V

    .line 487
    iget-object v0, p0, Lcom/mobisage/android/MobiSageActivity;->mVideoView:Lcom/mobisage/android/MobiSageVideoView;

    invoke-virtual {v0}, Lcom/mobisage/android/MobiSageVideoView;->start()V

    goto :goto_0
.end method

.method private videoTrack(Ljava/lang/String;)V
    .locals 5
    .param p1, "videoEvent"    # Ljava/lang/String;

    .prologue
    .line 528
    sget-boolean v2, Lcom/mobisage/android/MobiSageActivity;->videoError:Z

    if-nez v2, :cond_2

    .line 530
    iget-object v2, p0, Lcom/mobisage/android/MobiSageActivity;->mVideoView:Lcom/mobisage/android/MobiSageVideoView;

    invoke-virtual {v2}, Lcom/mobisage/android/MobiSageVideoView;->getDuration()I

    move-result v2

    div-int/lit16 v1, v2, 0x3e8

    .line 531
    .local v1, "wt":I
    if-eqz v1, :cond_2

    .line 534
    new-instance v0, Lcom/mobisage/android/MobiSageAction;

    invoke-direct {v0}, Lcom/mobisage/android/MobiSageAction;-><init>()V

    .line 535
    .local v0, "action":Lcom/mobisage/android/MobiSageAction;
    iget-object v2, v0, Lcom/mobisage/android/MobiSageAction;->params:Landroid/os/Bundle;

    const-string v3, "AdGroupID"

    iget-object v4, p0, Lcom/mobisage/android/MobiSageActivity;->adGroupID:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    iget-object v2, v0, Lcom/mobisage/android/MobiSageAction;->params:Landroid/os/Bundle;

    const-string v3, "AdID"

    iget-object v4, p0, Lcom/mobisage/android/MobiSageActivity;->adID:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    iget-object v2, v0, Lcom/mobisage/android/MobiSageAction;->params:Landroid/os/Bundle;

    const-string v3, "Token"

    iget-object v4, p0, Lcom/mobisage/android/MobiSageActivity;->token:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    iget-object v2, p0, Lcom/mobisage/android/MobiSageActivity;->customData:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 539
    iget-object v2, v0, Lcom/mobisage/android/MobiSageAction;->params:Landroid/os/Bundle;

    const-string v3, "CustomData"

    iget-object v4, p0, Lcom/mobisage/android/MobiSageActivity;->customData:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    :cond_0
    iget-object v2, v0, Lcom/mobisage/android/MobiSageAction;->params:Landroid/os/Bundle;

    const-string/jumbo v3, "ve"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    iget-object v2, v0, Lcom/mobisage/android/MobiSageAction;->params:Landroid/os/Bundle;

    const-string v3, "ct"

    iget-object v4, p0, Lcom/mobisage/android/MobiSageActivity;->mVideoView:Lcom/mobisage/android/MobiSageVideoView;

    invoke-virtual {v4}, Lcom/mobisage/android/MobiSageVideoView;->getCurrentPosition()I

    move-result v4

    div-int/lit16 v4, v4, 0x3e8

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    iget-object v2, v0, Lcom/mobisage/android/MobiSageAction;->params:Landroid/os/Bundle;

    const-string/jumbo v3, "wt"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    iget-object v2, v0, Lcom/mobisage/android/MobiSageAction;->params:Landroid/os/Bundle;

    const-string v3, "pid"

    iget-object v4, p0, Lcom/mobisage/android/MobiSageActivity;->pid:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    invoke-static {}, Lcom/mobisage/android/MobiSageTrackModule;->getInstance()Lcom/mobisage/android/MobiSageTrackModule;

    move-result-object v2

    const/16 v3, 0x7d9

    invoke-virtual {v2, v3, v0}, Lcom/mobisage/android/MobiSageTrackModule;->pushMobiSageAction(ILcom/mobisage/android/MobiSageAction;)V

    .line 550
    new-instance v0, Lcom/mobisage/android/MobiSageAction;

    .end local v0    # "action":Lcom/mobisage/android/MobiSageAction;
    invoke-direct {v0}, Lcom/mobisage/android/MobiSageAction;-><init>()V

    .line 551
    .restart local v0    # "action":Lcom/mobisage/android/MobiSageAction;
    iget-object v2, v0, Lcom/mobisage/android/MobiSageAction;->params:Landroid/os/Bundle;

    const-string v3, "EventType"

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    iget-object v2, v0, Lcom/mobisage/android/MobiSageAction;->params:Landroid/os/Bundle;

    const-string v3, "Token"

    iget-object v4, p0, Lcom/mobisage/android/MobiSageActivity;->token:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    iget-object v2, v0, Lcom/mobisage/android/MobiSageAction;->params:Landroid/os/Bundle;

    const-string v3, "AdID"

    iget-object v4, p0, Lcom/mobisage/android/MobiSageActivity;->adID:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    iget-object v2, v0, Lcom/mobisage/android/MobiSageAction;->params:Landroid/os/Bundle;

    const-string v3, "AdGroupID"

    iget-object v4, p0, Lcom/mobisage/android/MobiSageActivity;->adGroupID:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    iget-object v2, v0, Lcom/mobisage/android/MobiSageAction;->params:Landroid/os/Bundle;

    const-string v3, "Tag"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    iget-object v2, p0, Lcom/mobisage/android/MobiSageActivity;->customData:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 558
    iget-object v2, v0, Lcom/mobisage/android/MobiSageAction;->params:Landroid/os/Bundle;

    const-string v3, "CustomData"

    iget-object v4, p0, Lcom/mobisage/android/MobiSageActivity;->customData:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    :cond_1
    iget-object v2, v0, Lcom/mobisage/android/MobiSageAction;->params:Landroid/os/Bundle;

    const-string v3, "PublisherID"

    iget-object v4, p0, Lcom/mobisage/android/MobiSageActivity;->pid:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    .end local v0    # "action":Lcom/mobisage/android/MobiSageAction;
    .end local v1    # "wt":I
    :cond_2
    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 476
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 477
    const/4 v0, 0x1

    sput-boolean v0, Lcom/mobisage/android/MobiSageActivity;->ConfigurationChange:Z

    .line 478
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/high16 v7, 0x1000000

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 100
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 101
    const/4 v4, 0x5

    invoke-virtual {p0, v4}, Lcom/mobisage/android/MobiSageActivity;->requestWindowFeature(I)Z

    .line 102
    const/4 v4, 0x2

    invoke-virtual {p0, v4}, Lcom/mobisage/android/MobiSageActivity;->requestWindowFeature(I)Z

    .line 103
    invoke-virtual {p0, v5}, Lcom/mobisage/android/MobiSageActivity;->setProgressBarIndeterminateVisibility(Z)V

    .line 104
    invoke-virtual {p0, v5}, Lcom/mobisage/android/MobiSageActivity;->setProgressBarVisibility(Z)V

    .line 106
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xb

    if-lt v4, v5, :cond_0

    .line 107
    invoke-virtual {p0}, Lcom/mobisage/android/MobiSageActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v7, v7}, Landroid/view/Window;->setFlags(II)V

    .line 112
    :cond_0
    invoke-virtual {p0}, Lcom/mobisage/android/MobiSageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 114
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "type"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 117
    .local v3, "type":Ljava/lang/String;
    const-string v4, "adview_id"

    invoke-virtual {v1, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/mobisage/android/MobiSageActivity;->mAdViewId:I

    .line 119
    sget-object v4, Lcom/mobisage/android/MobiSageActivity;->sAdViewMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget v5, p0, Lcom/mobisage/android/MobiSageActivity;->mAdViewId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobisage/android/MobiSageAdView;

    .line 120
    .local v0, "adView":Lcom/mobisage/android/MobiSageAdView;
    if-eqz v0, :cond_1

    iget-object v4, v0, Lcom/mobisage/android/MobiSageAdView;->mListener:Lcom/mobisage/android/IMobiSageAdViewListener;

    if-eqz v4, :cond_1

    .line 121
    iget-object v4, v0, Lcom/mobisage/android/MobiSageAdView;->mListener:Lcom/mobisage/android/IMobiSageAdViewListener;

    invoke-interface {v4, v0}, Lcom/mobisage/android/IMobiSageAdViewListener;->onMobiSageAdViewPopupWindow(Lcom/mobisage/android/MobiSageAdView;)V

    .line 125
    :cond_1
    const-string v4, "orientation"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 126
    const-string v4, "orientation"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 128
    .local v2, "orientation":I
    packed-switch v2, :pswitch_data_0

    .line 137
    const/4 v2, -0x1

    .line 140
    :goto_0
    invoke-virtual {p0, v2}, Lcom/mobisage/android/MobiSageActivity;->setRequestedOrientation(I)V

    .line 144
    .end local v2    # "orientation":I
    :cond_2
    const-string/jumbo v4, "vad"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 145
    if-eqz p1, :cond_3

    .line 146
    const-string/jumbo v4, "seek_time"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/mobisage/android/MobiSageActivity;->seekTime:I

    .line 147
    const-string v4, "dialog_showing"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/mobisage/android/MobiSageActivity;->dialogShowing:Z

    .line 150
    :cond_3
    new-instance v4, Landroid/widget/RelativeLayout;

    invoke-direct {v4, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/mobisage/android/MobiSageActivity;->mobiSageVideoView:Landroid/widget/RelativeLayout;

    .line 151
    iget-object v4, p0, Lcom/mobisage/android/MobiSageActivity;->mobiSageVideoView:Landroid/widget/RelativeLayout;

    sget-object v5, Lcom/mobisage/android/MobiSageActivity;->COVER_SCREEN_PARAMS:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 152
    iget-object v4, p0, Lcom/mobisage/android/MobiSageActivity;->mobiSageVideoView:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v4}, Lcom/mobisage/android/MobiSageActivity;->setContentView(Landroid/view/View;)V

    .line 153
    sput-boolean v6, Lcom/mobisage/android/MobiSageActivity;->streamingVideo:Z

    .line 154
    const-string v4, "lpg"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/mobisage/android/MobiSageActivity;->videoPath:Ljava/lang/String;

    .line 155
    const-string v4, "pid"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/mobisage/android/MobiSageActivity;->pid:Ljava/lang/String;

    .line 156
    const-string v4, "adid"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/mobisage/android/MobiSageActivity;->adID:Ljava/lang/String;

    .line 157
    const-string v4, "adgroupid"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/mobisage/android/MobiSageActivity;->adGroupID:Ljava/lang/String;

    .line 158
    const-string/jumbo v4, "token"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/mobisage/android/MobiSageActivity;->token:Ljava/lang/String;

    .line 159
    const-string v4, "customdata"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 160
    const-string v4, "customdata"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/mobisage/android/MobiSageActivity;->customData:Ljava/lang/String;

    .line 161
    :cond_4
    invoke-direct {p0}, Lcom/mobisage/android/MobiSageActivity;->initVideoView()V

    .line 173
    :goto_1
    return-void

    .line 130
    .restart local v2    # "orientation":I
    :pswitch_0
    const/4 v2, 0x7

    .line 131
    goto :goto_0

    .line 133
    :pswitch_1
    const/4 v2, 0x6

    .line 134
    goto :goto_0

    .line 163
    .end local v2    # "orientation":I
    :cond_5
    new-instance v4, Lcom/mobisage/android/MobiSageAdPage;

    invoke-direct {v4, p0, v1}, Lcom/mobisage/android/MobiSageAdPage;-><init>(Landroid/app/Activity;Landroid/content/Intent;)V

    iput-object v4, p0, Lcom/mobisage/android/MobiSageActivity;->mainView:Lcom/mobisage/android/MobiSageAdPageWebView;

    .line 167
    new-instance v4, Lcom/mobisage/android/MobiSageAdWebChromeClient;

    invoke-direct {v4, p0}, Lcom/mobisage/android/MobiSageAdWebChromeClient;-><init>(Landroid/app/Activity;)V

    iput-object v4, p0, Lcom/mobisage/android/MobiSageActivity;->mobiSageAdWebChromeClient:Lcom/mobisage/android/MobiSageAdWebChromeClient;

    .line 168
    iget-object v4, p0, Lcom/mobisage/android/MobiSageActivity;->mainView:Lcom/mobisage/android/MobiSageAdPageWebView;

    iget-object v5, p0, Lcom/mobisage/android/MobiSageActivity;->mobiSageAdWebChromeClient:Lcom/mobisage/android/MobiSageAdWebChromeClient;

    invoke-virtual {v4, v5}, Lcom/mobisage/android/MobiSageAdPageWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 170
    iget-object v4, p0, Lcom/mobisage/android/MobiSageActivity;->mainView:Lcom/mobisage/android/MobiSageAdPageWebView;

    invoke-virtual {p0, v4}, Lcom/mobisage/android/MobiSageActivity;->registerForContextMenu(Landroid/view/View;)V

    .line 171
    iget-object v4, p0, Lcom/mobisage/android/MobiSageActivity;->mainView:Lcom/mobisage/android/MobiSageAdPageWebView;

    invoke-virtual {p0, v4}, Lcom/mobisage/android/MobiSageActivity;->setContentView(Landroid/view/View;)V

    goto :goto_1

    .line 128
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 6
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    const/4 v5, 0x0

    .line 180
    instance-of v4, p2, Landroid/webkit/WebView;

    if-nez v4, :cond_1

    .line 313
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v3, p2

    .line 183
    check-cast v3, Landroid/webkit/WebView;

    .line 184
    .local v3, "webview":Landroid/webkit/WebView;
    invoke-virtual {v3}, Landroid/webkit/WebView;->getHitTestResult()Landroid/webkit/WebView$HitTestResult;

    move-result-object v1

    .line 185
    .local v1, "result":Landroid/webkit/WebView$HitTestResult;
    if-eqz v1, :cond_0

    .line 189
    invoke-virtual {v1}, Landroid/webkit/WebView$HitTestResult;->getType()I

    move-result v2

    .line 190
    .local v2, "type":I
    if-eqz v2, :cond_0

    .line 193
    const/16 v4, 0x9

    if-eq v2, v4, :cond_0

    .line 196
    invoke-virtual {v1}, Landroid/webkit/WebView$HitTestResult;->getExtra()Ljava/lang/String;

    move-result-object v0

    .line 198
    .local v0, "extra":Ljava/lang/String;
    packed-switch v2, :pswitch_data_0

    .line 312
    :goto_1
    :pswitch_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    goto :goto_0

    .line 281
    :pswitch_1
    const/4 v4, 0x5

    if-ne v2, v4, :cond_2

    .line 282
    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 284
    :cond_2
    const-string/jumbo v4, "\u4fdd\u5b58\u56fe\u7247"

    invoke-interface {p1, v5, v5, v5, v4}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v4

    new-instance v5, Lcom/mobisage/android/MobiSageActivity$Download;

    invoke-direct {v5, p0, p0, v0}, Lcom/mobisage/android/MobiSageActivity$Download;-><init>(Lcom/mobisage/android/MobiSageActivity;Landroid/app/Activity;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto :goto_1

    .line 198
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 628
    iget-boolean v0, p0, Lcom/mobisage/android/MobiSageActivity;->dialogShowing:Z

    if-nez v0, :cond_0

    .line 629
    iget-object v0, p0, Lcom/mobisage/android/MobiSageActivity;->dialog:Landroid/app/Dialog;

    .line 676
    :goto_0
    return-object v0

    .line 630
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 674
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mobisage/android/MobiSageActivity;->dialog:Landroid/app/Dialog;

    .line 676
    :goto_1
    iget-object v0, p0, Lcom/mobisage/android/MobiSageActivity;->dialog:Landroid/app/Dialog;

    goto :goto_0

    .line 632
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string/jumbo v1, "\u53d6\u6d88\u64ad\u653e?"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string/jumbo v1, "\u89c6\u9891\u672a\u64ad\u653e\u5b8c\u6bd5,\u662f\u5426\u8981\u53d6\u6d88\u64ad\u653e\u89c6\u9891?"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string/jumbo v1, "\u7ee7\u7eed\u64ad\u653e"

    new-instance v2, Lcom/mobisage/android/MobiSageActivity$3;

    invoke-direct {v2, p0}, Lcom/mobisage/android/MobiSageActivity$3;-><init>(Lcom/mobisage/android/MobiSageActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string/jumbo v1, "\u4e0d\u518d\u64ad\u653e"

    new-instance v2, Lcom/mobisage/android/MobiSageActivity$2;

    invoke-direct {v2, p0}, Lcom/mobisage/android/MobiSageActivity$2;-><init>(Lcom/mobisage/android/MobiSageActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/mobisage/android/MobiSageActivity;->dialog:Landroid/app/Dialog;

    .line 661
    iget-object v0, p0, Lcom/mobisage/android/MobiSageActivity;->dialog:Landroid/app/Dialog;

    new-instance v1, Lcom/mobisage/android/MobiSageActivity$4;

    invoke-direct {v1, p0}, Lcom/mobisage/android/MobiSageActivity$4;-><init>(Lcom/mobisage/android/MobiSageActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 670
    iget-object v0, p0, Lcom/mobisage/android/MobiSageActivity;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 671
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mobisage/android/MobiSageActivity;->dialogShowing:Z

    goto :goto_1

    .line 630
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 728
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    const-string/jumbo v4, "\u540e\u9000"

    invoke-interface {p1, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 729
    .local v0, "menuItem":Landroid/view/MenuItem;
    invoke-virtual {p0}, Lcom/mobisage/android/MobiSageActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "mobisage/back.png"

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 733
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string/jumbo v4, "\u524d\u8fdb"

    invoke-interface {p1, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 734
    invoke-virtual {p0}, Lcom/mobisage/android/MobiSageActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "mobisage/foward.png"

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 738
    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    const-string/jumbo v4, "\u5173\u95ed"

    invoke-interface {p1, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 739
    invoke-virtual {p0}, Lcom/mobisage/android/MobiSageActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "mobisage/close.png"

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 745
    .end local v0    # "menuItem":Landroid/view/MenuItem;
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1

    .line 742
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 4

    .prologue
    .line 687
    invoke-virtual {p0}, Lcom/mobisage/android/MobiSageActivity;->onVideoViewDestroy()V

    .line 689
    sget-object v2, Lcom/mobisage/android/MobiSageActivity;->sAdViewMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget v3, p0, Lcom/mobisage/android/MobiSageActivity;->mAdViewId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobisage/android/MobiSageAdView;

    .line 690
    .local v0, "adView":Lcom/mobisage/android/MobiSageAdView;
    if-eqz v0, :cond_1

    .line 691
    iget-object v2, v0, Lcom/mobisage/android/MobiSageAdView;->mListener:Lcom/mobisage/android/IMobiSageAdViewListener;

    if-eqz v2, :cond_0

    .line 692
    iget-object v2, v0, Lcom/mobisage/android/MobiSageAdView;->mListener:Lcom/mobisage/android/IMobiSageAdViewListener;

    invoke-interface {v2, v0}, Lcom/mobisage/android/IMobiSageAdViewListener;->onMobiSageAdViewHideWindow(Lcom/mobisage/android/MobiSageAdView;)V

    .line 695
    :cond_0
    sget-object v2, Lcom/mobisage/android/MobiSageActivity;->sAdViewMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget v3, p0, Lcom/mobisage/android/MobiSageActivity;->mAdViewId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 697
    :cond_1
    iget-object v2, p0, Lcom/mobisage/android/MobiSageActivity;->mainView:Lcom/mobisage/android/MobiSageAdPageWebView;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/mobisage/android/MobiSageActivity;->mainView:Lcom/mobisage/android/MobiSageAdPageWebView;

    invoke-virtual {v2}, Lcom/mobisage/android/MobiSageAdPageWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 698
    iget-object v2, p0, Lcom/mobisage/android/MobiSageActivity;->mainView:Lcom/mobisage/android/MobiSageAdPageWebView;

    invoke-virtual {v2}, Lcom/mobisage/android/MobiSageAdPageWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 699
    .local v1, "viewGroup":Landroid/view/ViewGroup;
    iget-object v2, p0, Lcom/mobisage/android/MobiSageActivity;->mainView:Lcom/mobisage/android/MobiSageAdPageWebView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 700
    iget-object v2, p0, Lcom/mobisage/android/MobiSageActivity;->mainView:Lcom/mobisage/android/MobiSageAdPageWebView;

    invoke-virtual {v2}, Lcom/mobisage/android/MobiSageAdPageWebView;->destroy()V

    .line 702
    .end local v1    # "viewGroup":Landroid/view/ViewGroup;
    :cond_2
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 703
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 391
    const/4 v1, 0x4

    if-ne p1, v1, :cond_3

    .line 392
    iget-object v1, p0, Lcom/mobisage/android/MobiSageActivity;->mobiSageAdWebChromeClient:Lcom/mobisage/android/MobiSageAdWebChromeClient;

    if-eqz v1, :cond_0

    .line 393
    iget-object v1, p0, Lcom/mobisage/android/MobiSageActivity;->mobiSageAdWebChromeClient:Lcom/mobisage/android/MobiSageAdWebChromeClient;

    invoke-virtual {v1}, Lcom/mobisage/android/MobiSageAdWebChromeClient;->isCustomViewShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 394
    iget-object v1, p0, Lcom/mobisage/android/MobiSageActivity;->mobiSageAdWebChromeClient:Lcom/mobisage/android/MobiSageAdWebChromeClient;

    invoke-virtual {v1}, Lcom/mobisage/android/MobiSageAdWebChromeClient;->onHideCustomView()V

    .line 418
    :goto_0
    return v0

    .line 398
    :cond_0
    iget-object v1, p0, Lcom/mobisage/android/MobiSageActivity;->mVideoView:Lcom/mobisage/android/MobiSageVideoView;

    if-eqz v1, :cond_3

    .line 399
    iget-boolean v1, p0, Lcom/mobisage/android/MobiSageActivity;->allowBackKey:Z

    if-nez v1, :cond_1

    .line 400
    iget-object v1, p0, Lcom/mobisage/android/MobiSageActivity;->mVideoView:Lcom/mobisage/android/MobiSageVideoView;

    invoke-virtual {v1}, Lcom/mobisage/android/MobiSageVideoView;->getCurrentPosition()I

    move-result v1

    iput v1, p0, Lcom/mobisage/android/MobiSageActivity;->seekTime:I

    .line 401
    iget-object v1, p0, Lcom/mobisage/android/MobiSageActivity;->mVideoView:Lcom/mobisage/android/MobiSageVideoView;

    invoke-virtual {v1}, Lcom/mobisage/android/MobiSageVideoView;->pause()V

    .line 402
    iput-boolean v0, p0, Lcom/mobisage/android/MobiSageActivity;->dialogShowing:Z

    .line 403
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/mobisage/android/MobiSageActivity;->showDialog(I)V

    goto :goto_0

    .line 406
    :cond_1
    iget-object v1, p0, Lcom/mobisage/android/MobiSageActivity;->mVideoView:Lcom/mobisage/android/MobiSageVideoView;

    invoke-virtual {v1}, Lcom/mobisage/android/MobiSageVideoView;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 407
    iget-object v1, p0, Lcom/mobisage/android/MobiSageActivity;->mVideoView:Lcom/mobisage/android/MobiSageVideoView;

    invoke-virtual {v1}, Lcom/mobisage/android/MobiSageVideoView;->stopPlayback()V

    .line 408
    iget-object v1, p0, Lcom/mobisage/android/MobiSageActivity;->mVideoView:Lcom/mobisage/android/MobiSageVideoView;

    invoke-virtual {v1}, Lcom/mobisage/android/MobiSageVideoView;->clearFocus()V

    .line 409
    iget-object v1, p0, Lcom/mobisage/android/MobiSageActivity;->timer:Ljava/util/Timer;

    if-eqz v1, :cond_2

    .line 410
    iget-object v1, p0, Lcom/mobisage/android/MobiSageActivity;->timer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 412
    :cond_2
    invoke-virtual {p0}, Lcom/mobisage/android/MobiSageActivity;->finish()V

    goto :goto_0

    .line 418
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 750
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 761
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 752
    :pswitch_0
    iget-object v1, p0, Lcom/mobisage/android/MobiSageActivity;->mainView:Lcom/mobisage/android/MobiSageAdPageWebView;

    invoke-virtual {v1}, Lcom/mobisage/android/MobiSageAdPageWebView;->goBack()V

    goto :goto_0

    .line 755
    :pswitch_1
    iget-object v1, p0, Lcom/mobisage/android/MobiSageActivity;->mainView:Lcom/mobisage/android/MobiSageAdPageWebView;

    invoke-virtual {v1}, Lcom/mobisage/android/MobiSageAdPageWebView;->goForward()V

    goto :goto_0

    .line 758
    :pswitch_2
    invoke-virtual {p0}, Lcom/mobisage/android/MobiSageActivity;->finish()V

    goto :goto_0

    .line 750
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 595
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 596
    iget-object v0, p0, Lcom/mobisage/android/MobiSageActivity;->mVideoView:Lcom/mobisage/android/MobiSageVideoView;

    if-eqz v0, :cond_0

    .line 597
    iget-object v0, p0, Lcom/mobisage/android/MobiSageActivity;->mVideoView:Lcom/mobisage/android/MobiSageVideoView;

    invoke-virtual {v0}, Lcom/mobisage/android/MobiSageVideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 598
    iget-object v0, p0, Lcom/mobisage/android/MobiSageActivity;->mVideoView:Lcom/mobisage/android/MobiSageVideoView;

    invoke-virtual {v0}, Lcom/mobisage/android/MobiSageVideoView;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/mobisage/android/MobiSageActivity;->seekTime:I

    .line 599
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "seekTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mobisage/android/MobiSageActivity;->seekTime:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mobisage/android/MobiSageLog;->e(Ljava/lang/Class;Ljava/lang/String;)V

    .line 600
    iget-object v0, p0, Lcom/mobisage/android/MobiSageActivity;->mVideoView:Lcom/mobisage/android/MobiSageVideoView;

    invoke-virtual {v0}, Lcom/mobisage/android/MobiSageVideoView;->pause()V

    .line 603
    :cond_0
    iget-object v0, p0, Lcom/mobisage/android/MobiSageActivity;->mobiSageAdWebChromeClient:Lcom/mobisage/android/MobiSageAdWebChromeClient;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mobisage/android/MobiSageActivity;->mobiSageAdWebChromeClient:Lcom/mobisage/android/MobiSageAdWebChromeClient;

    invoke-virtual {v0}, Lcom/mobisage/android/MobiSageAdWebChromeClient;->isCustomViewShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 605
    iget-object v0, p0, Lcom/mobisage/android/MobiSageActivity;->mobiSageAdWebChromeClient:Lcom/mobisage/android/MobiSageAdWebChromeClient;

    invoke-virtual {v0}, Lcom/mobisage/android/MobiSageAdWebChromeClient;->onHideCustomView()V

    .line 607
    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 707
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 708
    iget-object v0, p0, Lcom/mobisage/android/MobiSageActivity;->mVideoView:Lcom/mobisage/android/MobiSageVideoView;

    if-eqz v0, :cond_1

    .line 709
    iget v0, p0, Lcom/mobisage/android/MobiSageActivity;->seekTime:I

    if-lez v0, :cond_1

    .line 710
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "seekTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mobisage/android/MobiSageActivity;->seekTime:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mobisage/android/MobiSageLog;->i(Ljava/lang/Class;Ljava/lang/String;)V

    .line 712
    iget-object v0, p0, Lcom/mobisage/android/MobiSageActivity;->mVideoView:Lcom/mobisage/android/MobiSageVideoView;

    iget v1, p0, Lcom/mobisage/android/MobiSageActivity;->seekTime:I

    invoke-virtual {v0, v1}, Lcom/mobisage/android/MobiSageVideoView;->seekTo(I)V

    .line 714
    iget-boolean v0, p0, Lcom/mobisage/android/MobiSageActivity;->dialogShowing:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mobisage/android/MobiSageActivity;->dialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mobisage/android/MobiSageActivity;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 716
    :cond_0
    iget-object v0, p0, Lcom/mobisage/android/MobiSageActivity;->mVideoView:Lcom/mobisage/android/MobiSageVideoView;

    invoke-virtual {v0}, Lcom/mobisage/android/MobiSageVideoView;->start()V

    .line 720
    :cond_1
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 611
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 612
    iget-object v0, p0, Lcom/mobisage/android/MobiSageActivity;->mVideoView:Lcom/mobisage/android/MobiSageVideoView;

    if-eqz v0, :cond_0

    .line 613
    iget-object v0, p0, Lcom/mobisage/android/MobiSageActivity;->mVideoView:Lcom/mobisage/android/MobiSageVideoView;

    invoke-virtual {v0}, Lcom/mobisage/android/MobiSageVideoView;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/mobisage/android/MobiSageActivity;->seekTime:I

    .line 614
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "*** onSaveInstanceState ***"

    invoke-static {v0, v1}, Lcom/mobisage/android/MobiSageLog;->i(Ljava/lang/Class;Ljava/lang/String;)V

    .line 615
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dialogShowing: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mobisage/android/MobiSageActivity;->dialogShowing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", seekTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mobisage/android/MobiSageActivity;->seekTime:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mobisage/android/MobiSageLog;->i(Ljava/lang/Class;Ljava/lang/String;)V

    .line 617
    const-string v0, "dialog_showing"

    iget-boolean v1, p0, Lcom/mobisage/android/MobiSageActivity;->dialogShowing:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 618
    const-string/jumbo v0, "seek_time"

    iget v1, p0, Lcom/mobisage/android/MobiSageActivity;->seekTime:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 619
    iget-object v0, p0, Lcom/mobisage/android/MobiSageActivity;->mVideoView:Lcom/mobisage/android/MobiSageVideoView;

    invoke-virtual {v0}, Lcom/mobisage/android/MobiSageVideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 620
    iget-object v0, p0, Lcom/mobisage/android/MobiSageActivity;->mVideoView:Lcom/mobisage/android/MobiSageVideoView;

    invoke-virtual {v0}, Lcom/mobisage/android/MobiSageVideoView;->pause()V

    .line 623
    :cond_0
    return-void
.end method

.method protected onVideoViewDestroy()V
    .locals 3

    .prologue
    .line 569
    :try_start_0
    iget-object v1, p0, Lcom/mobisage/android/MobiSageActivity;->timer:Ljava/util/Timer;

    if-eqz v1, :cond_0

    .line 570
    iget-object v1, p0, Lcom/mobisage/android/MobiSageActivity;->timer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 571
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mobisage/android/MobiSageActivity;->timer:Ljava/util/Timer;

    .line 573
    :cond_0
    iget-object v1, p0, Lcom/mobisage/android/MobiSageActivity;->mVideoView:Lcom/mobisage/android/MobiSageVideoView;

    if-eqz v1, :cond_1

    .line 574
    iget-object v1, p0, Lcom/mobisage/android/MobiSageActivity;->mVideoView:Lcom/mobisage/android/MobiSageVideoView;

    invoke-virtual {v1}, Lcom/mobisage/android/MobiSageVideoView;->destroyDrawingCache()V

    .line 575
    iget-object v1, p0, Lcom/mobisage/android/MobiSageActivity;->mVideoView:Lcom/mobisage/android/MobiSageVideoView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/mobisage/android/MobiSageVideoView;->setMediaPlayPauseListener(Lcom/mobisage/android/MobiSageVideoView$MediaPlayPauseListener;)V

    .line 576
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mobisage/android/MobiSageActivity;->mVideoView:Lcom/mobisage/android/MobiSageVideoView;

    .line 578
    :cond_1
    iget-object v1, p0, Lcom/mobisage/android/MobiSageActivity;->overlayText:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    .line 579
    iget-object v1, p0, Lcom/mobisage/android/MobiSageActivity;->overlayText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->destroyDrawingCache()V

    .line 580
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mobisage/android/MobiSageActivity;->overlayText:Landroid/widget/TextView;

    .line 582
    :cond_2
    const/4 v1, 0x0

    sput-boolean v1, Lcom/mobisage/android/MobiSageActivity;->streamingVideo:Z

    .line 583
    const/4 v1, 0x0

    sput-boolean v1, Lcom/mobisage/android/MobiSageActivity;->videoError:Z

    .line 584
    iget-object v1, p0, Lcom/mobisage/android/MobiSageActivity;->mobiSageVideoView:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_3

    .line 585
    iget-object v1, p0, Lcom/mobisage/android/MobiSageActivity;->mobiSageVideoView:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 586
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mobisage/android/MobiSageActivity;->mobiSageVideoView:Landroid/widget/RelativeLayout;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 591
    :cond_3
    :goto_0
    return-void

    .line 588
    :catch_0
    move-exception v0

    .line 589
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mobisage/android/MobiSageLog;->e(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_0
.end method
