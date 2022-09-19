.class public Lio/rong/imkit/widget/InputView;
.super Landroid/widget/LinearLayout;
.source "InputView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/rong/imkit/widget/InputView$PluginsAdapter;,
        Lio/rong/imkit/widget/InputView$InputMenuClickListener;,
        Lio/rong/imkit/widget/InputView$InputClickListener;,
        Lio/rong/imkit/widget/InputView$OnInfoButtonClick;,
        Lio/rong/imkit/widget/InputView$ExtendClickListener;,
        Lio/rong/imkit/widget/InputView$Event;,
        Lio/rong/imkit/widget/InputView$Style;
    }
.end annotation


# instance fields
.field center:I

.field left:I

.field mCustomLayout:Landroid/widget/FrameLayout;

.field mCustomMenuLayout:Landroid/widget/LinearLayout;

.field mExtendLayout:Landroid/widget/FrameLayout;

.field mIcon1:Landroid/widget/ImageView;

.field mIcon2:Landroid/widget/ImageView;

.field mInputLayout:Landroid/widget/RelativeLayout;

.field mInputMenuLayout:Landroid/widget/LinearLayout;

.field mInputMenuSwitchLayout:Landroid/widget/LinearLayout;

.field mMainProvider:Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;

.field mMenuProvider:Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;

.field mMenuSwitcher1:Landroid/widget/ImageView;

.field mMenuSwitcher2:Landroid/widget/ImageView;

.field mPluginsLayout:Landroid/widget/GridView;

.field mProviderList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lio/rong/imkit/widget/provider/InputProvider;",
            ">;"
        }
    .end annotation
.end field

.field mSlaveProvider:Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;

.field mStyle:I

.field mSwitcherLayout:Landroid/widget/LinearLayout;

.field mToggleLayout:Landroid/widget/FrameLayout;

.field mView:Landroid/view/View;

.field mWidgetLayout:Landroid/widget/FrameLayout;

.field private onInfoButtonClick:Lio/rong/imkit/widget/InputView$OnInfoButtonClick;

.field right:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 82
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 83
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lio/rong/imkit/widget/InputView;->setOrientation(I)V

    .line 84
    sget v2, Lio/rong/imkit/R$layout;->rc_wi_input:I

    invoke-static {p1, v2, p0}, Lio/rong/imkit/widget/InputView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 85
    .local v1, "view":Landroid/view/View;
    iput-object v1, p0, Lio/rong/imkit/widget/InputView;->mView:Landroid/view/View;

    .line 87
    sget-object v2, Lio/rong/imkit/R$styleable;->InputView:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 88
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v2, Lio/rong/imkit/R$styleable;->InputView_RCStyle:I

    const/16 v3, 0x123

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lio/rong/imkit/widget/InputView;->mStyle:I

    .line 89
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 91
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lio/rong/imkit/widget/InputView;->mProviderList:Ljava/util/List;

    .line 93
    sget v2, Lio/rong/imkit/R$id;->rc_switcher:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lio/rong/imkit/widget/InputView;->mSwitcherLayout:Landroid/widget/LinearLayout;

    .line 94
    sget v2, Lio/rong/imkit/R$id;->rc_menu_switch:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lio/rong/imkit/widget/InputView;->mInputMenuSwitchLayout:Landroid/widget/LinearLayout;

    .line 95
    sget v2, Lio/rong/imkit/R$id;->rc_switcher1:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lio/rong/imkit/widget/InputView;->mMenuSwitcher1:Landroid/widget/ImageView;

    .line 96
    sget v2, Lio/rong/imkit/R$id;->rc_switcher2:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lio/rong/imkit/widget/InputView;->mMenuSwitcher2:Landroid/widget/ImageView;

    .line 97
    sget v2, Lio/rong/imkit/R$id;->rc_input_menu:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lio/rong/imkit/widget/InputView;->mInputMenuLayout:Landroid/widget/LinearLayout;

    .line 98
    const v2, 0x1020009

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lio/rong/imkit/widget/InputView;->mInputLayout:Landroid/widget/RelativeLayout;

    .line 99
    const v2, 0x102002b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lio/rong/imkit/widget/InputView;->mCustomLayout:Landroid/widget/FrameLayout;

    .line 100
    const v2, 0x1020018

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lio/rong/imkit/widget/InputView;->mWidgetLayout:Landroid/widget/FrameLayout;

    .line 101
    sget v2, Lio/rong/imkit/R$id;->rc_ext:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lio/rong/imkit/widget/InputView;->mExtendLayout:Landroid/widget/FrameLayout;

    .line 102
    const v2, 0x1020017

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lio/rong/imkit/widget/InputView;->mToggleLayout:Landroid/widget/FrameLayout;

    .line 104
    sget v2, Lio/rong/imkit/R$id;->rc_input_custom_menu:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lio/rong/imkit/widget/InputView;->mCustomMenuLayout:Landroid/widget/LinearLayout;

    .line 106
    const v2, 0x1020007

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lio/rong/imkit/widget/InputView;->mIcon1:Landroid/widget/ImageView;

    .line 107
    const v2, 0x1020008

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lio/rong/imkit/widget/InputView;->mIcon2:Landroid/widget/ImageView;

    .line 109
    sget v2, Lio/rong/imkit/R$id;->rc_plugins:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/GridView;

    iput-object v2, p0, Lio/rong/imkit/widget/InputView;->mPluginsLayout:Landroid/widget/GridView;

    .line 111
    iget v2, p0, Lio/rong/imkit/widget/InputView;->mStyle:I

    shr-int/lit8 v2, v2, 0x8

    rem-int/lit8 v2, v2, 0x10

    iput v2, p0, Lio/rong/imkit/widget/InputView;->left:I

    .line 112
    iget v2, p0, Lio/rong/imkit/widget/InputView;->mStyle:I

    shr-int/lit8 v2, v2, 0x4

    rem-int/lit8 v2, v2, 0x10

    iput v2, p0, Lio/rong/imkit/widget/InputView;->center:I

    .line 113
    iget v2, p0, Lio/rong/imkit/widget/InputView;->mStyle:I

    rem-int/lit8 v2, v2, 0x10

    iput v2, p0, Lio/rong/imkit/widget/InputView;->right:I

    .line 117
    return-void
.end method

.method static synthetic access$000(Lio/rong/imkit/widget/InputView;)Lio/rong/imkit/widget/InputView$OnInfoButtonClick;
    .locals 1
    .param p0, "x0"    # Lio/rong/imkit/widget/InputView;

    .prologue
    .line 33
    iget-object v0, p0, Lio/rong/imkit/widget/InputView;->onInfoButtonClick:Lio/rong/imkit/widget/InputView$OnInfoButtonClick;

    return-object v0
.end method

.method static synthetic access$100(Lio/rong/imkit/widget/InputView;Landroid/view/View;Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;)V
    .locals 0
    .param p0, "x0"    # Lio/rong/imkit/widget/InputView;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;
    .param p3, "x3"    # Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Lio/rong/imkit/widget/InputView;->changeMainProvider(Landroid/view/View;Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;)V

    return-void
.end method

.method static synthetic access$200(Lio/rong/imkit/widget/InputView;Landroid/content/Context;)Landroid/view/animation/Animation;
    .locals 1
    .param p0, "x0"    # Lio/rong/imkit/widget/InputView;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lio/rong/imkit/widget/InputView;->createPopupAnimOut(Landroid/content/Context;)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lio/rong/imkit/widget/InputView;Landroid/content/Context;)Landroid/view/animation/Animation;
    .locals 1
    .param p0, "x0"    # Lio/rong/imkit/widget/InputView;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lio/rong/imkit/widget/InputView;->createPopupAnimIn(Landroid/content/Context;)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method private final changeMainProvider(Landroid/view/View;Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "main"    # Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;
    .param p3, "slave"    # Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;

    .prologue
    const/16 v2, 0x8

    .line 161
    iget-object v0, p0, Lio/rong/imkit/widget/InputView;->mMainProvider:Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;->onSwitch(Landroid/content/Context;)V

    .line 163
    iget-object v0, p0, Lio/rong/imkit/widget/InputView;->mPluginsLayout:Landroid/widget/GridView;

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setVisibility(I)V

    .line 164
    iget-object v0, p0, Lio/rong/imkit/widget/InputView;->mExtendLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 166
    iget-object v0, p0, Lio/rong/imkit/widget/InputView;->mSlaveProvider:Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;

    iget-object v1, p0, Lio/rong/imkit/widget/InputView;->mMainProvider:Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;

    invoke-virtual {p0, v0, v1}, Lio/rong/imkit/widget/InputView;->setInputProvider(Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;)V

    .line 167
    return-void
.end method

.method private createPopupAnimIn(Landroid/content/Context;)Landroid/view/animation/Animation;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 422
    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v2}, Landroid/view/animation/AnimationSet;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 423
    .local v0, "animationSet":Landroid/view/animation/AnimationSet;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 425
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    const/high16 v2, 0x43160000    # 150.0f

    invoke-direct {v1, v3, v3, v2, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 426
    .local v1, "translateAnim":Landroid/view/animation/TranslateAnimation;
    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 427
    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 429
    return-object v0
.end method

.method private createPopupAnimOut(Landroid/content/Context;)Landroid/view/animation/Animation;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 433
    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v2}, Landroid/view/animation/AnimationSet;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 434
    .local v0, "animationSet":Landroid/view/animation/AnimationSet;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 436
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    const/high16 v2, 0x43160000    # 150.0f

    invoke-direct {v1, v3, v3, v3, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 437
    .local v1, "translateAnim":Landroid/view/animation/TranslateAnimation;
    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 438
    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 440
    return-object v0
.end method

.method private setC()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, -0x1

    .line 341
    iget-object v1, p0, Lio/rong/imkit/widget/InputView;->mSwitcherLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 342
    iget-object v1, p0, Lio/rong/imkit/widget/InputView;->mToggleLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 344
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 346
    .local v0, "centerParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0xf

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 348
    iget-object v1, p0, Lio/rong/imkit/widget/InputView;->mCustomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 349
    return-void
.end method

.method private setCE()V
    .locals 7

    .prologue
    const/16 v6, 0xf

    const/4 v5, -0x2

    const/4 v4, -0x1

    .line 323
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 325
    .local v1, "rightParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v1, v6, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 326
    const/16 v2, 0xb

    invoke-virtual {v1, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 328
    iget-object v2, p0, Lio/rong/imkit/widget/InputView;->mToggleLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 330
    iget-object v2, p0, Lio/rong/imkit/widget/InputView;->mSwitcherLayout:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 332
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 334
    .local v0, "centerParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v0, v6, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 335
    const/4 v2, 0x0

    iget-object v3, p0, Lio/rong/imkit/widget/InputView;->mToggleLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getId()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 337
    iget-object v2, p0, Lio/rong/imkit/widget/InputView;->mCustomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 338
    return-void
.end method

.method private setCES()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0xf

    const/4 v5, -0x1

    const/4 v4, -0x2

    .line 219
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 221
    .local v2, "rightParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v2, v6, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 222
    const/16 v3, 0xb

    invoke-virtual {v2, v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 224
    iget-object v3, p0, Lio/rong/imkit/widget/InputView;->mSwitcherLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 226
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 228
    .local v0, "centerParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v0, v6, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 229
    iget-object v3, p0, Lio/rong/imkit/widget/InputView;->mIcon1:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getId()I

    move-result v3

    invoke-virtual {v0, v7, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 231
    iget-object v3, p0, Lio/rong/imkit/widget/InputView;->mToggleLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 234
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v5, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 236
    .local v1, "leftParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v1, v6, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 237
    iget-object v3, p0, Lio/rong/imkit/widget/InputView;->mToggleLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getId()I

    move-result v3

    invoke-virtual {v1, v7, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 239
    iget-object v3, p0, Lio/rong/imkit/widget/InputView;->mCustomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 240
    return-void
.end method

.method private setCS()V
    .locals 7

    .prologue
    const/16 v6, 0xf

    const/4 v5, -0x2

    const/4 v4, -0x1

    .line 287
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 289
    .local v1, "rightParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v1, v6, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 290
    const/16 v2, 0xb

    invoke-virtual {v1, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 292
    iget-object v2, p0, Lio/rong/imkit/widget/InputView;->mSwitcherLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 294
    iget-object v2, p0, Lio/rong/imkit/widget/InputView;->mToggleLayout:Landroid/widget/FrameLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 296
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 298
    .local v0, "centerParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v0, v6, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 299
    const/4 v2, 0x0

    iget-object v3, p0, Lio/rong/imkit/widget/InputView;->mIcon1:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getId()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 301
    iget-object v2, p0, Lio/rong/imkit/widget/InputView;->mCustomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 302
    return-void
.end method

.method private setCSE()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0xf

    const/4 v5, -0x1

    const/4 v4, -0x2

    .line 244
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 246
    .local v2, "rightParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v2, v6, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 247
    const/16 v3, 0xb

    invoke-virtual {v2, v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 249
    iget-object v3, p0, Lio/rong/imkit/widget/InputView;->mToggleLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 251
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 253
    .local v0, "centerParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v0, v6, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 254
    iget-object v3, p0, Lio/rong/imkit/widget/InputView;->mToggleLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getId()I

    move-result v3

    invoke-virtual {v0, v7, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 256
    iget-object v3, p0, Lio/rong/imkit/widget/InputView;->mSwitcherLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 259
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v5, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 261
    .local v1, "leftParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v1, v6, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 262
    iget-object v3, p0, Lio/rong/imkit/widget/InputView;->mIcon1:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getId()I

    move-result v3

    invoke-virtual {v1, v7, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 264
    iget-object v3, p0, Lio/rong/imkit/widget/InputView;->mCustomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 265
    return-void
.end method

.method private setEC()V
    .locals 7

    .prologue
    const/16 v6, 0xf

    const/4 v5, -0x2

    const/4 v4, -0x1

    .line 305
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 307
    .local v1, "leftParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v1, v6, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 308
    const/16 v2, 0x9

    invoke-virtual {v1, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 310
    iget-object v2, p0, Lio/rong/imkit/widget/InputView;->mToggleLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 312
    iget-object v2, p0, Lio/rong/imkit/widget/InputView;->mSwitcherLayout:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 314
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 316
    .local v0, "centerParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v0, v6, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 317
    const/4 v2, 0x1

    iget-object v3, p0, Lio/rong/imkit/widget/InputView;->mToggleLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getId()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 319
    iget-object v2, p0, Lio/rong/imkit/widget/InputView;->mCustomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 320
    return-void
.end method

.method private setECS()V
    .locals 7

    .prologue
    const/16 v6, 0xf

    const/4 v5, -0x2

    const/4 v4, -0x1

    .line 195
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 197
    .local v1, "leftParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v1, v6, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 198
    const/16 v3, 0x9

    invoke-virtual {v1, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 200
    iget-object v3, p0, Lio/rong/imkit/widget/InputView;->mToggleLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 202
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 204
    .local v2, "rightParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v2, v6, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 205
    const/16 v3, 0xb

    invoke-virtual {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 207
    iget-object v3, p0, Lio/rong/imkit/widget/InputView;->mSwitcherLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 209
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 211
    .local v0, "centerParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v0, v6, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 212
    const/4 v3, 0x0

    iget-object v4, p0, Lio/rong/imkit/widget/InputView;->mIcon1:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getId()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 213
    const/4 v3, 0x1

    iget-object v4, p0, Lio/rong/imkit/widget/InputView;->mToggleLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getId()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 215
    iget-object v3, p0, Lio/rong/imkit/widget/InputView;->mCustomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 216
    return-void
.end method

.method private setSC()V
    .locals 7

    .prologue
    const/16 v6, 0xf

    const/4 v5, -0x2

    const/4 v4, -0x1

    .line 268
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 270
    .local v1, "leftParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v1, v6, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 271
    const/16 v2, 0x9

    invoke-virtual {v1, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 273
    iget-object v2, p0, Lio/rong/imkit/widget/InputView;->mSwitcherLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 275
    iget-object v2, p0, Lio/rong/imkit/widget/InputView;->mToggleLayout:Landroid/widget/FrameLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 277
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 279
    .local v0, "centerParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v0, v6, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 280
    const/4 v2, 0x0

    iget-object v3, p0, Lio/rong/imkit/widget/InputView;->mToggleLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getId()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 281
    const/4 v2, 0x1

    iget-object v3, p0, Lio/rong/imkit/widget/InputView;->mSwitcherLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getId()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 283
    iget-object v2, p0, Lio/rong/imkit/widget/InputView;->mCustomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 284
    return-void
.end method

.method private setSCE()V
    .locals 7

    .prologue
    const/16 v6, 0xf

    const/4 v5, -0x2

    const/4 v4, -0x1

    .line 170
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 172
    .local v1, "leftParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v1, v6, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 173
    const/16 v3, 0x9

    invoke-virtual {v1, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 175
    iget-object v3, p0, Lio/rong/imkit/widget/InputView;->mSwitcherLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 177
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 179
    .local v2, "rightParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v2, v6, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 180
    const/16 v3, 0xb

    invoke-virtual {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 182
    iget-object v3, p0, Lio/rong/imkit/widget/InputView;->mToggleLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 184
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 186
    .local v0, "centerParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v0, v6, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 187
    const/4 v3, 0x0

    iget-object v4, p0, Lio/rong/imkit/widget/InputView;->mToggleLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getId()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 188
    const/4 v3, 0x1

    iget-object v4, p0, Lio/rong/imkit/widget/InputView;->mSwitcherLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getId()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 190
    iget-object v3, p0, Lio/rong/imkit/widget/InputView;->mCustomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 191
    return-void
.end method


# virtual methods
.method public getExtendLayout()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 590
    iget-object v0, p0, Lio/rong/imkit/widget/InputView;->mExtendLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getIcon1()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 597
    iget-object v0, p0, Lio/rong/imkit/widget/InputView;->mIcon1:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getToggleLayout()Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 594
    iget-object v0, p0, Lio/rong/imkit/widget/InputView;->mToggleLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public onEmojiProviderActive(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v1, 0x8

    .line 655
    iget-object v0, p0, Lio/rong/imkit/widget/InputView;->mMainProvider:Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;

    if-eqz v0, :cond_0

    .line 656
    iget-object v0, p0, Lio/rong/imkit/widget/InputView;->mMainProvider:Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;

    invoke-virtual {v0, p1}, Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;->onInactive(Landroid/content/Context;)V

    .line 658
    :cond_0
    iget-object v0, p0, Lio/rong/imkit/widget/InputView;->mSlaveProvider:Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;

    if-eqz v0, :cond_1

    .line 659
    iget-object v0, p0, Lio/rong/imkit/widget/InputView;->mSlaveProvider:Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;

    invoke-virtual {v0, p1}, Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;->onInactive(Landroid/content/Context;)V

    .line 661
    :cond_1
    iget-object v0, p0, Lio/rong/imkit/widget/InputView;->mPluginsLayout:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 662
    iget-object v0, p0, Lio/rong/imkit/widget/InputView;->mPluginsLayout:Landroid/widget/GridView;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setVisibility(I)V

    .line 665
    :cond_2
    iget-object v0, p0, Lio/rong/imkit/widget/InputView;->mExtendLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 666
    iget-object v0, p0, Lio/rong/imkit/widget/InputView;->mExtendLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 669
    :cond_3
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v0

    invoke-virtual {v0}, Lio/rong/imkit/RongContext;->getEventBus()Lde/greenrobot/event/EventBus;

    move-result-object v0

    sget-object v1, Lio/rong/imkit/widget/InputView$Event;->ACTION:Lio/rong/imkit/widget/InputView$Event;

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 670
    return-void
.end method

.method public onExtendProviderActive(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v1, 0x8

    .line 637
    iget-object v0, p0, Lio/rong/imkit/widget/InputView;->mMainProvider:Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;

    if-eqz v0, :cond_0

    .line 638
    iget-object v0, p0, Lio/rong/imkit/widget/InputView;->mMainProvider:Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;

    invoke-virtual {v0, p1}, Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;->onInactive(Landroid/content/Context;)V

    .line 640
    :cond_0
    iget-object v0, p0, Lio/rong/imkit/widget/InputView;->mSlaveProvider:Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;

    if-eqz v0, :cond_1

    .line 641
    iget-object v0, p0, Lio/rong/imkit/widget/InputView;->mSlaveProvider:Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;

    invoke-virtual {v0, p1}, Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;->onInactive(Landroid/content/Context;)V

    .line 643
    :cond_1
    iget-object v0, p0, Lio/rong/imkit/widget/InputView;->mPluginsLayout:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 644
    iget-object v0, p0, Lio/rong/imkit/widget/InputView;->mPluginsLayout:Landroid/widget/GridView;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setVisibility(I)V

    .line 647
    :cond_2
    iget-object v0, p0, Lio/rong/imkit/widget/InputView;->mExtendLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 648
    iget-object v0, p0, Lio/rong/imkit/widget/InputView;->mExtendLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 651
    :cond_3
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v0

    invoke-virtual {v0}, Lio/rong/imkit/RongContext;->getEventBus()Lde/greenrobot/event/EventBus;

    move-result-object v0

    sget-object v1, Lio/rong/imkit/widget/InputView$Event;->ACTION:Lio/rong/imkit/widget/InputView$Event;

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 652
    return-void
.end method

.method public onProviderActive(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v1, 0x8

    .line 601
    iget-object v0, p0, Lio/rong/imkit/widget/InputView;->mMainProvider:Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;

    if-eqz v0, :cond_0

    .line 602
    iget-object v0, p0, Lio/rong/imkit/widget/InputView;->mMainProvider:Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;

    invoke-virtual {v0, p1}, Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;->onActive(Landroid/content/Context;)V

    .line 604
    :cond_0
    iget-object v0, p0, Lio/rong/imkit/widget/InputView;->mSlaveProvider:Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;

    if-eqz v0, :cond_1

    .line 605
    iget-object v0, p0, Lio/rong/imkit/widget/InputView;->mSlaveProvider:Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;

    invoke-virtual {v0, p1}, Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;->onActive(Landroid/content/Context;)V

    .line 607
    :cond_1
    iget-object v0, p0, Lio/rong/imkit/widget/InputView;->mPluginsLayout:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 608
    iget-object v0, p0, Lio/rong/imkit/widget/InputView;->mPluginsLayout:Landroid/widget/GridView;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setVisibility(I)V

    .line 611
    :cond_2
    iget-object v0, p0, Lio/rong/imkit/widget/InputView;->mExtendLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 612
    iget-object v0, p0, Lio/rong/imkit/widget/InputView;->mExtendLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 615
    :cond_3
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v0

    invoke-virtual {v0}, Lio/rong/imkit/RongContext;->getEventBus()Lde/greenrobot/event/EventBus;

    move-result-object v0

    sget-object v1, Lio/rong/imkit/widget/InputView$Event;->ACTION:Lio/rong/imkit/widget/InputView$Event;

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 616
    return-void
.end method

.method public onProviderInactive(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v1, 0x8

    .line 619
    iget-object v0, p0, Lio/rong/imkit/widget/InputView;->mMainProvider:Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;

    if-eqz v0, :cond_0

    .line 620
    iget-object v0, p0, Lio/rong/imkit/widget/InputView;->mMainProvider:Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;

    invoke-virtual {v0, p1}, Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;->onInactive(Landroid/content/Context;)V

    .line 622
    :cond_0
    iget-object v0, p0, Lio/rong/imkit/widget/InputView;->mSlaveProvider:Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;

    if-eqz v0, :cond_1

    .line 623
    iget-object v0, p0, Lio/rong/imkit/widget/InputView;->mSlaveProvider:Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;

    invoke-virtual {v0, p1}, Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;->onInactive(Landroid/content/Context;)V

    .line 625
    :cond_1
    iget-object v0, p0, Lio/rong/imkit/widget/InputView;->mPluginsLayout:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 626
    iget-object v0, p0, Lio/rong/imkit/widget/InputView;->mPluginsLayout:Landroid/widget/GridView;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setVisibility(I)V

    .line 629
    :cond_2
    iget-object v0, p0, Lio/rong/imkit/widget/InputView;->mExtendLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 630
    iget-object v0, p0, Lio/rong/imkit/widget/InputView;->mExtendLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 633
    :cond_3
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v0

    invoke-virtual {v0}, Lio/rong/imkit/RongContext;->getEventBus()Lde/greenrobot/event/EventBus;

    move-result-object v0

    sget-object v1, Lio/rong/imkit/widget/InputView$Event;->INACTION:Lio/rong/imkit/widget/InputView$Event;

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 634
    return-void
.end method

.method public setExtendInputsVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 144
    invoke-virtual {p0}, Lio/rong/imkit/widget/InputView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/rong/imkit/widget/InputView;->onProviderInactive(Landroid/content/Context;)V

    .line 145
    invoke-virtual {p0, p1}, Lio/rong/imkit/widget/InputView;->setPluginsLayoutVisibility(I)V

    .line 146
    return-void
.end method

.method public setExtendLayoutVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 153
    iget-object v0, p0, Lio/rong/imkit/widget/InputView;->mExtendLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 154
    return-void
.end method

.method public setExtendProvider(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lio/rong/imkit/widget/provider/InputProvider$ExtendProvider;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 572
    .local p1, "providers":Ljava/util/List;, "Ljava/util/List<Lio/rong/imkit/widget/provider/InputProvider$ExtendProvider;>;"
    iget-object v4, p0, Lio/rong/imkit/widget/InputView;->mProviderList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 573
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/rong/imkit/widget/provider/InputProvider$ExtendProvider;

    .line 574
    .local v3, "provider":Lio/rong/imkit/widget/provider/InputProvider$ExtendProvider;
    iget-object v4, p0, Lio/rong/imkit/widget/InputView;->mProviderList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 577
    .end local v3    # "provider":Lio/rong/imkit/widget/provider/InputProvider$ExtendProvider;
    :cond_0
    new-instance v0, Lio/rong/imkit/widget/InputView$PluginsAdapter;

    invoke-virtual {p0}, Lio/rong/imkit/widget/InputView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, p0, v4}, Lio/rong/imkit/widget/InputView$PluginsAdapter;-><init>(Lio/rong/imkit/widget/InputView;Landroid/content/Context;)V

    .line 578
    .local v0, "adapter":Lio/rong/imkit/widget/InputView$PluginsAdapter;
    invoke-virtual {v0, p1}, Lio/rong/imkit/widget/InputView$PluginsAdapter;->addCollection(Ljava/util/Collection;)V

    .line 580
    const/4 v1, 0x1

    .line 581
    .local v1, "i":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/rong/imkit/widget/provider/InputProvider$ExtendProvider;

    .line 582
    .restart local v3    # "provider":Lio/rong/imkit/widget/provider/InputProvider$ExtendProvider;
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v3, v1}, Lio/rong/imkit/widget/provider/InputProvider$ExtendProvider;->setIndex(I)V

    goto :goto_1

    .line 585
    .end local v3    # "provider":Lio/rong/imkit/widget/provider/InputProvider$ExtendProvider;
    :cond_1
    iget-object v4, p0, Lio/rong/imkit/widget/InputView;->mPluginsLayout:Landroid/widget/GridView;

    invoke-virtual {v4, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 586
    return-void
.end method

.method public setInputProvider(Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;)V
    .locals 6
    .param p1, "mainProvider"    # Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;
    .param p2, "slaveProvider"    # Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;

    .prologue
    .line 353
    iput-object p1, p0, Lio/rong/imkit/widget/InputView;->mMainProvider:Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;

    .line 354
    iput-object p2, p0, Lio/rong/imkit/widget/InputView;->mSlaveProvider:Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;

    .line 356
    iget-object v3, p0, Lio/rong/imkit/widget/InputView;->mMenuProvider:Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;

    if-nez v3, :cond_0

    .line 357
    iget-object v3, p0, Lio/rong/imkit/widget/InputView;->mInputMenuSwitchLayout:Landroid/widget/LinearLayout;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 359
    :cond_0
    iget-object v3, p0, Lio/rong/imkit/widget/InputView;->mCustomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 361
    const/4 v1, 0x0

    .line 362
    .local v1, "leftView":Landroid/view/View;
    const/4 v2, 0x0

    .line 363
    .local v2, "rightView":Landroid/view/View;
    const/4 v0, 0x0

    .line 366
    .local v0, "centerView":Landroid/view/View;
    iget v3, p0, Lio/rong/imkit/widget/InputView;->mStyle:I

    sparse-switch v3, :sswitch_data_0

    .line 405
    :goto_0
    iget-object v3, p0, Lio/rong/imkit/widget/InputView;->mSlaveProvider:Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;

    if-eqz v3, :cond_1

    .line 407
    iget-object v3, p0, Lio/rong/imkit/widget/InputView;->mIcon1:Landroid/widget/ImageView;

    new-instance v4, Lio/rong/imkit/widget/InputView$1;

    invoke-direct {v4, p0}, Lio/rong/imkit/widget/InputView$1;-><init>(Lio/rong/imkit/widget/InputView;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 418
    :cond_1
    iget-object v3, p0, Lio/rong/imkit/widget/InputView;->mMainProvider:Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;

    invoke-virtual {p0}, Lio/rong/imkit/widget/InputView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    iget-object v5, p0, Lio/rong/imkit/widget/InputView;->mCustomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v4, v5, p0}, Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lio/rong/imkit/widget/InputView;)Landroid/view/View;

    .line 419
    return-void

    .line 369
    :sswitch_0
    invoke-direct {p0}, Lio/rong/imkit/widget/InputView;->setSCE()V

    goto :goto_0

    .line 373
    :sswitch_1
    invoke-direct {p0}, Lio/rong/imkit/widget/InputView;->setECS()V

    goto :goto_0

    .line 377
    :sswitch_2
    invoke-direct {p0}, Lio/rong/imkit/widget/InputView;->setCES()V

    goto :goto_0

    .line 381
    :sswitch_3
    invoke-direct {p0}, Lio/rong/imkit/widget/InputView;->setCSE()V

    goto :goto_0

    .line 385
    :sswitch_4
    invoke-direct {p0}, Lio/rong/imkit/widget/InputView;->setSC()V

    goto :goto_0

    .line 389
    :sswitch_5
    invoke-direct {p0}, Lio/rong/imkit/widget/InputView;->setCS()V

    goto :goto_0

    .line 393
    :sswitch_6
    invoke-direct {p0}, Lio/rong/imkit/widget/InputView;->setEC()V

    goto :goto_0

    .line 397
    :sswitch_7
    invoke-direct {p0}, Lio/rong/imkit/widget/InputView;->setCE()V

    goto :goto_0

    .line 401
    :sswitch_8
    invoke-direct {p0}, Lio/rong/imkit/widget/InputView;->setC()V

    goto :goto_0

    .line 366
    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_8
        0x21 -> :sswitch_5
        0x23 -> :sswitch_7
        0x120 -> :sswitch_4
        0x123 -> :sswitch_0
        0x213 -> :sswitch_3
        0x231 -> :sswitch_2
        0x320 -> :sswitch_6
        0x321 -> :sswitch_1
    .end sparse-switch
.end method

.method public setInputProviderEx(Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;)V
    .locals 4
    .param p1, "mainProvider"    # Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;
    .param p2, "slaveProvider"    # Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;
    .param p3, "menuProvider"    # Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 446
    iput-object p3, p0, Lio/rong/imkit/widget/InputView;->mMenuProvider:Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;

    .line 447
    invoke-virtual {p0, p1, p2}, Lio/rong/imkit/widget/InputView;->setInputProvider(Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;)V

    .line 449
    if-eqz p3, :cond_0

    iget-object v0, p0, Lio/rong/imkit/widget/InputView;->mMenuSwitcher1:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 450
    iget-object v0, p0, Lio/rong/imkit/widget/InputView;->mInputMenuSwitchLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 451
    invoke-virtual {p0}, Lio/rong/imkit/widget/InputView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lio/rong/imkit/widget/InputView;->mCustomMenuLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p3, v0, v1, p0}, Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lio/rong/imkit/widget/InputView;)Landroid/view/View;

    .line 452
    iget-object v0, p0, Lio/rong/imkit/widget/InputView;->mInputMenuSwitchLayout:Landroid/widget/LinearLayout;

    new-instance v1, Lio/rong/imkit/widget/InputView$InputClickListener;

    invoke-direct {v1, p0}, Lio/rong/imkit/widget/InputView$InputClickListener;-><init>(Lio/rong/imkit/widget/InputView;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 453
    iget-object v0, p0, Lio/rong/imkit/widget/InputView;->mMenuSwitcher2:Landroid/widget/ImageView;

    new-instance v1, Lio/rong/imkit/widget/InputView$InputMenuClickListener;

    invoke-direct {v1, p0}, Lio/rong/imkit/widget/InputView$InputMenuClickListener;-><init>(Lio/rong/imkit/widget/InputView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 455
    iget-object v0, p0, Lio/rong/imkit/widget/InputView;->mMainProvider:Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;

    invoke-virtual {p0}, Lio/rong/imkit/widget/InputView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;->onSwitch(Landroid/content/Context;)V

    .line 456
    iget-object v0, p0, Lio/rong/imkit/widget/InputView;->mPluginsLayout:Landroid/widget/GridView;

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setVisibility(I)V

    .line 457
    iget-object v0, p0, Lio/rong/imkit/widget/InputView;->mExtendLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 458
    iget-object v0, p0, Lio/rong/imkit/widget/InputView;->mInputLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 459
    iget-object v0, p0, Lio/rong/imkit/widget/InputView;->mInputMenuLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 461
    :cond_0
    return-void
.end method

.method public setOnInfoButtonClickListener(Lio/rong/imkit/widget/InputView$OnInfoButtonClick;)V
    .locals 0
    .param p1, "clickListener"    # Lio/rong/imkit/widget/InputView$OnInfoButtonClick;

    .prologue
    .line 140
    iput-object p1, p0, Lio/rong/imkit/widget/InputView;->onInfoButtonClick:Lio/rong/imkit/widget/InputView$OnInfoButtonClick;

    .line 141
    return-void
.end method

.method public setPluginsLayoutVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 149
    iget-object v0, p0, Lio/rong/imkit/widget/InputView;->mPluginsLayout:Landroid/widget/GridView;

    invoke-virtual {v0, p1}, Landroid/widget/GridView;->setVisibility(I)V

    .line 150
    return-void
.end method

.method public setWidgetLayoutVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 157
    iget-object v0, p0, Lio/rong/imkit/widget/InputView;->mWidgetLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 158
    return-void
.end method
