.class public Lcom/youku/player/plugin/PluginPayTip;
.super Lcom/youku/player/plugin/PluginOverlay;
.source "PluginPayTip.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/player/plugin/PluginPayTip$5;,
        Lcom/youku/player/plugin/PluginPayTip$TipState;
    }
.end annotation


# instance fields
.field protected isHide:Z

.field private isRealStart:Z

.field mActivity:Landroid/app/Activity;

.field mArrowButton:Landroid/widget/Button;

.field private mCloseButton:Landroid/widget/Button;

.field mContainerView:Landroid/view/View;

.field private mHandler:Landroid/os/Handler;

.field mLayoutInflater:Landroid/view/LayoutInflater;

.field private mPayTipLayout:Landroid/widget/RelativeLayout;

.field private mResources:Landroid/content/res/Resources;

.field private mState:Lcom/youku/player/plugin/PluginPayTip$TipState;

.field mTipTextView:Landroid/widget/TextView;

.field private mVid:Ljava/lang/String;

.field mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/youku/player/plugin/MediaPlayerDelegate;)V
    .locals 1
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "mediaPlayerDelegate"    # Lcom/youku/player/plugin/MediaPlayerDelegate;

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/youku/player/plugin/PluginOverlay;-><init>(Landroid/content/Context;Lcom/youku/player/plugin/MediaPlayerDelegate;)V

    .line 35
    sget-object v0, Lcom/youku/player/plugin/PluginPayTip$TipState;->SHOW_FULL:Lcom/youku/player/plugin/PluginPayTip$TipState;

    iput-object v0, p0, Lcom/youku/player/plugin/PluginPayTip;->mState:Lcom/youku/player/plugin/PluginPayTip$TipState;

    .line 49
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/youku/player/plugin/PluginPayTip;->mHandler:Landroid/os/Handler;

    .line 42
    iput-object p2, p0, Lcom/youku/player/plugin/PluginPayTip;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    .line 43
    iput-object p1, p0, Lcom/youku/player/plugin/PluginPayTip;->mActivity:Landroid/app/Activity;

    .line 44
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/player/plugin/PluginPayTip;->mResources:Landroid/content/res/Resources;

    .line 45
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/player/plugin/PluginPayTip;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 46
    invoke-virtual {p0, p1}, Lcom/youku/player/plugin/PluginPayTip;->init(Landroid/content/Context;)V

    .line 47
    return-void
.end method

.method static synthetic access$002(Lcom/youku/player/plugin/PluginPayTip;Lcom/youku/player/plugin/PluginPayTip$TipState;)Lcom/youku/player/plugin/PluginPayTip$TipState;
    .locals 0
    .param p0, "x0"    # Lcom/youku/player/plugin/PluginPayTip;
    .param p1, "x1"    # Lcom/youku/player/plugin/PluginPayTip$TipState;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/youku/player/plugin/PluginPayTip;->mState:Lcom/youku/player/plugin/PluginPayTip$TipState;

    return-object p1
.end method

.method static synthetic access$100(Lcom/youku/player/plugin/PluginPayTip;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/player/plugin/PluginPayTip;

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/youku/player/plugin/PluginPayTip;->setSample()V

    return-void
.end method

.method private setFull()V
    .locals 4

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/youku/player/plugin/PluginPayTip;->setFullText()V

    .line 73
    iget-object v0, p0, Lcom/youku/player/plugin/PluginPayTip;->mTipTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/player/plugin/PluginPayTip;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/youku/android/player/R$dimen;->paytip_full_tip_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 75
    iget-object v0, p0, Lcom/youku/player/plugin/PluginPayTip;->mTipTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/youku/player/plugin/PluginPayTip;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/youku/android/player/R$dimen;->paytip_full_textsize:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 77
    iget-object v0, p0, Lcom/youku/player/plugin/PluginPayTip;->mPayTipLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/player/plugin/PluginPayTip;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/youku/android/player/R$dimen;->paytip_full_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 79
    return-void
.end method

.method private setFullText()V
    .locals 3

    .prologue
    .line 60
    iget-object v0, p0, Lcom/youku/player/plugin/PluginPayTip;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/player/plugin/PluginPayTip;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/player/plugin/PluginPayTip;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v0, v0, Lcom/youku/player/module/VideoUrlInfo;->mPayInfo:Lcom/youku/player/module/PayInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/player/plugin/PluginPayTip;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v0, v0, Lcom/youku/player/module/VideoUrlInfo;->mPayInfo:Lcom/youku/player/module/PayInfo;

    iget-object v0, v0, Lcom/youku/player/module/PayInfo;->trail:Lcom/youku/player/module/PayInfo$Trial;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/youku/player/plugin/PluginPayTip;->mTipTextView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/youku/player/plugin/PluginPayTip;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v2, v2, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v2, v2, Lcom/youku/player/module/VideoUrlInfo;->mPayInfo:Lcom/youku/player/module/PayInfo;

    iget-object v2, v2, Lcom/youku/player/module/PayInfo;->trail:Lcom/youku/player/module/PayInfo$Trial;

    iget-object v2, v2, Lcom/youku/player/module/PayInfo$Trial;->trialStr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<br><font color=#ff6d02>\u7acb\u5373\u8d2d\u4e70</font>\u89c2\u770b\u5b8c\u6574\u7248"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    :cond_0
    return-void
.end method

.method private setSample()V
    .locals 4

    .prologue
    .line 361
    sget-object v0, Lcom/youku/player/plugin/PluginPayTip$TipState;->SHOW_SIMPLE:Lcom/youku/player/plugin/PluginPayTip$TipState;

    iput-object v0, p0, Lcom/youku/player/plugin/PluginPayTip;->mState:Lcom/youku/player/plugin/PluginPayTip$TipState;

    .line 362
    iget-object v0, p0, Lcom/youku/player/plugin/PluginPayTip;->mTipTextView:Landroid/widget/TextView;

    const-string v1, "<font color=#ff6d02>\u7acb\u5373\u8d2d\u4e70</font>"

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 363
    iget-object v0, p0, Lcom/youku/player/plugin/PluginPayTip;->mTipTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/youku/player/plugin/PluginPayTip;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/youku/android/player/R$dimen;->paytip_small_textsize:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 365
    iget-object v0, p0, Lcom/youku/player/plugin/PluginPayTip;->mTipTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/player/plugin/PluginPayTip;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/youku/android/player/R$dimen;->paytip_small_tip_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 367
    iget-object v0, p0, Lcom/youku/player/plugin/PluginPayTip;->mPayTipLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/player/plugin/PluginPayTip;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/youku/android/player/R$dimen;->paytip_close_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 369
    return-void
.end method

.method private showProperTip()V
    .locals 4

    .prologue
    .line 297
    iget-object v0, p0, Lcom/youku/player/plugin/PluginPayTip;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/player/plugin/PluginPayTip;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/player/plugin/PluginPayTip;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v0}, Lcom/youku/player/module/VideoUrlInfo;->getLookTen()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/youku/player/plugin/PluginPayTip;->isHide:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/youku/player/plugin/PluginPayTip;->isRealStart:Z

    if-nez v0, :cond_1

    .line 358
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 302
    :cond_1
    iget-object v0, p0, Lcom/youku/player/plugin/PluginPayTip;->mContainerView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 303
    iget-object v0, p0, Lcom/youku/player/plugin/PluginPayTip;->mVid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/youku/player/plugin/PluginPayTip;->mVid:Ljava/lang/String;

    iget-object v1, p0, Lcom/youku/player/plugin/PluginPayTip;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v1}, Lcom/youku/player/module/VideoUrlInfo;->getVid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 305
    sget-object v0, Lcom/youku/player/plugin/PluginPayTip$5;->$SwitchMap$com$youku$player$plugin$PluginPayTip$TipState:[I

    iget-object v1, p0, Lcom/youku/player/plugin/PluginPayTip;->mState:Lcom/youku/player/plugin/PluginPayTip$TipState;

    invoke-virtual {v1}, Lcom/youku/player/plugin/PluginPayTip$TipState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 320
    :goto_1
    iget-object v0, p0, Lcom/youku/player/plugin/PluginPayTip;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v0}, Lcom/youku/player/module/VideoUrlInfo;->getVid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/player/plugin/PluginPayTip;->mVid:Ljava/lang/String;

    .line 321
    invoke-virtual {p0}, Lcom/youku/player/plugin/PluginPayTip;->show()V

    .line 322
    iget-object v0, p0, Lcom/youku/player/plugin/PluginPayTip;->mState:Lcom/youku/player/plugin/PluginPayTip$TipState;

    sget-object v1, Lcom/youku/player/plugin/PluginPayTip$TipState;->SHOW_FULL:Lcom/youku/player/plugin/PluginPayTip$TipState;

    if-ne v0, v1, :cond_0

    .line 323
    iget-object v0, p0, Lcom/youku/player/plugin/PluginPayTip;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 324
    iget-object v0, p0, Lcom/youku/player/plugin/PluginPayTip;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/youku/player/plugin/PluginPayTip$4;

    invoke-direct {v1, p0}, Lcom/youku/player/plugin/PluginPayTip$4;-><init>(Lcom/youku/player/plugin/PluginPayTip;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 309
    :pswitch_1
    invoke-direct {p0}, Lcom/youku/player/plugin/PluginPayTip;->setFull()V

    goto :goto_1

    .line 312
    :pswitch_2
    invoke-direct {p0}, Lcom/youku/player/plugin/PluginPayTip;->setSample()V

    goto :goto_1

    .line 318
    :cond_2
    sget-object v0, Lcom/youku/player/plugin/PluginPayTip$TipState;->SHOW_FULL:Lcom/youku/player/plugin/PluginPayTip$TipState;

    iput-object v0, p0, Lcom/youku/player/plugin/PluginPayTip;->mState:Lcom/youku/player/plugin/PluginPayTip$TipState;

    goto :goto_1

    .line 305
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public OnCurrentPositionChangeListener(I)V
    .locals 0
    .param p1, "currentPosition"    # I

    .prologue
    .line 178
    return-void
.end method

.method public OnPreparedListener()V
    .locals 0

    .prologue
    .line 155
    return-void
.end method

.method public OnSeekCompleteListener()V
    .locals 0

    .prologue
    .line 160
    return-void
.end method

.method public OnTimeoutListener()V
    .locals 0

    .prologue
    .line 172
    return-void
.end method

.method public OnVideoSizeChangedListener(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 166
    return-void
.end method

.method public back()V
    .locals 0

    .prologue
    .line 428
    return-void
.end method

.method public close(Landroid/view/animation/Animation$AnimationListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/view/animation/Animation$AnimationListener;

    .prologue
    .line 379
    iget-object v1, p0, Lcom/youku/player/plugin/PluginPayTip;->mActivity:Landroid/app/Activity;

    sget v2, Lcom/youku/android/player/R$anim;->paytip_right_out:I

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 381
    .local v0, "animation":Landroid/view/animation/Animation;
    if-eqz p1, :cond_0

    .line 382
    invoke-virtual {v0, p1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 383
    :cond_0
    iget-object v1, p0, Lcom/youku/player/plugin/PluginPayTip;->mContainerView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 384
    iget-object v1, p0, Lcom/youku/player/plugin/PluginPayTip;->mContainerView:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 385
    return-void
.end method

.method public findView()V
    .locals 3

    .prologue
    .line 82
    iget-object v1, p0, Lcom/youku/player/plugin/PluginPayTip;->mContainerView:Landroid/view/View;

    sget v2, Lcom/youku/android/player/R$id;->paytip_close:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/youku/player/plugin/PluginPayTip;->mCloseButton:Landroid/widget/Button;

    .line 83
    iget-object v1, p0, Lcom/youku/player/plugin/PluginPayTip;->mContainerView:Landroid/view/View;

    sget v2, Lcom/youku/android/player/R$id;->paytip_bt:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/youku/player/plugin/PluginPayTip;->mTipTextView:Landroid/widget/TextView;

    .line 84
    iget-object v1, p0, Lcom/youku/player/plugin/PluginPayTip;->mContainerView:Landroid/view/View;

    sget v2, Lcom/youku/android/player/R$id;->paytip_layout:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/youku/player/plugin/PluginPayTip;->mPayTipLayout:Landroid/widget/RelativeLayout;

    .line 86
    iget-object v1, p0, Lcom/youku/player/plugin/PluginPayTip;->mContainerView:Landroid/view/View;

    sget v2, Lcom/youku/android/player/R$id;->paytip_arrow:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/youku/player/plugin/PluginPayTip;->mArrowButton:Landroid/widget/Button;

    .line 87
    iget-object v1, p0, Lcom/youku/player/plugin/PluginPayTip;->mCloseButton:Landroid/widget/Button;

    new-instance v2, Lcom/youku/player/plugin/PluginPayTip$1;

    invoke-direct {v2, p0}, Lcom/youku/player/plugin/PluginPayTip$1;-><init>(Lcom/youku/player/plugin/PluginPayTip;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    new-instance v0, Lcom/youku/player/plugin/PluginPayTip$2;

    invoke-direct {v0, p0}, Lcom/youku/player/plugin/PluginPayTip$2;-><init>(Lcom/youku/player/plugin/PluginPayTip;)V

    .line 103
    .local v0, "okClickLisher":Landroid/view/View$OnClickListener;
    iget-object v1, p0, Lcom/youku/player/plugin/PluginPayTip;->mTipTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    iget-object v1, p0, Lcom/youku/player/plugin/PluginPayTip;->mArrowButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    iget-object v1, p0, Lcom/youku/player/plugin/PluginPayTip;->mContainerView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 106
    return-void
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 447
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youku/player/plugin/PluginPayTip;->isHide:Z

    .line 448
    invoke-virtual {p0}, Lcom/youku/player/plugin/PluginPayTip;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 449
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/youku/player/plugin/PluginPayTip;->close(Landroid/view/animation/Animation$AnimationListener;)V

    .line 450
    :cond_0
    return-void
.end method

.method protected init(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/youku/player/plugin/PluginPayTip;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/youku/android/player/R$layout;->yp_plugin_paytip:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/player/plugin/PluginPayTip;->mContainerView:Landroid/view/View;

    .line 54
    iget-object v0, p0, Lcom/youku/player/plugin/PluginPayTip;->mContainerView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/youku/player/plugin/PluginPayTip;->addView(Landroid/view/View;)V

    .line 55
    invoke-virtual {p0}, Lcom/youku/player/plugin/PluginPayTip;->findView()V

    .line 56
    invoke-direct {p0}, Lcom/youku/player/plugin/PluginPayTip;->setFull()V

    .line 57
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 439
    iget-object v0, p0, Lcom/youku/player/plugin/PluginPayTip;->mContainerView:Landroid/view/View;

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
    .line 238
    return-void
.end method

.method public onADplaying()V
    .locals 0

    .prologue
    .line 403
    return-void
.end method

.method public onBufferingUpdateListener(I)V
    .locals 0
    .param p1, "percent"    # I

    .prologue
    .line 122
    return-void
.end method

.method public onClearUpDownFav()V
    .locals 0

    .prologue
    .line 220
    return-void
.end method

.method protected onCloseClick()V
    .locals 0

    .prologue
    .line 116
    return-void
.end method

.method public onCompletionListener()V
    .locals 0

    .prologue
    .line 136
    return-void
.end method

.method public onDown()V
    .locals 0

    .prologue
    .line 214
    return-void
.end method

.method public onErrorListener(II)Z
    .locals 2
    .param p1, "what"    # I
    .param p2, "extra"    # I

    .prologue
    .line 140
    iget-object v0, p0, Lcom/youku/player/plugin/PluginPayTip;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/youku/player/plugin/PluginPayTip;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/youku/player/plugin/PluginPayTip$3;

    invoke-direct {v1, p0}, Lcom/youku/player/plugin/PluginPayTip$3;-><init>(Lcom/youku/player/plugin/PluginPayTip;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 149
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onFavor()V
    .locals 0

    .prologue
    .line 226
    return-void
.end method

.method public onLoadedListener()V
    .locals 0

    .prologue
    .line 184
    return-void
.end method

.method public onLoadingListener()V
    .locals 0

    .prologue
    .line 190
    return-void
.end method

.method public onMute(Z)V
    .locals 0
    .param p1, "mute"    # Z

    .prologue
    .line 256
    return-void
.end method

.method public onNotifyChangeVideoQuality()V
    .locals 0

    .prologue
    .line 196
    return-void
.end method

.method protected onOkClick()V
    .locals 4

    .prologue
    .line 125
    iget-object v0, p0, Lcom/youku/player/plugin/PluginPayTip;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/youku/player/plugin/PluginPayTip;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->needPay()V

    .line 127
    iget-object v0, p0, Lcom/youku/player/plugin/PluginPayTip;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/player/plugin/PluginPayTip;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v2, p0, Lcom/youku/player/plugin/PluginPayTip;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    sget-object v2, Lcom/youku/player/plugin/MediaPlayerDelegate;->mIUserInfo:Lcom/youku/player/apiservice/IUserInfo;

    invoke-interface {v2}, Lcom/youku/player/apiservice/IUserInfo;->isVip()Z

    move-result v2

    iget-object v3, p0, Lcom/youku/player/plugin/PluginPayTip;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-boolean v3, v3, Lcom/youku/player/plugin/MediaPlayerDelegate;->isFullScreen:Z

    invoke-static {v0, v1, v2, v3}, Lcom/youku/player/util/AnalyticsWrapper;->vipVideoClick(Landroid/content/Context;Lcom/youku/player/module/VideoUrlInfo;ZZ)V

    .line 130
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 268
    return-void
.end method

.method public onPlayNoRightVideo(Lcom/youku/player/goplay/GoplayException;)V
    .locals 0
    .param p1, "e"    # Lcom/youku/player/goplay/GoplayException;

    .prologue
    .line 391
    return-void
.end method

.method public onPlayReleateNoRightVideo()V
    .locals 0

    .prologue
    .line 397
    return-void
.end method

.method public onRealVideoStart()V
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/youku/player/plugin/PluginPayTip;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 294
    :goto_0
    return-void

    .line 292
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youku/player/plugin/PluginPayTip;->isRealStart:Z

    .line 293
    invoke-direct {p0}, Lcom/youku/player/plugin/PluginPayTip;->showProperTip()V

    goto :goto_0
.end method

.method public onRealVideoStarted()V
    .locals 0

    .prologue
    .line 202
    return-void
.end method

.method public onRelease()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 432
    iget-object v0, p0, Lcom/youku/player/plugin/PluginPayTip;->mContainerView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 433
    iput-boolean v2, p0, Lcom/youku/player/plugin/PluginPayTip;->isHide:Z

    .line 434
    iput-boolean v2, p0, Lcom/youku/player/plugin/PluginPayTip;->isRealStart:Z

    .line 435
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 262
    return-void
.end method

.method protected onTextAndArrowButtonClick()V
    .locals 1

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/youku/player/plugin/PluginPayTip;->onOkClick()V

    .line 110
    sget-object v0, Lcom/youku/player/plugin/PluginPayTip$TipState;->CLOSED:Lcom/youku/player/plugin/PluginPayTip$TipState;

    iput-object v0, p0, Lcom/youku/player/plugin/PluginPayTip;->mState:Lcom/youku/player/plugin/PluginPayTip$TipState;

    .line 111
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/youku/player/plugin/PluginPayTip;->close(Landroid/view/animation/Animation$AnimationListener;)V

    .line 112
    return-void
.end method

.method public onUnFavor()V
    .locals 0

    .prologue
    .line 232
    return-void
.end method

.method public onUp()V
    .locals 0

    .prologue
    .line 208
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
    .line 409
    return-void
.end method

.method public onVideoInfoGetted()V
    .locals 1

    .prologue
    .line 284
    sget-object v0, Lcom/youku/player/plugin/PluginPayTip$TipState;->SHOW_FULL:Lcom/youku/player/plugin/PluginPayTip$TipState;

    iput-object v0, p0, Lcom/youku/player/plugin/PluginPayTip;->mState:Lcom/youku/player/plugin/PluginPayTip$TipState;

    .line 285
    invoke-direct {p0}, Lcom/youku/player/plugin/PluginPayTip;->setFull()V

    .line 286
    return-void
.end method

.method public onVideoInfoGetting()V
    .locals 0

    .prologue
    .line 280
    return-void
.end method

.method public onVolumnDown()V
    .locals 0

    .prologue
    .line 250
    return-void
.end method

.method public onVolumnUp()V
    .locals 0

    .prologue
    .line 244
    return-void
.end method

.method public setVisible(Z)V
    .locals 4
    .param p1, "visible"    # Z

    .prologue
    const/4 v3, 0x0

    .line 413
    iget-object v0, p0, Lcom/youku/player/plugin/PluginPayTip;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-boolean v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isFullScreen:Z

    if-eqz v0, :cond_0

    .line 414
    iget-object v0, p0, Lcom/youku/player/plugin/PluginPayTip;->mPayTipLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/youku/player/plugin/PluginPayTip;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/youku/android/player/R$dimen;->paytip_full_margin_bottom:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v3, v3, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 422
    :goto_0
    return-void

    .line 418
    :cond_0
    iget-object v0, p0, Lcom/youku/player/plugin/PluginPayTip;->mPayTipLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/youku/player/plugin/PluginPayTip;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/youku/android/player/R$dimen;->paytip_small_margin_bottom:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v3, v3, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0
.end method

.method public show()V
    .locals 3

    .prologue
    .line 372
    iget-object v1, p0, Lcom/youku/player/plugin/PluginPayTip;->mContainerView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 373
    iget-object v1, p0, Lcom/youku/player/plugin/PluginPayTip;->mActivity:Landroid/app/Activity;

    sget v2, Lcom/youku/android/player/R$anim;->paytip_right_in:I

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 375
    .local v0, "animation":Landroid/view/animation/Animation;
    iget-object v1, p0, Lcom/youku/player/plugin/PluginPayTip;->mPayTipLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 376
    return-void
.end method

.method public unHide()V
    .locals 1

    .prologue
    .line 453
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youku/player/plugin/PluginPayTip;->isHide:Z

    .line 454
    invoke-direct {p0}, Lcom/youku/player/plugin/PluginPayTip;->showProperTip()V

    .line 455
    return-void
.end method
