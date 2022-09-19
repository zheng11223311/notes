.class public Lcom/youtu/apps/widget/TudouLoading;
.super Lcom/youtu/apps/widget/Loading;
.source "TudouLoading.java"


# static fields
.field static final ANIMATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field static final DEFAULT_ROTATION_ANIMATION_DURATION:I = 0x708

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
    .line 39
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Lcom/youtu/apps/widget/TudouLoading;->ANIMATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 122
    invoke-direct {p0, p1}, Lcom/youtu/apps/widget/Loading;-><init>(Landroid/content/Context;)V

    .line 38
    invoke-virtual {p0}, Lcom/youtu/apps/widget/TudouLoading;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x42400000    # 48.0f

    invoke-static {v0, v1}, Lcom/youtu/apps/recommend/util/Util;->dip2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/youtu/apps/widget/TudouLoading;->mLoadingSize:I

    .line 123
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v3, 0x1

    .line 49
    invoke-direct {p0, p1, p2}, Lcom/youtu/apps/widget/Loading;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    invoke-virtual {p0}, Lcom/youtu/apps/widget/TudouLoading;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x42400000    # 48.0f

    invoke-static {v0, v1}, Lcom/youtu/apps/recommend/util/Util;->dip2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/youtu/apps/widget/TudouLoading;->mLoadingSize:I

    .line 51
    sget-object v0, Lcom/youtu/apps/R$styleable;->Loading:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v10

    .line 52
    .local v10, "ta":Landroid/content/res/TypedArray;
    sget v0, Lcom/youtu/apps/R$styleable;->Loading_loadingSizes:I

    invoke-virtual {v10, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 54
    .local v8, "loadingSize":Ljava/lang/String;
    const/4 v7, 0x0

    .line 57
    .local v7, "imageDrawable":Landroid/graphics/drawable/Drawable;
    if-nez v7, :cond_0

    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/youtu/apps/R$drawable;->loading_tudou:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 61
    :cond_0
    invoke-virtual {p0, v7}, Lcom/youtu/apps/widget/TudouLoading;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 63
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/youtu/apps/widget/TudouLoading;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 64
    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    .line 65
    .local v9, "mHeaderImageMatrix":Landroid/graphics/Matrix;
    invoke-virtual {p0, v9}, Lcom/youtu/apps/widget/TudouLoading;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 67
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x44340000    # 720.0f

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v0, p0, Lcom/youtu/apps/widget/TudouLoading;->mRotateAnimation:Landroid/view/animation/Animation;

    .line 69
    iget-object v0, p0, Lcom/youtu/apps/widget/TudouLoading;->mRotateAnimation:Landroid/view/animation/Animation;

    sget-object v1, Lcom/youtu/apps/widget/TudouLoading;->ANIMATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 70
    iget-object v0, p0, Lcom/youtu/apps/widget/TudouLoading;->mRotateAnimation:Landroid/view/animation/Animation;

    const-wide/16 v4, 0x708

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 71
    iget-object v0, p0, Lcom/youtu/apps/widget/TudouLoading;->mRotateAnimation:Landroid/view/animation/Animation;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 72
    iget-object v0, p0, Lcom/youtu/apps/widget/TudouLoading;->mRotateAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    .line 73
    iget-object v0, p0, Lcom/youtu/apps/widget/TudouLoading;->mRotateAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/youtu/apps/widget/TudouLoading;->setAnimation(Landroid/view/animation/Animation;)V

    .line 74
    instance-of v0, v7, Landroid/graphics/drawable/AnimationDrawable;

    iput-boolean v0, p0, Lcom/youtu/apps/widget/TudouLoading;->mUseIntrinisicAnimation:Z

    .line 76
    if-nez v8, :cond_1

    .line 77
    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V

    .line 86
    :goto_0
    return-void

    .line 80
    :cond_1
    const-string v0, "large"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 81
    invoke-virtual {p0}, Lcom/youtu/apps/widget/TudouLoading;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x42980000    # 76.0f

    invoke-static {v0, v1}, Lcom/youtu/apps/recommend/util/Util;->dip2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/youtu/apps/widget/TudouLoading;->mLoadingSize:I

    .line 85
    :cond_2
    :goto_1
    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    .line 82
    :cond_3
    const-string/jumbo v0, "small"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 83
    invoke-virtual {p0}, Lcom/youtu/apps/widget/TudouLoading;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x41800000    # 16.0f

    invoke-static {v0, v1}, Lcom/youtu/apps/recommend/util/Util;->dip2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/youtu/apps/widget/TudouLoading;->mLoadingSize:I

    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3}, Lcom/youtu/apps/widget/Loading;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    invoke-virtual {p0}, Lcom/youtu/apps/widget/TudouLoading;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x42400000    # 48.0f

    invoke-static {v0, v1}, Lcom/youtu/apps/recommend/util/Util;->dip2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/youtu/apps/widget/TudouLoading;->mLoadingSize:I

    .line 46
    return-void
.end method

.method static synthetic access$000(Lcom/youtu/apps/widget/TudouLoading;)Z
    .locals 1
    .param p0, "x0"    # Lcom/youtu/apps/widget/TudouLoading;

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/youtu/apps/widget/TudouLoading;->mUseIntrinisicAnimation:Z

    return v0
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 90
    iget v0, p0, Lcom/youtu/apps/widget/TudouLoading;->mLoadingSize:I

    iget v1, p0, Lcom/youtu/apps/widget/TudouLoading;->mLoadingSize:I

    invoke-virtual {p0, v0, v1}, Lcom/youtu/apps/widget/TudouLoading;->setMeasuredDimension(II)V

    .line 91
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 2
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    .line 127
    invoke-super {p0, p1, p2}, Lcom/youtu/apps/widget/Loading;->onVisibilityChanged(Landroid/view/View;I)V

    .line 128
    invoke-virtual {p0}, Lcom/youtu/apps/widget/TudouLoading;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/youtu/apps/widget/TudouLoading;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 129
    :cond_0
    invoke-virtual {p0}, Lcom/youtu/apps/widget/TudouLoading;->stopAnimation()V

    .line 133
    :goto_0
    return-void

    .line 131
    :cond_1
    invoke-virtual {p0}, Lcom/youtu/apps/widget/TudouLoading;->startAnimation()V

    goto :goto_0
.end method

.method public startAnimation()V
    .locals 1

    .prologue
    .line 94
    new-instance v0, Lcom/youtu/apps/widget/TudouLoading$1;

    invoke-direct {v0, p0}, Lcom/youtu/apps/widget/TudouLoading$1;-><init>(Lcom/youtu/apps/widget/TudouLoading;)V

    invoke-virtual {p0, v0}, Lcom/youtu/apps/widget/TudouLoading;->post(Ljava/lang/Runnable;)Z

    .line 105
    return-void
.end method

.method public stopAnimation()V
    .locals 1

    .prologue
    .line 108
    new-instance v0, Lcom/youtu/apps/widget/TudouLoading$2;

    invoke-direct {v0, p0}, Lcom/youtu/apps/widget/TudouLoading$2;-><init>(Lcom/youtu/apps/widget/TudouLoading;)V

    invoke-virtual {p0, v0}, Lcom/youtu/apps/widget/TudouLoading;->post(Ljava/lang/Runnable;)Z

    .line 119
    return-void
.end method
