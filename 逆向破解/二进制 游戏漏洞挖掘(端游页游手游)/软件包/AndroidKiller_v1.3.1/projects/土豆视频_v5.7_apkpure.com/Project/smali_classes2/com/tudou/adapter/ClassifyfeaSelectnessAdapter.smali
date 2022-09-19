.class public Lcom/tudou/adapter/ClassifyfeaSelectnessAdapter;
.super Landroid/widget/BaseAdapter;
.source "ClassifyfeaSelectnessAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tudou/adapter/ClassifyfeaSelectnessAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mChannelPageModules:Lcom/youku/vo/ChannelPageModules;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/youku/vo/ChannelPageModules;)V
    .locals 0
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "mChannelPageModules"    # Lcom/youku/vo/ChannelPageModules;

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/tudou/adapter/ClassifyfeaSelectnessAdapter;->mContext:Landroid/content/Context;

    .line 30
    iput-object p2, p0, Lcom/tudou/adapter/ClassifyfeaSelectnessAdapter;->mChannelPageModules:Lcom/youku/vo/ChannelPageModules;

    .line 31
    return-void
.end method

.method static synthetic access$000(Lcom/tudou/adapter/ClassifyfeaSelectnessAdapter;)Lcom/youku/vo/ChannelPageModules;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/adapter/ClassifyfeaSelectnessAdapter;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/tudou/adapter/ClassifyfeaSelectnessAdapter;->mChannelPageModules:Lcom/youku/vo/ChannelPageModules;

    return-object v0
.end method

.method static synthetic access$100(Lcom/tudou/adapter/ClassifyfeaSelectnessAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/adapter/ClassifyfeaSelectnessAdapter;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/tudou/adapter/ClassifyfeaSelectnessAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/tudou/adapter/ClassifyfeaSelectnessAdapter;->mChannelPageModules:Lcom/youku/vo/ChannelPageModules;

    iget-object v0, v0, Lcom/youku/vo/ChannelPageModules;->cards_inf:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 40
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 45
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 53
    if-nez p2, :cond_0

    .line 54
    iget-object v2, p0, Lcom/tudou/adapter/ClassifyfeaSelectnessAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0301a6

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 55
    new-instance v1, Lcom/tudou/adapter/ClassifyfeaSelectnessAdapter$ViewHolder;

    invoke-direct {v1, p0}, Lcom/tudou/adapter/ClassifyfeaSelectnessAdapter$ViewHolder;-><init>(Lcom/tudou/adapter/ClassifyfeaSelectnessAdapter;)V

    .line 56
    .local v1, "mViewHolder":Lcom/tudou/adapter/ClassifyfeaSelectnessAdapter$ViewHolder;
    const v2, 0x7f0c028b

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/tudou/adapter/ClassifyfeaSelectnessAdapter$ViewHolder;->mSubTitle:Landroid/widget/TextView;

    .line 57
    const v2, 0x7f0c07a7

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, v1, Lcom/tudou/adapter/ClassifyfeaSelectnessAdapter$ViewHolder;->mLayout:Landroid/widget/LinearLayout;

    .line 58
    const v2, 0x7f0c0760

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/tudou/adapter/ClassifyfeaSelectnessAdapter$ViewHolder;->mThumbnail:Landroid/widget/ImageView;

    .line 59
    const v2, 0x7f0c07a5

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/tudou/adapter/ClassifyfeaSelectnessAdapter$ViewHolder;->mTopMark:Landroid/widget/ImageView;

    .line 60
    const v2, 0x7f0c07a8

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/tudou/adapter/ClassifyfeaSelectnessAdapter$ViewHolder;->mTime:Landroid/widget/TextView;

    .line 61
    const v2, 0x7f0c07a9

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/tudou/adapter/ClassifyfeaSelectnessAdapter$ViewHolder;->mTitle:Landroid/widget/TextView;

    .line 62
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 67
    :goto_0
    iget-object v2, p0, Lcom/tudou/adapter/ClassifyfeaSelectnessAdapter;->mChannelPageModules:Lcom/youku/vo/ChannelPageModules;

    iget-object v2, v2, Lcom/youku/vo/ChannelPageModules;->cards_inf:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/CardsInfo;

    .line 69
    .local v0, "mCardsInfo":Lcom/youku/vo/CardsInfo;
    iget-object v2, v0, Lcom/youku/vo/CardsInfo;->title:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 70
    iget-object v2, v1, Lcom/tudou/adapter/ClassifyfeaSelectnessAdapter$ViewHolder;->mLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 71
    iget-object v2, v1, Lcom/tudou/adapter/ClassifyfeaSelectnessAdapter$ViewHolder;->mSubTitle:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 72
    iget-object v2, v1, Lcom/tudou/adapter/ClassifyfeaSelectnessAdapter$ViewHolder;->mSubTitle:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/tudou/adapter/ClassifyfeaSelectnessAdapter;->mChannelPageModules:Lcom/youku/vo/ChannelPageModules;

    iget-object v3, v3, Lcom/youku/vo/ChannelPageModules;->sub_title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    iget-object v2, v1, Lcom/tudou/adapter/ClassifyfeaSelectnessAdapter$ViewHolder;->mSubTitle:Landroid/widget/TextView;

    new-instance v3, Lcom/tudou/adapter/ClassifyfeaSelectnessAdapter$1;

    invoke-direct {v3, p0}, Lcom/tudou/adapter/ClassifyfeaSelectnessAdapter$1;-><init>(Lcom/tudou/adapter/ClassifyfeaSelectnessAdapter;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    :goto_1
    return-object p2

    .line 64
    .end local v0    # "mCardsInfo":Lcom/youku/vo/CardsInfo;
    .end local v1    # "mViewHolder":Lcom/tudou/adapter/ClassifyfeaSelectnessAdapter$ViewHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tudou/adapter/ClassifyfeaSelectnessAdapter$ViewHolder;

    .restart local v1    # "mViewHolder":Lcom/tudou/adapter/ClassifyfeaSelectnessAdapter$ViewHolder;
    goto :goto_0

    .line 81
    .restart local v0    # "mCardsInfo":Lcom/youku/vo/CardsInfo;
    :cond_1
    iget-object v2, v1, Lcom/tudou/adapter/ClassifyfeaSelectnessAdapter$ViewHolder;->mSubTitle:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 82
    iget-object v2, v1, Lcom/tudou/adapter/ClassifyfeaSelectnessAdapter$ViewHolder;->mLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 83
    iget-object v2, v1, Lcom/tudou/adapter/ClassifyfeaSelectnessAdapter$ViewHolder;->mThumbnail:Landroid/widget/ImageView;

    const v3, 0x7f020371

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 84
    iget-object v2, p0, Lcom/tudou/adapter/ClassifyfeaSelectnessAdapter;->mContext:Landroid/content/Context;

    check-cast v2, Lcom/tudou/ui/activity/BaseActivity;

    invoke-virtual {v2}, Lcom/tudou/ui/activity/BaseActivity;->getImageWorker()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v2

    iget-object v3, v0, Lcom/youku/vo/CardsInfo;->image_448_252:Ljava/lang/String;

    iget-object v4, v1, Lcom/tudou/adapter/ClassifyfeaSelectnessAdapter$ViewHolder;->mThumbnail:Landroid/widget/ImageView;

    invoke-static {}, Lcom/youku/util/Util;->getImageLoadingListenerPress()Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V

    .line 86
    iget-object v2, v0, Lcom/youku/vo/CardsInfo;->corner_image:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 87
    iget-object v2, v1, Lcom/tudou/adapter/ClassifyfeaSelectnessAdapter$ViewHolder;->mTopMark:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_2

    .line 88
    iget-object v2, v1, Lcom/tudou/adapter/ClassifyfeaSelectnessAdapter$ViewHolder;->mTopMark:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 89
    :cond_2
    iget-object v2, p0, Lcom/tudou/adapter/ClassifyfeaSelectnessAdapter;->mContext:Landroid/content/Context;

    check-cast v2, Lcom/tudou/ui/activity/BaseActivity;

    invoke-virtual {v2}, Lcom/tudou/ui/activity/BaseActivity;->getImageWorker()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v2

    iget-object v3, v0, Lcom/youku/vo/CardsInfo;->corner_image:Ljava/lang/String;

    iget-object v4, v1, Lcom/tudou/adapter/ClassifyfeaSelectnessAdapter$ViewHolder;->mTopMark:Landroid/widget/ImageView;

    invoke-static {}, Lcom/youku/util/Util;->getImageLoadingListenerPress()Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V

    .line 95
    :cond_3
    :goto_2
    iget-object v2, v1, Lcom/tudou/adapter/ClassifyfeaSelectnessAdapter$ViewHolder;->mTime:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/youku/vo/CardsInfo;->image_b_r_title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    iget-object v2, v1, Lcom/tudou/adapter/ClassifyfeaSelectnessAdapter$ViewHolder;->mTitle:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/youku/vo/CardsInfo;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    iget-object v2, v1, Lcom/tudou/adapter/ClassifyfeaSelectnessAdapter$ViewHolder;->mLayout:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/tudou/adapter/ClassifyfeaSelectnessAdapter$2;

    invoke-direct {v3, p0, v0}, Lcom/tudou/adapter/ClassifyfeaSelectnessAdapter$2;-><init>(Lcom/tudou/adapter/ClassifyfeaSelectnessAdapter;Lcom/youku/vo/CardsInfo;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 91
    :cond_4
    iget-object v2, v1, Lcom/tudou/adapter/ClassifyfeaSelectnessAdapter$ViewHolder;->mTopMark:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-eq v2, v7, :cond_3

    .line 92
    iget-object v2, v1, Lcom/tudou/adapter/ClassifyfeaSelectnessAdapter$ViewHolder;->mTopMark:Landroid/widget/ImageView;

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2
.end method
