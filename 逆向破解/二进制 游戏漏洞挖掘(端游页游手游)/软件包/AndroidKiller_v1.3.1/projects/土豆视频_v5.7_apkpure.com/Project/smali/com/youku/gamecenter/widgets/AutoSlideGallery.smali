.class public Lcom/youku/gamecenter/widgets/AutoSlideGallery;
.super Lcom/youku/gamecenter/widgets/AutoSlideGalleryBase;
.source "AutoSlideGallery.java"


# instance fields
.field private mBottomBackground:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Lcom/youku/gamecenter/widgets/AutoSlideGalleryBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    return-void
.end method


# virtual methods
.method public handleItemSelected(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 54
    iget-object v1, p0, Lcom/youku/gamecenter/widgets/AutoSlideGallery;->mPointImageViews:[Landroid/widget/ImageView;

    iget v0, p0, Lcom/youku/gamecenter/widgets/AutoSlideGallery;->POSTER_IMAGE_COUNT:I

    rem-int v0, p1, v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/youku/gamecenter/widgets/AutoSlideGallery;->POSTER_IMAGE_COUNT:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    aget-object v0, v1, v0

    sget v1, Lcom/youku/gamecenter/R$drawable;->point_normal:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 57
    iget-object v1, p0, Lcom/youku/gamecenter/widgets/AutoSlideGallery;->mPointImageViews:[Landroid/widget/ImageView;

    iget v0, p0, Lcom/youku/gamecenter/widgets/AutoSlideGallery;->POSTER_IMAGE_COUNT:I

    rem-int v0, p1, v0

    iget v2, p0, Lcom/youku/gamecenter/widgets/AutoSlideGallery;->POSTER_IMAGE_COUNT:I

    add-int/lit8 v2, v2, -0x1

    if-ne v0, v2, :cond_1

    const/4 v0, 0x0

    :goto_1
    aget-object v0, v1, v0

    sget v1, Lcom/youku/gamecenter/R$drawable;->point_normal:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 60
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/AutoSlideGallery;->mPointImageViews:[Landroid/widget/ImageView;

    iget v1, p0, Lcom/youku/gamecenter/widgets/AutoSlideGallery;->POSTER_IMAGE_COUNT:I

    rem-int v1, p1, v1

    aget-object v0, v0, v1

    sget v1, Lcom/youku/gamecenter/R$drawable;->point_selected:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 62
    return-void

    .line 54
    :cond_0
    iget v0, p0, Lcom/youku/gamecenter/widgets/AutoSlideGallery;->POSTER_IMAGE_COUNT:I

    rem-int v0, p1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 57
    :cond_1
    iget v0, p0, Lcom/youku/gamecenter/widgets/AutoSlideGallery;->POSTER_IMAGE_COUNT:I

    rem-int v0, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public init(Lcom/youku/gamecenter/widgets/AutoSlideGalleryBase$OnGalleryHandleActionListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/youku/gamecenter/widgets/AutoSlideGalleryBase$OnGalleryHandleActionListener;

    .prologue
    const/4 v2, -0x1

    .line 22
    invoke-super {p0, p1}, Lcom/youku/gamecenter/widgets/AutoSlideGalleryBase;->init(Lcom/youku/gamecenter/widgets/AutoSlideGalleryBase$OnGalleryHandleActionListener;)V

    .line 24
    sget v1, Lcom/youku/gamecenter/R$id;->indicator:I

    invoke-virtual {p0, v1}, Lcom/youku/gamecenter/widgets/AutoSlideGallery;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/youku/gamecenter/widgets/AutoSlideGallery;->mBottomBackground:Landroid/widget/LinearLayout;

    .line 26
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 28
    .local v0, "LP":Landroid/widget/AbsListView$LayoutParams;
    invoke-virtual {p0, v0}, Lcom/youku/gamecenter/widgets/AutoSlideGallery;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 30
    return-void
.end method

.method public initPoints(I)V
    .locals 5
    .param p1, "count"    # I

    .prologue
    const/4 v4, 0x0

    .line 33
    iget-object v1, p0, Lcom/youku/gamecenter/widgets/AutoSlideGallery;->mPointContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 34
    iput p1, p0, Lcom/youku/gamecenter/widgets/AutoSlideGallery;->POSTER_IMAGE_COUNT:I

    .line 36
    if-gtz p1, :cond_1

    .line 51
    :cond_0
    :goto_0
    return-void

    .line 40
    :cond_1
    iget v1, p0, Lcom/youku/gamecenter/widgets/AutoSlideGallery;->POSTER_IMAGE_COUNT:I

    new-array v1, v1, [Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/youku/gamecenter/widgets/AutoSlideGallery;->mPointImageViews:[Landroid/widget/ImageView;

    .line 41
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lcom/youku/gamecenter/widgets/AutoSlideGallery;->POSTER_IMAGE_COUNT:I

    if-ge v0, v1, :cond_2

    .line 42
    iget-object v1, p0, Lcom/youku/gamecenter/widgets/AutoSlideGallery;->mPointImageViews:[Landroid/widget/ImageView;

    new-instance v2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/youku/gamecenter/widgets/AutoSlideGallery;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    aput-object v2, v1, v0

    .line 43
    iget-object v1, p0, Lcom/youku/gamecenter/widgets/AutoSlideGallery;->mPointImageViews:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    sget v2, Lcom/youku/gamecenter/R$drawable;->point_normal:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 44
    iget-object v1, p0, Lcom/youku/gamecenter/widgets/AutoSlideGallery;->mPointContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/youku/gamecenter/widgets/AutoSlideGallery;->mPointImageViews:[Landroid/widget/ImageView;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 41
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 46
    :cond_2
    iget-object v1, p0, Lcom/youku/gamecenter/widgets/AutoSlideGallery;->mPointImageViews:[Landroid/widget/ImageView;

    aget-object v1, v1, v4

    if-eqz v1, :cond_0

    .line 47
    iget-object v1, p0, Lcom/youku/gamecenter/widgets/AutoSlideGallery;->mPointImageViews:[Landroid/widget/ImageView;

    aget-object v1, v1, v4

    sget v2, Lcom/youku/gamecenter/R$drawable;->point_selected:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 49
    iget-object v1, p0, Lcom/youku/gamecenter/widgets/AutoSlideGallery;->mBottomBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method
