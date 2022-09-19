.class public Lcom/youku/widget/GiftPaySuccessView;
.super Landroid/widget/RelativeLayout;
.source "GiftPaySuccessView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/widget/GiftPaySuccessView$OnAnimationListener;
    }
.end annotation


# instance fields
.field private mGiftImg:Landroid/widget/ImageView;

.field private mMainLayout:Landroid/view/View;

.field private mOnAnimationListener:Lcom/youku/widget/GiftPaySuccessView$OnAnimationListener;

.field private mPopLayout:Landroid/view/View;

.field private mPopTipsTv:Landroid/view/View;

.field private mPopTv:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/youku/widget/GiftPaySuccessView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/youku/widget/GiftPaySuccessView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    invoke-direct {p0}, Lcom/youku/widget/GiftPaySuccessView;->initViews()V

    .line 43
    return-void
.end method

.method static synthetic access$000(Lcom/youku/widget/GiftPaySuccessView;)Lcom/youku/widget/GiftPaySuccessView$OnAnimationListener;
    .locals 1
    .param p0, "x0"    # Lcom/youku/widget/GiftPaySuccessView;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/youku/widget/GiftPaySuccessView;->mOnAnimationListener:Lcom/youku/widget/GiftPaySuccessView$OnAnimationListener;

    return-object v0
.end method

.method private doBackGroundAnimation()V
    .locals 11

    .prologue
    const v1, 0x3f4ccccd    # 0.8f

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v5, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    .line 66
    new-instance v10, Landroid/view/animation/AnimationSet;

    invoke-direct {v10, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 67
    .local v10, "animationSet":Landroid/view/animation/AnimationSet;
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 71
    .local v0, "scaleAnimation":Landroid/view/animation/ScaleAnimation;
    new-instance v9, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    invoke-direct {v9, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 73
    .local v9, "alphaAnimation":Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v10, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 74
    const-wide/16 v2, 0x12c

    invoke-virtual {v10, v2, v3}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 75
    invoke-virtual {v10, p0}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 76
    invoke-virtual {p0, v10}, Lcom/youku/widget/GiftPaySuccessView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 77
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/youku/widget/GiftPaySuccessView;->setVisibility(I)V

    .line 78
    return-void
.end method

.method private doMainLayoutAnimation()V
    .locals 11

    .prologue
    const v1, 0x3f4ccccd    # 0.8f

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v5, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    .line 81
    new-instance v10, Landroid/view/animation/AnimationSet;

    invoke-direct {v10, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 82
    .local v10, "animationSet":Landroid/view/animation/AnimationSet;
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 86
    .local v0, "scaleAnimation":Landroid/view/animation/ScaleAnimation;
    new-instance v9, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    invoke-direct {v9, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 87
    .local v9, "alphaAnimation":Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 88
    invoke-virtual {v10, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 89
    const-wide/16 v2, 0x12c

    invoke-virtual {v10, v2, v3}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 90
    invoke-virtual {v10, p0}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 91
    iget-object v1, p0, Lcom/youku/widget/GiftPaySuccessView;->mMainLayout:Landroid/view/View;

    invoke-virtual {v1, v10}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 92
    iget-object v1, p0, Lcom/youku/widget/GiftPaySuccessView;->mMainLayout:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 93
    return-void
.end method

.method private doPopAnimation()V
    .locals 11

    .prologue
    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v5, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 96
    new-instance v10, Landroid/view/animation/AnimationSet;

    invoke-direct {v10, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 97
    .local v10, "animationSet":Landroid/view/animation/AnimationSet;
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 101
    .local v0, "scaleAnimation":Landroid/view/animation/ScaleAnimation;
    new-instance v9, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v9, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 102
    .local v9, "alphaAnimation":Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 103
    invoke-virtual {v10, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 104
    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v1}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {v10, v1}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 105
    const-wide/16 v2, 0x1f4

    invoke-virtual {v10, v2, v3}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 106
    const-wide/16 v2, 0x12c

    invoke-virtual {v10, v2, v3}, Landroid/view/animation/AnimationSet;->setStartOffset(J)V

    .line 107
    new-instance v1, Lcom/youku/widget/GiftPaySuccessView$1;

    invoke-direct {v1, p0}, Lcom/youku/widget/GiftPaySuccessView$1;-><init>(Lcom/youku/widget/GiftPaySuccessView;)V

    invoke-virtual {v10, v1}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 125
    iget-object v1, p0, Lcom/youku/widget/GiftPaySuccessView;->mPopLayout:Landroid/view/View;

    invoke-virtual {v1, v10}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 126
    iget-object v1, p0, Lcom/youku/widget/GiftPaySuccessView;->mPopLayout:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 127
    return-void
.end method

.method private doPopTipsAnimation()V
    .locals 11

    .prologue
    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v5, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 130
    new-instance v10, Landroid/view/animation/AnimationSet;

    invoke-direct {v10, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 131
    .local v10, "animationSet":Landroid/view/animation/AnimationSet;
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 135
    .local v0, "scaleAnimation":Landroid/view/animation/ScaleAnimation;
    new-instance v9, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v9, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 136
    .local v9, "alphaAnimation":Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 137
    invoke-virtual {v10, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 138
    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v1}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {v10, v1}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 139
    const-wide/16 v2, 0xc8

    invoke-virtual {v10, v2, v3}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 140
    iget-object v1, p0, Lcom/youku/widget/GiftPaySuccessView;->mPopTipsTv:Landroid/view/View;

    invoke-virtual {v1, v10}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 141
    iget-object v1, p0, Lcom/youku/widget/GiftPaySuccessView;->mPopTipsTv:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 142
    return-void
.end method

.method private initViews()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 46
    invoke-virtual {p0}, Lcom/youku/widget/GiftPaySuccessView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 47
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x7f03015e

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 48
    const/16 v1, 0x7f

    invoke-static {v1, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/youku/widget/GiftPaySuccessView;->setBackgroundColor(I)V

    .line 49
    const v1, 0x7f0c06c4

    invoke-virtual {p0, v1}, Lcom/youku/widget/GiftPaySuccessView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/youku/widget/GiftPaySuccessView;->mPopLayout:Landroid/view/View;

    .line 50
    const v1, 0x7f0c06c5

    invoke-virtual {p0, v1}, Lcom/youku/widget/GiftPaySuccessView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/youku/widget/GiftPaySuccessView;->mPopTv:Landroid/widget/TextView;

    .line 51
    const v1, 0x7f0c06b5

    invoke-virtual {p0, v1}, Lcom/youku/widget/GiftPaySuccessView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/youku/widget/GiftPaySuccessView;->mGiftImg:Landroid/widget/ImageView;

    .line 52
    const v1, 0x7f0c06c6

    invoke-virtual {p0, v1}, Lcom/youku/widget/GiftPaySuccessView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/youku/widget/GiftPaySuccessView;->mPopTipsTv:Landroid/view/View;

    .line 53
    const v1, 0x7f0c06c2

    invoke-virtual {p0, v1}, Lcom/youku/widget/GiftPaySuccessView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/youku/widget/GiftPaySuccessView;->mMainLayout:Landroid/view/View;

    .line 54
    invoke-virtual {p0, p0}, Lcom/youku/widget/GiftPaySuccessView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    return-void
.end method


# virtual methods
.method public hide()V
    .locals 1

    .prologue
    .line 145
    invoke-virtual {p0}, Lcom/youku/widget/GiftPaySuccessView;->clearAnimation()V

    .line 146
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/youku/widget/GiftPaySuccessView;->setVisibility(I)V

    .line 147
    return-void
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 156
    invoke-direct {p0}, Lcom/youku/widget/GiftPaySuccessView;->doPopAnimation()V

    .line 157
    invoke-direct {p0}, Lcom/youku/widget/GiftPaySuccessView;->doPopTipsAnimation()V

    .line 158
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 163
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 152
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 168
    return-void
.end method

.method public setOnAnimationListener(Lcom/youku/widget/GiftPaySuccessView$OnAnimationListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/youku/widget/GiftPaySuccessView$OnAnimationListener;

    .prologue
    .line 175
    iput-object p1, p0, Lcom/youku/widget/GiftPaySuccessView;->mOnAnimationListener:Lcom/youku/widget/GiftPaySuccessView$OnAnimationListener;

    .line 176
    return-void
.end method

.method public show(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "pop"    # Ljava/lang/String;
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/youku/widget/GiftPaySuccessView;->clearAnimation()V

    .line 59
    iget-object v0, p0, Lcom/youku/widget/GiftPaySuccessView;->mPopTv:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u4eba\u6c14\u503c"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    iget-object v0, p0, Lcom/youku/widget/GiftPaySuccessView;->mGiftImg:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 61
    invoke-direct {p0}, Lcom/youku/widget/GiftPaySuccessView;->doBackGroundAnimation()V

    .line 62
    invoke-direct {p0}, Lcom/youku/widget/GiftPaySuccessView;->doMainLayoutAnimation()V

    .line 63
    return-void
.end method
