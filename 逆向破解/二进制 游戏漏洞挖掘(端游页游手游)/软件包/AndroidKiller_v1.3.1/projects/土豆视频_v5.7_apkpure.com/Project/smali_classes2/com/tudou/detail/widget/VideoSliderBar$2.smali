.class Lcom/tudou/detail/widget/VideoSliderBar$2;
.super Lcom/tudou/detail/DetailImageLoadingListenner;
.source "VideoSliderBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/detail/widget/VideoSliderBar;->makeAndAddItem(Lcom/tudou/detail/vo/SliderInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/detail/widget/VideoSliderBar;

.field final synthetic val$holder:Lcom/tudou/detail/widget/VideoSliderBar$MenuItemHolder;


# direct methods
.method constructor <init>(Lcom/tudou/detail/widget/VideoSliderBar;Lcom/tudou/detail/widget/VideoSliderBar$MenuItemHolder;)V
    .locals 0

    .prologue
    .line 167
    iput-object p1, p0, Lcom/tudou/detail/widget/VideoSliderBar$2;->this$0:Lcom/tudou/detail/widget/VideoSliderBar;

    iput-object p2, p0, Lcom/tudou/detail/widget/VideoSliderBar$2;->val$holder:Lcom/tudou/detail/widget/VideoSliderBar$MenuItemHolder;

    invoke-direct {p0}, Lcom/tudou/detail/DetailImageLoadingListenner;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadingComplete(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "b"    # Landroid/graphics/Bitmap;

    .prologue
    .line 170
    invoke-super {p0, p1, p2, p3}, Lcom/tudou/detail/DetailImageLoadingListenner;->onLoadingComplete(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V

    .line 171
    if-eqz p3, :cond_0

    .line 172
    iget-object v0, p0, Lcom/tudou/detail/widget/VideoSliderBar$2;->val$holder:Lcom/tudou/detail/widget/VideoSliderBar$MenuItemHolder;

    iget-object v0, v0, Lcom/tudou/detail/widget/VideoSliderBar$MenuItemHolder;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 174
    :cond_0
    return-void
.end method
