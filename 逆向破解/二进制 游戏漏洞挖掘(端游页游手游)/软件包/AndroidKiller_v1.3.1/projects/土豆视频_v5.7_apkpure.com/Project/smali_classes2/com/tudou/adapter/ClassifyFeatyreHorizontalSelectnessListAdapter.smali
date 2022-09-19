.class public Lcom/tudou/adapter/ClassifyFeatyreHorizontalSelectnessListAdapter;
.super Landroid/widget/BaseAdapter;
.source "ClassifyFeatyreHorizontalSelectnessListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tudou/adapter/ClassifyFeatyreHorizontalSelectnessListAdapter$ViewHolder;
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
    .line 24
    .local p2, "mCardsInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/youku/vo/CardsInfo;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/tudou/adapter/ClassifyFeatyreHorizontalSelectnessListAdapter;->mContext:Landroid/content/Context;

    .line 26
    iput-object p2, p0, Lcom/tudou/adapter/ClassifyFeatyreHorizontalSelectnessListAdapter;->mCardsInfoList:Ljava/util/List;

    .line 27
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/tudou/adapter/ClassifyFeatyreHorizontalSelectnessListAdapter;->mCardsInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 36
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 41
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 48
    if-nez p2, :cond_0

    .line 49
    new-instance v1, Lcom/tudou/adapter/ClassifyFeatyreHorizontalSelectnessListAdapter$ViewHolder;

    invoke-direct {v1, p0}, Lcom/tudou/adapter/ClassifyFeatyreHorizontalSelectnessListAdapter$ViewHolder;-><init>(Lcom/tudou/adapter/ClassifyFeatyreHorizontalSelectnessListAdapter;)V

    .line 50
    .local v1, "viewholder":Lcom/tudou/adapter/ClassifyFeatyreHorizontalSelectnessListAdapter$ViewHolder;
    iget-object v2, p0, Lcom/tudou/adapter/ClassifyFeatyreHorizontalSelectnessListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0301a5

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 52
    const v2, 0x7f0c02be

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, v1, Lcom/tudou/adapter/ClassifyFeatyreHorizontalSelectnessListAdapter$ViewHolder;->mLayout:Landroid/widget/RelativeLayout;

    .line 53
    const v2, 0x7f0c02bf

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/tudou/adapter/ClassifyFeatyreHorizontalSelectnessListAdapter$ViewHolder;->mThumbnail:Landroid/widget/ImageView;

    .line 54
    const v2, 0x7f0c02c2

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/tudou/adapter/ClassifyFeatyreHorizontalSelectnessListAdapter$ViewHolder;->mTitleLine:Landroid/widget/TextView;

    .line 55
    const v2, 0x7f0c02c3

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/tudou/adapter/ClassifyFeatyreHorizontalSelectnessListAdapter$ViewHolder;->mAlias:Landroid/widget/TextView;

    .line 57
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 62
    :goto_0
    iget-object v2, p0, Lcom/tudou/adapter/ClassifyFeatyreHorizontalSelectnessListAdapter;->mCardsInfoList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/CardsInfo;

    .line 64
    .local v0, "mCardsInfo":Lcom/youku/vo/CardsInfo;
    iget-object v2, v1, Lcom/tudou/adapter/ClassifyFeatyreHorizontalSelectnessListAdapter$ViewHolder;->mThumbnail:Landroid/widget/ImageView;

    const v3, 0x7f020371

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 65
    iget-object v2, p0, Lcom/tudou/adapter/ClassifyFeatyreHorizontalSelectnessListAdapter;->mContext:Landroid/content/Context;

    check-cast v2, Lcom/tudou/ui/activity/BaseActivity;

    invoke-virtual {v2}, Lcom/tudou/ui/activity/BaseActivity;->getImageWorker()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v2

    iget-object v3, v0, Lcom/youku/vo/CardsInfo;->image_448_252:Ljava/lang/String;

    iget-object v4, v1, Lcom/tudou/adapter/ClassifyFeatyreHorizontalSelectnessListAdapter$ViewHolder;->mThumbnail:Landroid/widget/ImageView;

    invoke-static {}, Lcom/youku/util/Util;->getImageLoadingListenerPress()Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V

    .line 67
    iget-object v2, v1, Lcom/tudou/adapter/ClassifyFeatyreHorizontalSelectnessListAdapter$ViewHolder;->mTitleLine:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/youku/vo/CardsInfo;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    iget-object v2, v1, Lcom/tudou/adapter/ClassifyFeatyreHorizontalSelectnessListAdapter$ViewHolder;->mAlias:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/youku/vo/CardsInfo;->sub_title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    iget-object v2, v1, Lcom/tudou/adapter/ClassifyFeatyreHorizontalSelectnessListAdapter$ViewHolder;->mLayout:Landroid/widget/RelativeLayout;

    new-instance v3, Lcom/tudou/adapter/ClassifyFeatyreHorizontalSelectnessListAdapter$1;

    invoke-direct {v3, p0}, Lcom/tudou/adapter/ClassifyFeatyreHorizontalSelectnessListAdapter$1;-><init>(Lcom/tudou/adapter/ClassifyFeatyreHorizontalSelectnessListAdapter;)V

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    return-object p2

    .line 59
    .end local v0    # "mCardsInfo":Lcom/youku/vo/CardsInfo;
    .end local v1    # "viewholder":Lcom/tudou/adapter/ClassifyFeatyreHorizontalSelectnessListAdapter$ViewHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tudou/adapter/ClassifyFeatyreHorizontalSelectnessListAdapter$ViewHolder;

    .restart local v1    # "viewholder":Lcom/tudou/adapter/ClassifyFeatyreHorizontalSelectnessListAdapter$ViewHolder;
    goto :goto_0
.end method
