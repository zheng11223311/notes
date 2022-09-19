.class Lcom/youku/player/ad/imagead/ImageAdDomob$2;
.super Ljava/lang/Object;
.source "ImageAdDomob.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/player/ad/imagead/ImageAdDomob;->startDomobAd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/player/ad/imagead/ImageAdDomob;


# direct methods
.method constructor <init>(Lcom/youku/player/ad/imagead/ImageAdDomob;)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lcom/youku/player/ad/imagead/ImageAdDomob$2;->this$0:Lcom/youku/player/ad/imagead/ImageAdDomob;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdDomob$2;->this$0:Lcom/youku/player/ad/imagead/ImageAdDomob;

    iget-object v0, v0, Lcom/youku/player/ad/imagead/ImageAdDomob;->mPlayerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

    invoke-interface {v0}, Lcom/youku/player/apiservice/IPlayerAdControl;->isImageAdStartToShow()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdDomob$2;->this$0:Lcom/youku/player/ad/imagead/ImageAdDomob;

    invoke-static {v0}, Lcom/youku/player/ad/imagead/ImageAdDomob;->access$100(Lcom/youku/player/ad/imagead/ImageAdDomob;)Lcom/youku/player/ad/imagead/ImageAdDomob$AdDomobPreRollListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdDomob$2;->this$0:Lcom/youku/player/ad/imagead/ImageAdDomob;

    invoke-static {v0}, Lcom/youku/player/ad/imagead/ImageAdDomob;->access$100(Lcom/youku/player/ad/imagead/ImageAdDomob;)Lcom/youku/player/ad/imagead/ImageAdDomob$AdDomobPreRollListener;

    move-result-object v0

    iget-boolean v0, v0, Lcom/youku/player/ad/imagead/ImageAdDomob$AdDomobPreRollListener;->isGetFeedBack:Z

    if-nez v0, :cond_1

    .line 150
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdDomob$2;->this$0:Lcom/youku/player/ad/imagead/ImageAdDomob;

    iget-object v0, v0, Lcom/youku/player/ad/imagead/ImageAdDomob;->mImageAdCallback:Lcom/youku/player/ad/imagead/IImageAdCallback;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdDomob$2;->this$0:Lcom/youku/player/ad/imagead/ImageAdDomob;

    iget-object v0, v0, Lcom/youku/player/ad/imagead/ImageAdDomob;->mImageAdCallback:Lcom/youku/player/ad/imagead/IImageAdCallback;

    invoke-interface {v0}, Lcom/youku/player/ad/imagead/IImageAdCallback;->onAdDismiss()V

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdDomob$2;->this$0:Lcom/youku/player/ad/imagead/ImageAdDomob;

    iget-object v0, v0, Lcom/youku/player/ad/imagead/ImageAdDomob;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdDomob$2;->this$0:Lcom/youku/player/ad/imagead/ImageAdDomob;

    iget-object v0, v0, Lcom/youku/player/ad/imagead/ImageAdDomob;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-boolean v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isPause:Z

    if-nez v0, :cond_1

    .line 155
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdDomob$2;->this$0:Lcom/youku/player/ad/imagead/ImageAdDomob;

    iget-object v0, v0, Lcom/youku/player/ad/imagead/ImageAdDomob;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->startPlayAfterImageAD()V

    .line 158
    :cond_1
    return-void
.end method
