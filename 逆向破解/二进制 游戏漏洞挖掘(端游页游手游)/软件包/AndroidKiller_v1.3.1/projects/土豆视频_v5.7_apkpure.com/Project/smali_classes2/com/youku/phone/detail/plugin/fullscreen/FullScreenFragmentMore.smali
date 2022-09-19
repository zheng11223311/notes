.class public Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;
.super Landroid/app/Fragment;
.source "FullScreenFragmentMore.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final ANIMATION_NO:I = 0x0

.field public static final ANIMATION_SLIDE:I = 0x1

.field private static final TAG:Ljava/lang/String;

.field private static final VOLUME_SEEKBAR_SCALE:I = 0xf


# instance fields
.field private highEnable:Z

.field private isVerticalScreen:Z

.field private m1080pDefinitionTextView:Landroid/widget/TextView;

.field private m720pDefinitionTextView:Landroid/widget/TextView;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mAutoLoop:Landroid/widget/TextView;

.field private mBrightSeekbar:Landroid/widget/SeekBar;

.field private mBtnSkipBegin:Lcom/tudou/detail/widget/SwitchButton;

.field private mBtnSkipBeginDivider:Landroid/view/View;

.field private mBtnSkipBeginLayout:Landroid/view/View;

.field private mDefinitaionLayout:Landroid/view/View;

.field private mLanLayout:Landroid/widget/LinearLayout;

.field private mLanLayoutDivider:Landroid/view/View;

.field private mLoopClickLis:Landroid/view/View$OnClickListener;

.field private mMediaPlayer:Lcom/youku/player/plugin/MediaPlayerDelegate;

.field private mNoLoop:Landroid/widget/TextView;

.field private mOnCloseListener:Ljava/lang/Runnable;

.field private mPluginFullScreenPlay:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;

.field private mSingleLoop:Landroid/widget/TextView;

.field private mStandardDefinitionTextView:Landroid/widget/TextView;

.field private mVolumeSeekbar:Landroid/widget/SeekBar;

.field sp:Landroid/content/SharedPreferences;

.field private stdEnable:Z

.field private superEnable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-class v0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/youku/player/plugin/MediaPlayerDelegate;)V
    .locals 2
    .param p1, "mediaplayer"    # Lcom/youku/player/plugin/MediaPlayerDelegate;

    .prologue
    .line 106
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 73
    new-instance v0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore$1;

    invoke-direct {v0, p0}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore$1;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;)V

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;->mLoopClickLis:Landroid/view/View$OnClickListener;

    .line 107
    sget-object v0, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;->mAudioManager:Landroid/media/AudioManager;

    .line 108
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;->mMediaPlayer:Lcom/youku/player/plugin/MediaPlayerDelegate;

    .line 109
    return-void
.end method

.method static synthetic access$000(Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;)Landroid/media/AudioManager;
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;)Lcom/tudou/detail/widget/SwitchButton;
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;->mBtnSkipBegin:Lcom/tudou/detail/widget/SwitchButton;

    return-object v0
.end method

.method static synthetic access$300(Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;)Lcom/youku/player/plugin/MediaPlayerDelegate;
    .locals 1
    .param p0, "x0"    # Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;->mMediaPlayer:Lcom/youku/player/plugin/MediaPlayerDelegate;

    return-object v0
.end method

.method private changeVideoPicture(I)V
    .locals 7
    .param p1, "id"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 433
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 434
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const v1, 0x7f0c03f2

    if-ne p1, v1, :cond_3

    .line 435
    sget v1, Lcom/youku/player/goplay/Profile;->videoQuality:I

    if-nez v1, :cond_1

    .line 465
    :cond_0
    :goto_0
    return-void

    .line 437
    :cond_1
    const-string v1, "\u64ad\u653e\u9875\u8d85\u6e05\u6309\u94ae\u9009\u62e9"

    const-class v2, Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\u8d85\u6e05\u6309\u94ae"

    invoke-static {v1, v2, v3}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;->mMediaPlayer:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v1, v6}, Lcom/youku/player/plugin/MediaPlayerDelegate;->changeVideoQuality(I)V

    .line 441
    const-string v1, "video_quality"

    invoke-interface {v0, v1, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 461
    :cond_2
    :goto_1
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 462
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;->changVideoQuality()V

    .line 463
    invoke-direct {p0}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;->videoQualitySetting()V

    .line 464
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;->updateDefinitionView()V

    goto :goto_0

    .line 442
    :cond_3
    const v1, 0x7f0c03f1

    if-ne p1, v1, :cond_4

    .line 443
    sget v1, Lcom/youku/player/goplay/Profile;->videoQuality:I

    if-eq v1, v4, :cond_0

    .line 445
    const-string v1, "\u64ad\u653e\u9875\u9ad8\u6e05\u6309\u94ae\u9009\u62e9"

    const-class v2, Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\u9ad8\u6e05\u6309\u94ae"

    invoke-static {v1, v2, v3}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;->mMediaPlayer:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v1, v4}, Lcom/youku/player/plugin/MediaPlayerDelegate;->changeVideoQuality(I)V

    .line 450
    const-string v1, "video_quality"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 451
    :cond_4
    const v1, 0x7f0c03f0

    if-ne p1, v1, :cond_2

    .line 452
    sget v1, Lcom/youku/player/goplay/Profile;->videoQuality:I

    if-eq v1, v5, :cond_0

    .line 454
    const-string v1, "\u64ad\u653e\u9875\u6807\u6e05\u6309\u94ae\u9009\u62e9"

    const-class v2, Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\u6807\u6e05\u6309\u94ae"

    invoke-static {v1, v2, v3}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;->mMediaPlayer:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v1, v5}, Lcom/youku/player/plugin/MediaPlayerDelegate;->changeVideoQuality(I)V

    .line 459
    const-string v1, "video_quality"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_1
.end method

.method private setHighEnable(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 516
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;->m720pDefinitionTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 517
    if-eqz p1, :cond_0

    .line 518
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;->m720pDefinitionTextView:Landroid/widget/TextView;

    const-string v1, "#C8CCCCCC"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 522
    :goto_0
    return-void

    .line 520
    :cond_0
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;->m720pDefinitionTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090140

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method private setStdEnable(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 525
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;->mStandardDefinitionTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 526
    if-eqz p1, :cond_0

    .line 527
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;->mStandardDefinitionTextView:Landroid/widget/TextView;

    const-string v1, "#C8CCCCCC"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 531
    :goto_0
    return-void

    .line 529
    :cond_0
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;->mStandardDefinitionTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;->getResources()Landroid/content/res/Resources;

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
    .line 507
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;->m1080pDefinitionTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 508
    if-eqz p1, :cond_0

    .line 509
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;->m1080pDefinitionTextView:Landroid/widget/TextView;

    const-string v1, "#C8CCCCCC"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 513
    :goto_0
    return-void

    .line 511
    :cond_0
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;->m1080pDefinitionTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;->getResources()Landroid/content/res/Resources;

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
    .line 534
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;->mMediaPlayer:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v0}, Lcom/youku/player/module/VideoUrlInfo;->hasSegHD2()Z

    move-result v0

    iput-boolean v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;->superEnable:Z

    .line 535
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;->mMediaPlayer:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v0}, Lcom/youku/player/module/VideoUrlInfo;->hasSegHD()Z

    move-result v0

    iput-boolean v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;->highEnable:Z

    .line 536
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;->mMediaPlayer:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v0}, Lcom/youku/player/module/VideoUrlInfo;->hasSegSD()Z

    move-result v0

    iput-boolean v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;->stdEnable:Z

    .line 538
    invoke-static {}, Lcom/youku/uplayer/MediaPlayerProxy;->isHD2Supported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 539
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;->superEnable:Z

    .line 541
    :cond_0
    return-void
.end method

.method private videoQualitySetting()V
    .locals 1

    .prologue
    .line 501
    iget-boolean v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;->superEnable:Z

    invoke-direct {p0, v0}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;->setSuperEnable(Z)V

    .line 502
    iget-boolean v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;->highEnable:Z

    invoke-direct {p0, v0}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;->setHighEnable(Z)V

    .line 503
    iget-boolean v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;->stdEnable:Z

    invoke-direct {p0, v0}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;->setStdEnable(Z)V

    .line 504
    return-void
.end method


# virtual methods
.method protected changVideoQuality()V
    .locals 2

    .prologue
    .line 494
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;->mPluginFullScreenPlay:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->setCurQuality()V

    .line 495
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;->mPluginFullScreenPlay:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mCurrenInner:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->firstLoaded:Z

    .line 496
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;->mPluginFullScreenPlay:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mCurrenInner:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->changeVideoQuality:Z

    .line 497
    return-void
.end method

.method public makeLanuageView()V
    .locals 10

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x0

    .line 289
    const/4 v3, 0x0

    .line 290
    .local v3, "tHasMultiLan":Z
    iget-object v6, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;->mMediaPlayer:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;->mMediaPlayer:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v6, v6, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;->mMediaPlayer:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v6, v6, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-boolean v6, v6, Lcom/youku/player/module/VideoUrlInfo;->isExternalVideo:Z

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;->mMediaPlayer:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v6, v6, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v6}, Lcom/youku/player/module/VideoUrlInfo;->getPlayType()Ljava/lang/String;

    move-result-object v6

    const-string v7, "local"

    if-eq v6, v7, :cond_2

    .line 291
    iget-object v6, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;->mMediaPlayer:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v6, v6, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v6}, Lcom/youku/player/module/VideoUrlInfo;->getLanguage()Ljava/util/ArrayList;

    move-result-object v4

    .line 292
    .local v4, "tLanguage":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/player/goplay/Language;>;"
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x1

    if-le v6, v7, :cond_2

    .line 293
    const/4 v3, 0x1

    .line 294
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v0, v6, :cond_2

    .line 295
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/player/goplay/Language;

    .line 296
    .local v1, "l":Lcom/youku/player/goplay/Language;
    new-instance v5, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 297
    .local v5, "text":Landroid/widget/TextView;
    const/4 v6, 0x2

    const/high16 v7, 0x41500000    # 13.0f

    invoke-virtual {v5, v6, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 298
    iget-object v6, v1, Lcom/youku/player/goplay/Language;->lang:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 299
    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 300
    const/16 v6, 0x10

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 301
    new-instance v6, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore$5;

    invoke-direct {v6, p0}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore$5;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;)V

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 321
    iget-boolean v6, v1, Lcom/youku/player/goplay/Language;->isDisplay:Z

    if-eqz v6, :cond_0

    .line 322
    const-string v6, "#FFFF6600"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 326
    :goto_1
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x2

    const/4 v7, -0x1

    invoke-direct {v2, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 327
    .local v2, "lp":Landroid/widget/LinearLayout$LayoutParams;
    if-nez v0, :cond_1

    const/high16 v6, 0x40e00000    # 7.0f

    :goto_2
    invoke-static {v6}, Lcom/youku/util/Util;->dip2px(F)I

    move-result v6

    iput v6, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 328
    iget-object v6, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;->mLanLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v5, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 294
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 324
    .end local v2    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    const-string v6, "#C8CCCCCC"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 327
    .restart local v2    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_1
    const/high16 v6, 0x41d00000    # 26.0f

    goto :goto_2

    .line 332
    .end local v0    # "i":I
    .end local v1    # "l":Lcom/youku/player/goplay/Language;
    .end local v2    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v4    # "tLanguage":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/player/goplay/Language;>;"
    .end local v5    # "text":Landroid/widget/TextView;
    :cond_2
    if-eqz v3, :cond_3

    .line 333
    iget-object v6, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;->mLanLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 334
    iget-object v6, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;->mLanLayoutDivider:Landroid/view/View;

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    .line 339
    :goto_3
    return-void

    .line 336
    :cond_3
    iget-object v6, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;->mLanLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 337
    iget-object v6, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;->mLanLayoutDivider:Landroid/view/View;

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 371
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 372
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;->sp:Landroid/content/SharedPreferences;

    .line 373
    sget-object v0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;->TAG:Ljava/lang/String;

    const-string v1, "onActivityCreated"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 149
    sget-object v0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;->TAG:Ljava/lang/String;

    const-string v1, "onAttach"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 151
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 469
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 476
    :goto_0
    return-void

    .line 473
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;->changeVideoPicture(I)V

    goto :goto_0

    .line 469
    :pswitch_data_0
    .packed-switch 0x7f0c03f0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 155
    sget-object v0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;->TAG:Ljava/lang/String;

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 157
    return-void
.end method

.method public onCreateAnimator(IZI)Landroid/animation/Animator;
    .locals 10
    .param p1, "transit"    # I
    .param p2, "enter"    # Z
    .param p3, "nextAnim"    # I

    .prologue
    const/4 v9, 0x0

    const/high16 v8, 0x43a00000    # 320.0f

    const/high16 v7, 0x43820000    # 260.0f

    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 348
    sget-object v2, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCreateAnimator enter = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    const/4 v0, 0x0

    .line 350
    .local v0, "o":Landroid/animation/ObjectAnimator;
    if-nez p3, :cond_1

    .line 366
    :cond_0
    :goto_0
    return-object v0

    .line 352
    :cond_1
    if-ne p3, v6, :cond_0

    .line 353
    const/4 v2, 0x2

    new-array v1, v2, [F

    .line 354
    .local v1, "values":[F
    iget-boolean v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;->isVerticalScreen:Z

    if-eqz v2, :cond_4

    .line 355
    if-eqz p2, :cond_2

    invoke-static {v8}, Lcom/youku/util/Util;->dip2px(F)I

    move-result v2

    int-to-float v2, v2

    :goto_1
    aput v2, v1, v9

    .line 356
    if-eqz p2, :cond_3

    :goto_2
    aput v3, v1, v6

    .line 357
    const-string v2, "translationY"

    invoke-static {p0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 363
    :goto_3
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 364
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    goto :goto_0

    :cond_2
    move v2, v3

    .line 355
    goto :goto_1

    .line 356
    :cond_3
    invoke-static {v8}, Lcom/youku/util/Util;->dip2px(F)I

    move-result v2

    int-to-float v3, v2

    goto :goto_2

    .line 359
    :cond_4
    if-eqz p2, :cond_5

    invoke-static {v7}, Lcom/youku/util/Util;->dip2px(F)I

    move-result v2

    int-to-float v2, v2

    :goto_4
    aput v2, v1, v9

    .line 360
    if-eqz p2, :cond_6

    :goto_5
    aput v3, v1, v6

    .line 361
    const-string v2, "translationX"

    invoke-static {p0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    goto :goto_3

    :cond_5
    move v2, v3

    .line 359
    goto :goto_4

    .line 360
    :cond_6
    invoke-static {v7}, Lcom/youku/util/Util;->dip2px(F)I

    move-result v2

    int-to-float v3, v2

    goto :goto_5
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 161
    sget-object v1, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;->TAG:Ljava/lang/String;

    const-string v2, "onCreateView"

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    const v1, 0x7f0300d1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 163
    .local v0, "v":Landroid/view/View;
    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 411
    sget-object v0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 413
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 405
    sget-object v0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;->TAG:Ljava/lang/String;

    const-string v1, "onDestroyView"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 407
    return-void
.end method

.method public onDetach()V
    .locals 2

    .prologue
    .line 417
    sget-object v0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;->TAG:Ljava/lang/String;

    const-string v1, "onDetach"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    .line 419
    return-void
.end method

.method public onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 143
    sget-object v0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;->TAG:Ljava/lang/String;

    const-string v1, "onInflate"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 145
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 393
    sget-object v0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;->TAG:Ljava/lang/String;

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 395
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 384
    sget-object v0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;->TAG:Ljava/lang/String;

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 386
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 387
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 388
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 378
    sget-object v0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;->TAG:Ljava/lang/String;

    const-string v1, "onStart"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 380
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 399
    sget-object v0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;->TAG:Ljava/lang/String;

    const-string v1, "onStop"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 401
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 10
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/high16 v9, 0x41a00000    # 20.0f

    const/4 v8, 0x0

    const/16 v7, 0x8

    .line 168
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 169
    sget-object v4, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;->TAG:Ljava/lang/String;

    const-string v5, "onViewCreated"

    invoke-static {v4, v5}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    const v4, 0x7f0c03e6

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/SeekBar;

    iput-object v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;->mVolumeSeekbar:Landroid/widget/SeekBar;

    .line 171
    iget-object v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;->mVolumeSeekbar:Landroid/widget/SeekBar;

    const/16 v5, 0xf

    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setKeyProgressIncrement(I)V

    .line 172
    iget-object v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;->mVolumeSeekbar:Landroid/widget/SeekBar;

    iget-object v5, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;->mAudioManager:Landroid/media/AudioManager;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v5

    mul-int/lit8 v5, v5, 0xf

    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setMax(I)V

    .line 173
    iget-object v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;->mVolumeSeekbar:Landroid/widget/SeekBar;

    new-instance v5, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore$2;

    invoke-direct {v5, p0}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore$2;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;)V

    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 190
    const v4, 0x7f0c03e7

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/SeekBar;

    iput-object v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;->mBrightSeekbar:Landroid/widget/SeekBar;

    .line 191
    iget-object v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;->mBrightSeekbar:Landroid/widget/SeekBar;

    const/16 v5, 0xff

    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setMax(I)V

    .line 192
    iget-object v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;->mBrightSeekbar:Landroid/widget/SeekBar;

    new-instance v5, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore$3;

    invoke-direct {v5, p0}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore$3;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;)V

    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 217
    const v4, 0x7f0c03e9

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;->mBtnSkipBeginLayout:Landroid/view/View;

    .line 218
    const v4, 0x7f0c03eb

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;->mBtnSkipBeginDivider:Landroid/view/View;

    .line 220
    iget-object v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;->mMediaPlayer:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;->mMediaPlayer:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v4, v4, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v4, :cond_1

    .line 221
    iget-object v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;->mMediaPlayer:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v4, v4, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-boolean v4, v4, Lcom/youku/player/module/VideoUrlInfo;->isExternalVideo:Z

    if-nez v4, :cond_0

    const-string v4, "local"

    iget-object v5, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;->mMediaPlayer:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v5, v5, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v5}, Lcom/youku/player/module/VideoUrlInfo;->getPlayType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 222
    :cond_0
    iget-object v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;->mBtnSkipBeginLayout:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 223
    iget-object v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;->mBtnSkipBeginDivider:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 244
    :cond_1
    :goto_0
    const v4, 0x7f0c03ec

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;->mAutoLoop:Landroid/widget/TextView;

    .line 245
    const v4, 0x7f0c03ed

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;->mNoLoop:Landroid/widget/TextView;

    .line 246
    const v4, 0x7f0c03ee

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;->mSingleLoop:Landroid/widget/TextView;

    .line 247
    iget-object v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;->mAutoLoop:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;->mLoopClickLis:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 248
    iget-object v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;->mNoLoop:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;->mLoopClickLis:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 249
    iget-object v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;->mSingleLoop:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;->mLoopClickLis:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 251
    const v4, 0x7f0c03f3

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;->mLanLayout:Landroid/widget/LinearLayout;

    .line 252
    const v4, 0x7f0c03f4

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;->mLanLayoutDivider:Landroid/view/View;

    .line 255
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;->makeLanuageView()V

    .line 256
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;->updateLoopView()V

    .line 257
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;->updateVolumeView()V

    .line 258
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;->updateBrightView()V

    .line 260
    const v4, 0x7f0c03ef

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;->mDefinitaionLayout:Landroid/view/View;

    .line 261
    const v4, 0x7f0c03f0

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;->mStandardDefinitionTextView:Landroid/widget/TextView;

    .line 262
    const v4, 0x7f0c03f1

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;->m720pDefinitionTextView:Landroid/widget/TextView;

    .line 263
    const v4, 0x7f0c03f2

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;->m1080pDefinitionTextView:Landroid/widget/TextView;

    .line 264
    iget-object v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;->mStandardDefinitionTextView:Landroid/widget/TextView;

    invoke-virtual {v4, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 265
    iget-object v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;->m720pDefinitionTextView:Landroid/widget/TextView;

    invoke-virtual {v4, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 266
    iget-object v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;->m1080pDefinitionTextView:Landroid/widget/TextView;

    invoke-virtual {v4, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 267
    iget-boolean v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;->isVerticalScreen:Z

    if-eqz v4, :cond_3

    .line 268
    iget-object v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;->mMediaPlayer:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v4, v4, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v4}, Lcom/youku/player/module/VideoUrlInfo;->isCached()Z

    move-result v4

    if-nez v4, :cond_2

    .line 269
    iget-object v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;->mDefinitaionLayout:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 270
    invoke-direct {p0}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;->videoQualitySetting()V

    .line 271
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;->updateDefinitionView()V

    .line 273
    :cond_2
    iget-object v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;->mBtnSkipBeginLayout:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 274
    iget-object v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;->mBtnSkipBeginDivider:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 275
    const v4, 0x7f0c03e8

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 276
    .local v2, "dividerLine":Landroid/view/View;
    const v4, 0x7f0c03e5

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 278
    .local v0, "brightLayout":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 279
    .local v3, "dividerParams":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-static {v9}, Lcom/youku/util/Util;->dip2px(F)I

    move-result v4

    iput v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 280
    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 282
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 283
    .local v1, "brightParams":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-static {v9}, Lcom/youku/util/Util;->dip2px(F)I

    move-result v4

    iput v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 284
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 286
    .end local v0    # "brightLayout":Landroid/view/View;
    .end local v1    # "brightParams":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v2    # "dividerLine":Landroid/view/View;
    .end local v3    # "dividerParams":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_3
    return-void

    .line 225
    :cond_4
    iget-object v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;->mBtnSkipBeginLayout:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 226
    iget-object v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;->mBtnSkipBeginDivider:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 227
    const v4, 0x7f0c03ea

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/tudou/detail/widget/SwitchButton;

    iput-object v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;->mBtnSkipBegin:Lcom/tudou/detail/widget/SwitchButton;

    .line 228
    iget-object v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;->mBtnSkipBegin:Lcom/tudou/detail/widget/SwitchButton;

    const v5, 0x7f0201b7

    invoke-virtual {v4, v5}, Lcom/tudou/detail/widget/SwitchButton;->setDrawableNormal(I)V

    .line 229
    iget-object v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;->mBtnSkipBegin:Lcom/tudou/detail/widget/SwitchButton;

    const v5, 0x7f0201b8

    invoke-virtual {v4, v5}, Lcom/tudou/detail/widget/SwitchButton;->setDrawableAtte(I)V

    .line 230
    iget-object v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;->mBtnSkipBegin:Lcom/tudou/detail/widget/SwitchButton;

    new-instance v5, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore$4;

    invoke-direct {v5, p0}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore$4;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;)V

    invoke-virtual {v4, v5}, Lcom/tudou/detail/widget/SwitchButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 239
    iget-object v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;->mBtnSkipBegin:Lcom/tudou/detail/widget/SwitchButton;

    invoke-static {}, Lcom/youku/player/goplay/Profile;->isSkipHeadAndTail()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/tudou/detail/widget/SwitchButton;->setChecked(Z)V

    goto/16 :goto_0
.end method

.method public onVolumnChange(I)V
    .locals 0
    .param p1, "volume"    # I

    .prologue
    .line 343
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;->updateVolumeView()V

    .line 344
    return-void
.end method

.method public setIsVerticalScreen(ZLcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;)V
    .locals 0
    .param p1, "b"    # Z
    .param p2, "pluginFullScreenPlay"    # Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;

    .prologue
    .line 422
    iput-boolean p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;->isVerticalScreen:Z

    .line 423
    iput-object p2, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;->mPluginFullScreenPlay:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;

    .line 424
    invoke-direct {p0}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;->setupDefinitionRadioBtn()V

    .line 425
    return-void
.end method

.method public setOnCloseListener(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 138
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;->mOnCloseListener:Ljava/lang/Runnable;

    .line 139
    return-void
.end method

.method public updateBrightView()V
    .locals 4

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness"

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 132
    .local v0, "tCurBright":I
    sget-object v1, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateBrightView tCurBright = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;->mBrightSeekbar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 134
    return-void
.end method

.method public updateDefinitionView()V
    .locals 3

    .prologue
    .line 479
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/youku/player/goplay/Profile;->getVideoQuality(Landroid/content/Context;)I

    move-result v0

    .line 480
    .local v0, "mode":I
    if-nez v0, :cond_0

    iget-boolean v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;->superEnable:Z

    if-eqz v1, :cond_0

    .line 481
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;->m1080pDefinitionTextView:Landroid/widget/TextView;

    const-string v2, "#FFFF6600"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 487
    :goto_0
    return-void

    .line 482
    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-boolean v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;->highEnable:Z

    if-eqz v1, :cond_1

    .line 483
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;->m720pDefinitionTextView:Landroid/widget/TextView;

    const-string v2, "#FFFF6600"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 485
    :cond_1
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;->mStandardDefinitionTextView:Landroid/widget/TextView;

    const-string v2, "#FFFF6600"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method public updateLoopView()V
    .locals 3

    .prologue
    .line 112
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;->mAutoLoop:Landroid/widget/TextView;

    const-string v2, "#C8CCCCCC"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 113
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;->mNoLoop:Landroid/widget/TextView;

    const-string v2, "#C8CCCCCC"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 114
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;->mSingleLoop:Landroid/widget/TextView;

    const-string v2, "#C8CCCCCC"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 115
    invoke-virtual {p0}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/youku/player/goplay/Profile;->getPlayMode(Landroid/content/Context;)I

    move-result v0

    .line 116
    .local v0, "mode":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 117
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;->mAutoLoop:Landroid/widget/TextView;

    const-string v2, "#FFFF6600"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 123
    :goto_0
    return-void

    .line 118
    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 119
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;->mNoLoop:Landroid/widget/TextView;

    const-string v2, "#FFFF6600"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 121
    :cond_1
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;->mSingleLoop:Landroid/widget/TextView;

    const-string v2, "#FFFF6600"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method public updateVolumeView()V
    .locals 3

    .prologue
    .line 126
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    .line 127
    .local v0, "cur":I
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentMore;->mVolumeSeekbar:Landroid/widget/SeekBar;

    mul-int/lit8 v2, v0, 0xf

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 128
    return-void
.end method
