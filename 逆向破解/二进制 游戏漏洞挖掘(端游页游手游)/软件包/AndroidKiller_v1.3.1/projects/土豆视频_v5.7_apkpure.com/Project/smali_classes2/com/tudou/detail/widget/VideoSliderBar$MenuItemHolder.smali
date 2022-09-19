.class Lcom/tudou/detail/widget/VideoSliderBar$MenuItemHolder;
.super Ljava/lang/Object;
.source "VideoSliderBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/detail/widget/VideoSliderBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MenuItemHolder"
.end annotation


# instance fields
.field cling:Landroid/view/View;

.field mCornerView:Landroid/widget/ImageView;

.field mIcon:Landroid/widget/ImageView;

.field mIconMark:Landroid/widget/ImageView;

.field mRoot:Landroid/view/View;

.field mSliderDetail:Lcom/tudou/detail/vo/SliderInfo;

.field mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 230
    iput-object p1, p0, Lcom/tudou/detail/widget/VideoSliderBar$MenuItemHolder;->mRoot:Landroid/view/View;

    .line 231
    iget-object v0, p0, Lcom/tudou/detail/widget/VideoSliderBar$MenuItemHolder;->mRoot:Landroid/view/View;

    const v1, 0x7f0c0352

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tudou/detail/widget/VideoSliderBar$MenuItemHolder;->mIcon:Landroid/widget/ImageView;

    .line 232
    iget-object v0, p0, Lcom/tudou/detail/widget/VideoSliderBar$MenuItemHolder;->mRoot:Landroid/view/View;

    const v1, 0x7f0c0356

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/detail/widget/VideoSliderBar$MenuItemHolder;->mTitle:Landroid/widget/TextView;

    .line 233
    iget-object v0, p0, Lcom/tudou/detail/widget/VideoSliderBar$MenuItemHolder;->mRoot:Landroid/view/View;

    const v1, 0x7f0c0355

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tudou/detail/widget/VideoSliderBar$MenuItemHolder;->mIconMark:Landroid/widget/ImageView;

    .line 234
    iget-object v0, p0, Lcom/tudou/detail/widget/VideoSliderBar$MenuItemHolder;->mRoot:Landroid/view/View;

    const v1, 0x7f0c0354

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tudou/detail/widget/VideoSliderBar$MenuItemHolder;->mCornerView:Landroid/widget/ImageView;

    .line 235
    iget-object v0, p0, Lcom/tudou/detail/widget/VideoSliderBar$MenuItemHolder;->mRoot:Landroid/view/View;

    const v1, 0x7f0c0353

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/detail/widget/VideoSliderBar$MenuItemHolder;->cling:Landroid/view/View;

    .line 236
    return-void
.end method


# virtual methods
.method public setSliderDetail(Lcom/tudou/detail/vo/SliderInfo;)V
    .locals 1
    .param p1, "detail"    # Lcom/tudou/detail/vo/SliderInfo;

    .prologue
    .line 225
    iput-object p1, p0, Lcom/tudou/detail/widget/VideoSliderBar$MenuItemHolder;->mSliderDetail:Lcom/tudou/detail/vo/SliderInfo;

    .line 226
    iget-object v0, p0, Lcom/tudou/detail/widget/VideoSliderBar$MenuItemHolder;->mRoot:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 227
    return-void
.end method
