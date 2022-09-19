.class Lcom/tudou/detail/fragment/VideoBriefFragment$4;
.super Lcom/tudou/detail/DetailImageLoadingListenner;
.source "VideoBriefFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/detail/fragment/VideoBriefFragment;->setBaseData(Lcom/youku/vo/NewVideoDetail;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/detail/fragment/VideoBriefFragment;


# direct methods
.method constructor <init>(Lcom/tudou/detail/fragment/VideoBriefFragment;)V
    .locals 0

    .prologue
    .line 340
    iput-object p1, p0, Lcom/tudou/detail/fragment/VideoBriefFragment$4;->this$0:Lcom/tudou/detail/fragment/VideoBriefFragment;

    invoke-direct {p0}, Lcom/tudou/detail/DetailImageLoadingListenner;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadingComplete(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "b"    # Landroid/graphics/Bitmap;

    .prologue
    .line 343
    invoke-static {}, Lcom/tudou/detail/fragment/VideoBriefFragment;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLoadingComplete url = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", b = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoBriefFragment$4;->this$0:Lcom/tudou/detail/fragment/VideoBriefFragment;

    invoke-virtual {v0}, Lcom/tudou/detail/fragment/VideoBriefFragment;->isDetached()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoBriefFragment$4;->this$0:Lcom/tudou/detail/fragment/VideoBriefFragment;

    invoke-static {v0}, Lcom/tudou/detail/fragment/VideoBriefFragment;->access$600(Lcom/tudou/detail/fragment/VideoBriefFragment;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    .line 345
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoBriefFragment$4;->this$0:Lcom/tudou/detail/fragment/VideoBriefFragment;

    invoke-static {v0, p3}, Lcom/tudou/detail/fragment/VideoBriefFragment;->access$302(Lcom/tudou/detail/fragment/VideoBriefFragment;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 346
    iget-object v0, p0, Lcom/tudou/detail/fragment/VideoBriefFragment$4;->this$0:Lcom/tudou/detail/fragment/VideoBriefFragment;

    invoke-static {v0}, Lcom/tudou/detail/fragment/VideoBriefFragment;->access$600(Lcom/tudou/detail/fragment/VideoBriefFragment;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 348
    :cond_0
    return-void
.end method
