.class public Lcom/tudou/adapter/ClassifyFeatureInfoGalleryAdapter;
.super Landroid/widget/BaseAdapter;
.source "ClassifyFeatureInfoGalleryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tudou/adapter/ClassifyFeatureInfoGalleryAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mContext:Landroid/app/Activity;

.field private mTopSlideArea:Lcom/youku/vo/TopSlideArea;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/youku/vo/TopSlideArea;)V
    .locals 0
    .param p1, "mContext"    # Landroid/app/Activity;
    .param p2, "mTopSlideArea"    # Lcom/youku/vo/TopSlideArea;

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/tudou/adapter/ClassifyFeatureInfoGalleryAdapter;->mContext:Landroid/app/Activity;

    .line 30
    iput-object p2, p0, Lcom/tudou/adapter/ClassifyFeatureInfoGalleryAdapter;->mTopSlideArea:Lcom/youku/vo/TopSlideArea;

    .line 31
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 35
    const v0, 0x7fffffff

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 40
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 45
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 51
    if-nez p2, :cond_0

    .line 52
    iget-object v2, p0, Lcom/tudou/adapter/ClassifyFeatureInfoGalleryAdapter;->mContext:Landroid/app/Activity;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0302eb

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 53
    new-instance v1, Lcom/tudou/adapter/ClassifyFeatureInfoGalleryAdapter$ViewHolder;

    invoke-direct {v1, p0}, Lcom/tudou/adapter/ClassifyFeatureInfoGalleryAdapter$ViewHolder;-><init>(Lcom/tudou/adapter/ClassifyFeatureInfoGalleryAdapter;)V

    .line 54
    .local v1, "mViewHolder":Lcom/tudou/adapter/ClassifyFeatureInfoGalleryAdapter$ViewHolder;
    const v2, 0x7f0c0289

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/tudou/adapter/ClassifyFeatureInfoGalleryAdapter$ViewHolder;->mImage:Landroid/widget/ImageView;

    .line 59
    :goto_0
    iget-object v2, p0, Lcom/tudou/adapter/ClassifyFeatureInfoGalleryAdapter;->mTopSlideArea:Lcom/youku/vo/TopSlideArea;

    iget-object v2, v2, Lcom/youku/vo/TopSlideArea;->cards_inf:Ljava/util/List;

    iget-object v3, p0, Lcom/tudou/adapter/ClassifyFeatureInfoGalleryAdapter;->mTopSlideArea:Lcom/youku/vo/TopSlideArea;

    iget-object v3, v3, Lcom/youku/vo/TopSlideArea;->cards_inf:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    rem-int v3, p1, v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/CardsInfo;

    .line 61
    .local v0, "mCardsInfo":Lcom/youku/vo/CardsInfo;
    invoke-static {}, Lcom/baseproject/image/ImageLoaderManager;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v2

    iget-object v3, v0, Lcom/youku/vo/CardsInfo;->image_800_407:Ljava/lang/String;

    iget-object v4, v1, Lcom/tudou/adapter/ClassifyFeatureInfoGalleryAdapter$ViewHolder;->mImage:Landroid/widget/ImageView;

    invoke-static {}, Lcom/youku/util/Util;->getImageLoadingListenerPress()Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V

    .line 63
    return-object p2

    .line 56
    .end local v0    # "mCardsInfo":Lcom/youku/vo/CardsInfo;
    .end local v1    # "mViewHolder":Lcom/tudou/adapter/ClassifyFeatureInfoGalleryAdapter$ViewHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tudou/adapter/ClassifyFeatureInfoGalleryAdapter$ViewHolder;

    .restart local v1    # "mViewHolder":Lcom/tudou/adapter/ClassifyFeatureInfoGalleryAdapter$ViewHolder;
    goto :goto_0
.end method
