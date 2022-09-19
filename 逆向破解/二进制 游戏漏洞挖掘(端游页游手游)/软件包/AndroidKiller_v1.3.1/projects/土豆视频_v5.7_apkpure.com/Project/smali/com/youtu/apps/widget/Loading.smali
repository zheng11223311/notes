.class public Lcom/youtu/apps/widget/Loading;
.super Landroid/widget/ImageView;
.source "Loading.java"


# instance fields
.field private mLoadingSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 90
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 26
    invoke-virtual {p0}, Lcom/youtu/apps/widget/Loading;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x42400000    # 48.0f

    invoke-static {v0, v1}, Lcom/youtu/apps/recommend/util/Util;->dip2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/youtu/apps/widget/Loading;->mLoadingSize:I

    .line 91
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    invoke-virtual {p0}, Lcom/youtu/apps/widget/Loading;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x42400000    # 48.0f

    invoke-static {v3, v4}, Lcom/youtu/apps/recommend/util/Util;->dip2px(Landroid/content/Context;F)I

    move-result v3

    iput v3, p0, Lcom/youtu/apps/widget/Loading;->mLoadingSize:I

    .line 34
    const/4 v0, 0x0

    .line 35
    .local v0, "bg":I
    sget-object v3, Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;->sClientName:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 36
    sget v0, Lcom/youtu/apps/R$anim;->recommend_mobile_loading:I

    .line 39
    :cond_0
    sget-object v3, Lcom/youtu/apps/R$styleable;->RecommendLoading:[I

    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 41
    .local v2, "ta":Landroid/content/res/TypedArray;
    sget v3, Lcom/youtu/apps/R$styleable;->RecommendLoading_recommendLoadingSize:I

    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 43
    .local v1, "loadingSize":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 44
    invoke-virtual {p0, v0}, Lcom/youtu/apps/widget/Loading;->setBackgroundResource(I)V

    .line 45
    invoke-virtual {p0}, Lcom/youtu/apps/widget/Loading;->startAnimation()V

    .line 46
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 58
    :goto_0
    return-void

    .line 49
    :cond_1
    const-string v3, "large"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 50
    invoke-virtual {p0}, Lcom/youtu/apps/widget/Loading;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x42980000    # 76.0f

    invoke-static {v3, v4}, Lcom/youtu/apps/recommend/util/Util;->dip2px(Landroid/content/Context;F)I

    move-result v3

    iput v3, p0, Lcom/youtu/apps/widget/Loading;->mLoadingSize:I

    .line 55
    :cond_2
    :goto_1
    invoke-virtual {p0, v0}, Lcom/youtu/apps/widget/Loading;->setBackgroundResource(I)V

    .line 56
    invoke-virtual {p0}, Lcom/youtu/apps/widget/Loading;->startAnimation()V

    .line 57
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    .line 51
    :cond_3
    const-string/jumbo v3, "small"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 52
    invoke-virtual {p0}, Lcom/youtu/apps/widget/Loading;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x41800000    # 16.0f

    invoke-static {v3, v4}, Lcom/youtu/apps/recommend/util/Util;->dip2px(Landroid/content/Context;F)I

    move-result v3

    iput v3, p0, Lcom/youtu/apps/widget/Loading;->mLoadingSize:I

    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    invoke-virtual {p0}, Lcom/youtu/apps/widget/Loading;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x42400000    # 48.0f

    invoke-static {v0, v1}, Lcom/youtu/apps/recommend/util/Util;->dip2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/youtu/apps/widget/Loading;->mLoadingSize:I

    .line 30
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 62
    iget v0, p0, Lcom/youtu/apps/widget/Loading;->mLoadingSize:I

    iget v1, p0, Lcom/youtu/apps/widget/Loading;->mLoadingSize:I

    invoke-virtual {p0, v0, v1}, Lcom/youtu/apps/widget/Loading;->setMeasuredDimension(II)V

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
    invoke-virtual {p0}, Lcom/youtu/apps/widget/Loading;->stopAnimation()V

    .line 101
    :goto_0
    return-void

    .line 99
    :cond_1
    invoke-virtual {p0}, Lcom/youtu/apps/widget/Loading;->startAnimation()V

    goto :goto_0
.end method

.method public startAnimation()V
    .locals 1

    .prologue
    .line 66
    new-instance v0, Lcom/youtu/apps/widget/Loading$1;

    invoke-direct {v0, p0}, Lcom/youtu/apps/widget/Loading$1;-><init>(Lcom/youtu/apps/widget/Loading;)V

    invoke-virtual {p0, v0}, Lcom/youtu/apps/widget/Loading;->post(Ljava/lang/Runnable;)Z

    .line 75
    return-void
.end method

.method public stopAnimation()V
    .locals 1

    .prologue
    .line 78
    new-instance v0, Lcom/youtu/apps/widget/Loading$2;

    invoke-direct {v0, p0}, Lcom/youtu/apps/widget/Loading$2;-><init>(Lcom/youtu/apps/widget/Loading;)V

    invoke-virtual {p0, v0}, Lcom/youtu/apps/widget/Loading;->post(Ljava/lang/Runnable;)Z

    .line 87
    return-void
.end method
