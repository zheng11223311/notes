.class public Lcom/youku/gamecenter/widgets/LoadingView;
.super Ljava/lang/Object;
.source "LoadingView.java"


# instance fields
.field public isAniStart:Z

.field private isYouku:Z

.field private mContext:Landroid/content/Context;

.field private mImageView:Landroid/widget/ImageView;

.field private mRelativeLayout:Landroid/widget/RelativeLayout;

.field private mViewGroup:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "viewgroup"    # Landroid/view/ViewGroup;

    .prologue
    .line 28
    invoke-static {}, Lcom/youku/gamecenter/config/GameCenterProfile;->isYoukuProduct()Z

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/youku/gamecenter/widgets/LoadingView;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Z)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Z)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "viewgroup"    # Landroid/view/ViewGroup;
    .param p3, "isYouku"    # Z

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p2, p0, Lcom/youku/gamecenter/widgets/LoadingView;->mViewGroup:Landroid/view/ViewGroup;

    .line 33
    iput-object p1, p0, Lcom/youku/gamecenter/widgets/LoadingView;->mContext:Landroid/content/Context;

    .line 34
    new-instance v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/youku/gamecenter/widgets/LoadingView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/youku/gamecenter/widgets/LoadingView;->mImageView:Landroid/widget/ImageView;

    .line 35
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/youku/gamecenter/widgets/LoadingView;->isAniStart:Z

    .line 36
    iput-boolean p3, p0, Lcom/youku/gamecenter/widgets/LoadingView;->isYouku:Z

    .line 37
    iget-object v2, p0, Lcom/youku/gamecenter/widgets/LoadingView;->mContext:Landroid/content/Context;

    const/high16 v3, 0x42400000    # 48.0f

    invoke-static {v2, v3}, Lcom/youku/gamecenter/util/SystemUtils;->dip2px(Landroid/content/Context;F)I

    move-result v0

    .line 38
    .local v0, "i":I
    if-eqz p3, :cond_0

    .line 40
    iget-object v2, p0, Lcom/youku/gamecenter/widgets/LoadingView;->mImageView:Landroid/widget/ImageView;

    sget v3, Lcom/youku/gamecenter/R$anim;->gamecenter_youku_loading:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 43
    :goto_0
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 45
    .local v1, "layoutparams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 46
    new-instance v2, Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/youku/gamecenter/widgets/LoadingView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/youku/gamecenter/widgets/LoadingView;->mRelativeLayout:Landroid/widget/RelativeLayout;

    .line 47
    iget-object v2, p0, Lcom/youku/gamecenter/widgets/LoadingView;->mRelativeLayout:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/youku/gamecenter/widgets/LoadingView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v3, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 48
    return-void

    .line 42
    .end local v1    # "layoutparams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    iget-object v2, p0, Lcom/youku/gamecenter/widgets/LoadingView;->mImageView:Landroid/widget/ImageView;

    sget v3, Lcom/youku/gamecenter/R$drawable;->loading_tudou_new:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/youku/gamecenter/widgets/LoadingView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/youku/gamecenter/widgets/LoadingView;

    .prologue
    .line 18
    iget-boolean v0, p0, Lcom/youku/gamecenter/widgets/LoadingView;->isYouku:Z

    return v0
.end method

.method static synthetic access$100(Lcom/youku/gamecenter/widgets/LoadingView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/youku/gamecenter/widgets/LoadingView;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/LoadingView;->mImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/youku/gamecenter/widgets/LoadingView;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/youku/gamecenter/widgets/LoadingView;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/LoadingView;->mRelativeLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$300(Lcom/youku/gamecenter/widgets/LoadingView;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/youku/gamecenter/widgets/LoadingView;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/LoadingView;->mViewGroup:Landroid/view/ViewGroup;

    return-object v0
.end method


# virtual methods
.method public startAnimation()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 51
    iget-boolean v3, p0, Lcom/youku/gamecenter/widgets/LoadingView;->isAniStart:Z

    if-eqz v3, :cond_0

    .line 87
    :goto_0
    return-void

    .line 54
    :cond_0
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 57
    .local v2, "param":Landroid/view/ViewGroup$LayoutParams;
    iget-object v3, p0, Lcom/youku/gamecenter/widgets/LoadingView;->mViewGroup:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/youku/gamecenter/widgets/LoadingView;->mRelativeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v4, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 58
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/youku/gamecenter/widgets/LoadingView;->isAniStart:Z

    .line 59
    iget-object v3, p0, Lcom/youku/gamecenter/widgets/LoadingView;->mRelativeLayout:Landroid/widget/RelativeLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 60
    iget-boolean v3, p0, Lcom/youku/gamecenter/widgets/LoadingView;->isYouku:Z

    if-eqz v3, :cond_1

    .line 61
    iget-object v3, p0, Lcom/youku/gamecenter/widgets/LoadingView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    .line 63
    .local v1, "animationDrawable":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_0

    .line 65
    .end local v1    # "animationDrawable":Landroid/graphics/drawable/AnimationDrawable;
    :cond_1
    iget-object v3, p0, Lcom/youku/gamecenter/widgets/LoadingView;->mContext:Landroid/content/Context;

    sget v4, Lcom/youku/gamecenter/R$anim;->gamecenter_tudou_loading:I

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 67
    .local v0, "animation":Landroid/view/animation/Animation;
    new-instance v3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 68
    new-instance v3, Lcom/youku/gamecenter/widgets/LoadingView$1;

    invoke-direct {v3, p0}, Lcom/youku/gamecenter/widgets/LoadingView$1;-><init>(Lcom/youku/gamecenter/widgets/LoadingView;)V

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 85
    iget-object v3, p0, Lcom/youku/gamecenter/widgets/LoadingView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public stopAnimation()V
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/LoadingView;->mImageView:Landroid/widget/ImageView;

    new-instance v1, Lcom/youku/gamecenter/widgets/LoadingView$2;

    invoke-direct {v1, p0}, Lcom/youku/gamecenter/widgets/LoadingView$2;-><init>(Lcom/youku/gamecenter/widgets/LoadingView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    .line 110
    return-void
.end method
