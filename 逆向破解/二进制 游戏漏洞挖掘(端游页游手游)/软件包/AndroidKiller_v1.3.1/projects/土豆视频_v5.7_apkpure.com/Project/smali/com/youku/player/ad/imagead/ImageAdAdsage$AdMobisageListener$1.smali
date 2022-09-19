.class Lcom/youku/player/ad/imagead/ImageAdAdsage$AdMobisageListener$1;
.super Ljava/lang/Object;
.source "ImageAdAdsage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/player/ad/imagead/ImageAdAdsage$AdMobisageListener;->onMobiSageProductPlacementShow(Lcom/mobisage/android/MobiSageAdProductPlacement;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/youku/player/ad/imagead/ImageAdAdsage$AdMobisageListener;


# direct methods
.method constructor <init>(Lcom/youku/player/ad/imagead/ImageAdAdsage$AdMobisageListener;)V
    .locals 0

    .prologue
    .line 205
    iput-object p1, p0, Lcom/youku/player/ad/imagead/ImageAdAdsage$AdMobisageListener$1;->this$1:Lcom/youku/player/ad/imagead/ImageAdAdsage$AdMobisageListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 209
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdAdsage$AdMobisageListener$1;->this$1:Lcom/youku/player/ad/imagead/ImageAdAdsage$AdMobisageListener;

    iget-object v0, v0, Lcom/youku/player/ad/imagead/ImageAdAdsage$AdMobisageListener;->this$0:Lcom/youku/player/ad/imagead/ImageAdAdsage;

    iget-object v0, v0, Lcom/youku/player/ad/imagead/ImageAdAdsage;->mPlayerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdAdsage$AdMobisageListener$1;->this$1:Lcom/youku/player/ad/imagead/ImageAdAdsage$AdMobisageListener;

    iget-object v0, v0, Lcom/youku/player/ad/imagead/ImageAdAdsage$AdMobisageListener;->this$0:Lcom/youku/player/ad/imagead/ImageAdAdsage;

    iget-object v0, v0, Lcom/youku/player/ad/imagead/ImageAdAdsage;->mPlayerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

    invoke-interface {v0}, Lcom/youku/player/apiservice/IPlayerAdControl;->isImageAdStartToShow()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 210
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdAdsage$AdMobisageListener$1;->this$1:Lcom/youku/player/ad/imagead/ImageAdAdsage$AdMobisageListener;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/youku/player/ad/imagead/ImageAdAdsage$AdMobisageListener;->isGetFeedBack:Z

    .line 211
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdAdsage$AdMobisageListener$1;->this$1:Lcom/youku/player/ad/imagead/ImageAdAdsage$AdMobisageListener;

    iget-object v0, v0, Lcom/youku/player/ad/imagead/ImageAdAdsage$AdMobisageListener;->this$0:Lcom/youku/player/ad/imagead/ImageAdAdsage;

    iget-object v0, v0, Lcom/youku/player/ad/imagead/ImageAdAdsage;->mImageAdCallback:Lcom/youku/player/ad/imagead/IImageAdCallback;

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdAdsage$AdMobisageListener$1;->this$1:Lcom/youku/player/ad/imagead/ImageAdAdsage$AdMobisageListener;

    iget-object v0, v0, Lcom/youku/player/ad/imagead/ImageAdAdsage$AdMobisageListener;->this$0:Lcom/youku/player/ad/imagead/ImageAdAdsage;

    iget-object v0, v0, Lcom/youku/player/ad/imagead/ImageAdAdsage;->mImageAdCallback:Lcom/youku/player/ad/imagead/IImageAdCallback;

    invoke-interface {v0}, Lcom/youku/player/ad/imagead/IImageAdCallback;->onAdPresent()V

    .line 217
    :cond_0
    :goto_0
    return-void

    .line 215
    :cond_1
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdAdsage$AdMobisageListener$1;->this$1:Lcom/youku/player/ad/imagead/ImageAdAdsage$AdMobisageListener;

    iget-object v0, v0, Lcom/youku/player/ad/imagead/ImageAdAdsage$AdMobisageListener;->this$0:Lcom/youku/player/ad/imagead/ImageAdAdsage;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/youku/player/ad/imagead/ImageAdAdsage;->disposeAdLoss(I)V

    goto :goto_0
.end method
