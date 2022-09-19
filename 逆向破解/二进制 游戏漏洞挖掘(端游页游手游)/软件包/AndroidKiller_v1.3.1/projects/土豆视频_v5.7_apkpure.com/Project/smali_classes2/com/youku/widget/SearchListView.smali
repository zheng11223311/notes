.class public Lcom/youku/widget/SearchListView;
.super Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
.source "SearchListView.java"


# instance fields
.field private type:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;-><init>(Landroid/content/Context;)V

    .line 10
    const/4 v0, 0x1

    iput v0, p0, Lcom/youku/widget/SearchListView;->type:I

    .line 14
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 10
    const/4 v0, 0x1

    iput v0, p0, Lcom/youku/widget/SearchListView;->type:I

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;-><init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V

    .line 10
    const/4 v0, 0x1

    iput v0, p0, Lcom/youku/widget/SearchListView;->type:I

    .line 22
    return-void
.end method


# virtual methods
.method public getType()I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lcom/youku/widget/SearchListView;->type:I

    return v0
.end method

.method public setType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 29
    iput p1, p0, Lcom/youku/widget/SearchListView;->type:I

    .line 30
    return-void
.end method
