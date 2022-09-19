.class public Lcom/youku/player/ui/widget/Loading;
.super Landroid/widget/ImageView;
.source "Loading.java"


# static fields
.field private static final LOADING_H:I = 0x1

.field private static final LOADING_L:I = -0x1

.field private static final NAME_SPACE:Ljava/lang/String; = "http://schemas.android.com/apk/res/android"

.field private static final TAG:Ljava/lang/String; = "tag"


# instance fields
.field private context:Landroid/content/Context;

.field private density:F

.field private mLoadingMode:I

.field private mLoadingSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 90
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 32
    const/high16 v0, 0x3fc00000    # 1.5f

    iput v0, p0, Lcom/youku/player/ui/widget/Loading;->density:F

    .line 33
    const/high16 v0, 0x42400000    # 48.0f

    invoke-static {v0}, Lcom/baseproject/utils/Util;->dip2px(F)I

    move-result v0

    iput v0, p0, Lcom/youku/player/ui/widget/Loading;->mLoadingSize:I

    .line 91
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    const/high16 v3, 0x3fc00000    # 1.5f

    iput v3, p0, Lcom/youku/player/ui/widget/Loading;->density:F

    .line 33
    const/high16 v3, 0x42400000    # 48.0f

    invoke-static {v3}, Lcom/baseproject/utils/Util;->dip2px(F)I

    move-result v3

    iput v3, p0, Lcom/youku/player/ui/widget/Loading;->mLoadingSize:I

    .line 42
    sget v0, Lcom/youku/android/player/R$anim;->yp_mobile_loading:I

    .line 44
    .local v0, "bg":I
    sget-object v3, Lcom/youku/android/player/R$styleable;->PlayerNewLoading:[I

    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 45
    .local v2, "ta":Landroid/content/res/TypedArray;
    sget v3, Lcom/youku/android/player/R$styleable;->PlayerNewLoading_playerloadingSize:I

    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 46
    .local v1, "loadingSize":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 47
    invoke-virtual {p0, v0}, Lcom/youku/player/ui/widget/Loading;->setBackgroundResource(I)V

    .line 48
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 58
    :goto_0
    return-void

    .line 51
    :cond_0
    const-string v3, "large"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 52
    const/high16 v3, 0x42980000    # 76.0f

    invoke-static {v3}, Lcom/baseproject/utils/Util;->dip2px(F)I

    move-result v3

    iput v3, p0, Lcom/youku/player/ui/widget/Loading;->mLoadingSize:I

    .line 56
    :cond_1
    :goto_1
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 57
    invoke-virtual {p0, v0}, Lcom/youku/player/ui/widget/Loading;->setBackgroundResource(I)V

    goto :goto_0

    .line 53
    :cond_2
    const-string/jumbo v3, "small"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 54
    const/high16 v3, 0x41800000    # 16.0f

    invoke-static {v3}, Lcom/baseproject/utils/Util;->dip2px(F)I

    move-result v3

    iput v3, p0, Lcom/youku/player/ui/widget/Loading;->mLoadingSize:I

    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    const/high16 v0, 0x3fc00000    # 1.5f

    iput v0, p0, Lcom/youku/player/ui/widget/Loading;->density:F

    .line 33
    const/high16 v0, 0x42400000    # 48.0f

    invoke-static {v0}, Lcom/baseproject/utils/Util;->dip2px(F)I

    move-result v0

    iput v0, p0, Lcom/youku/player/ui/widget/Loading;->mLoadingSize:I

    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/youku/player/ui/widget/Loading;->density:F

    .line 38
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 62
    iget v0, p0, Lcom/youku/player/ui/widget/Loading;->mLoadingSize:I

    iget v1, p0, Lcom/youku/player/ui/widget/Loading;->mLoadingSize:I

    invoke-virtual {p0, v0, v1}, Lcom/youku/player/ui/widget/Loading;->setMeasuredDimension(II)V

    .line 63
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    .line 95
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onVisibilityChanged(Landroid/view/View;I)V

    .line 96
    const/16 v0, 0x8

    if-eq p2, v0, :cond_0

    const/4 v0, 0x4

    if-ne p2, v0, :cond_1

    .line 97
    :cond_0
    invoke-virtual {p0}, Lcom/youku/player/ui/widget/Loading;->stopAnimation()V

    .line 101
    :goto_0
    return-void

    .line 99
    :cond_1
    invoke-virtual {p0}, Lcom/youku/player/ui/widget/Loading;->startAnimation()V

    goto :goto_0
.end method

.method public startAnimation()V
    .locals 1

    .prologue
    .line 66
    new-instance v0, Lcom/youku/player/ui/widget/Loading$1;

    invoke-direct {v0, p0}, Lcom/youku/player/ui/widget/Loading$1;-><init>(Lcom/youku/player/ui/widget/Loading;)V

    invoke-virtual {p0, v0}, Lcom/youku/player/ui/widget/Loading;->post(Ljava/lang/Runnable;)Z

    .line 75
    return-void
.end method

.method public stopAnimation()V
    .locals 1

    .prologue
    .line 78
    new-instance v0, Lcom/youku/player/ui/widget/Loading$2;

    invoke-direct {v0, p0}, Lcom/youku/player/ui/widget/Loading$2;-><init>(Lcom/youku/player/ui/widget/Loading;)V

    invoke-virtual {p0, v0}, Lcom/youku/player/ui/widget/Loading;->post(Ljava/lang/Runnable;)Z

    .line 87
    return-void
.end method
