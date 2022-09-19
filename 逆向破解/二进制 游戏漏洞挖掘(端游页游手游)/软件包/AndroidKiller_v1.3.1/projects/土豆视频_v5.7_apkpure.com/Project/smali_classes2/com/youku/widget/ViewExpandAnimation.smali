.class public Lcom/youku/widget/ViewExpandAnimation;
.super Landroid/view/animation/Animation;
.source "ViewExpandAnimation.java"


# instance fields
.field private mAnimationView:Landroid/view/View;

.field private mEnd:I

.field private mStart:I

.field private mViewLayoutParams:Landroid/widget/LinearLayout$LayoutParams;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 17
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 12
    iput-object v1, p0, Lcom/youku/widget/ViewExpandAnimation;->mAnimationView:Landroid/view/View;

    .line 13
    iput-object v1, p0, Lcom/youku/widget/ViewExpandAnimation;->mViewLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 14
    iput v0, p0, Lcom/youku/widget/ViewExpandAnimation;->mStart:I

    .line 15
    iput v0, p0, Lcom/youku/widget/ViewExpandAnimation;->mEnd:I

    .line 18
    const/16 v0, 0x1f4

    invoke-direct {p0, p1, v0}, Lcom/youku/widget/ViewExpandAnimation;->animationSettings(Landroid/view/View;I)V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/view/View;I)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "duration"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 21
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 12
    iput-object v1, p0, Lcom/youku/widget/ViewExpandAnimation;->mAnimationView:Landroid/view/View;

    .line 13
    iput-object v1, p0, Lcom/youku/widget/ViewExpandAnimation;->mViewLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 14
    iput v0, p0, Lcom/youku/widget/ViewExpandAnimation;->mStart:I

    .line 15
    iput v0, p0, Lcom/youku/widget/ViewExpandAnimation;->mEnd:I

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/youku/widget/ViewExpandAnimation;->animationSettings(Landroid/view/View;I)V

    .line 23
    return-void
.end method

.method private animationSettings(Landroid/view/View;I)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "duration"    # I

    .prologue
    const/4 v1, 0x0

    .line 26
    int-to-long v2, p2

    invoke-virtual {p0, v2, v3}, Lcom/youku/widget/ViewExpandAnimation;->setDuration(J)V

    .line 27
    iput-object p1, p0, Lcom/youku/widget/ViewExpandAnimation;->mAnimationView:Landroid/view/View;

    .line 28
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput-object v0, p0, Lcom/youku/widget/ViewExpandAnimation;->mViewLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 29
    iget-object v0, p0, Lcom/youku/widget/ViewExpandAnimation;->mViewLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iput v0, p0, Lcom/youku/widget/ViewExpandAnimation;->mStart:I

    .line 30
    iget v0, p0, Lcom/youku/widget/ViewExpandAnimation;->mStart:I

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    rsub-int/lit8 v0, v0, 0x0

    :goto_0
    iput v0, p0, Lcom/youku/widget/ViewExpandAnimation;->mEnd:I

    .line 31
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 32
    return-void

    :cond_0
    move v0, v1

    .line 30
    goto :goto_0
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 4
    .param p1, "interpolatedTime"    # F
    .param p2, "t"    # Landroid/view/animation/Transformation;

    .prologue
    .line 36
    invoke-super {p0, p1, p2}, Landroid/view/animation/Animation;->applyTransformation(FLandroid/view/animation/Transformation;)V

    .line 38
    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    .line 39
    iget-object v0, p0, Lcom/youku/widget/ViewExpandAnimation;->mViewLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lcom/youku/widget/ViewExpandAnimation;->mStart:I

    iget v2, p0, Lcom/youku/widget/ViewExpandAnimation;->mEnd:I

    iget v3, p0, Lcom/youku/widget/ViewExpandAnimation;->mStart:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int v2, v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 41
    iget-object v0, p0, Lcom/youku/widget/ViewExpandAnimation;->mAnimationView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 49
    :cond_0
    :goto_0
    return-void

    .line 43
    :cond_1
    iget-object v0, p0, Lcom/youku/widget/ViewExpandAnimation;->mViewLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lcom/youku/widget/ViewExpandAnimation;->mEnd:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 44
    iget-object v0, p0, Lcom/youku/widget/ViewExpandAnimation;->mAnimationView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 45
    iget v0, p0, Lcom/youku/widget/ViewExpandAnimation;->mEnd:I

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/youku/widget/ViewExpandAnimation;->mAnimationView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
