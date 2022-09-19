.class public Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment;
.super Landroid/support/v4/app/Fragment;
.source "NewRecommendPosterFragment.java"


# instance fields
.field private height:I

.field private location:[I

.field private mContext:Landroid/content/Context;

.field private mGallery:Lcom/youtu/apps/widget/YoutuGallery;

.field private mImageWorker:Lcom/youtu/apps/image/ImageResizer;

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mPointImgs:[Landroid/widget/ImageView;

.field private mPosterAdapter:Lcom/youtu/apps/recommend/adapter/NewRecommendPosterAdapter;

.field private mSliderApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/youtu/apps/recommend/vo/NewRecommendSlider;",
            ">;"
        }
    .end annotation
.end field

.field private mTopGallery:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment;->location:[I

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment;->height:I

    .line 215
    new-instance v0, Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment$4;

    invoke-direct {v0, p0}, Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment$4;-><init>(Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment;)V

    iput-object v0, p0, Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment;)[I
    .locals 1
    .param p0, "x0"    # Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment;->location:[I

    return-object v0
.end method

.method static synthetic access$002(Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment;[I)[I
    .locals 0
    .param p0, "x0"    # Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment;
    .param p1, "x1"    # [I

    .prologue
    .line 35
    iput-object p1, p0, Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment;->location:[I

    return-object p1
.end method

.method static synthetic access$100(Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment;)Lcom/youtu/apps/widget/YoutuGallery;
    .locals 1
    .param p0, "x0"    # Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment;->mGallery:Lcom/youtu/apps/widget/YoutuGallery;

    return-object v0
.end method

.method static synthetic access$200(Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment;

    .prologue
    .line 35
    iget v0, p0, Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment;->height:I

    return v0
.end method

.method static synthetic access$202(Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment;
    .param p1, "x1"    # I

    .prologue
    .line 35
    iput p1, p0, Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment;->height:I

    return p1
.end method

.method static synthetic access$300(Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment;)[Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment;->mPointImgs:[Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment;->mSliderApps:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$500(Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private buildPage()V
    .locals 6

    .prologue
    const v5, 0x3fffffff    # 1.9999999f

    const/4 v4, 0x0

    .line 99
    sget v1, Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;->POSTER_CHANNELIMAGE_COUNT:I

    if-eqz v1, :cond_0

    sget-object v1, Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;->newRecommend:Lcom/youtu/apps/recommend/vo/AllNewRecommend;

    if-eqz v1, :cond_0

    .line 100
    sget-object v1, Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;->newRecommend:Lcom/youtu/apps/recommend/vo/AllNewRecommend;

    iget-object v0, v1, Lcom/youtu/apps/recommend/vo/AllNewRecommend;->results:Ljava/util/List;

    .line 101
    .local v0, "tempList":Ljava/util/List;, "Ljava/util/List<Lcom/youtu/apps/recommend/vo/NewRecommend;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 102
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youtu/apps/recommend/vo/NewRecommend;

    iget-object v1, v1, Lcom/youtu/apps/recommend/vo/NewRecommend;->slider_applications:Ljava/util/List;

    iput-object v1, p0, Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment;->mSliderApps:Ljava/util/List;

    .line 103
    new-instance v1, Lcom/youtu/apps/recommend/adapter/NewRecommendPosterAdapter;

    iget-object v2, p0, Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment;->mImageWorker:Lcom/youtu/apps/image/ImageResizer;

    invoke-direct {v1, v2, v3}, Lcom/youtu/apps/recommend/adapter/NewRecommendPosterAdapter;-><init>(Landroid/content/Context;Lcom/youtu/apps/image/ImageResizer;)V

    iput-object v1, p0, Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment;->mPosterAdapter:Lcom/youtu/apps/recommend/adapter/NewRecommendPosterAdapter;

    .line 104
    iget-object v1, p0, Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment;->mPosterAdapter:Lcom/youtu/apps/recommend/adapter/NewRecommendPosterAdapter;

    iget-object v2, p0, Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment;->mSliderApps:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/youtu/apps/recommend/adapter/NewRecommendPosterAdapter;->setData(Ljava/util/List;)V

    .line 105
    iget-object v1, p0, Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment;->mGallery:Lcom/youtu/apps/widget/YoutuGallery;

    iget-object v2, p0, Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment;->mPosterAdapter:Lcom/youtu/apps/recommend/adapter/NewRecommendPosterAdapter;

    invoke-virtual {v1, v2}, Lcom/youtu/apps/widget/YoutuGallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 106
    iget-object v1, p0, Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment;->mGallery:Lcom/youtu/apps/widget/YoutuGallery;

    sget v2, Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;->POSTER_CHANNELIMAGE_COUNT:I

    rem-int v2, v5, v2

    sub-int v2, v5, v2

    invoke-virtual {v1, v2}, Lcom/youtu/apps/widget/YoutuGallery;->setSelection(I)V

    .line 109
    iget-object v1, p0, Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment;->mGallery:Lcom/youtu/apps/widget/YoutuGallery;

    invoke-virtual {v1}, Lcom/youtu/apps/widget/YoutuGallery;->startAutoSlide()V

    .line 110
    iget-object v1, p0, Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment;->mPosterAdapter:Lcom/youtu/apps/recommend/adapter/NewRecommendPosterAdapter;

    invoke-virtual {v1}, Lcom/youtu/apps/recommend/adapter/NewRecommendPosterAdapter;->notifyDataSetChanged()V

    .line 111
    iget-object v1, p0, Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment;->mGallery:Lcom/youtu/apps/widget/YoutuGallery;

    invoke-virtual {v1, v4}, Lcom/youtu/apps/widget/YoutuGallery;->setVisibility(I)V

    .line 114
    .end local v0    # "tempList":Ljava/util/List;, "Ljava/util/List<Lcom/youtu/apps/recommend/vo/NewRecommend;>;"
    :cond_0
    return-void
.end method

.method private getImageWorker(Landroid/support/v4/app/FragmentActivity;)Lcom/youtu/apps/image/ImageWorker;
    .locals 5
    .param p1, "context"    # Landroid/support/v4/app/FragmentActivity;

    .prologue
    .line 230
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v0, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 231
    .local v0, "height":I
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v3, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 232
    .local v3, "width":I
    if-le v0, v3, :cond_0

    move v2, v3

    .line 233
    .local v2, "shortest":I
    :goto_0
    new-instance v1, Lcom/youtu/apps/image/ImageFetcher;

    invoke-direct {v1, p1, v2}, Lcom/youtu/apps/image/ImageFetcher;-><init>(Landroid/content/Context;I)V

    .line 234
    .local v1, "imageWorker":Lcom/youtu/apps/image/ImageFetcher;
    const-string v4, "images"

    invoke-static {p1, v4}, Lcom/youtu/apps/image/ImageCache;->findOrCreateCache(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;)Lcom/youtu/apps/image/ImageCache;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/youtu/apps/image/ImageFetcher;->setImageCache(Lcom/youtu/apps/image/ImageCache;)V

    .line 236
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/youtu/apps/image/ImageFetcher;->setImageFadeIn(Z)V

    .line 237
    return-object v1

    .end local v1    # "imageWorker":Lcom/youtu/apps/image/ImageFetcher;
    .end local v2    # "shortest":I
    :cond_0
    move v2, v0

    .line 232
    goto :goto_0
.end method

.method private initPoster()V
    .locals 5

    .prologue
    .line 117
    sget v0, Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;->POSTER_CHANNELIMAGE_COUNT:I

    .line 118
    .local v0, "count":I
    new-array v1, v0, [Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment;->mPointImgs:[Landroid/widget/ImageView;

    .line 119
    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 120
    iget-object v2, p0, Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment;->mPointImgs:[Landroid/widget/ImageView;

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment;->mTopGallery:Landroid/view/View;

    sget v4, Lcom/youtu/apps/R$id;->img_point1:I

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v2, v3

    .line 121
    iget-object v2, p0, Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment;->mPointImgs:[Landroid/widget/ImageView;

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment;->mTopGallery:Landroid/view/View;

    sget v4, Lcom/youtu/apps/R$id;->img_point2:I

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v2, v3

    .line 122
    iget-object v2, p0, Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment;->mPointImgs:[Landroid/widget/ImageView;

    const/4 v3, 0x2

    iget-object v1, p0, Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment;->mTopGallery:Landroid/view/View;

    sget v4, Lcom/youtu/apps/R$id;->img_point3:I

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v2, v3

    .line 124
    iget-object v1, p0, Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment;->mGallery:Lcom/youtu/apps/widget/YoutuGallery;

    new-instance v2, Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment$2;

    invoke-direct {v2, p0, v0}, Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment$2;-><init>(Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment;I)V

    invoke-virtual {v1, v2}, Lcom/youtu/apps/widget/YoutuGallery;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 148
    :cond_0
    iget-object v1, p0, Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment;->mGallery:Lcom/youtu/apps/widget/YoutuGallery;

    new-instance v2, Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment$3;

    invoke-direct {v2, p0, v0}, Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment$3;-><init>(Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment;I)V

    invoke-virtual {v1, v2}, Lcom/youtu/apps/widget/YoutuGallery;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 168
    return-void
.end method

.method private initViewByOrientation()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 197
    iget-object v2, p0, Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment;->mTopGallery:Landroid/view/View;

    sget v3, Lcom/youtu/apps/R$id;->img_recommend_newrecommend_poster_left:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 199
    .local v0, "leftImg":Landroid/widget/ImageView;
    iget-object v2, p0, Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment;->mTopGallery:Landroid/view/View;

    sget v3, Lcom/youtu/apps/R$id;->img_recommend_newrecommend_poster_right:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 201
    .local v1, "rightImg":Landroid/widget/ImageView;
    iget-object v2, p0, Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    iget-object v2, p0, Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    iget-object v2, p0, Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/youtu/apps/recommend/util/Util;->isLandscape(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 204
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 205
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 210
    :goto_0
    invoke-direct {p0}, Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment;->initPoster()V

    .line 211
    iget-object v2, p0, Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment;->mPosterAdapter:Lcom/youtu/apps/recommend/adapter/NewRecommendPosterAdapter;

    if-eqz v2, :cond_0

    .line 212
    iget-object v2, p0, Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment;->mPosterAdapter:Lcom/youtu/apps/recommend/adapter/NewRecommendPosterAdapter;

    invoke-virtual {v2}, Lcom/youtu/apps/recommend/adapter/NewRecommendPosterAdapter;->notifyDataSetChanged()V

    .line 213
    :cond_0
    return-void

    .line 207
    :cond_1
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 208
    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 241
    iget-object v0, p0, Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment;->mSliderApps:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment;->mSliderApps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 243
    iput-object v1, p0, Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment;->mSliderApps:Ljava/util/List;

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment;->mImageWorker:Lcom/youtu/apps/image/ImageResizer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment;->mImageWorker:Lcom/youtu/apps/image/ImageResizer;

    invoke-virtual {v0}, Lcom/youtu/apps/image/ImageResizer;->getImageCache()Lcom/youtu/apps/image/ImageCache;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 247
    iput-object v1, p0, Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment;->mImageWorker:Lcom/youtu/apps/image/ImageResizer;

    .line 249
    :cond_1
    iput-object v1, p0, Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment;->mPosterAdapter:Lcom/youtu/apps/recommend/adapter/NewRecommendPosterAdapter;

    .line 250
    iget-object v0, p0, Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment;->mGallery:Lcom/youtu/apps/widget/YoutuGallery;

    if-eqz v0, :cond_2

    .line 251
    iget-object v0, p0, Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment;->mGallery:Lcom/youtu/apps/widget/YoutuGallery;

    invoke-virtual {v0}, Lcom/youtu/apps/widget/YoutuGallery;->cancelAutoSlide()V

    .line 252
    iput-object v1, p0, Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment;->mGallery:Lcom/youtu/apps/widget/YoutuGallery;

    .line 254
    :cond_2
    iput-object v1, p0, Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment;->mPointImgs:[Landroid/widget/ImageView;

    .line 255
    iput-object v1, p0, Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment;->mTopGallery:Landroid/view/View;

    .line 256
    iput-object v1, p0, Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment;->mContext:Landroid/content/Context;

    .line 257
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 192
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 193
    invoke-direct {p0}, Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment;->initViewByOrientation()V

    .line 194
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 48
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 49
    if-eqz p1, :cond_0

    .line 50
    const-string v0, "height"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment;->height:I

    .line 51
    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment;->location:[I

    .line 53
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iput-object v1, p0, Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment;->mContext:Landroid/content/Context;

    .line 58
    sget v1, Lcom/youtu/apps/R$layout;->newrecommend_poster_container:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment;->mTopGallery:Landroid/view/View;

    .line 59
    iget-object v1, p0, Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment;->mTopGallery:Landroid/view/View;

    sget v2, Lcom/youtu/apps/R$id;->newrecommend_poster:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/youtu/apps/widget/YoutuGallery;

    iput-object v1, p0, Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment;->mGallery:Lcom/youtu/apps/widget/YoutuGallery;

    .line 60
    invoke-virtual {p0}, Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment;->getImageWorker(Landroid/support/v4/app/FragmentActivity;)Lcom/youtu/apps/image/ImageWorker;

    move-result-object v1

    check-cast v1, Lcom/youtu/apps/image/ImageResizer;

    iput-object v1, p0, Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment;->mImageWorker:Lcom/youtu/apps/image/ImageResizer;

    .line 61
    new-instance v0, Lcom/youtu/apps/recommend/fragment/NewRecommendFragment;

    invoke-direct {v0}, Lcom/youtu/apps/recommend/fragment/NewRecommendFragment;-><init>()V

    .line 62
    .local v0, "newRecommendFragment":Lcom/youtu/apps/recommend/fragment/NewRecommendFragment;
    invoke-direct {p0}, Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment;->buildPage()V

    .line 63
    invoke-direct {p0}, Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment;->initViewByOrientation()V

    .line 64
    invoke-virtual {p0}, Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    sget v2, Lcom/youtu/apps/R$id;->newRecommendContainer:I

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 66
    iget-object v1, p0, Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment;->mTopGallery:Landroid/view/View;

    return-object v1
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 172
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 173
    iget-object v0, p0, Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment;->mImageWorker:Lcom/youtu/apps/image/ImageResizer;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment;->mImageWorker:Lcom/youtu/apps/image/ImageResizer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/youtu/apps/image/ImageResizer;->setExitTasksEarly(Z)V

    .line 176
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 180
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 181
    iget-object v0, p0, Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment;->mImageWorker:Lcom/youtu/apps/image/ImageResizer;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment;->mImageWorker:Lcom/youtu/apps/image/ImageResizer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/youtu/apps/image/ImageResizer;->setExitTasksEarly(Z)V

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment;->mGallery:Lcom/youtu/apps/widget/YoutuGallery;

    invoke-virtual {v0}, Lcom/youtu/apps/widget/YoutuGallery;->startAutoSlide()V

    .line 185
    iget-object v0, p0, Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment;->mPosterAdapter:Lcom/youtu/apps/recommend/adapter/NewRecommendPosterAdapter;

    if-eqz v0, :cond_1

    .line 186
    iget-object v0, p0, Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment;->mPosterAdapter:Lcom/youtu/apps/recommend/adapter/NewRecommendPosterAdapter;

    invoke-virtual {v0}, Lcom/youtu/apps/recommend/adapter/NewRecommendPosterAdapter;->notifyDataSetChanged()V

    .line 188
    :cond_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 93
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 94
    const-string v0, "location"

    iget-object v1, p0, Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment;->location:[I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 95
    const-string v0, "height"

    iget-object v1, p0, Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment;->mGallery:Lcom/youtu/apps/widget/YoutuGallery;

    invoke-virtual {v1}, Lcom/youtu/apps/widget/YoutuGallery;->getHeight()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 96
    return-void
.end method

.method public setViewPager(Lcom/youtu/apps/widget/YoutuViewPager;)V
    .locals 2
    .param p1, "viewPager"    # Lcom/youtu/apps/widget/YoutuViewPager;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment;->mGallery:Lcom/youtu/apps/widget/YoutuGallery;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment;->mGallery:Lcom/youtu/apps/widget/YoutuGallery;

    invoke-virtual {v0}, Lcom/youtu/apps/widget/YoutuGallery;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment$1;

    invoke-direct {v1, p0, p1}, Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment$1;-><init>(Lcom/youtu/apps/recommend/fragment/NewRecommendPosterFragment;Lcom/youtu/apps/widget/YoutuViewPager;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 89
    :cond_0
    return-void
.end method
