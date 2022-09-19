.class public Lcom/tudou/adapter/ClassifyFeatureGalleryAdapter;
.super Landroid/widget/BaseAdapter;
.source "ClassifyFeatureGalleryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tudou/adapter/ClassifyFeatureGalleryAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mChannelListInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/youku/vo/ChannelListInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/List;)V
    .locals 0
    .param p1, "mContext"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Lcom/youku/vo/ChannelListInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 24
    .local p2, "mChannelListInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/youku/vo/ChannelListInfo;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/tudou/adapter/ClassifyFeatureGalleryAdapter;->mContext:Landroid/app/Activity;

    .line 26
    iput-object p2, p0, Lcom/tudou/adapter/ClassifyFeatureGalleryAdapter;->mChannelListInfoList:Ljava/util/List;

    .line 27
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/tudou/adapter/ClassifyFeatureGalleryAdapter;->mChannelListInfoList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/tudou/adapter/ClassifyFeatureGalleryAdapter;->mChannelListInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 33
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 38
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 43
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 49
    if-nez p2, :cond_0

    .line 50
    iget-object v1, p0, Lcom/tudou/adapter/ClassifyFeatureGalleryAdapter;->mContext:Landroid/app/Activity;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03019e

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 51
    new-instance v0, Lcom/tudou/adapter/ClassifyFeatureGalleryAdapter$ViewHolder;

    invoke-direct {v0, p0}, Lcom/tudou/adapter/ClassifyFeatureGalleryAdapter$ViewHolder;-><init>(Lcom/tudou/adapter/ClassifyFeatureGalleryAdapter;)V

    .line 52
    .local v0, "mViewHolder":Lcom/tudou/adapter/ClassifyFeatureGalleryAdapter$ViewHolder;
    const v1, 0x7f0c02e4

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/tudou/adapter/ClassifyFeatureGalleryAdapter$ViewHolder;->mName:Landroid/widget/TextView;

    .line 53
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 58
    :goto_0
    iget-object v2, v0, Lcom/tudou/adapter/ClassifyFeatureGalleryAdapter$ViewHolder;->mName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tudou/adapter/ClassifyFeatureGalleryAdapter;->mChannelListInfoList:Ljava/util/List;

    iget-object v3, p0, Lcom/tudou/adapter/ClassifyFeatureGalleryAdapter;->mChannelListInfoList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    rem-int v3, p1, v3

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/ChannelListInfo;

    iget-object v1, v1, Lcom/youku/vo/ChannelListInfo;->channel_title:Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    return-object p2

    .line 55
    .end local v0    # "mViewHolder":Lcom/tudou/adapter/ClassifyFeatureGalleryAdapter$ViewHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tudou/adapter/ClassifyFeatureGalleryAdapter$ViewHolder;

    .restart local v0    # "mViewHolder":Lcom/tudou/adapter/ClassifyFeatureGalleryAdapter$ViewHolder;
    goto :goto_0
.end method
