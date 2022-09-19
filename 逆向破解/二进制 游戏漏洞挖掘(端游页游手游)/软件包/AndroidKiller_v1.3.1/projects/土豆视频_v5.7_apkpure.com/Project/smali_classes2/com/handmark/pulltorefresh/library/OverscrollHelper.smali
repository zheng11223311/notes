.class final Lcom/handmark/pulltorefresh/library/OverscrollHelper;
.super Ljava/lang/Object;
.source "OverscrollHelper.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x9
.end annotation


# static fields
.field static final DEFAULT_OVERSCROLL_SCALE:F = 1.0f

.field static final LOG_TAG:Ljava/lang/String; = "OverscrollHelper"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static isAndroidOverScrollEnabled(Landroid/view/View;)Z
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 125
    invoke-virtual {p0}, Landroid/view/View;->getOverScrollMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static overScrollBy(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;IIIIFZ)V
    .locals 3
    .param p1, "deltaY"    # I
    .param p2, "scrollY"    # I
    .param p3, "scrollRange"    # I
    .param p4, "fuzzyThreshold"    # I
    .param p5, "scaleFactor"    # F
    .param p6, "isTouchEvent"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/handmark/pulltorefresh/library/PullToRefreshBase",
            "<*>;IIIIFZ)V"
        }
    .end annotation

    .prologue
    .line 92
    .local p0, "view":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<*>;"
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->isPullToRefreshOverScrollEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 93
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getMode()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    move-result-object v0

    .line 96
    .local v0, "mode":Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
    sget-object v2, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->DISABLED:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    if-eq v0, v2, :cond_0

    if-nez p6, :cond_0

    if-eqz p1, :cond_0

    .line 97
    add-int v1, p1, p2

    .line 104
    .local v1, "newY":I
    rsub-int/lit8 v2, p4, 0x0

    if-ge v1, v2, :cond_1

    .line 107
    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->canPullDown()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 108
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getScrollY()I

    move-result v2

    add-int/2addr v2, v1

    int-to-float v2, v2

    mul-float/2addr v2, p5

    float-to-int v2, v2

    invoke-virtual {p0, v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->setHeaderScroll(I)V

    .line 122
    .end local v0    # "mode":Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
    .end local v1    # "newY":I
    :cond_0
    :goto_0
    return-void

    .line 110
    .restart local v0    # "mode":Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
    .restart local v1    # "newY":I
    :cond_1
    add-int v2, p3, p4

    if-le v1, v2, :cond_2

    .line 113
    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->canPullUp()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 114
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getScrollY()I

    move-result v2

    add-int/2addr v2, v1

    sub-int/2addr v2, p3

    int-to-float v2, v2

    mul-float/2addr v2, p5

    float-to-int v2, v2

    invoke-virtual {p0, v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->setHeaderScroll(I)V

    goto :goto_0

    .line 116
    :cond_2
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-le v2, p4, :cond_3

    sub-int v2, v1, p3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-gt v2, p4, :cond_0

    .line 118
    :cond_3
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->smoothScrollToLonger(I)V

    goto :goto_0
.end method

.method static overScrollBy(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;IIIZ)V
    .locals 7
    .param p1, "deltaY"    # I
    .param p2, "scrollY"    # I
    .param p3, "scrollRange"    # I
    .param p4, "isTouchEvent"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/handmark/pulltorefresh/library/PullToRefreshBase",
            "<*>;IIIZ)V"
        }
    .end annotation

    .prologue
    .line 61
    .local p0, "view":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<*>;"
    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v6, p4

    invoke-static/range {v0 .. v6}, Lcom/handmark/pulltorefresh/library/OverscrollHelper;->overScrollBy(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;IIIIFZ)V

    .line 62
    return-void
.end method

.method static overScrollBy(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;IIZ)V
    .locals 1
    .param p1, "deltaY"    # I
    .param p2, "scrollY"    # I
    .param p3, "isTouchEvent"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/handmark/pulltorefresh/library/PullToRefreshBase",
            "<*>;IIZ)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p0, "view":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<*>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, p3}, Lcom/handmark/pulltorefresh/library/OverscrollHelper;->overScrollBy(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;IIIZ)V

    .line 38
    return-void
.end method
