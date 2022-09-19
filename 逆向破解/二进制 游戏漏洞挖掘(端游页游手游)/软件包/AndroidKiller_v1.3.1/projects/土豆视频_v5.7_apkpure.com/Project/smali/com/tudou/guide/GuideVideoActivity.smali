.class public Lcom/tudou/guide/GuideVideoActivity;
.super Lcom/tudou/ui/activity/BaseActivity;
.source "GuideVideoActivity.java"


# instance fields
.field enter:Landroid/view/View;

.field replay:Landroid/view/View;

.field root:Landroid/view/View;

.field videoView:Landroid/widget/VideoView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/tudou/ui/activity/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/tudou/guide/GuideVideoActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/guide/GuideVideoActivity;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/tudou/guide/GuideVideoActivity;->play()V

    return-void
.end method

.method private hasVirtualButtonBar()Z
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 124
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x12

    if-lt v3, v4, :cond_0

    .line 125
    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v1

    .line 127
    .local v1, "hasMenuKey":Z
    const/4 v3, 0x4

    invoke-static {v3}, Landroid/view/KeyCharacterMap;->deviceHasKey(I)Z

    move-result v0

    .line 130
    .local v0, "hasBackKey":Z
    if-nez v1, :cond_0

    if-nez v0, :cond_0

    .line 131
    const/4 v2, 0x1

    .line 136
    .end local v0    # "hasBackKey":Z
    .end local v1    # "hasMenuKey":Z
    :cond_0
    return v2
.end method

.method private initView()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 58
    const v3, 0x7f0c01ae

    invoke-virtual {p0, v3}, Lcom/tudou/guide/GuideVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/tudou/guide/GuideVideoActivity;->enter:Landroid/view/View;

    .line 59
    const v3, 0x7f0c00b1

    invoke-virtual {p0, v3}, Lcom/tudou/guide/GuideVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/tudou/guide/GuideVideoActivity;->root:Landroid/view/View;

    .line 60
    const v3, 0x7f04002e

    invoke-static {p0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    .line 61
    .local v2, "replayin":Landroid/view/animation/Animation;
    const v3, 0x7f04002c

    invoke-static {p0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 64
    .local v0, "enterin":Landroid/view/animation/Animation;
    const v3, 0x7f0c01ad

    invoke-virtual {p0, v3}, Lcom/tudou/guide/GuideVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/tudou/guide/GuideVideoActivity;->replay:Landroid/view/View;

    .line 65
    iget-object v3, p0, Lcom/tudou/guide/GuideVideoActivity;->replay:Landroid/view/View;

    new-instance v4, Lcom/tudou/guide/GuideVideoActivity$1;

    invoke-direct {v4, p0}, Lcom/tudou/guide/GuideVideoActivity$1;-><init>(Lcom/tudou/guide/GuideVideoActivity;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    const v3, 0x7f0c01ac

    invoke-virtual {p0, v3}, Lcom/tudou/guide/GuideVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/VideoView;

    iput-object v3, p0, Lcom/tudou/guide/GuideVideoActivity;->videoView:Landroid/widget/VideoView;

    .line 72
    iget-object v3, p0, Lcom/tudou/guide/GuideVideoActivity;->videoView:Landroid/widget/VideoView;

    new-instance v4, Lcom/tudou/guide/GuideVideoActivity$2;

    invoke-direct {v4, p0, v0, v2}, Lcom/tudou/guide/GuideVideoActivity$2;-><init>(Lcom/tudou/guide/GuideVideoActivity;Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    invoke-virtual {v3, v4}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 89
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v3, 0x42400000    # 48.0f

    invoke-static {v3}, Lcom/youku/util/Util;->dip2px(F)I

    move-result v3

    invoke-direct {v1, v5, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 93
    .local v1, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-direct {p0}, Lcom/tudou/guide/GuideVideoActivity;->hasVirtualButtonBar()Z

    move-result v3

    if-nez v3, :cond_0

    .line 94
    const/high16 v3, 0x41a00000    # 20.0f

    invoke-static {v3}, Lcom/youku/util/Util;->dip2px(F)I

    move-result v3

    const/high16 v4, 0x428c0000    # 70.0f

    invoke-static {v4}, Lcom/youku/util/Util;->dip2px(F)I

    move-result v4

    invoke-virtual {v1, v3, v6, v6, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 95
    const/16 v3, 0xc

    invoke-virtual {v1, v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 96
    iget-object v3, p0, Lcom/tudou/guide/GuideVideoActivity;->enter:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 98
    :cond_0
    return-void
.end method

.method private play()V
    .locals 0

    .prologue
    .line 114
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 42
    invoke-super {p0, p1}, Lcom/tudou/ui/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 44
    invoke-virtual {p0}, Lcom/tudou/guide/GuideVideoActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x8000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 47
    invoke-virtual {p0}, Lcom/tudou/guide/GuideVideoActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 51
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tudou/guide/GuideVideoActivity;->requestWindowFeature(I)Z

    .line 52
    const v0, 0x7f030031

    invoke-virtual {p0, v0}, Lcom/tudou/guide/GuideVideoActivity;->setContentView(I)V

    .line 53
    invoke-direct {p0}, Lcom/tudou/guide/GuideVideoActivity;->initView()V

    .line 54
    invoke-direct {p0}, Lcom/tudou/guide/GuideVideoActivity;->play()V

    .line 55
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 118
    invoke-super {p0}, Lcom/tudou/ui/activity/BaseActivity;->onStop()V

    .line 119
    invoke-virtual {p0}, Lcom/tudou/guide/GuideVideoActivity;->finish()V

    .line 120
    return-void
.end method
