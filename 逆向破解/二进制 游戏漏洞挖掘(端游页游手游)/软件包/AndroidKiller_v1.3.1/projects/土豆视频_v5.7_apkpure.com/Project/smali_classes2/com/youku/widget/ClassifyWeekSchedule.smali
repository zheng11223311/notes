.class public Lcom/youku/widget/ClassifyWeekSchedule;
.super Landroid/widget/LinearLayout;
.source "ClassifyWeekSchedule.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/widget/ClassifyWeekSchedule$ItemViewHolder;,
        Lcom/youku/widget/ClassifyWeekSchedule$MyAdapter;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/youku/widget/ClassifyWeekSchedule$MyAdapter;

.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mPaddingTopView:Landroid/view/View;

.field private mRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/youku/widget/ClassifyWeekSchedule;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    iput-object p1, p0, Lcom/youku/widget/ClassifyWeekSchedule;->mContext:Landroid/content/Context;

    .line 50
    invoke-direct {p0}, Lcom/youku/widget/ClassifyWeekSchedule;->initView()V

    .line 51
    return-void
.end method

.method static synthetic access$000(Lcom/youku/widget/ClassifyWeekSchedule;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/youku/widget/ClassifyWeekSchedule;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/youku/widget/ClassifyWeekSchedule;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private initView()V
    .locals 6

    .prologue
    .line 54
    const-string v0, "layout_inflater"

    .line 55
    .local v0, "infServiString":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/youku/widget/ClassifyWeekSchedule;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    iput-object v3, p0, Lcom/youku/widget/ClassifyWeekSchedule;->mInflater:Landroid/view/LayoutInflater;

    .line 56
    iget-object v3, p0, Lcom/youku/widget/ClassifyWeekSchedule;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f03019d

    const/4 v5, 0x1

    invoke-virtual {v3, v4, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/youku/widget/ClassifyWeekSchedule;->mView:Landroid/view/View;

    .line 57
    iget-object v3, p0, Lcom/youku/widget/ClassifyWeekSchedule;->mView:Landroid/view/View;

    const v4, 0x7f0c075e

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/youku/widget/ClassifyWeekSchedule;->mPaddingTopView:Landroid/view/View;

    .line 58
    iget-object v3, p0, Lcom/youku/widget/ClassifyWeekSchedule;->mView:Landroid/view/View;

    const v4, 0x7f0c02dc

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/RecyclerView;

    iput-object v3, p0, Lcom/youku/widget/ClassifyWeekSchedule;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 59
    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v3, p0, Lcom/youku/widget/ClassifyWeekSchedule;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 60
    .local v1, "layoutManager":Landroid/support/v7/widget/LinearLayoutManager;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/support/v7/widget/LinearLayoutManager;->setOrientation(I)V

    .line 61
    iget-object v3, p0, Lcom/youku/widget/ClassifyWeekSchedule;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 63
    new-instance v2, Lcom/youku/widget/ClassifyWeekSchedule$1;

    invoke-direct {v2, p0}, Lcom/youku/widget/ClassifyWeekSchedule$1;-><init>(Lcom/youku/widget/ClassifyWeekSchedule;)V

    .line 78
    .local v2, "tDecoration":Landroid/support/v7/widget/RecyclerView$ItemDecoration;
    iget-object v3, p0, Lcom/youku/widget/ClassifyWeekSchedule;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 79
    return-void
.end method


# virtual methods
.method public setData(ZLjava/util/List;Lcom/youku/vo/SkipInfo;)V
    .locals 3
    .param p1, "showPaddingTop"    # Z
    .param p3, "skipInfo"    # Lcom/youku/vo/SkipInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Lcom/youku/vo/ChannelScheduleItem;",
            ">;",
            "Lcom/youku/vo/SkipInfo;",
            ")V"
        }
    .end annotation

    .prologue
    .line 83
    .local p2, "channelScheduleItemList":Ljava/util/List;, "Ljava/util/List<Lcom/youku/vo/ChannelScheduleItem;>;"
    if-eqz p1, :cond_1

    .line 84
    iget-object v0, p0, Lcom/youku/widget/ClassifyWeekSchedule;->mPaddingTopView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 88
    :goto_0
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 101
    :cond_0
    :goto_1
    return-void

    .line 86
    :cond_1
    iget-object v0, p0, Lcom/youku/widget/ClassifyWeekSchedule;->mPaddingTopView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 91
    :cond_2
    if-eqz p3, :cond_3

    .line 92
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    new-instance v1, Lcom/youku/vo/ChannelScheduleItem;

    iget-object v2, p3, Lcom/youku/vo/SkipInfo;->title:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/youku/vo/ChannelScheduleItem;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 94
    :cond_3
    iget-object v0, p0, Lcom/youku/widget/ClassifyWeekSchedule;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    if-nez v0, :cond_4

    .line 95
    new-instance v0, Lcom/youku/widget/ClassifyWeekSchedule$MyAdapter;

    invoke-direct {v0, p0}, Lcom/youku/widget/ClassifyWeekSchedule$MyAdapter;-><init>(Lcom/youku/widget/ClassifyWeekSchedule;)V

    iput-object v0, p0, Lcom/youku/widget/ClassifyWeekSchedule;->mAdapter:Lcom/youku/widget/ClassifyWeekSchedule$MyAdapter;

    .line 99
    :goto_2
    iget-object v0, p0, Lcom/youku/widget/ClassifyWeekSchedule;->mAdapter:Lcom/youku/widget/ClassifyWeekSchedule$MyAdapter;

    invoke-virtual {v0, p2, p3}, Lcom/youku/widget/ClassifyWeekSchedule$MyAdapter;->setData(Ljava/util/List;Lcom/youku/vo/SkipInfo;)V

    .line 100
    iget-object v0, p0, Lcom/youku/widget/ClassifyWeekSchedule;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/youku/widget/ClassifyWeekSchedule;->mAdapter:Lcom/youku/widget/ClassifyWeekSchedule$MyAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    goto :goto_1

    .line 97
    :cond_4
    iget-object v0, p0, Lcom/youku/widget/ClassifyWeekSchedule;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/youku/widget/ClassifyWeekSchedule$MyAdapter;

    iput-object v0, p0, Lcom/youku/widget/ClassifyWeekSchedule;->mAdapter:Lcom/youku/widget/ClassifyWeekSchedule$MyAdapter;

    goto :goto_2
.end method
