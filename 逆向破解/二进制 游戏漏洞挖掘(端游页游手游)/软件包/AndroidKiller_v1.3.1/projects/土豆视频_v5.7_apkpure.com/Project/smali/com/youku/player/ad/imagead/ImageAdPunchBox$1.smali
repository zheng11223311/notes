.class Lcom/youku/player/ad/imagead/ImageAdPunchBox$1;
.super Ljava/lang/Object;
.source "ImageAdPunchBox.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/player/ad/imagead/ImageAdPunchBox;->startPunchBoxAd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/player/ad/imagead/ImageAdPunchBox;


# direct methods
.method constructor <init>(Lcom/youku/player/ad/imagead/ImageAdPunchBox;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lcom/youku/player/ad/imagead/ImageAdPunchBox$1;->this$0:Lcom/youku/player/ad/imagead/ImageAdPunchBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdPunchBox$1;->this$0:Lcom/youku/player/ad/imagead/ImageAdPunchBox;

    iget-object v0, v0, Lcom/youku/player/ad/imagead/ImageAdPunchBox;->mPlayerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

    invoke-interface {v0}, Lcom/youku/player/apiservice/IPlayerAdControl;->isImageAdStartToShow()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdPunchBox$1;->this$0:Lcom/youku/player/ad/imagead/ImageAdPunchBox;

    invoke-static {v0}, Lcom/youku/player/ad/imagead/ImageAdPunchBox;->access$100(Lcom/youku/player/ad/imagead/ImageAdPunchBox;)Lcom/youku/player/ad/imagead/ImageAdPunchBox$AdPunchBoxListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdPunchBox$1;->this$0:Lcom/youku/player/ad/imagead/ImageAdPunchBox;

    invoke-static {v0}, Lcom/youku/player/ad/imagead/ImageAdPunchBox;->access$100(Lcom/youku/player/ad/imagead/ImageAdPunchBox;)Lcom/youku/player/ad/imagead/ImageAdPunchBox$AdPunchBoxListener;

    move-result-object v0

    iget-boolean v0, v0, Lcom/youku/player/ad/imagead/ImageAdPunchBox$AdPunchBoxListener;->isGetFeedBack:Z

    if-nez v0, :cond_1

    .line 135
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdPunchBox$1;->this$0:Lcom/youku/player/ad/imagead/ImageAdPunchBox;

    iget-object v0, v0, Lcom/youku/player/ad/imagead/ImageAdPunchBox;->mImageAdCallback:Lcom/youku/player/ad/imagead/IImageAdCallback;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdPunchBox$1;->this$0:Lcom/youku/player/ad/imagead/ImageAdPunchBox;

    iget-object v0, v0, Lcom/youku/player/ad/imagead/ImageAdPunchBox;->mImageAdCallback:Lcom/youku/player/ad/imagead/IImageAdCallback;

    invoke-interface {v0}, Lcom/youku/player/ad/imagead/IImageAdCallback;->onAdDismiss()V

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdPunchBox$1;->this$0:Lcom/youku/player/ad/imagead/ImageAdPunchBox;

    iget-object v0, v0, Lcom/youku/player/ad/imagead/ImageAdPunchBox;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdPunchBox$1;->this$0:Lcom/youku/player/ad/imagead/ImageAdPunchBox;

    iget-object v0, v0, Lcom/youku/player/ad/imagead/ImageAdPunchBox;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-boolean v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isPause:Z

    if-nez v0, :cond_1

    .line 140
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdPunchBox$1;->this$0:Lcom/youku/player/ad/imagead/ImageAdPunchBox;

    iget-object v0, v0, Lcom/youku/player/ad/imagead/ImageAdPunchBox;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->startPlayAfterImageAD()V

    .line 143
    :cond_1
    return-void
.end method
