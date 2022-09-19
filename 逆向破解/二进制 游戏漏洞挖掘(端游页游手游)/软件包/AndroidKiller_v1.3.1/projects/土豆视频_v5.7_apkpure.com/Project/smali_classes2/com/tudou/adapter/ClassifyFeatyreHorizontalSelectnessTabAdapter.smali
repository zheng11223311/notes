.class public Lcom/tudou/adapter/ClassifyFeatyreHorizontalSelectnessTabAdapter;
.super Landroid/widget/BaseAdapter;
.source "ClassifyFeatyreHorizontalSelectnessTabAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tudou/adapter/ClassifyFeatyreHorizontalSelectnessTabAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mCardsInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/youku/vo/CardsInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/youku/vo/CardsInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 26
    .local p2, "mCardsInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/youku/vo/CardsInfo;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/tudou/adapter/ClassifyFeatyreHorizontalSelectnessTabAdapter;->mContext:Landroid/content/Context;

    .line 28
    iput-object p2, p0, Lcom/tudou/adapter/ClassifyFeatyreHorizontalSelectnessTabAdapter;->mCardsInfoList:Ljava/util/List;

    .line 29
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/tudou/adapter/ClassifyFeatyreHorizontalSelectnessTabAdapter;->mCardsInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 38
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 43
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 50
    if-nez p2, :cond_0

    .line 51
    new-instance v1, Lcom/tudou/adapter/ClassifyFeatyreHorizontalSelectnessTabAdapter$ViewHolder;

    invoke-direct {v1, p0}, Lcom/tudou/adapter/ClassifyFeatyreHorizontalSelectnessTabAdapter$ViewHolder;-><init>(Lcom/tudou/adapter/ClassifyFeatyreHorizontalSelectnessTabAdapter;)V

    .line 52
    .local v1, "viewholder":Lcom/tudou/adapter/ClassifyFeatyreHorizontalSelectnessTabAdapter$ViewHolder;
    iget-object v2, p0, Lcom/tudou/adapter/ClassifyFeatyreHorizontalSelectnessTabAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0301a6

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 54
    const v2, 0x7f0c028b

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/tudou/adapter/ClassifyFeatyreHorizontalSelectnessTabAdapter$ViewHolder;->mSubTitle:Landroid/widget/TextView;

    .line 55
    const v2, 0x7f0c07a7

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, v1, Lcom/tudou/adapter/ClassifyFeatyreHorizontalSelectnessTabAdapter$ViewHolder;->mLayout:Landroid/widget/LinearLayout;

    .line 56
    const v2, 0x7f0c0760

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/tudou/adapter/ClassifyFeatyreHorizontalSelectnessTabAdapter$ViewHolder;->mThumbnail:Landroid/widget/ImageView;

    .line 57
    const v2, 0x7f0c07a8

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/tudou/adapter/ClassifyFeatyreHorizontalSelectnessTabAdapter$ViewHolder;->mTime:Landroid/widget/TextView;

    .line 58
    const v2, 0x7f0c07a9

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/tudou/adapter/ClassifyFeatyreHorizontalSelectnessTabAdapter$ViewHolder;->mTitle:Landroid/widget/TextView;

    .line 60
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 65
    :goto_0
    iget-object v2, p0, Lcom/tudou/adapter/ClassifyFeatyreHorizontalSelectnessTabAdapter;->mCardsInfoList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/CardsInfo;

    .line 67
    .local v0, "mCardsInfo":Lcom/youku/vo/CardsInfo;
    iget-object v2, v0, Lcom/youku/vo/CardsInfo;->title:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 68
    iget-object v2, v1, Lcom/tudou/adapter/ClassifyFeatyreHorizontalSelectnessTabAdapter$ViewHolder;->mLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 69
    iget-object v2, v1, Lcom/tudou/adapter/ClassifyFeatyreHorizontalSelectnessTabAdapter$ViewHolder;->mSubTitle:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 70
    iget-object v2, v1, Lcom/tudou/adapter/ClassifyFeatyreHorizontalSelectnessTabAdapter$ViewHolder;->mSubTitle:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/youku/vo/CardsInfo;->sub_title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    :goto_1
    iget-object v2, v1, Lcom/tudou/adapter/ClassifyFeatyreHorizontalSelectnessTabAdapter$ViewHolder;->mThumbnail:Landroid/widget/ImageView;

    const v3, 0x7f020371

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 82
    iget-object v2, v1, Lcom/tudou/adapter/ClassifyFeatyreHorizontalSelectnessTabAdapter$ViewHolder;->mLayout:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/tudou/adapter/ClassifyFeatyreHorizontalSelectnessTabAdapter$1;

    invoke-direct {v3, p0}, Lcom/tudou/adapter/ClassifyFeatyreHorizontalSelectnessTabAdapter$1;-><init>(Lcom/tudou/adapter/ClassifyFeatyreHorizontalSelectnessTabAdapter;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    return-object p2

    .line 62
    .end local v0    # "mCardsInfo":Lcom/youku/vo/CardsInfo;
    .end local v1    # "viewholder":Lcom/tudou/adapter/ClassifyFeatyreHorizontalSelectnessTabAdapter$ViewHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tudou/adapter/ClassifyFeatyreHorizontalSelectnessTabAdapter$ViewHolder;

    .restart local v1    # "viewholder":Lcom/tudou/adapter/ClassifyFeatyreHorizontalSelectnessTabAdapter$ViewHolder;
    goto :goto_0

    .line 72
    .restart local v0    # "mCardsInfo":Lcom/youku/vo/CardsInfo;
    :cond_1
    iget-object v2, v1, Lcom/tudou/adapter/ClassifyFeatyreHorizontalSelectnessTabAdapter$ViewHolder;->mSubTitle:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 73
    iget-object v2, v1, Lcom/tudou/adapter/ClassifyFeatyreHorizontalSelectnessTabAdapter$ViewHolder;->mLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 74
    iget-object v2, p0, Lcom/tudou/adapter/ClassifyFeatyreHorizontalSelectnessTabAdapter;->mContext:Landroid/content/Context;

    check-cast v2, Lcom/tudou/ui/activity/BaseActivity;

    invoke-virtual {v2}, Lcom/tudou/ui/activity/BaseActivity;->getImageWorker()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v2

    iget-object v3, v0, Lcom/youku/vo/CardsInfo;->image_448_252:Ljava/lang/String;

    iget-object v4, v1, Lcom/tudou/adapter/ClassifyFeatyreHorizontalSelectnessTabAdapter$ViewHolder;->mThumbnail:Landroid/widget/ImageView;

    invoke-static {}, Lcom/youku/util/Util;->getImageLoadingListenerPress()Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V

    .line 75
    iget-object v2, v1, Lcom/tudou/adapter/ClassifyFeatyreHorizontalSelectnessTabAdapter$ViewHolder;->mTime:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/youku/vo/CardsInfo;->sub_title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    iget-object v2, v1, Lcom/tudou/adapter/ClassifyFeatyreHorizontalSelectnessTabAdapter$ViewHolder;->mTitle:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/youku/vo/CardsInfo;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
