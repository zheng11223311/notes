.class public Lcom/youku/gamecenter/widgets/ImagesGallery;
.super Landroid/widget/HorizontalScrollView;
.source "ImagesGallery.java"


# instance fields
.field public mImagesContainer:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/youku/gamecenter/widgets/ImagesGallery;->mImagesContainer:Landroid/widget/LinearLayout;

    .line 22
    return-void
.end method


# virtual methods
.method public addMarginView(Landroid/content/Context;)V
    .locals 5
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    .line 49
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 50
    .local v1, "view":Landroid/view/View;
    sget v0, Lcom/youku/gamecenter/R$dimen;->game_details_gallery_magrin_left_right:I

    .line 51
    .local v0, "resId":I
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v2, v3

    .line 52
    .local v2, "width":I
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/16 v4, 0x14

    invoke-direct {v3, v2, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 53
    iget-object v3, p0, Lcom/youku/gamecenter/widgets/ImagesGallery;->mImagesContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 54
    return-void
.end method

.method public getImageViews()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation

    .prologue
    .line 41
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 42
    .local v1, "images":Ljava/util/List;, "Ljava/util/List<Landroid/widget/ImageView;>;"
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/youku/gamecenter/widgets/ImagesGallery;->mImagesContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 43
    iget-object v2, p0, Lcom/youku/gamecenter/widgets/ImagesGallery;->mImagesContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 45
    :cond_0
    return-object v1
.end method

.method public init(I)V
    .locals 4
    .param p1, "size"    # I

    .prologue
    .line 32
    iget-object v3, p0, Lcom/youku/gamecenter/widgets/ImagesGallery;->mImagesContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    sub-int/2addr v3, p1

    add-int/lit8 v2, v3, -0x1

    .line 33
    .local v2, "removeSize":I
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    if-gt v0, v2, :cond_0

    .line 34
    iget-object v3, p0, Lcom/youku/gamecenter/widgets/ImagesGallery;->mImagesContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .line 35
    .local v1, "lastIndex":I
    iget-object v3, p0, Lcom/youku/gamecenter/widgets/ImagesGallery;->mImagesContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 33
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 37
    .end local v1    # "lastIndex":I
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 26
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onFinishInflate()V

    .line 27
    sget v0, Lcom/youku/gamecenter/R$id;->imagesContainer:I

    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/widgets/ImagesGallery;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/youku/gamecenter/widgets/ImagesGallery;->mImagesContainer:Landroid/widget/LinearLayout;

    .line 28
    return-void
.end method
