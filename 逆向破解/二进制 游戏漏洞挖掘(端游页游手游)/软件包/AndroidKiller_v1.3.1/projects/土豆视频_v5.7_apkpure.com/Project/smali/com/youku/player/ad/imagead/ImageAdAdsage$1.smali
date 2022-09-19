.class Lcom/youku/player/ad/imagead/ImageAdAdsage$1;
.super Ljava/lang/Object;
.source "ImageAdAdsage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/player/ad/imagead/ImageAdAdsage;->startMobisageAd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/player/ad/imagead/ImageAdAdsage;


# direct methods
.method constructor <init>(Lcom/youku/player/ad/imagead/ImageAdAdsage;)V
    .locals 0

    .prologue
    .line 135
    iput-object p1, p0, Lcom/youku/player/ad/imagead/ImageAdAdsage$1;->this$0:Lcom/youku/player/ad/imagead/ImageAdAdsage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdAdsage$1;->this$0:Lcom/youku/player/ad/imagead/ImageAdAdsage;

    iget-object v0, v0, Lcom/youku/player/ad/imagead/ImageAdAdsage;->mPlayerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

    invoke-interface {v0}, Lcom/youku/player/apiservice/IPlayerAdControl;->isImageAdStartToShow()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdAdsage$1;->this$0:Lcom/youku/player/ad/imagead/ImageAdAdsage;

    invoke-static {v0}, Lcom/youku/player/ad/imagead/ImageAdAdsage;->access$100(Lcom/youku/player/ad/imagead/ImageAdAdsage;)Lcom/youku/player/ad/imagead/ImageAdAdsage$AdMobisageListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdAdsage$1;->this$0:Lcom/youku/player/ad/imagead/ImageAdAdsage;

    invoke-static {v0}, Lcom/youku/player/ad/imagead/ImageAdAdsage;->access$100(Lcom/youku/player/ad/imagead/ImageAdAdsage;)Lcom/youku/player/ad/imagead/ImageAdAdsage$AdMobisageListener;

    move-result-object v0

    iget-boolean v0, v0, Lcom/youku/player/ad/imagead/ImageAdAdsage$AdMobisageListener;->isGetFeedBack:Z

    if-nez v0, :cond_1

    .line 141
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdAdsage$1;->this$0:Lcom/youku/player/ad/imagead/ImageAdAdsage;

    iget-object v0, v0, Lcom/youku/player/ad/imagead/ImageAdAdsage;->mImageAdCallback:Lcom/youku/player/ad/imagead/IImageAdCallback;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdAdsage$1;->this$0:Lcom/youku/player/ad/imagead/ImageAdAdsage;

    iget-object v0, v0, Lcom/youku/player/ad/imagead/ImageAdAdsage;->mImageAdCallback:Lcom/youku/player/ad/imagead/IImageAdCallback;

    invoke-interface {v0}, Lcom/youku/player/ad/imagead/IImageAdCallback;->onAdDismiss()V

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdAdsage$1;->this$0:Lcom/youku/player/ad/imagead/ImageAdAdsage;

    iget-object v0, v0, Lcom/youku/player/ad/imagead/ImageAdAdsage;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdAdsage$1;->this$0:Lcom/youku/player/ad/imagead/ImageAdAdsage;

    iget-object v0, v0, Lcom/youku/player/ad/imagead/ImageAdAdsage;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-boolean v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isPause:Z

    if-nez v0, :cond_1

    .line 146
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdAdsage$1;->this$0:Lcom/youku/player/ad/imagead/ImageAdAdsage;

    iget-object v0, v0, Lcom/youku/player/ad/imagead/ImageAdAdsage;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->startPlayAfterImageAD()V

    .line 149
    :cond_1
    return-void
.end method
