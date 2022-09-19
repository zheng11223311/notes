.class Lcom/youku/player/ad/imagead/ImageAdAdsage$AdMobisageListener;
.super Ljava/lang/Object;
.source "ImageAdAdsage.java"

# interfaces
.implements Lcom/mobisage/android/MobiSageAdProductPlacementListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/player/ad/imagead/ImageAdAdsage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdMobisageListener"
.end annotation


# instance fields
.field public isGetFeedBack:Z

.field final synthetic this$0:Lcom/youku/player/ad/imagead/ImageAdAdsage;


# direct methods
.method private constructor <init>(Lcom/youku/player/ad/imagead/ImageAdAdsage;)V
    .locals 1

    .prologue
    .line 153
    iput-object p1, p0, Lcom/youku/player/ad/imagead/ImageAdAdsage$AdMobisageListener;->this$0:Lcom/youku/player/ad/imagead/ImageAdAdsage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youku/player/ad/imagead/ImageAdAdsage$AdMobisageListener;->isGetFeedBack:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/youku/player/ad/imagead/ImageAdAdsage;Lcom/youku/player/ad/imagead/ImageAdAdsage$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/youku/player/ad/imagead/ImageAdAdsage;
    .param p2, "x1"    # Lcom/youku/player/ad/imagead/ImageAdAdsage$1;

    .prologue
    .line 153
    invoke-direct {p0, p1}, Lcom/youku/player/ad/imagead/ImageAdAdsage$AdMobisageListener;-><init>(Lcom/youku/player/ad/imagead/ImageAdAdsage;)V

    return-void
.end method


# virtual methods
.method public onMobiSageProductPlacementClick(Lcom/mobisage/android/MobiSageAdProductPlacement;)V
    .locals 0
    .param p1, "arg0"    # Lcom/mobisage/android/MobiSageAdProductPlacement;

    .prologue
    .line 161
    return-void
.end method

.method public onMobiSageProductPlacementClose(Lcom/mobisage/android/MobiSageAdProductPlacement;)V
    .locals 1
    .param p1, "arg0"    # Lcom/mobisage/android/MobiSageAdProductPlacement;

    .prologue
    .line 166
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youku/player/ad/imagead/ImageAdAdsage$AdMobisageListener;->isGetFeedBack:Z

    .line 167
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdAdsage$AdMobisageListener;->this$0:Lcom/youku/player/ad/imagead/ImageAdAdsage;

    iget-object v0, v0, Lcom/youku/player/ad/imagead/ImageAdAdsage;->mImageAdCallback:Lcom/youku/player/ad/imagead/IImageAdCallback;

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdAdsage$AdMobisageListener;->this$0:Lcom/youku/player/ad/imagead/ImageAdAdsage;

    iget-object v0, v0, Lcom/youku/player/ad/imagead/ImageAdAdsage;->mImageAdCallback:Lcom/youku/player/ad/imagead/IImageAdCallback;

    invoke-interface {v0}, Lcom/youku/player/ad/imagead/IImageAdCallback;->onAdClose()V

    .line 170
    :cond_0
    return-void
.end method

.method public onMobiSageProductPlacementError(Lcom/mobisage/android/MobiSageAdProductPlacement;)V
    .locals 1
    .param p1, "arg0"    # Lcom/mobisage/android/MobiSageAdProductPlacement;

    .prologue
    .line 175
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youku/player/ad/imagead/ImageAdAdsage$AdMobisageListener;->isGetFeedBack:Z

    .line 176
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdAdsage$AdMobisageListener;->this$0:Lcom/youku/player/ad/imagead/ImageAdAdsage;

    iget-object v0, v0, Lcom/youku/player/ad/imagead/ImageAdAdsage;->mImageAdCallback:Lcom/youku/player/ad/imagead/IImageAdCallback;

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdAdsage$AdMobisageListener;->this$0:Lcom/youku/player/ad/imagead/ImageAdAdsage;

    iget-object v0, v0, Lcom/youku/player/ad/imagead/ImageAdAdsage;->mImageAdCallback:Lcom/youku/player/ad/imagead/IImageAdCallback;

    invoke-interface {v0}, Lcom/youku/player/ad/imagead/IImageAdCallback;->onAdFailed()V

    .line 179
    :cond_0
    return-void
.end method

.method public onMobiSageProductPlacementHide(Lcom/mobisage/android/MobiSageAdProductPlacement;)V
    .locals 0
    .param p1, "arg0"    # Lcom/mobisage/android/MobiSageAdProductPlacement;

    .prologue
    .line 186
    return-void
.end method

.method public onMobiSageProductPlacementHideWindow(Lcom/mobisage/android/MobiSageAdProductPlacement;)V
    .locals 0
    .param p1, "arg0"    # Lcom/mobisage/android/MobiSageAdProductPlacement;

    .prologue
    .line 193
    return-void
.end method

.method public onMobiSageProductPlacementPopupWindow(Lcom/mobisage/android/MobiSageAdProductPlacement;)V
    .locals 0
    .param p1, "arg0"    # Lcom/mobisage/android/MobiSageAdProductPlacement;

    .prologue
    .line 200
    return-void
.end method

.method public onMobiSageProductPlacementShow(Lcom/mobisage/android/MobiSageAdProductPlacement;)V
    .locals 2
    .param p1, "arg0"    # Lcom/mobisage/android/MobiSageAdProductPlacement;

    .prologue
    .line 205
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdAdsage$AdMobisageListener;->this$0:Lcom/youku/player/ad/imagead/ImageAdAdsage;

    iget-object v0, v0, Lcom/youku/player/ad/imagead/ImageAdAdsage;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/youku/player/ad/imagead/ImageAdAdsage$AdMobisageListener$1;

    invoke-direct {v1, p0}, Lcom/youku/player/ad/imagead/ImageAdAdsage$AdMobisageListener$1;-><init>(Lcom/youku/player/ad/imagead/ImageAdAdsage$AdMobisageListener;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 220
    return-void
.end method
