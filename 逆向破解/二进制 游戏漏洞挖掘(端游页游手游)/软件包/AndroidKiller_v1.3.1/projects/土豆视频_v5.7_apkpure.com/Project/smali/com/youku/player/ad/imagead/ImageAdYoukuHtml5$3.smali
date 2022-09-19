.class Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5$3;
.super Ljava/lang/Object;
.source "ImageAdYoukuHtml5.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;->startYoukuHtml5Ad()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;


# direct methods
.method constructor <init>(Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;)V
    .locals 0

    .prologue
    .line 244
    iput-object p1, p0, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5$3;->this$0:Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5$3;->this$0:Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;

    iget-object v0, v0, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;->mPlayerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

    invoke-interface {v0}, Lcom/youku/player/apiservice/IPlayerAdControl;->isImageAdStartToShow()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5$3;->this$0:Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;

    invoke-static {v0}, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;->access$500(Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;)Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5$ImageAdWebViewClient;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5$3;->this$0:Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;

    invoke-static {v0}, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;->access$500(Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;)Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5$ImageAdWebViewClient;

    move-result-object v0

    invoke-static {v0}, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5$ImageAdWebViewClient;->access$200(Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5$ImageAdWebViewClient;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 250
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5$3;->this$0:Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;

    iget-object v0, v0, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;->mImageAdCallback:Lcom/youku/player/ad/imagead/IImageAdCallback;

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5$3;->this$0:Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;

    iget-object v0, v0, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;->mImageAdCallback:Lcom/youku/player/ad/imagead/IImageAdCallback;

    invoke-interface {v0}, Lcom/youku/player/ad/imagead/IImageAdCallback;->onAdDismiss()V

    .line 253
    :cond_0
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5$3;->this$0:Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;

    iget-object v0, v0, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5$3;->this$0:Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;

    iget-object v0, v0, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-boolean v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isPause:Z

    if-nez v0, :cond_1

    .line 255
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5$3;->this$0:Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;

    iget-object v0, v0, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->startPlayAfterImageAD()V

    .line 258
    :cond_1
    return-void
.end method
