.class public Lcom/youku/widget/Loading;
.super Landroid/widget/ImageView;
.source "Loading.java"


# static fields
.field static final ANIMATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field static final DEFAULT_ROTATION_ANIMATION_DURATION:I = 0x7d0

.field private static final LOADING_H:I = 0x1

.field private static final LOADING_L:I = -0x1

.field private static final NAME_SPACE:Ljava/lang/String; = "http://schemas.android.com/apk/res/android"

.field private static final TAG:Ljava/lang/String; = "tag"


# instance fields
.field private mLoadingMode:I

.field private mLoadingSize:I

.field mRotateAnimation:Landroid/view/animation/Animation;

.field private mUseIntrinisicAnimation:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Lcom/youku/widget/Loading;->ANIMATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 123
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 39
    const/high16 v0, 0x42400000    # 48.0f

    invoke-static {v0}, Lcom/youku/util/Util;->dip2px(F)I

    move-result v0

    iput v0, p0, Lcom/youku/widget/Loading;->mLoadingSize:I

    .line 124
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v3, 0x1

    .line 50
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    const/high16 v0, 0x42400000    # 48.0f

    invoke-static {v0}, Lcom/youku/util/Util;->dip2px(F)I

    move-result v0

    iput v0, p0, Lcom/youku/widget/Loading;->mLoadingSize:I

    .line 52
    sget-object v0, Lcom/tudou/android/R$styleable;->NewLoading:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v10

    .line 53
    .local v10, "ta":Landroid/content/res/TypedArray;
    const/4 v0, 0x0

    invoke-virtual {v10, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 55
    .local v8, "loadingSize":Ljava/lang/String;
    const/4 v7, 0x0

    .line 58
    .local v7, "imageDrawable":Landroid/graphics/drawable/Drawable;
    if-nez v7, :cond_0

    .line 59
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020558

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 62
    :cond_0
    invoke-virtual {p0, v7}, Lcom/youku/widget/Loading;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 64
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/youku/widget/Loading;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 65
    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    .line 66
    .local v9, "mHeaderImageMatrix":Landroid/graphics/Matrix;
    invoke-virtual {p0, v9}, Lcom/youku/widget/Loading;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 68
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x44340000    # 720.0f

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v0, p0, Lcom/youku/widget/Loading;->mRotateAnimation:Landroid/view/animation/Animation;

    .line 70
    iget-object v0, p0, Lcom/youku/widget/Loading;->mRotateAnimation:Landroid/view/animation/Animation;

    sget-object v1, Lcom/youku/widget/Loading;->ANIMATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 71
    iget-object v0, p0, Lcom/youku/widget/Loading;->mRotateAnimation:Landroid/view/animation/Animation;

    const-wide/16 v4, 0x7d0

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 72
    iget-object v0, p0, Lcom/youku/widget/Loading;->mRotateAnimation:Landroid/view/animation/Animation;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 73
    iget-object v0, p0, Lcom/youku/widget/Loading;->mRotateAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    .line 74
    iget-object v0, p0, Lcom/youku/widget/Loading;->mRotateAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/youku/widget/Loading;->setAnimation(Landroid/view/animation/Animation;)V

    .line 75
    instance-of v0, v7, Landroid/graphics/drawable/AnimationDrawable;

    iput-boolean v0, p0, Lcom/youku/widget/Loading;->mUseIntrinisicAnimation:Z

    .line 77
    if-nez v8, :cond_1

    .line 78
    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V

    .line 87
    :goto_0
    return-void

    .line 81
    :cond_1
    const-string v0, "large"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 82
    const/high16 v0, 0x42980000    # 76.0f

    invoke-static {v0}, Lcom/youku/util/Util;->dip2px(F)I

    move-result v0

    iput v0, p0, Lcom/youku/widget/Loading;->mLoadingSize:I

    .line 86
    :cond_2
    :goto_1
    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    .line 83
    :cond_3
    const-string v0, "small"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 84
    const/high16 v0, 0x41800000    # 16.0f

    invoke-static {v0}, Lcom/youku/util/Util;->dip2px(F)I

    move-result v0

    iput v0, p0, Lcom/youku/widget/Loading;->mLoadingSize:I

    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    const/high16 v0, 0x42400000    # 48.0f

    invoke-static {v0}, Lcom/youku/util/Util;->dip2px(F)I

    move-result v0

    iput v0, p0, Lcom/youku/widget/Loading;->mLoadingSize:I

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/youku/widget/Loading;)Z
    .locals 1
    .param p0, "x0"    # Lcom/youku/widget/Loading;

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/youku/widget/Loading;->mUseIntrinisicAnimation:Z

    return v0
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 91
    iget v0, p0, Lcom/youku/widget/Loading;->mLoadingSize:I

    iget v1, p0, Lcom/youku/widget/Loading;->mLoadingSize:I

    invoke-virtual {p0, v0, v1}, Lcom/youku/widget/Loading;->setMeasuredDimension(II)V

    .line 92
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 2
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    .line 128
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onVisibilityChanged(Landroid/view/View;I)V

    .line 129
    invoke-virtual {p0}, Lcom/youku/widget/Loading;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/youku/widget/Loading;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 130
    :cond_0
    invoke-virtual {p0}, Lcom/youku/widget/Loading;->stopAnimation()V

    .line 134
    :goto_0
    return-void

    .line 132
    :cond_1
    invoke-virtual {p0}, Lcom/youku/widget/Loading;->startAnimation()V

    goto :goto_0
.end method

.method public startAnimation()V
    .locals 1

    .prologue
    .line 95
    new-instance v0, Lcom/youku/widget/Loading$1;

    invoke-direct {v0, p0}, Lcom/youku/widget/Loading$1;-><init>(Lcom/youku/widget/Loading;)V

    invoke-virtual {p0, v0}, Lcom/youku/widget/Loading;->post(Ljava/lang/Runnable;)Z

    .line 106
    return-void
.end method

.method public stopAnimation()V
    .locals 1

    .prologue
    .line 109
    new-instance v0, Lcom/youku/widget/Loading$2;

    invoke-direct {v0, p0}, Lcom/youku/widget/Loading$2;-><init>(Lcom/youku/widget/Loading;)V

    invoke-virtual {p0, v0}, Lcom/youku/widget/Loading;->post(Ljava/lang/Runnable;)Z

    .line 120
    return-void
.end method
