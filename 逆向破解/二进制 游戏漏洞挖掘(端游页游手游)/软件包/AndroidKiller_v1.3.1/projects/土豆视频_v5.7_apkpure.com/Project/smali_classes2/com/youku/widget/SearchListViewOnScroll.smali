.class public Lcom/youku/widget/SearchListViewOnScroll;
.super Ljava/lang/Object;
.source "SearchListViewOnScroll.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# static fields
.field private static final tag:Ljava/lang/String; = "SearchHeaderListView"


# instance fields
.field private isnoqc:Z

.field private mAdapter:Lcom/youku/adapter/SearchResultAdapter;

.field private mContext:Landroid/content/Context;

.field private mCurrentHeader:Landroid/view/View;

.field private mCurrentHeaderViewType:I

.field public mCurrentSection:I

.field private mHandler:Landroid/os/Handler;

.field private mListview:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

.field private searchType:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput v1, p0, Lcom/youku/widget/SearchListViewOnScroll;->mCurrentHeaderViewType:I

    .line 22
    const/4 v0, -0x1

    iput v0, p0, Lcom/youku/widget/SearchListViewOnScroll;->mCurrentSection:I

    .line 26
    iput-boolean v1, p0, Lcom/youku/widget/SearchListViewOnScroll;->isnoqc:Z

    .line 35
    const/4 v0, 0x1

    iput v0, p0, Lcom/youku/widget/SearchListViewOnScroll;->searchType:I

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 10
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    const v9, 0x7f0a04bc

    const/4 v8, 0x2

    const/16 v7, 0x29a

    const/16 v6, 0x22b

    .line 50
    iget-object v3, p0, Lcom/youku/widget/SearchListViewOnScroll;->mAdapter:Lcom/youku/adapter/SearchResultAdapter;

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/youku/widget/SearchListViewOnScroll;->searchType:I

    if-ne v3, v8, :cond_1

    .line 106
    :cond_0
    :goto_0
    return-void

    .line 52
    :cond_1
    move v1, p2

    .line 53
    .local v1, "section":I
    iget-object v3, p0, Lcom/youku/widget/SearchListViewOnScroll;->mAdapter:Lcom/youku/adapter/SearchResultAdapter;

    invoke-virtual {v3, v1}, Lcom/youku/adapter/SearchResultAdapter;->getItemViewType(I)I

    move-result v2

    .line 55
    .local v2, "viewType":I
    if-ne v2, v8, :cond_2

    .line 56
    iput v2, p0, Lcom/youku/widget/SearchListViewOnScroll;->mCurrentHeaderViewType:I

    .line 57
    iput v1, p0, Lcom/youku/widget/SearchListViewOnScroll;->mCurrentSection:I

    .line 58
    iget-object v3, p0, Lcom/youku/widget/SearchListViewOnScroll;->mAdapter:Lcom/youku/adapter/SearchResultAdapter;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/youku/widget/SearchListViewOnScroll;->mListview:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v3, v1, v4, v5}, Lcom/youku/adapter/SearchResultAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/youku/widget/SearchListViewOnScroll;->mCurrentHeader:Landroid/view/View;

    .line 61
    :cond_2
    iget v3, p0, Lcom/youku/widget/SearchListViewOnScroll;->mCurrentSection:I

    if-ltz v3, :cond_3

    iget v3, p0, Lcom/youku/widget/SearchListViewOnScroll;->mCurrentSection:I

    iget-object v4, p0, Lcom/youku/widget/SearchListViewOnScroll;->mAdapter:Lcom/youku/adapter/SearchResultAdapter;

    invoke-virtual {v4}, Lcom/youku/adapter/SearchResultAdapter;->getCount()I

    move-result v4

    if-ge v3, v4, :cond_3

    iget-object v3, p0, Lcom/youku/widget/SearchListViewOnScroll;->mAdapter:Lcom/youku/adapter/SearchResultAdapter;

    iget v4, p0, Lcom/youku/widget/SearchListViewOnScroll;->mCurrentSection:I

    invoke-virtual {v3, v4}, Lcom/youku/adapter/SearchResultAdapter;->getItemViewType(I)I

    move-result v3

    if-eq v3, v8, :cond_3

    .line 63
    const/4 v3, -0x1

    iput v3, p0, Lcom/youku/widget/SearchListViewOnScroll;->mCurrentSection:I

    .line 66
    :cond_3
    iget-object v3, p0, Lcom/youku/widget/SearchListViewOnScroll;->mCurrentHeader:Landroid/view/View;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/youku/widget/SearchListViewOnScroll;->mCurrentHeader:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    if-eqz v3, :cond_0

    .line 69
    iget v3, p0, Lcom/youku/widget/SearchListViewOnScroll;->mCurrentSection:I

    if-ltz v3, :cond_0

    .line 71
    iget-boolean v3, p0, Lcom/youku/widget/SearchListViewOnScroll;->isnoqc:Z

    if-eqz v3, :cond_7

    .line 72
    iget v3, p0, Lcom/youku/widget/SearchListViewOnScroll;->mCurrentSection:I

    add-int/lit8 v3, v3, 0x1

    if-gt p2, v3, :cond_6

    .line 73
    iget-object v3, p0, Lcom/youku/widget/SearchListViewOnScroll;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 75
    .local v0, "filterbar_height":F
    if-nez p2, :cond_4

    iget v3, p0, Lcom/youku/widget/SearchListViewOnScroll;->mCurrentSection:I

    if-nez v3, :cond_4

    .line 76
    iget-object v3, p0, Lcom/youku/widget/SearchListViewOnScroll;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 77
    :cond_4
    iget-object v3, p0, Lcom/youku/widget/SearchListViewOnScroll;->mCurrentHeader:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/youku/widget/SearchListViewOnScroll;->mCurrentHeader:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40400000    # 3.0f

    mul-float/2addr v5, v0

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_5

    .line 80
    iget-object v3, p0, Lcom/youku/widget/SearchListViewOnScroll;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 82
    :cond_5
    iget-object v3, p0, Lcom/youku/widget/SearchListViewOnScroll;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 85
    .end local v0    # "filterbar_height":F
    :cond_6
    iget-object v3, p0, Lcom/youku/widget/SearchListViewOnScroll;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 88
    :cond_7
    iget v3, p0, Lcom/youku/widget/SearchListViewOnScroll;->mCurrentSection:I

    add-int/lit8 v3, v3, 0x1

    if-ge p2, v3, :cond_a

    .line 89
    iget-object v3, p0, Lcom/youku/widget/SearchListViewOnScroll;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 91
    .restart local v0    # "filterbar_height":F
    if-nez p2, :cond_8

    iget v3, p0, Lcom/youku/widget/SearchListViewOnScroll;->mCurrentSection:I

    if-nez v3, :cond_8

    .line 92
    iget-object v3, p0, Lcom/youku/widget/SearchListViewOnScroll;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 93
    :cond_8
    iget-object v3, p0, Lcom/youku/widget/SearchListViewOnScroll;->mCurrentHeader:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/youku/widget/SearchListViewOnScroll;->mCurrentHeader:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v5, v0

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_9

    .line 96
    iget-object v3, p0, Lcom/youku/widget/SearchListViewOnScroll;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 98
    :cond_9
    iget-object v3, p0, Lcom/youku/widget/SearchListViewOnScroll;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 101
    .end local v0    # "filterbar_height":F
    :cond_a
    iget-object v3, p0, Lcom/youku/widget/SearchListViewOnScroll;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 110
    return-void
.end method

.method public setAdapter(Lcom/youku/adapter/SearchResultAdapter;Lcom/handmark/pulltorefresh/library/PullToRefreshListView;Landroid/os/Handler;Landroid/content/Context;)V
    .locals 1
    .param p1, "adapter"    # Lcom/youku/adapter/SearchResultAdapter;
    .param p2, "listview"    # Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
    .param p3, "mHandler"    # Landroid/os/Handler;
    .param p4, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/youku/widget/SearchListViewOnScroll;->mCurrentHeader:Landroid/view/View;

    .line 40
    iput-object p1, p0, Lcom/youku/widget/SearchListViewOnScroll;->mAdapter:Lcom/youku/adapter/SearchResultAdapter;

    .line 41
    iput-object p2, p0, Lcom/youku/widget/SearchListViewOnScroll;->mListview:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    .line 42
    iput-object p3, p0, Lcom/youku/widget/SearchListViewOnScroll;->mHandler:Landroid/os/Handler;

    .line 43
    iput-object p4, p0, Lcom/youku/widget/SearchListViewOnScroll;->mContext:Landroid/content/Context;

    .line 44
    return-void
.end method

.method public setIsnoqc(Z)V
    .locals 0
    .param p1, "isnoqc"    # Z

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/youku/widget/SearchListViewOnScroll;->isnoqc:Z

    .line 30
    return-void
.end method

.method public setSearchType(I)V
    .locals 0
    .param p1, "searchType"    # I

    .prologue
    .line 113
    iput p1, p0, Lcom/youku/widget/SearchListViewOnScroll;->searchType:I

    .line 114
    return-void
.end method
