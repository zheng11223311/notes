.class public Lcom/youku/gamecenter/player/GameVideoBottomView;
.super Landroid/widget/LinearLayout;
.source "GameVideoBottomView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/gamecenter/player/GameVideoBottomView$OnBottomViewDisplayListener;,
        Lcom/youku/gamecenter/player/GameVideoBottomView$OnSmallButtonClickListener;,
        Lcom/youku/gamecenter/player/GameVideoBottomView$MediaPlayerControl;,
        Lcom/youku/gamecenter/player/GameVideoBottomView$AnimationActionListener;
    }
.end annotation


# static fields
.field private static final FADE_OUT:I = 0x1

.field private static final SHOW_PROGRESS:I = 0x2

.field private static final TAG:Ljava/lang/String; = "GameVideoBottomView"

.field private static final mDefaultTimeout:I = 0xbb8

.field private static mOnBottonViewDisplayListener:Lcom/youku/gamecenter/player/GameVideoBottomView$OnBottomViewDisplayListener;

.field private static mOnSmallButtonClickListener:Lcom/youku/gamecenter/player/GameVideoBottomView$OnSmallButtonClickListener;


# instance fields
.field private mDragging:Z

.field private mHandler:Landroid/os/Handler;

.field private mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mPlayControl:Landroid/widget/ImageView;

.field private mPlayer:Lcom/youku/gamecenter/player/GameVideoBottomView$MediaPlayerControl;

.field private mSeekbar:Landroid/widget/SeekBar;

.field private mSeekbarLayout:Landroid/view/View;

.field public mShowing:Z

.field private mSmallscreen:Landroid/widget/ImageView;

.field private mTimeLeft:Landroid/widget/TextView;

.field private mTimeRight:Landroid/widget/TextView;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 29
    iput-object v0, p0, Lcom/youku/gamecenter/player/GameVideoBottomView;->mPlayControl:Landroid/widget/ImageView;

    .line 30
    iput-object v0, p0, Lcom/youku/gamecenter/player/GameVideoBottomView;->mSmallscreen:Landroid/widget/ImageView;

    .line 31
    iput-object v0, p0, Lcom/youku/gamecenter/player/GameVideoBottomView;->mSeekbar:Landroid/widget/SeekBar;

    .line 32
    iput-object v0, p0, Lcom/youku/gamecenter/player/GameVideoBottomView;->mTimeLeft:Landroid/widget/TextView;

    .line 33
    iput-object v0, p0, Lcom/youku/gamecenter/player/GameVideoBottomView;->mTimeRight:Landroid/widget/TextView;

    .line 34
    iput-object v0, p0, Lcom/youku/gamecenter/player/GameVideoBottomView;->mSeekbarLayout:Landroid/view/View;

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youku/gamecenter/player/GameVideoBottomView;->mDragging:Z

    .line 160
    new-instance v0, Lcom/youku/gamecenter/player/GameVideoBottomView$1;

    invoke-direct {v0, p0}, Lcom/youku/gamecenter/player/GameVideoBottomView$1;-><init>(Lcom/youku/gamecenter/player/GameVideoBottomView;)V

    iput-object v0, p0, Lcom/youku/gamecenter/player/GameVideoBottomView;->mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 210
    new-instance v0, Lcom/youku/gamecenter/player/GameVideoBottomView$2;

    invoke-direct {v0, p0}, Lcom/youku/gamecenter/player/GameVideoBottomView$2;-><init>(Lcom/youku/gamecenter/player/GameVideoBottomView;)V

    iput-object v0, p0, Lcom/youku/gamecenter/player/GameVideoBottomView;->mHandler:Landroid/os/Handler;

    .line 45
    invoke-direct {p0, p1}, Lcom/youku/gamecenter/player/GameVideoBottomView;->init(Landroid/content/Context;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 49
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    iput-object v0, p0, Lcom/youku/gamecenter/player/GameVideoBottomView;->mPlayControl:Landroid/widget/ImageView;

    .line 30
    iput-object v0, p0, Lcom/youku/gamecenter/player/GameVideoBottomView;->mSmallscreen:Landroid/widget/ImageView;

    .line 31
    iput-object v0, p0, Lcom/youku/gamecenter/player/GameVideoBottomView;->mSeekbar:Landroid/widget/SeekBar;

    .line 32
    iput-object v0, p0, Lcom/youku/gamecenter/player/GameVideoBottomView;->mTimeLeft:Landroid/widget/TextView;

    .line 33
    iput-object v0, p0, Lcom/youku/gamecenter/player/GameVideoBottomView;->mTimeRight:Landroid/widget/TextView;

    .line 34
    iput-object v0, p0, Lcom/youku/gamecenter/player/GameVideoBottomView;->mSeekbarLayout:Landroid/view/View;

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youku/gamecenter/player/GameVideoBottomView;->mDragging:Z

    .line 160
    new-instance v0, Lcom/youku/gamecenter/player/GameVideoBottomView$1;

    invoke-direct {v0, p0}, Lcom/youku/gamecenter/player/GameVideoBottomView$1;-><init>(Lcom/youku/gamecenter/player/GameVideoBottomView;)V

    iput-object v0, p0, Lcom/youku/gamecenter/player/GameVideoBottomView;->mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 210
    new-instance v0, Lcom/youku/gamecenter/player/GameVideoBottomView$2;

    invoke-direct {v0, p0}, Lcom/youku/gamecenter/player/GameVideoBottomView$2;-><init>(Lcom/youku/gamecenter/player/GameVideoBottomView;)V

    iput-object v0, p0, Lcom/youku/gamecenter/player/GameVideoBottomView;->mHandler:Landroid/os/Handler;

    .line 50
    invoke-direct {p0, p1}, Lcom/youku/gamecenter/player/GameVideoBottomView;->init(Landroid/content/Context;)V

    .line 51
    return-void
.end method

.method static synthetic access$000(Lcom/youku/gamecenter/player/GameVideoBottomView;)Lcom/youku/gamecenter/player/GameVideoBottomView$MediaPlayerControl;
    .locals 1
    .param p0, "x0"    # Lcom/youku/gamecenter/player/GameVideoBottomView;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/youku/gamecenter/player/GameVideoBottomView;->mPlayer:Lcom/youku/gamecenter/player/GameVideoBottomView$MediaPlayerControl;

    return-object v0
.end method

.method static synthetic access$100(Lcom/youku/gamecenter/player/GameVideoBottomView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/youku/gamecenter/player/GameVideoBottomView;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/youku/gamecenter/player/GameVideoBottomView;->mTimeLeft:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/youku/gamecenter/player/GameVideoBottomView;J)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/youku/gamecenter/player/GameVideoBottomView;
    .param p1, "x1"    # J

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lcom/youku/gamecenter/player/GameVideoBottomView;->getFormatTime(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/youku/gamecenter/player/GameVideoBottomView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/youku/gamecenter/player/GameVideoBottomView;

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/youku/gamecenter/player/GameVideoBottomView;->mDragging:Z

    return v0
.end method

.method static synthetic access$302(Lcom/youku/gamecenter/player/GameVideoBottomView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/youku/gamecenter/player/GameVideoBottomView;
    .param p1, "x1"    # Z

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/youku/gamecenter/player/GameVideoBottomView;->mDragging:Z

    return p1
.end method

.method static synthetic access$400(Lcom/youku/gamecenter/player/GameVideoBottomView;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/youku/gamecenter/player/GameVideoBottomView;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/youku/gamecenter/player/GameVideoBottomView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/youku/gamecenter/player/GameVideoBottomView;)I
    .locals 1
    .param p0, "x0"    # Lcom/youku/gamecenter/player/GameVideoBottomView;

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/youku/gamecenter/player/GameVideoBottomView;->setProgress()I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/youku/gamecenter/player/GameVideoBottomView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/youku/gamecenter/player/GameVideoBottomView;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/youku/gamecenter/player/GameVideoBottomView;->mView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$700()Lcom/youku/gamecenter/player/GameVideoBottomView$OnBottomViewDisplayListener;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/youku/gamecenter/player/GameVideoBottomView;->mOnBottonViewDisplayListener:Lcom/youku/gamecenter/player/GameVideoBottomView$OnBottomViewDisplayListener;

    return-object v0
.end method

.method static synthetic access$800(Lcom/youku/gamecenter/player/GameVideoBottomView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/youku/gamecenter/player/GameVideoBottomView;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/youku/gamecenter/player/GameVideoBottomView;->mPlayControl:Landroid/widget/ImageView;

    return-object v0
.end method

.method private doPauseResume()V
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/youku/gamecenter/player/GameVideoBottomView;->mPlayer:Lcom/youku/gamecenter/player/GameVideoBottomView$MediaPlayerControl;

    if-nez v0, :cond_0

    .line 111
    :goto_0
    return-void

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/youku/gamecenter/player/GameVideoBottomView;->mPlayer:Lcom/youku/gamecenter/player/GameVideoBottomView$MediaPlayerControl;

    invoke-interface {v0}, Lcom/youku/gamecenter/player/GameVideoBottomView$MediaPlayerControl;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 106
    iget-object v0, p0, Lcom/youku/gamecenter/player/GameVideoBottomView;->mPlayer:Lcom/youku/gamecenter/player/GameVideoBottomView$MediaPlayerControl;

    invoke-interface {v0}, Lcom/youku/gamecenter/player/GameVideoBottomView$MediaPlayerControl;->pause()V

    .line 110
    :goto_1
    invoke-virtual {p0}, Lcom/youku/gamecenter/player/GameVideoBottomView;->updatePlayPauseState()V

    goto :goto_0

    .line 108
    :cond_1
    iget-object v0, p0, Lcom/youku/gamecenter/player/GameVideoBottomView;->mPlayer:Lcom/youku/gamecenter/player/GameVideoBottomView$MediaPlayerControl;

    invoke-interface {v0}, Lcom/youku/gamecenter/player/GameVideoBottomView$MediaPlayerControl;->start()V

    goto :goto_1
.end method

.method private getFormatTime(J)Ljava/lang/String;
    .locals 11
    .param p1, "millseconds"    # J

    .prologue
    .line 332
    const-wide/16 v8, 0x3e8

    div-long v6, p1, v8

    .line 333
    .local v6, "seconds":J
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 334
    .local v0, "buf":Ljava/lang/StringBuffer;
    const-wide/16 v8, 0x3c

    div-long v2, v6, v8

    .line 335
    .local v2, "min":J
    const-wide/16 v8, 0x3c

    mul-long/2addr v8, v2

    sub-long v4, v6, v8

    .line 337
    .local v4, "sec":J
    const-wide/16 v8, 0xa

    cmp-long v1, v2, v8

    if-gez v1, :cond_0

    .line 338
    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 340
    :cond_0
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v8, ":"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 341
    const-wide/16 v8, 0xa

    cmp-long v1, v4, v8

    if-gez v1, :cond_1

    .line 342
    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 344
    :cond_1
    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 345
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private handleSmallClick()V
    .locals 2

    .prologue
    .line 361
    const-string v0, "GameVideoBottomView"

    const-string v1, "click back"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    sget-object v0, Lcom/youku/gamecenter/player/GameVideoBottomView;->mOnSmallButtonClickListener:Lcom/youku/gamecenter/player/GameVideoBottomView$OnSmallButtonClickListener;

    if-eqz v0, :cond_0

    .line 363
    sget-object v0, Lcom/youku/gamecenter/player/GameVideoBottomView;->mOnSmallButtonClickListener:Lcom/youku/gamecenter/player/GameVideoBottomView$OnSmallButtonClickListener;

    invoke-interface {v0}, Lcom/youku/gamecenter/player/GameVideoBottomView$OnSmallButtonClickListener;->handleSmallClick()V

    .line 365
    :cond_0
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/youku/gamecenter/player/GameVideoBottomView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/youku/gamecenter/player/GameVideoBottomView;->getLayout()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/gamecenter/player/GameVideoBottomView;->mView:Landroid/view/View;

    .line 77
    iget-object v0, p0, Lcom/youku/gamecenter/player/GameVideoBottomView;->mView:Landroid/view/View;

    sget v1, Lcom/youku/gamecenter/R$id;->game_video_play_control_btn:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/youku/gamecenter/player/GameVideoBottomView;->mPlayControl:Landroid/widget/ImageView;

    .line 78
    iget-object v0, p0, Lcom/youku/gamecenter/player/GameVideoBottomView;->mView:Landroid/view/View;

    sget v1, Lcom/youku/gamecenter/R$id;->game_video_fullscreen_btn:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/youku/gamecenter/player/GameVideoBottomView;->mSmallscreen:Landroid/widget/ImageView;

    .line 79
    iget-object v0, p0, Lcom/youku/gamecenter/player/GameVideoBottomView;->mView:Landroid/view/View;

    sget v1, Lcom/youku/gamecenter/R$id;->game_video_small_seekbar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/youku/gamecenter/player/GameVideoBottomView;->mSeekbar:Landroid/widget/SeekBar;

    .line 80
    iget-object v0, p0, Lcom/youku/gamecenter/player/GameVideoBottomView;->mView:Landroid/view/View;

    sget v1, Lcom/youku/gamecenter/R$id;->game_video_time_left:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/youku/gamecenter/player/GameVideoBottomView;->mTimeLeft:Landroid/widget/TextView;

    .line 81
    iget-object v0, p0, Lcom/youku/gamecenter/player/GameVideoBottomView;->mView:Landroid/view/View;

    sget v1, Lcom/youku/gamecenter/R$id;->game_video_time_right:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/youku/gamecenter/player/GameVideoBottomView;->mTimeRight:Landroid/widget/TextView;

    .line 82
    iget-object v0, p0, Lcom/youku/gamecenter/player/GameVideoBottomView;->mView:Landroid/view/View;

    sget v1, Lcom/youku/gamecenter/R$id;->plugin_small_seekbar_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/gamecenter/player/GameVideoBottomView;->mSeekbarLayout:Landroid/view/View;

    .line 83
    iget-object v0, p0, Lcom/youku/gamecenter/player/GameVideoBottomView;->mPlayControl:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    iget-object v0, p0, Lcom/youku/gamecenter/player/GameVideoBottomView;->mSmallscreen:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    iget-object v0, p0, Lcom/youku/gamecenter/player/GameVideoBottomView;->mSeekbar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/youku/gamecenter/player/GameVideoBottomView;->mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 86
    iget-object v0, p0, Lcom/youku/gamecenter/player/GameVideoBottomView;->mSeekbar:Landroid/widget/SeekBar;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 87
    return-void
.end method

.method public static pluginBottomHide(Landroid/view/View;Lcom/youku/gamecenter/player/GameVideoBottomView$AnimationActionListener;)V
    .locals 10
    .param p0, "view"    # Landroid/view/View;
    .param p1, "mAnimationActionListener"    # Lcom/youku/gamecenter/player/GameVideoBottomView$AnimationActionListener;

    .prologue
    const/4 v9, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 245
    invoke-virtual {p0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v3

    if-nez v3, :cond_0

    .line 246
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v8, 0x3f800000    # 1.0f

    move v3, v1

    move v4, v2

    move v5, v1

    move v6, v2

    move v7, v1

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 247
    .local v0, "mTranslateAnimation":Landroid/view/animation/TranslateAnimation;
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 248
    invoke-virtual {v0, v9}, Landroid/view/animation/TranslateAnimation;->setRepeatCount(I)V

    .line 249
    invoke-virtual {v0, v9}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 250
    new-instance v1, Lcom/youku/gamecenter/player/GameVideoBottomView$4;

    invoke-direct {v1, p1, p0}, Lcom/youku/gamecenter/player/GameVideoBottomView$4;-><init>(Lcom/youku/gamecenter/player/GameVideoBottomView$AnimationActionListener;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 271
    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 273
    .end local v0    # "mTranslateAnimation":Landroid/view/animation/TranslateAnimation;
    :cond_0
    return-void
.end method

.method private setProgress()I
    .locals 10

    .prologue
    .line 132
    iget-object v5, p0, Lcom/youku/gamecenter/player/GameVideoBottomView;->mPlayer:Lcom/youku/gamecenter/player/GameVideoBottomView$MediaPlayerControl;

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Lcom/youku/gamecenter/player/GameVideoBottomView;->mDragging:Z

    if-eqz v5, :cond_2

    .line 133
    :cond_0
    const/4 v4, 0x0

    .line 153
    :cond_1
    :goto_0
    return v4

    .line 135
    :cond_2
    iget-object v5, p0, Lcom/youku/gamecenter/player/GameVideoBottomView;->mPlayer:Lcom/youku/gamecenter/player/GameVideoBottomView$MediaPlayerControl;

    invoke-interface {v5}, Lcom/youku/gamecenter/player/GameVideoBottomView$MediaPlayerControl;->getCurrentPosition()I

    move-result v4

    .line 136
    .local v4, "position":I
    iget-object v5, p0, Lcom/youku/gamecenter/player/GameVideoBottomView;->mPlayer:Lcom/youku/gamecenter/player/GameVideoBottomView$MediaPlayerControl;

    invoke-interface {v5}, Lcom/youku/gamecenter/player/GameVideoBottomView$MediaPlayerControl;->getDuration()I

    move-result v0

    .line 137
    .local v0, "duration":I
    iget-object v5, p0, Lcom/youku/gamecenter/player/GameVideoBottomView;->mSeekbar:Landroid/widget/SeekBar;

    if-eqz v5, :cond_4

    .line 138
    if-lez v0, :cond_3

    .line 140
    const-wide/16 v6, 0x3e8

    int-to-long v8, v4

    mul-long/2addr v6, v8

    int-to-long v8, v0

    div-long v2, v6, v8

    .line 141
    .local v2, "pos":J
    iget-object v5, p0, Lcom/youku/gamecenter/player/GameVideoBottomView;->mSeekbar:Landroid/widget/SeekBar;

    long-to-int v6, v2

    invoke-virtual {v5, v6}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 143
    .end local v2    # "pos":J
    :cond_3
    iget-object v5, p0, Lcom/youku/gamecenter/player/GameVideoBottomView;->mPlayer:Lcom/youku/gamecenter/player/GameVideoBottomView$MediaPlayerControl;

    invoke-interface {v5}, Lcom/youku/gamecenter/player/GameVideoBottomView$MediaPlayerControl;->getBufferPercentage()I

    move-result v1

    .line 144
    .local v1, "pecent":I
    iget-object v5, p0, Lcom/youku/gamecenter/player/GameVideoBottomView;->mSeekbar:Landroid/widget/SeekBar;

    mul-int/lit8 v6, v1, 0xa

    invoke-virtual {v5, v6}, Landroid/widget/SeekBar;->setSecondaryProgress(I)V

    .line 146
    .end local v1    # "pecent":I
    :cond_4
    iget-object v5, p0, Lcom/youku/gamecenter/player/GameVideoBottomView;->mTimeLeft:Landroid/widget/TextView;

    if-eqz v5, :cond_5

    .line 147
    iget-object v5, p0, Lcom/youku/gamecenter/player/GameVideoBottomView;->mTimeLeft:Landroid/widget/TextView;

    int-to-long v6, v4

    invoke-direct {p0, v6, v7}, Lcom/youku/gamecenter/player/GameVideoBottomView;->getFormatTime(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    :cond_5
    iget-object v5, p0, Lcom/youku/gamecenter/player/GameVideoBottomView;->mTimeRight:Landroid/widget/TextView;

    if-eqz v5, :cond_1

    .line 150
    iget-object v5, p0, Lcom/youku/gamecenter/player/GameVideoBottomView;->mTimeRight:Landroid/widget/TextView;

    int-to-long v6, v0

    invoke-direct {p0, v6, v7}, Lcom/youku/gamecenter/player/GameVideoBottomView;->getFormatTime(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public clearListener()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 127
    sput-object v0, Lcom/youku/gamecenter/player/GameVideoBottomView;->mOnBottonViewDisplayListener:Lcom/youku/gamecenter/player/GameVideoBottomView$OnBottomViewDisplayListener;

    .line 128
    sput-object v0, Lcom/youku/gamecenter/player/GameVideoBottomView;->mOnSmallButtonClickListener:Lcom/youku/gamecenter/player/GameVideoBottomView$OnSmallButtonClickListener;

    .line 129
    return-void
.end method

.method protected getLayout()I
    .locals 1

    .prologue
    .line 72
    sget v0, Lcom/youku/gamecenter/R$layout;->layout_game_video_bottom_view:I

    return v0
.end method

.method protected getPauseDrawable()I
    .locals 1

    .prologue
    .line 324
    sget v0, Lcom/youku/gamecenter/R$drawable;->game_video_play_control_pause:I

    return v0
.end method

.method protected getPlayDrawable()I
    .locals 1

    .prologue
    .line 328
    sget v0, Lcom/youku/gamecenter/R$drawable;->game_video_play_control_play:I

    return v0
.end method

.method public hide()V
    .locals 2

    .prologue
    .line 231
    sget-object v0, Lcom/youku/gamecenter/player/GameVideoBottomView;->mOnBottonViewDisplayListener:Lcom/youku/gamecenter/player/GameVideoBottomView$OnBottomViewDisplayListener;

    if-eqz v0, :cond_0

    .line 232
    sget-object v0, Lcom/youku/gamecenter/player/GameVideoBottomView;->mOnBottonViewDisplayListener:Lcom/youku/gamecenter/player/GameVideoBottomView$OnBottomViewDisplayListener;

    invoke-interface {v0}, Lcom/youku/gamecenter/player/GameVideoBottomView$OnBottomViewDisplayListener;->onHide()V

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/youku/gamecenter/player/GameVideoBottomView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 235
    new-instance v0, Lcom/youku/gamecenter/player/GameVideoBottomView$3;

    invoke-direct {v0, p0}, Lcom/youku/gamecenter/player/GameVideoBottomView$3;-><init>(Lcom/youku/gamecenter/player/GameVideoBottomView;)V

    invoke-static {p0, v0}, Lcom/youku/gamecenter/player/GameVideoBottomView;->pluginBottomHide(Landroid/view/View;Lcom/youku/gamecenter/player/GameVideoBottomView$AnimationActionListener;)V

    .line 242
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 304
    iget-boolean v0, p0, Lcom/youku/gamecenter/player/GameVideoBottomView;->mShowing:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/youku/gamecenter/player/GameVideoBottomView;->mPlayControl:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_0

    .line 91
    invoke-direct {p0}, Lcom/youku/gamecenter/player/GameVideoBottomView;->doPauseResume()V

    .line 92
    iget-object v0, p0, Lcom/youku/gamecenter/player/GameVideoBottomView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/youku/gamecenter/player/GameVideoBottomView;->mSmallscreen:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_1

    .line 96
    invoke-direct {p0}, Lcom/youku/gamecenter/player/GameVideoBottomView;->handleSmallClick()V

    .line 99
    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 55
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 68
    :goto_0
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 57
    :pswitch_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/player/GameVideoBottomView;->show(I)V

    goto :goto_0

    .line 60
    :pswitch_2
    const/16 v0, 0xbb8

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/player/GameVideoBottomView;->show(I)V

    goto :goto_0

    .line 63
    :pswitch_3
    invoke-virtual {p0}, Lcom/youku/gamecenter/player/GameVideoBottomView;->hide()V

    goto :goto_0

    .line 55
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public setMediaPlayer(Lcom/youku/gamecenter/player/GameVideoBottomView$MediaPlayerControl;)V
    .locals 0
    .param p1, "player"    # Lcom/youku/gamecenter/player/GameVideoBottomView$MediaPlayerControl;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/youku/gamecenter/player/GameVideoBottomView;->mPlayer:Lcom/youku/gamecenter/player/GameVideoBottomView$MediaPlayerControl;

    .line 115
    invoke-virtual {p0}, Lcom/youku/gamecenter/player/GameVideoBottomView;->updatePlayPauseState()V

    .line 116
    return-void
.end method

.method public setOnBottomViewDisplayListener(Lcom/youku/gamecenter/player/GameVideoBottomView$OnBottomViewDisplayListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/youku/gamecenter/player/GameVideoBottomView$OnBottomViewDisplayListener;

    .prologue
    .line 119
    sput-object p1, Lcom/youku/gamecenter/player/GameVideoBottomView;->mOnBottonViewDisplayListener:Lcom/youku/gamecenter/player/GameVideoBottomView$OnBottomViewDisplayListener;

    .line 120
    return-void
.end method

.method public setSecondaryProgress(I)V
    .locals 1
    .param p1, "secondaryProgress"    # I

    .prologue
    .line 157
    iget-object v0, p0, Lcom/youku/gamecenter/player/GameVideoBottomView;->mSeekbar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setSecondaryProgress(I)V

    .line 158
    return-void
.end method

.method public setmOnSmallButtonClickListener(Lcom/youku/gamecenter/player/GameVideoBottomView$OnSmallButtonClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/youku/gamecenter/player/GameVideoBottomView$OnSmallButtonClickListener;

    .prologue
    .line 123
    sput-object p1, Lcom/youku/gamecenter/player/GameVideoBottomView;->mOnSmallButtonClickListener:Lcom/youku/gamecenter/player/GameVideoBottomView$OnSmallButtonClickListener;

    .line 124
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 280
    const/16 v0, 0xbb8

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/player/GameVideoBottomView;->show(I)V

    .line 281
    return-void
.end method

.method public show(I)V
    .locals 4
    .param p1, "timeout"    # I

    .prologue
    const/4 v3, 0x1

    .line 284
    iget-boolean v1, p0, Lcom/youku/gamecenter/player/GameVideoBottomView;->mShowing:Z

    if-nez v1, :cond_0

    .line 285
    iget-object v1, p0, Lcom/youku/gamecenter/player/GameVideoBottomView;->mView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 286
    iput-boolean v3, p0, Lcom/youku/gamecenter/player/GameVideoBottomView;->mShowing:Z

    .line 289
    :cond_0
    invoke-virtual {p0}, Lcom/youku/gamecenter/player/GameVideoBottomView;->updatePlayPauseState()V

    .line 290
    iget-object v1, p0, Lcom/youku/gamecenter/player/GameVideoBottomView;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 292
    iget-object v1, p0, Lcom/youku/gamecenter/player/GameVideoBottomView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 293
    .local v0, "msg":Landroid/os/Message;
    if-eqz p1, :cond_1

    .line 294
    iget-object v1, p0, Lcom/youku/gamecenter/player/GameVideoBottomView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 295
    iget-object v1, p0, Lcom/youku/gamecenter/player/GameVideoBottomView;->mHandler:Landroid/os/Handler;

    int-to-long v2, p1

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 298
    :cond_1
    sget-object v1, Lcom/youku/gamecenter/player/GameVideoBottomView;->mOnBottonViewDisplayListener:Lcom/youku/gamecenter/player/GameVideoBottomView$OnBottomViewDisplayListener;

    if-eqz v1, :cond_2

    .line 299
    sget-object v1, Lcom/youku/gamecenter/player/GameVideoBottomView;->mOnBottonViewDisplayListener:Lcom/youku/gamecenter/player/GameVideoBottomView$OnBottomViewDisplayListener;

    invoke-interface {v1}, Lcom/youku/gamecenter/player/GameVideoBottomView$OnBottomViewDisplayListener;->onShow()V

    .line 301
    :cond_2
    return-void
.end method

.method public updatePlayPauseState()V
    .locals 2

    .prologue
    .line 310
    iget-object v0, p0, Lcom/youku/gamecenter/player/GameVideoBottomView;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/youku/gamecenter/player/GameVideoBottomView$5;

    invoke-direct {v1, p0}, Lcom/youku/gamecenter/player/GameVideoBottomView$5;-><init>(Lcom/youku/gamecenter/player/GameVideoBottomView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 321
    return-void
.end method
