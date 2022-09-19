.class Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5$ImageAdWebViewClient$1;
.super Ljava/lang/Object;
.source "ImageAdYoukuHtml5.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5$ImageAdWebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5$ImageAdWebViewClient;


# direct methods
.method constructor <init>(Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5$ImageAdWebViewClient;)V
    .locals 0

    .prologue
    .line 271
    iput-object p1, p0, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5$ImageAdWebViewClient$1;->this$1:Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5$ImageAdWebViewClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 275
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5$ImageAdWebViewClient$1;->this$1:Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5$ImageAdWebViewClient;

    iget-object v0, v0, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5$ImageAdWebViewClient;->this$0:Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;

    iget-object v0, v0, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;->mPlayerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5$ImageAdWebViewClient$1;->this$1:Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5$ImageAdWebViewClient;

    iget-object v0, v0, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5$ImageAdWebViewClient;->this$0:Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;

    iget-object v0, v0, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;->mPlayerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

    invoke-interface {v0}, Lcom/youku/player/apiservice/IPlayerAdControl;->isImageAdStartToShow()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 276
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5$ImageAdWebViewClient$1;->this$1:Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5$ImageAdWebViewClient;

    iget-object v0, v0, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5$ImageAdWebViewClient;->this$0:Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;

    iget-object v0, v0, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;->mImageAdCallback:Lcom/youku/player/ad/imagead/IImageAdCallback;

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5$ImageAdWebViewClient$1;->this$1:Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5$ImageAdWebViewClient;

    iget-object v0, v0, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5$ImageAdWebViewClient;->this$0:Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;

    iget-object v0, v0, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;->mImageAdCallback:Lcom/youku/player/ad/imagead/IImageAdCallback;

    invoke-interface {v0}, Lcom/youku/player/ad/imagead/IImageAdCallback;->onAdPresent()V

    .line 279
    :cond_0
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5$ImageAdWebViewClient$1;->this$1:Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5$ImageAdWebViewClient;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5$ImageAdWebViewClient;->access$202(Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5$ImageAdWebViewClient;Z)Z

    .line 280
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5$ImageAdWebViewClient$1;->this$1:Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5$ImageAdWebViewClient;

    iget-object v0, v0, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5$ImageAdWebViewClient;->this$0:Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;

    invoke-virtual {v0}, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;->startTimer()V

    .line 284
    :goto_0
    return-void

    .line 282
    :cond_1
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5$ImageAdWebViewClient$1;->this$1:Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5$ImageAdWebViewClient;

    iget-object v0, v0, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5$ImageAdWebViewClient;->this$0:Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;->disposeAdLoss(I)V

    goto :goto_0
.end method
