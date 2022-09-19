.class Lcom/youku/player/ad/imagead/ImageAdYouku$2;
.super Lcom/nostra13/universalimageloader/core/listener/SimpleImageLoadingListener;
.source "ImageAdYouku.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/player/ad/imagead/ImageAdYouku;->loadImage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private isCanceled:Z

.field private isLoaded:Z

.field final synthetic this$0:Lcom/youku/player/ad/imagead/ImageAdYouku;


# direct methods
.method constructor <init>(Lcom/youku/player/ad/imagead/ImageAdYouku;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 133
    iput-object p1, p0, Lcom/youku/player/ad/imagead/ImageAdYouku$2;->this$0:Lcom/youku/player/ad/imagead/ImageAdYouku;

    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/listener/SimpleImageLoadingListener;-><init>()V

    .line 134
    iput-boolean v0, p0, Lcom/youku/player/ad/imagead/ImageAdYouku$2;->isLoaded:Z

    .line 135
    iput-boolean v0, p0, Lcom/youku/player/ad/imagead/ImageAdYouku$2;->isCanceled:Z

    return-void
.end method

.method static synthetic access$000(Lcom/youku/player/ad/imagead/ImageAdYouku$2;)Z
    .locals 1
    .param p0, "x0"    # Lcom/youku/player/ad/imagead/ImageAdYouku$2;

    .prologue
    .line 133
    iget-boolean v0, p0, Lcom/youku/player/ad/imagead/ImageAdYouku$2;->isLoaded:Z

    return v0
.end method

.method static synthetic access$102(Lcom/youku/player/ad/imagead/ImageAdYouku$2;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/youku/player/ad/imagead/ImageAdYouku$2;
    .param p1, "x1"    # Z

    .prologue
    .line 133
    iput-boolean p1, p0, Lcom/youku/player/ad/imagead/ImageAdYouku$2;->isCanceled:Z

    return p1
.end method


# virtual methods
.method public onLoadingComplete(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "imageUri"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "loadedImage"    # Landroid/graphics/Bitmap;

    .prologue
    .line 178
    if-eqz p3, :cond_0

    iget-boolean v0, p0, Lcom/youku/player/ad/imagead/ImageAdYouku$2;->isCanceled:Z

    if-eqz v0, :cond_1

    .line 191
    :cond_0
    :goto_0
    return-void

    .line 181
    :cond_1
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdYouku$2;->this$0:Lcom/youku/player/ad/imagead/ImageAdYouku;

    iget-object v0, v0, Lcom/youku/player/ad/imagead/ImageAdYouku;->mPlayerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdYouku$2;->this$0:Lcom/youku/player/ad/imagead/ImageAdYouku;

    iget-object v0, v0, Lcom/youku/player/ad/imagead/ImageAdYouku;->mPlayerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

    invoke-interface {v0}, Lcom/youku/player/apiservice/IPlayerAdControl;->isImageAdStartToShow()Z

    move-result v0

    if-nez v0, :cond_3

    .line 182
    :cond_2
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdYouku$2;->this$0:Lcom/youku/player/ad/imagead/ImageAdYouku;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/youku/player/ad/imagead/ImageAdYouku;->disposeAdLoss(I)V

    goto :goto_0

    .line 185
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youku/player/ad/imagead/ImageAdYouku$2;->isLoaded:Z

    .line 187
    sget-object v0, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    const-string/jumbo v1, "\u5168\u5c4f\u5e7f\u544a\u52a0\u8f7d\u6210\u529f"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdYouku$2;->this$0:Lcom/youku/player/ad/imagead/ImageAdYouku;

    invoke-virtual {v0}, Lcom/youku/player/ad/imagead/ImageAdYouku;->updateImageAdPlugin()V

    .line 189
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdYouku$2;->this$0:Lcom/youku/player/ad/imagead/ImageAdYouku;

    invoke-static {v0}, Lcom/youku/player/ad/imagead/ImageAdYouku;->access$200(Lcom/youku/player/ad/imagead/ImageAdYouku;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 190
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdYouku$2;->this$0:Lcom/youku/player/ad/imagead/ImageAdYouku;

    invoke-static {v0}, Lcom/youku/player/ad/imagead/ImageAdYouku;->access$300(Lcom/youku/player/ad/imagead/ImageAdYouku;)V

    goto :goto_0
.end method

.method public onLoadingStarted(Ljava/lang/String;Landroid/view/View;)V
    .locals 4
    .param p1, "imageUri"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 139
    sget-object v0, Lcom/youku/player/ad/imagead/ImageAd;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/youku/player/ad/imagead/ImageAdYouku$2$1;

    invoke-direct {v1, p0}, Lcom/youku/player/ad/imagead/ImageAdYouku$2$1;-><init>(Lcom/youku/player/ad/imagead/ImageAdYouku$2;)V

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 173
    return-void
.end method
