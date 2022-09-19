.class public Lcom/youtu/apps/recommend/fragment/TopGameFragment;
.super Landroid/support/v4/app/Fragment;
.source "TopGameFragment.java"


# instance fields
.field private mAdapter:Lcom/youtu/apps/recommend/adapter/TopGameAdapter;

.field private mGridView:Landroid/widget/GridView;

.field private mImageWorker:Lcom/youtu/apps/image/ImageResizer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method private getImageWorker(Landroid/support/v4/app/FragmentActivity;)Lcom/youtu/apps/image/ImageWorker;
    .locals 5
    .param p1, "context"    # Landroid/support/v4/app/FragmentActivity;

    .prologue
    .line 75
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v0, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 76
    .local v0, "height":I
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v3, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 77
    .local v3, "width":I
    if-le v0, v3, :cond_0

    move v2, v3

    .line 79
    .local v2, "shortest":I
    :goto_0
    new-instance v1, Lcom/youtu/apps/image/ImageFetcher;

    invoke-direct {v1, p1, v2}, Lcom/youtu/apps/image/ImageFetcher;-><init>(Landroid/content/Context;I)V

    .line 80
    .local v1, "imageWorker":Lcom/youtu/apps/image/ImageFetcher;
    const-string v4, "images"

    invoke-static {p1, v4}, Lcom/youtu/apps/image/ImageCache;->findOrCreateCache(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;)Lcom/youtu/apps/image/ImageCache;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/youtu/apps/image/ImageFetcher;->setImageCache(Lcom/youtu/apps/image/ImageCache;)V

    .line 82
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/youtu/apps/image/ImageFetcher;->setImageFadeIn(Z)V

    .line 83
    return-object v1

    .end local v1    # "imageWorker":Lcom/youtu/apps/image/ImageFetcher;
    .end local v2    # "shortest":I
    :cond_0
    move v2, v0

    .line 77
    goto :goto_0
.end method

.method private initViewByOrientation()V
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/youtu/apps/recommend/fragment/TopGameFragment;->mGridView:Landroid/widget/GridView;

    if-eqz v0, :cond_0

    .line 55
    invoke-virtual {p0}, Lcom/youtu/apps/recommend/fragment/TopGameFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/youtu/apps/recommend/util/Util;->isLandscape(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 56
    iget-object v0, p0, Lcom/youtu/apps/recommend/fragment/TopGameFragment;->mGridView:Landroid/widget/GridView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 60
    :goto_0
    iget-object v0, p0, Lcom/youtu/apps/recommend/fragment/TopGameFragment;->mAdapter:Lcom/youtu/apps/recommend/adapter/TopGameAdapter;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/youtu/apps/recommend/fragment/TopGameFragment;->mAdapter:Lcom/youtu/apps/recommend/adapter/TopGameAdapter;

    invoke-virtual {v0}, Lcom/youtu/apps/recommend/adapter/TopGameAdapter;->notifyDataSetChanged()V

    .line 64
    :cond_0
    return-void

    .line 58
    :cond_1
    iget-object v0, p0, Lcom/youtu/apps/recommend/fragment/TopGameFragment;->mGridView:Landroid/widget/GridView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setNumColumns(I)V

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 87
    iget-object v0, p0, Lcom/youtu/apps/recommend/fragment/TopGameFragment;->mImageWorker:Lcom/youtu/apps/image/ImageResizer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youtu/apps/recommend/fragment/TopGameFragment;->mImageWorker:Lcom/youtu/apps/image/ImageResizer;

    invoke-virtual {v0}, Lcom/youtu/apps/image/ImageResizer;->getImageCache()Lcom/youtu/apps/image/ImageCache;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 89
    iput-object v1, p0, Lcom/youtu/apps/recommend/fragment/TopGameFragment;->mImageWorker:Lcom/youtu/apps/image/ImageResizer;

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/youtu/apps/recommend/fragment/TopGameFragment;->mAdapter:Lcom/youtu/apps/recommend/adapter/TopGameAdapter;

    if-eqz v0, :cond_1

    .line 92
    iput-object v1, p0, Lcom/youtu/apps/recommend/fragment/TopGameFragment;->mAdapter:Lcom/youtu/apps/recommend/adapter/TopGameAdapter;

    .line 94
    :cond_1
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 49
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 50
    invoke-direct {p0}, Lcom/youtu/apps/recommend/fragment/TopGameFragment;->initViewByOrientation()V

    .line 51
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x1

    .line 33
    sget v2, Lcom/youtu/apps/R$layout;->fragment_recommend_topgame:I

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 34
    .local v1, "view":Landroid/view/View;
    sget v2, Lcom/youtu/apps/R$id;->recommend_topgame_grid:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/GridView;

    iput-object v2, p0, Lcom/youtu/apps/recommend/fragment/TopGameFragment;->mGridView:Landroid/widget/GridView;

    .line 35
    invoke-virtual {p0}, Lcom/youtu/apps/recommend/fragment/TopGameFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/youtu/apps/recommend/fragment/TopGameFragment;->getImageWorker(Landroid/support/v4/app/FragmentActivity;)Lcom/youtu/apps/image/ImageWorker;

    move-result-object v2

    check-cast v2, Lcom/youtu/apps/image/ImageResizer;

    iput-object v2, p0, Lcom/youtu/apps/recommend/fragment/TopGameFragment;->mImageWorker:Lcom/youtu/apps/image/ImageResizer;

    .line 36
    invoke-virtual {p0}, Lcom/youtu/apps/recommend/fragment/TopGameFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;->newRecommend:Lcom/youtu/apps/recommend/vo/AllNewRecommend;

    if-eqz v2, :cond_0

    .line 37
    sget-object v2, Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;->newRecommend:Lcom/youtu/apps/recommend/vo/AllNewRecommend;

    iget-object v0, v2, Lcom/youtu/apps/recommend/vo/AllNewRecommend;->results:Ljava/util/List;

    .line 38
    .local v0, "tempList":Ljava/util/List;, "Ljava/util/List<Lcom/youtu/apps/recommend/vo/NewRecommend;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v6, :cond_0

    .line 39
    new-instance v3, Lcom/youtu/apps/recommend/adapter/TopGameAdapter;

    invoke-virtual {p0}, Lcom/youtu/apps/recommend/fragment/TopGameFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youtu/apps/recommend/vo/NewRecommend;

    iget-object v5, v2, Lcom/youtu/apps/recommend/vo/NewRecommend;->applications:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youtu/apps/recommend/vo/NewRecommend;

    iget-object v2, v2, Lcom/youtu/apps/recommend/vo/NewRecommend;->id:Ljava/lang/String;

    iget-object v6, p0, Lcom/youtu/apps/recommend/fragment/TopGameFragment;->mImageWorker:Lcom/youtu/apps/image/ImageResizer;

    invoke-direct {v3, v4, v5, v2, v6}, Lcom/youtu/apps/recommend/adapter/TopGameAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Lcom/youtu/apps/image/ImageResizer;)V

    iput-object v3, p0, Lcom/youtu/apps/recommend/fragment/TopGameFragment;->mAdapter:Lcom/youtu/apps/recommend/adapter/TopGameAdapter;

    .line 40
    iget-object v2, p0, Lcom/youtu/apps/recommend/fragment/TopGameFragment;->mGridView:Landroid/widget/GridView;

    iget-object v3, p0, Lcom/youtu/apps/recommend/fragment/TopGameFragment;->mAdapter:Lcom/youtu/apps/recommend/adapter/TopGameAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 43
    .end local v0    # "tempList":Ljava/util/List;, "Ljava/util/List<Lcom/youtu/apps/recommend/vo/NewRecommend;>;"
    :cond_0
    invoke-direct {p0}, Lcom/youtu/apps/recommend/fragment/TopGameFragment;->initViewByOrientation()V

    .line 44
    return-object v1
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 68
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 69
    iget-object v0, p0, Lcom/youtu/apps/recommend/fragment/TopGameFragment;->mAdapter:Lcom/youtu/apps/recommend/adapter/TopGameAdapter;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/youtu/apps/recommend/fragment/TopGameFragment;->mAdapter:Lcom/youtu/apps/recommend/adapter/TopGameAdapter;

    invoke-virtual {v0}, Lcom/youtu/apps/recommend/adapter/TopGameAdapter;->notifyDataSetChanged()V

    .line 72
    :cond_0
    return-void
.end method
