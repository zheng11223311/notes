.class public Lcom/youku/laifeng/sdk/widget/TabViewPager;
.super Landroid/support/v4/view/ViewPager;
.source "TabViewPager.java"


# instance fields
.field private enabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 15
    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;)V

    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youku/laifeng/sdk/widget/TabViewPager;->enabled:Z

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youku/laifeng/sdk/widget/TabViewPager;->enabled:Z

    .line 27
    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/youku/laifeng/sdk/widget/TabViewPager;->enabled:Z

    if-eqz v0, :cond_0

    .line 41
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 43
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
    .line 31
    iget-boolean v0, p0, Lcom/youku/laifeng/sdk/widget/TabViewPager;->enabled:Z

    if-eqz v0, :cond_0

    .line 32
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 35
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setPagingEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/youku/laifeng/sdk/widget/TabViewPager;->enabled:Z

    .line 48
    return-void
.end method

.method public setSliderEnable(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 21
    iput-boolean p1, p0, Lcom/youku/laifeng/sdk/widget/TabViewPager;->enabled:Z

    .line 22
    return-void
.end method
