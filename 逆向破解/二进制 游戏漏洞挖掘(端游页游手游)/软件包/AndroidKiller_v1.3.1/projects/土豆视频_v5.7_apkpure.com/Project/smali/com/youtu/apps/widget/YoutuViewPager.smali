.class public Lcom/youtu/apps/widget/YoutuViewPager;
.super Landroid/support/v4/view/ViewPager;
.source "YoutuViewPager.java"


# instance fields
.field private mGalleryHeight:I

.field private mPosY:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 15
    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;)V

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 37
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit16 v0, v2, 0xff

    .line 39
    .local v0, "action":I
    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 41
    invoke-virtual {p0}, Lcom/youtu/apps/widget/YoutuViewPager;->getCurrentItem()I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iget v3, p0, Lcom/youtu/apps/widget/YoutuViewPager;->mPosY:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iget v3, p0, Lcom/youtu/apps/widget/YoutuViewPager;->mPosY:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/youtu/apps/widget/YoutuViewPager;->mGalleryHeight:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    .line 42
    const/4 v1, 0x0

    .line 50
    :goto_0
    return v1

    .line 44
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 45
    .local v1, "i":Z
    goto :goto_0

    .line 49
    .end local v1    # "i":Z
    :cond_1
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 50
    .restart local v1    # "i":Z
    goto :goto_0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 0
    .param p1, "disallowIntercept"    # Z

    .prologue
    .line 20
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->requestDisallowInterceptTouchEvent(Z)V

    .line 22
    return-void
.end method

.method public setPosY(II)V
    .locals 0
    .param p1, "y"    # I
    .param p2, "height"    # I

    .prologue
    .line 29
    iput p1, p0, Lcom/youtu/apps/widget/YoutuViewPager;->mPosY:I

    .line 30
    iput p2, p0, Lcom/youtu/apps/widget/YoutuViewPager;->mGalleryHeight:I

    .line 31
    return-void
.end method
