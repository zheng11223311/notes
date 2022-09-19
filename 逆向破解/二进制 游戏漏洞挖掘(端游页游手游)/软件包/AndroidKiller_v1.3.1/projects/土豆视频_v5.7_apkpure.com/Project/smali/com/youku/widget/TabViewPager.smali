.class public Lcom/youku/widget/TabViewPager;
.super Lcom/youku/widget/viewpager/ViewPager;
.source "TabViewPager.java"


# instance fields
.field private pagerEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 14
    invoke-direct {p0, p1, p2}, Lcom/youku/widget/viewpager/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    iput-boolean v0, p0, Lcom/youku/widget/TabViewPager;->pagerEnabled:Z

    .line 16
    invoke-virtual {p0, v0}, Lcom/youku/widget/TabViewPager;->setEnAbleAnimation(Z)V

    .line 17
    invoke-virtual {p0, v0}, Lcom/youku/widget/TabViewPager;->setDEFAULT_OFFSCREEN_PAGES(I)V

    .line 18
    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/youku/widget/TabViewPager;->pagerEnabled:Z

    if-eqz v0, :cond_0

    .line 32
    invoke-super {p0, p1}, Lcom/youku/widget/viewpager/ViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 35
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/youku/widget/TabViewPager;->pagerEnabled:Z

    if-eqz v0, :cond_0

    .line 23
    invoke-super {p0, p1}, Lcom/youku/widget/viewpager/ViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 26
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setPagingEnabled(Z)V
    .locals 0
    .param p1, "e"    # Z

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/youku/widget/TabViewPager;->pagerEnabled:Z

    .line 40
    return-void
.end method
