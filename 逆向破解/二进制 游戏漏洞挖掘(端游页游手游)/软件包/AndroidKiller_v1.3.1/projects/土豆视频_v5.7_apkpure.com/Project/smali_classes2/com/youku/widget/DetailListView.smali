.class public Lcom/youku/widget/DetailListView;
.super Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
.source "DetailListView.java"


# instance fields
.field private scroolEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 12
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youku/widget/DetailListView;->scroolEnabled:Z

    .line 17
    return-void
.end method
