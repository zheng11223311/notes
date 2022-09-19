.class public Lcom/youku/widget/SelectnessTabView;
.super Landroid/widget/LinearLayout;
.source "SelectnessTabView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/widget/SelectnessTabView$ItemViewHolder;,
        Lcom/youku/widget/SelectnessTabView$MyAdapter;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/youku/widget/SelectnessTabView$MyAdapter;

.field private mChannelName:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field public mOldSelectness:Landroid/view/View;

.field private mRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field public mRootView:Landroid/view/View;

.field private mSubTitle:Landroid/widget/TextView;

.field private mTtitleCornerImage:Landroid/widget/ImageView;

.field public mTxtTitle:Landroid/widget/TextView;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "channelName"    # Ljava/lang/String;

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/youku/widget/SelectnessTabView;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/util/AttributeSet;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "channelName"    # Ljava/lang/String;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 59
    invoke-direct {p0, p1, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    iput-object p1, p0, Lcom/youku/widget/SelectnessTabView;->mContext:Landroid/content/Context;

    .line 61
    iput-object p2, p0, Lcom/youku/widget/SelectnessTabView;->mChannelName:Ljava/lang/String;

    .line 62
    invoke-direct {p0}, Lcom/youku/widget/SelectnessTabView;->initView()V

    .line 63
    return-void
.end method

.method static synthetic access$000(Lcom/youku/widget/SelectnessTabView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/youku/widget/SelectnessTabView;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/youku/widget/SelectnessTabView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private initView()V
    .locals 5

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/youku/widget/SelectnessTabView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    iput-object v2, p0, Lcom/youku/widget/SelectnessTabView;->mInflater:Landroid/view/LayoutInflater;

    .line 67
    iget-object v2, p0, Lcom/youku/widget/SelectnessTabView;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f03008f

    const/4 v4, 0x1

    invoke-virtual {v2, v3, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/youku/widget/SelectnessTabView;->mView:Landroid/view/View;

    .line 68
    const v2, 0x7f0c026e

    invoke-virtual {p0, v2}, Lcom/youku/widget/SelectnessTabView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/youku/widget/SelectnessTabView;->mTxtTitle:Landroid/widget/TextView;

    .line 69
    iget-object v2, p0, Lcom/youku/widget/SelectnessTabView;->mView:Landroid/view/View;

    const v3, 0x7f0c02d8

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/youku/widget/SelectnessTabView;->mTtitleCornerImage:Landroid/widget/ImageView;

    .line 70
    const v2, 0x7f0c02b9

    invoke-virtual {p0, v2}, Lcom/youku/widget/SelectnessTabView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/youku/widget/SelectnessTabView;->mRootView:Landroid/view/View;

    .line 71
    const v2, 0x7f0c02de

    invoke-virtual {p0, v2}, Lcom/youku/widget/SelectnessTabView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/youku/widget/SelectnessTabView;->mOldSelectness:Landroid/view/View;

    .line 72
    const v2, 0x7f0c028b

    invoke-virtual {p0, v2}, Lcom/youku/widget/SelectnessTabView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/youku/widget/SelectnessTabView;->mSubTitle:Landroid/widget/TextView;

    .line 74
    iget-object v2, p0, Lcom/youku/widget/SelectnessTabView;->mView:Landroid/view/View;

    const v3, 0x7f0c02dc

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/RecyclerView;

    iput-object v2, p0, Lcom/youku/widget/SelectnessTabView;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 75
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v2, p0, Lcom/youku/widget/SelectnessTabView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 76
    .local v0, "layoutManager":Landroid/support/v7/widget/LinearLayoutManager;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/LinearLayoutManager;->setOrientation(I)V

    .line 77
    iget-object v2, p0, Lcom/youku/widget/SelectnessTabView;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 79
    new-instance v1, Lcom/youku/widget/SelectnessTabView$1;

    invoke-direct {v1, p0}, Lcom/youku/widget/SelectnessTabView$1;-><init>(Lcom/youku/widget/SelectnessTabView;)V

    .line 86
    .local v1, "tDecoration":Landroid/support/v7/widget/RecyclerView$ItemDecoration;
    iget-object v2, p0, Lcom/youku/widget/SelectnessTabView;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 87
    return-void
.end method


# virtual methods
.method public setData(Lcom/youku/vo/ChannelPageModules;)V
    .locals 6
    .param p1, "mChannelPageModules"    # Lcom/youku/vo/ChannelPageModules;

    .prologue
    const/4 v5, 0x0

    .line 91
    if-nez p1, :cond_1

    .line 171
    :cond_0
    :goto_0
    return-void

    .line 95
    :cond_1
    iget-object v2, p1, Lcom/youku/vo/ChannelPageModules;->title_corner_image:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 96
    iget-object v2, p0, Lcom/youku/widget/SelectnessTabView;->mContext:Landroid/content/Context;

    check-cast v2, Lcom/tudou/ui/activity/BaseActivity;

    invoke-virtual {v2}, Lcom/tudou/ui/activity/BaseActivity;->getImageWorker()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v2

    iget-object v3, p1, Lcom/youku/vo/ChannelPageModules;->title_corner_image:Ljava/lang/String;

    iget-object v4, p0, Lcom/youku/widget/SelectnessTabView;->mTtitleCornerImage:Landroid/widget/ImageView;

    invoke-virtual {v2, v3, v4}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 98
    :cond_2
    iget-object v2, p0, Lcom/youku/widget/SelectnessTabView;->mTxtTitle:Landroid/widget/TextView;

    iget-object v3, p1, Lcom/youku/vo/ChannelPageModules;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-object v2, p0, Lcom/youku/widget/SelectnessTabView;->mRootView:Landroid/view/View;

    new-instance v3, Lcom/youku/widget/SelectnessTabView$2;

    invoke-direct {v3, p0, p1}, Lcom/youku/widget/SelectnessTabView$2;-><init>(Lcom/youku/widget/SelectnessTabView;Lcom/youku/vo/ChannelPageModules;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    invoke-static {}, Lcom/baseproject/image/ImageLoaderManager;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v2

    iget-object v3, p1, Lcom/youku/vo/ChannelPageModules;->cover_image:Ljava/lang/String;

    new-instance v4, Lcom/youku/widget/SelectnessTabView$3;

    invoke-direct {v4, p0}, Lcom/youku/widget/SelectnessTabView$3;-><init>(Lcom/youku/widget/SelectnessTabView;)V

    invoke-virtual {v2, v3, v4}, Lcom/nostra13/universalimageloader/core/ImageLoader;->loadImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V

    .line 140
    iget-object v2, p1, Lcom/youku/vo/ChannelPageModules;->sub_title_labels:Ljava/util/List;

    if-eqz v2, :cond_5

    iget-object v2, p1, Lcom/youku/vo/ChannelPageModules;->sub_title_labels:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_5

    iget-object v2, p1, Lcom/youku/vo/ChannelPageModules;->sub_title_labels:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 141
    iget-object v2, p1, Lcom/youku/vo/ChannelPageModules;->sub_title_labels:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/ModuleLabel;

    .line 142
    .local v1, "mSubInfo":Lcom/youku/vo/ModuleLabel;
    iget-object v2, p0, Lcom/youku/widget/SelectnessTabView;->mSubTitle:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/youku/vo/ModuleLabel;->label_title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    iget-object v2, p0, Lcom/youku/widget/SelectnessTabView;->mOldSelectness:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_3

    .line 144
    iget-object v2, p0, Lcom/youku/widget/SelectnessTabView;->mOldSelectness:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 145
    :cond_3
    iget-object v2, p0, Lcom/youku/widget/SelectnessTabView;->mOldSelectness:Landroid/view/View;

    new-instance v3, Lcom/youku/widget/SelectnessTabView$4;

    invoke-direct {v3, p0, v1}, Lcom/youku/widget/SelectnessTabView$4;-><init>(Lcom/youku/widget/SelectnessTabView;Lcom/youku/vo/ModuleLabel;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    .end local v1    # "mSubInfo":Lcom/youku/vo/ModuleLabel;
    :goto_1
    iget-object v2, p1, Lcom/youku/vo/ChannelPageModules;->cards_inf:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/youku/vo/ChannelPageModules;->cards_inf:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_0

    .line 159
    iget-object v2, p1, Lcom/youku/vo/ChannelPageModules;->cards_inf:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/CardsInfo;

    iget-object v2, v2, Lcom/youku/vo/CardsInfo;->title:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 160
    new-instance v0, Lcom/youku/vo/CardsInfo;

    invoke-direct {v0}, Lcom/youku/vo/CardsInfo;-><init>()V

    .line 161
    .local v0, "cardsInfo":Lcom/youku/vo/CardsInfo;
    iget-object v2, p1, Lcom/youku/vo/ChannelPageModules;->sub_title:Ljava/lang/String;

    iput-object v2, v0, Lcom/youku/vo/CardsInfo;->sub_title:Ljava/lang/String;

    .line 162
    iget-object v2, p1, Lcom/youku/vo/ChannelPageModules;->cards_inf:Ljava/util/List;

    invoke-interface {v2, v5, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 165
    .end local v0    # "cardsInfo":Lcom/youku/vo/CardsInfo;
    :cond_4
    iget-object v2, p0, Lcom/youku/widget/SelectnessTabView;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v2

    if-nez v2, :cond_6

    .line 166
    new-instance v2, Lcom/youku/widget/SelectnessTabView$MyAdapter;

    invoke-direct {v2, p0}, Lcom/youku/widget/SelectnessTabView$MyAdapter;-><init>(Lcom/youku/widget/SelectnessTabView;)V

    iput-object v2, p0, Lcom/youku/widget/SelectnessTabView;->mAdapter:Lcom/youku/widget/SelectnessTabView$MyAdapter;

    .line 169
    :goto_2
    iget-object v2, p0, Lcom/youku/widget/SelectnessTabView;->mAdapter:Lcom/youku/widget/SelectnessTabView$MyAdapter;

    iget-object v3, p1, Lcom/youku/vo/ChannelPageModules;->cards_inf:Ljava/util/List;

    iget-object v4, p1, Lcom/youku/vo/ChannelPageModules;->skip_inf:Lcom/youku/vo/SkipInfo;

    iget-object v5, p1, Lcom/youku/vo/ChannelPageModules;->title:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Lcom/youku/widget/SelectnessTabView$MyAdapter;->setData(Ljava/util/List;Lcom/youku/vo/SkipInfo;Ljava/lang/String;)V

    .line 170
    iget-object v2, p0, Lcom/youku/widget/SelectnessTabView;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, p0, Lcom/youku/widget/SelectnessTabView;->mAdapter:Lcom/youku/widget/SelectnessTabView$MyAdapter;

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    goto/16 :goto_0

    .line 153
    :cond_5
    iget-object v2, p0, Lcom/youku/widget/SelectnessTabView;->mOldSelectness:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 168
    :cond_6
    iget-object v2, p0, Lcom/youku/widget/SelectnessTabView;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v2

    check-cast v2, Lcom/youku/widget/SelectnessTabView$MyAdapter;

    iput-object v2, p0, Lcom/youku/widget/SelectnessTabView;->mAdapter:Lcom/youku/widget/SelectnessTabView$MyAdapter;

    goto :goto_2
.end method
