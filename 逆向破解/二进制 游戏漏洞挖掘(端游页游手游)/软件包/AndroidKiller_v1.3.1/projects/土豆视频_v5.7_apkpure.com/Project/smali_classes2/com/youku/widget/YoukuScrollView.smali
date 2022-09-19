.class public Lcom/youku/widget/YoukuScrollView;
.super Landroid/widget/ScrollView;
.source "YoukuScrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/widget/YoukuScrollView$OnScrollViewListener;
    }
.end annotation


# instance fields
.field private mOnScrollViewListener:Lcom/youku/widget/YoukuScrollView$OnScrollViewListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 17
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 18
    return-void
.end method

.method private setParentScrollAble(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 62
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/youku/widget/YoukuScrollView;->requestDisallowInterceptTouchEvent(Z)V

    .line 63
    return-void

    .line 62
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected onScrollChanged(IIII)V
    .locals 6
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "oldl"    # I
    .param p4, "oldt"    # I

    .prologue
    .line 35
    iget-object v0, p0, Lcom/youku/widget/YoukuScrollView;->mOnScrollViewListener:Lcom/youku/widget/YoukuScrollView$OnScrollViewListener;

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/youku/widget/YoukuScrollView;->mOnScrollViewListener:Lcom/youku/widget/YoukuScrollView$OnScrollViewListener;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/youku/widget/YoukuScrollView$OnScrollViewListener;->onScrollChanged(Lcom/youku/widget/YoukuScrollView;IIII)V

    .line 38
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    .line 39
    return-void
.end method

.method public setOnScrollViewListener(Lcom/youku/widget/YoukuScrollView$OnScrollViewListener;)V
    .locals 0
    .param p1, "l"    # Lcom/youku/widget/YoukuScrollView$OnScrollViewListener;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/youku/widget/YoukuScrollView;->mOnScrollViewListener:Lcom/youku/widget/YoukuScrollView$OnScrollViewListener;

    .line 32
    return-void
.end method
