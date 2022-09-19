.class public Lcom/youtu/apps/recommend/fragment/NewRecommendFragment;
.super Landroid/support/v4/app/Fragment;
.source "NewRecommendFragment.java"


# instance fields
.field private mGridView:Lcom/youtu/apps/widget/YoutuGridView;

.field private mImageWorker:Lcom/youtu/apps/image/ImageResizer;

.field private mParentView:Landroid/view/View;

.field private newRecommendAdapter:Lcom/youtu/apps/recommend/adapter/NewRecommendAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method private buildPage()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 47
    iget-object v1, p0, Lcom/youtu/apps/recommend/fragment/NewRecommendFragment;->mParentView:Landroid/view/View;

    sget v2, Lcom/youtu/apps/R$id;->recommend_newrecommend_grid:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/youtu/apps/widget/YoutuGridView;

    iput-object v1, p0, Lcom/youtu/apps/recommend/fragment/NewRecommendFragment;->mGridView:Lcom/youtu/apps/widget/YoutuGridView;

    .line 48
    sget-object v1, Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;->newRecommend:Lcom/youtu/apps/recommend/vo/AllNewRecommend;

    if-eqz v1, :cond_0

    .line 49
    sget-object v1, Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;->newRecommend:Lcom/youtu/apps/recommend/vo/AllNewRecommend;

    iget-object v0, v1, Lcom/youtu/apps/recommend/vo/AllNewRecommend;->results:Ljava/util/List;

    .line 50
    .local v0, "tempList":Ljava/util/List;, "Ljava/util/List<Lcom/youtu/apps/recommend/vo/NewRecommend;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 51
    new-instance v2, Lcom/youtu/apps/recommend/adapter/NewRecommendAdapter;

    invoke-virtual {p0}, Lcom/youtu/apps/recommend/fragment/NewRecommendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youtu/apps/recommend/vo/NewRecommend;

    iget-object v4, v1, Lcom/youtu/apps/recommend/vo/NewRecommend;->applications:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youtu/apps/recommend/vo/NewRecommend;

    iget-object v1, v1, Lcom/youtu/apps/recommend/vo/NewRecommend;->id:Ljava/lang/String;

    iget-object v5, p0, Lcom/youtu/apps/recommend/fragment/NewRecommendFragment;->mImageWorker:Lcom/youtu/apps/image/ImageResizer;

    invoke-direct {v2, v3, v4, v1, v5}, Lcom/youtu/apps/recommend/adapter/NewRecommendAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Lcom/youtu/apps/image/ImageResizer;)V

    iput-object v2, p0, Lcom/youtu/apps/recommend/fragment/NewRecommendFragment;->newRecommendAdapter:Lcom/youtu/apps/recommend/adapter/NewRecommendAdapter;

    .line 52
    iget-object v1, p0, Lcom/youtu/apps/recommend/fragment/NewRecommendFragment;->mGridView:Lcom/youtu/apps/widget/YoutuGridView;

    iget-object v2, p0, Lcom/youtu/apps/recommend/fragment/NewRecommendFragment;->newRecommendAdapter:Lcom/youtu/apps/recommend/adapter/NewRecommendAdapter;

    invoke-virtual {v1, v2}, Lcom/youtu/apps/widget/YoutuGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 56
    .end local v0    # "tempList":Ljava/util/List;, "Ljava/util/List<Lcom/youtu/apps/recommend/vo/NewRecommend;>;"
    :cond_0
    return-void
.end method

.method private getImageWorker(Landroid/support/v4/app/FragmentActivity;)Lcom/youtu/apps/image/ImageWorker;
    .locals 5
    .param p1, "context"    # Landroid/support/v4/app/FragmentActivity;

    .prologue
    .line 80
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v0, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 81
    .local v0, "height":I
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v3, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 82
    .local v3, "width":I
    if-le v0, v3, :cond_0

    move v2, v3

    .line 84
    .local v2, "shortest":I
    :goto_0
    new-instance v1, Lcom/youtu/apps/image/ImageFetcher;

    invoke-direct {v1, p1, v2}, Lcom/youtu/apps/image/ImageFetcher;-><init>(Landroid/content/Context;I)V

    .line 85
    .local v1, "imageWorker":Lcom/youtu/apps/image/ImageFetcher;
    const-string v4, "images"

    invoke-static {p1, v4}, Lcom/youtu/apps/image/ImageCache;->findOrCreateCache(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;)Lcom/youtu/apps/image/ImageCache;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/youtu/apps/image/ImageFetcher;->setImageCache(Lcom/youtu/apps/image/ImageCache;)V

    .line 87
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/youtu/apps/image/ImageFetcher;->setImageFadeIn(Z)V

    .line 88
    return-object v1

    .end local v1    # "imageWorker":Lcom/youtu/apps/image/ImageFetcher;
    .end local v2    # "shortest":I
    :cond_0
    move v2, v0

    .line 82
    goto :goto_0
.end method

.method private initViewByOrientation()V
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/youtu/apps/recommend/fragment/NewRecommendFragment;->mGridView:Lcom/youtu/apps/widget/YoutuGridView;

    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {p0}, Lcom/youtu/apps/recommend/fragment/NewRecommendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/youtu/apps/recommend/util/Util;->isLandscape(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 61
    iget-object v0, p0, Lcom/youtu/apps/recommend/fragment/NewRecommendFragment;->mGridView:Lcom/youtu/apps/widget/YoutuGridView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/youtu/apps/widget/YoutuGridView;->setNumColumns(I)V

    .line 65
    :goto_0
    iget-object v0, p0, Lcom/youtu/apps/recommend/fragment/NewRecommendFragment;->newRecommendAdapter:Lcom/youtu/apps/recommend/adapter/NewRecommendAdapter;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/youtu/apps/recommend/fragment/NewRecommendFragment;->newRecommendAdapter:Lcom/youtu/apps/recommend/adapter/NewRecommendAdapter;

    invoke-virtual {v0}, Lcom/youtu/apps/recommend/adapter/NewRecommendAdapter;->notifyDataSetChanged()V

    .line 69
    :cond_0
    return-void

    .line 63
    :cond_1
    iget-object v0, p0, Lcom/youtu/apps/recommend/fragment/NewRecommendFragment;->mGridView:Lcom/youtu/apps/widget/YoutuGridView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/youtu/apps/widget/YoutuGridView;->setNumColumns(I)V

    goto :goto_0
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 42
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 43
    invoke-direct {p0}, Lcom/youtu/apps/recommend/fragment/NewRecommendFragment;->initViewByOrientation()V

    .line 44
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 33
    sget v0, Lcom/youtu/apps/R$layout;->fragment_recommend_newrecommend:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/youtu/apps/recommend/fragment/NewRecommendFragment;->mParentView:Landroid/view/View;

    .line 34
    invoke-virtual {p0}, Lcom/youtu/apps/recommend/fragment/NewRecommendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/youtu/apps/recommend/fragment/NewRecommendFragment;->getImageWorker(Landroid/support/v4/app/FragmentActivity;)Lcom/youtu/apps/image/ImageWorker;

    move-result-object v0

    check-cast v0, Lcom/youtu/apps/image/ImageResizer;

    iput-object v0, p0, Lcom/youtu/apps/recommend/fragment/NewRecommendFragment;->mImageWorker:Lcom/youtu/apps/image/ImageResizer;

    .line 35
    invoke-direct {p0}, Lcom/youtu/apps/recommend/fragment/NewRecommendFragment;->buildPage()V

    .line 36
    invoke-direct {p0}, Lcom/youtu/apps/recommend/fragment/NewRecommendFragment;->initViewByOrientation()V

    .line 37
    iget-object v0, p0, Lcom/youtu/apps/recommend/fragment/NewRecommendFragment;->mParentView:Landroid/view/View;

    return-object v0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 73
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 74
    iget-object v0, p0, Lcom/youtu/apps/recommend/fragment/NewRecommendFragment;->newRecommendAdapter:Lcom/youtu/apps/recommend/adapter/NewRecommendAdapter;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/youtu/apps/recommend/fragment/NewRecommendFragment;->newRecommendAdapter:Lcom/youtu/apps/recommend/adapter/NewRecommendAdapter;

    invoke-virtual {v0}, Lcom/youtu/apps/recommend/adapter/NewRecommendAdapter;->notifyDataSetChanged()V

    .line 77
    :cond_0
    return-void
.end method
