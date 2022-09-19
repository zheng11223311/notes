.class public Lcom/youku/widget/SelectnessListTabView;
.super Landroid/widget/LinearLayout;
.source "SelectnessListTabView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/widget/SelectnessListTabView$ItemViewHolder;,
        Lcom/youku/widget/SelectnessListTabView$MyAdapter;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/youku/widget/SelectnessListTabView$MyAdapter;

.field private mChannelName:Ljava/lang/String;

.field private mChannelPageModules:Lcom/youku/vo/ChannelPageModules;

.field private mContext:Landroid/content/Context;

.field private mImageTitle:Landroid/widget/ImageView;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field private mTextTitleView:Landroid/view/View;

.field private mTitleName:Landroid/widget/TextView;

.field private mTtitleCornerImage:Landroid/widget/ImageView;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "channelName"    # Ljava/lang/String;

    .prologue
    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/youku/widget/SelectnessListTabView;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/util/AttributeSet;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "channelName"    # Ljava/lang/String;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 54
    invoke-direct {p0, p1, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    iput-object p1, p0, Lcom/youku/widget/SelectnessListTabView;->mContext:Landroid/content/Context;

    .line 56
    iput-object p2, p0, Lcom/youku/widget/SelectnessListTabView;->mChannelName:Ljava/lang/String;

    .line 57
    invoke-direct {p0}, Lcom/youku/widget/SelectnessListTabView;->initView()V

    .line 58
    return-void
.end method

.method static synthetic access$000(Lcom/youku/widget/SelectnessListTabView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/youku/widget/SelectnessListTabView;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/youku/widget/SelectnessListTabView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/youku/widget/SelectnessListTabView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/youku/widget/SelectnessListTabView;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/youku/widget/SelectnessListTabView;->mChannelName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/youku/widget/SelectnessListTabView;)Lcom/youku/vo/ChannelPageModules;
    .locals 1
    .param p0, "x0"    # Lcom/youku/widget/SelectnessListTabView;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/youku/widget/SelectnessListTabView;->mChannelPageModules:Lcom/youku/vo/ChannelPageModules;

    return-object v0
.end method

.method private initView()V
    .locals 5

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/youku/widget/SelectnessListTabView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    iput-object v2, p0, Lcom/youku/widget/SelectnessListTabView;->mInflater:Landroid/view/LayoutInflater;

    .line 62
    iget-object v2, p0, Lcom/youku/widget/SelectnessListTabView;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f03008e

    const/4 v4, 0x1

    invoke-virtual {v2, v3, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/youku/widget/SelectnessListTabView;->mView:Landroid/view/View;

    .line 63
    iget-object v2, p0, Lcom/youku/widget/SelectnessListTabView;->mView:Landroid/view/View;

    const v3, 0x7f0c02d6

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/youku/widget/SelectnessListTabView;->mTextTitleView:Landroid/view/View;

    .line 64
    iget-object v2, p0, Lcom/youku/widget/SelectnessListTabView;->mView:Landroid/view/View;

    const v3, 0x7f0c026e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/youku/widget/SelectnessListTabView;->mTitleName:Landroid/widget/TextView;

    .line 65
    iget-object v2, p0, Lcom/youku/widget/SelectnessListTabView;->mView:Landroid/view/View;

    const v3, 0x7f0c02d8

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/youku/widget/SelectnessListTabView;->mTtitleCornerImage:Landroid/widget/ImageView;

    .line 66
    iget-object v2, p0, Lcom/youku/widget/SelectnessListTabView;->mView:Landroid/view/View;

    const v3, 0x7f0c02e0

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/youku/widget/SelectnessListTabView;->mImageTitle:Landroid/widget/ImageView;

    .line 68
    iget-object v2, p0, Lcom/youku/widget/SelectnessListTabView;->mView:Landroid/view/View;

    const v3, 0x7f0c02dc

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/RecyclerView;

    iput-object v2, p0, Lcom/youku/widget/SelectnessListTabView;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 69
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v2, p0, Lcom/youku/widget/SelectnessListTabView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 70
    .local v0, "layoutManager":Landroid/support/v7/widget/LinearLayoutManager;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/LinearLayoutManager;->setOrientation(I)V

    .line 71
    iget-object v2, p0, Lcom/youku/widget/SelectnessListTabView;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 73
    new-instance v1, Lcom/youku/widget/SelectnessListTabView$1;

    invoke-direct {v1, p0}, Lcom/youku/widget/SelectnessListTabView$1;-><init>(Lcom/youku/widget/SelectnessListTabView;)V

    .line 82
    .local v1, "tDecoration":Landroid/support/v7/widget/RecyclerView$ItemDecoration;
    iget-object v2, p0, Lcom/youku/widget/SelectnessListTabView;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 83
    return-void
.end method


# virtual methods
.method public setData(Lcom/youku/vo/ChannelPageModules;)V
    .locals 3
    .param p1, "mChannelPageModules"    # Lcom/youku/vo/ChannelPageModules;

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 87
    if-nez p1, :cond_1

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 90
    :cond_1
    iput-object p1, p0, Lcom/youku/widget/SelectnessListTabView;->mChannelPageModules:Lcom/youku/vo/ChannelPageModules;

    .line 93
    iget-object v0, p1, Lcom/youku/vo/ChannelPageModules;->title_display_style:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 95
    iget-object v0, p0, Lcom/youku/widget/SelectnessListTabView;->mTextTitleView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 96
    iget-object v0, p0, Lcom/youku/widget/SelectnessListTabView;->mImageTitle:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 98
    const-string v0, "text"

    iget-object v1, p1, Lcom/youku/vo/ChannelPageModules;->title_display_style:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 99
    iget-object v0, p0, Lcom/youku/widget/SelectnessListTabView;->mTextTitleView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 100
    iget-object v0, p0, Lcom/youku/widget/SelectnessListTabView;->mTitleName:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/youku/vo/ChannelPageModules;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    iget-object v0, p1, Lcom/youku/vo/ChannelPageModules;->title_corner_image:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 104
    iget-object v0, p0, Lcom/youku/widget/SelectnessListTabView;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/tudou/ui/activity/BaseActivity;

    invoke-virtual {v0}, Lcom/tudou/ui/activity/BaseActivity;->getImageWorker()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    iget-object v1, p1, Lcom/youku/vo/ChannelPageModules;->title_corner_image:Ljava/lang/String;

    iget-object v2, p0, Lcom/youku/widget/SelectnessListTabView;->mTtitleCornerImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v2}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 112
    :cond_2
    :goto_1
    iget-object v0, p1, Lcom/youku/vo/ChannelPageModules;->cards_inf:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/youku/vo/ChannelPageModules;->cards_inf:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/youku/widget/SelectnessListTabView;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    if-nez v0, :cond_4

    .line 116
    new-instance v0, Lcom/youku/widget/SelectnessListTabView$MyAdapter;

    invoke-direct {v0, p0}, Lcom/youku/widget/SelectnessListTabView$MyAdapter;-><init>(Lcom/youku/widget/SelectnessListTabView;)V

    iput-object v0, p0, Lcom/youku/widget/SelectnessListTabView;->mAdapter:Lcom/youku/widget/SelectnessListTabView$MyAdapter;

    .line 119
    :goto_2
    iget-object v0, p0, Lcom/youku/widget/SelectnessListTabView;->mAdapter:Lcom/youku/widget/SelectnessListTabView$MyAdapter;

    iget-object v1, p1, Lcom/youku/vo/ChannelPageModules;->cards_inf:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/youku/widget/SelectnessListTabView$MyAdapter;->setData(Ljava/util/List;)V

    .line 120
    iget-object v0, p0, Lcom/youku/widget/SelectnessListTabView;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/youku/widget/SelectnessListTabView;->mAdapter:Lcom/youku/widget/SelectnessListTabView$MyAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    goto :goto_0

    .line 106
    :cond_3
    const-string v0, "image"

    iget-object v1, p1, Lcom/youku/vo/ChannelPageModules;->title_display_style:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 107
    iget-object v0, p0, Lcom/youku/widget/SelectnessListTabView;->mImageTitle:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 108
    iget-object v0, p0, Lcom/youku/widget/SelectnessListTabView;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/tudou/ui/activity/BaseActivity;

    invoke-virtual {v0}, Lcom/tudou/ui/activity/BaseActivity;->getImageWorker()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    iget-object v1, p1, Lcom/youku/vo/ChannelPageModules;->title_icon:Ljava/lang/String;

    iget-object v2, p0, Lcom/youku/widget/SelectnessListTabView;->mImageTitle:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v2}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    goto :goto_1

    .line 118
    :cond_4
    iget-object v0, p0, Lcom/youku/widget/SelectnessListTabView;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/youku/widget/SelectnessListTabView$MyAdapter;

    iput-object v0, p0, Lcom/youku/widget/SelectnessListTabView;->mAdapter:Lcom/youku/widget/SelectnessListTabView$MyAdapter;

    goto :goto_2
.end method
