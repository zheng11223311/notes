.class public Lcom/youku/widget/ViewPager;
.super Landroid/support/v4/view/ViewPager;
.source "ViewPager.java"


# instance fields
.field private pagerEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youku/widget/ViewPager;->pagerEnabled:Z

    .line 30
    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/youku/widget/ViewPager;->pagerEnabled:Z

    if-eqz v0, :cond_0

    .line 44
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 47
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
    .line 34
    iget-boolean v0, p0, Lcom/youku/widget/ViewPager;->pagerEnabled:Z

    if-eqz v0, :cond_0

    .line 35
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 38
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
    .line 51
    iput-boolean p1, p0, Lcom/youku/widget/ViewPager;->pagerEnabled:Z

    .line 52
    return-void
.end method
