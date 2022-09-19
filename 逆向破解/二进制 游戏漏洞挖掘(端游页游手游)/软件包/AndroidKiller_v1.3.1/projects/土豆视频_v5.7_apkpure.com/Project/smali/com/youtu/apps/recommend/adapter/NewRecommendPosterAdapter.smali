.class public Lcom/youtu/apps/recommend/adapter/NewRecommendPosterAdapter;
.super Landroid/widget/BaseAdapter;
.source "NewRecommendPosterAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youtu/apps/recommend/adapter/NewRecommendPosterAdapter$1;,
        Lcom/youtu/apps/recommend/adapter/NewRecommendPosterAdapter$Holder;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mImageWorker:Lcom/youtu/apps/image/ImageResizer;

.field private mSliderInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/youtu/apps/recommend/vo/NewRecommendSlider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/youtu/apps/image/ImageResizer;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "imageWorker"    # Lcom/youtu/apps/image/ImageResizer;

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/youtu/apps/recommend/adapter/NewRecommendPosterAdapter;->mContext:Landroid/content/Context;

    .line 26
    iput-object p2, p0, Lcom/youtu/apps/recommend/adapter/NewRecommendPosterAdapter;->mImageWorker:Lcom/youtu/apps/image/ImageResizer;

    .line 27
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/youtu/apps/recommend/adapter/NewRecommendPosterAdapter;->mSliderInfos:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youtu/apps/recommend/adapter/NewRecommendPosterAdapter;->mSliderInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;->POSTER_CHANNELIMAGE_COUNT:I

    if-nez v0, :cond_1

    .line 35
    :cond_0
    const/4 v0, 0x0

    .line 37
    :goto_0
    return v0

    :cond_1
    const v0, 0x7fffffff

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 42
    iget-object v0, p0, Lcom/youtu/apps/recommend/adapter/NewRecommendPosterAdapter;->mSliderInfos:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/youtu/apps/recommend/adapter/NewRecommendPosterAdapter;->mSliderInfos:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 45
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 49
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v5, 0x0

    .line 55
    if-nez p2, :cond_1

    .line 56
    new-instance v1, Lcom/youtu/apps/recommend/adapter/NewRecommendPosterAdapter$Holder;

    invoke-direct {v1, p0, v5}, Lcom/youtu/apps/recommend/adapter/NewRecommendPosterAdapter$Holder;-><init>(Lcom/youtu/apps/recommend/adapter/NewRecommendPosterAdapter;Lcom/youtu/apps/recommend/adapter/NewRecommendPosterAdapter$1;)V

    .line 57
    .local v1, "holder":Lcom/youtu/apps/recommend/adapter/NewRecommendPosterAdapter$Holder;
    iget-object v3, p0, Lcom/youtu/apps/recommend/adapter/NewRecommendPosterAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    sget v4, Lcom/youtu/apps/R$layout;->recommmend_top_gallery:I

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 58
    sget v3, Lcom/youtu/apps/R$id;->recommend_poster:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v1, Lcom/youtu/apps/recommend/adapter/NewRecommendPosterAdapter$Holder;->poster:Landroid/widget/ImageView;

    .line 59
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 63
    :goto_0
    iget-object v3, p0, Lcom/youtu/apps/recommend/adapter/NewRecommendPosterAdapter;->mSliderInfos:Ljava/util/List;

    if-eqz v3, :cond_0

    .line 64
    invoke-virtual {p0}, Lcom/youtu/apps/recommend/adapter/NewRecommendPosterAdapter;->getCount()I

    move-result v3

    if-le v3, p1, :cond_0

    .line 66
    :try_start_0
    iget-object v3, p0, Lcom/youtu/apps/recommend/adapter/NewRecommendPosterAdapter;->mSliderInfos:Ljava/util/List;

    sget v4, Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;->POSTER_CHANNELIMAGE_COUNT:I

    rem-int v4, p1, v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youtu/apps/recommend/vo/NewRecommendSlider;

    .line 68
    .local v2, "sliderInfo":Lcom/youtu/apps/recommend/vo/NewRecommendSlider;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/youtu/apps/recommend/vo/NewRecommendSlider;->getSlider_logo()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 70
    iget-object v3, p0, Lcom/youtu/apps/recommend/adapter/NewRecommendPosterAdapter;->mImageWorker:Lcom/youtu/apps/image/ImageResizer;

    invoke-virtual {v2}, Lcom/youtu/apps/recommend/vo/NewRecommendSlider;->getSlider_logo()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v1, Lcom/youtu/apps/recommend/adapter/NewRecommendPosterAdapter$Holder;->poster:Landroid/widget/ImageView;

    invoke-virtual {v3, v4, v5}, Lcom/youtu/apps/image/ImageResizer;->loadImage(Ljava/lang/Object;Landroid/widget/ImageView;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 86
    .end local v2    # "sliderInfo":Lcom/youtu/apps/recommend/vo/NewRecommendSlider;
    :cond_0
    :goto_1
    return-object p2

    .line 61
    .end local v1    # "holder":Lcom/youtu/apps/recommend/adapter/NewRecommendPosterAdapter$Holder;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youtu/apps/recommend/adapter/NewRecommendPosterAdapter$Holder;

    .restart local v1    # "holder":Lcom/youtu/apps/recommend/adapter/NewRecommendPosterAdapter$Holder;
    goto :goto_0

    .line 73
    .restart local v2    # "sliderInfo":Lcom/youtu/apps/recommend/vo/NewRecommendSlider;
    :cond_2
    :try_start_1
    iget-object v3, v1, Lcom/youtu/apps/recommend/adapter/NewRecommendPosterAdapter$Holder;->poster:Landroid/widget/ImageView;

    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 74
    iget-object v3, v1, Lcom/youtu/apps/recommend/adapter/NewRecommendPosterAdapter$Holder;->poster:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/youtu/apps/recommend/adapter/NewRecommendPosterAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/youtu/apps/R$drawable;->recommend_icon_no_results:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 77
    .end local v2    # "sliderInfo":Lcom/youtu/apps/recommend/vo/NewRecommendSlider;
    :catch_0
    move-exception v0

    .line 79
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    invoke-virtual {v0}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    goto :goto_1

    .line 80
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    :catch_1
    move-exception v3

    goto :goto_1
.end method

.method public setData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/youtu/apps/recommend/vo/NewRecommendSlider;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p1, "slider_applications":Ljava/util/List;, "Ljava/util/List<Lcom/youtu/apps/recommend/vo/NewRecommendSlider;>;"
    iput-object p1, p0, Lcom/youtu/apps/recommend/adapter/NewRecommendPosterAdapter;->mSliderInfos:Ljava/util/List;

    .line 31
    return-void
.end method
