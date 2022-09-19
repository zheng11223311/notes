.class Lcom/youku/player/ad/pausead/PauseAdAdsage$AdMobisageListener;
.super Ljava/lang/Object;
.source "PauseAdAdsage.java"

# interfaces
.implements Lcom/mobisage/android/MobiSageAdProductPlacementListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/player/ad/pausead/PauseAdAdsage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdMobisageListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/player/ad/pausead/PauseAdAdsage;


# direct methods
.method private constructor <init>(Lcom/youku/player/ad/pausead/PauseAdAdsage;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/youku/player/ad/pausead/PauseAdAdsage$AdMobisageListener;->this$0:Lcom/youku/player/ad/pausead/PauseAdAdsage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/youku/player/ad/pausead/PauseAdAdsage;Lcom/youku/player/ad/pausead/PauseAdAdsage$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/youku/player/ad/pausead/PauseAdAdsage;
    .param p2, "x1"    # Lcom/youku/player/ad/pausead/PauseAdAdsage$1;

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/youku/player/ad/pausead/PauseAdAdsage$AdMobisageListener;-><init>(Lcom/youku/player/ad/pausead/PauseAdAdsage;)V

    return-void
.end method


# virtual methods
.method public onMobiSageProductPlacementClick(Lcom/mobisage/android/MobiSageAdProductPlacement;)V
    .locals 0
    .param p1, "arg0"    # Lcom/mobisage/android/MobiSageAdProductPlacement;

    .prologue
    .line 103
    return-void
.end method

.method public onMobiSageProductPlacementClose(Lcom/mobisage/android/MobiSageAdProductPlacement;)V
    .locals 1
    .param p1, "arg0"    # Lcom/mobisage/android/MobiSageAdProductPlacement;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/youku/player/ad/pausead/PauseAdAdsage$AdMobisageListener;->this$0:Lcom/youku/player/ad/pausead/PauseAdAdsage;

    iget-object v0, v0, Lcom/youku/player/ad/pausead/PauseAdAdsage;->mPauseAdCallback:Lcom/youku/player/ad/pausead/IPauseAdCallback;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/youku/player/ad/pausead/PauseAdAdsage$AdMobisageListener;->this$0:Lcom/youku/player/ad/pausead/PauseAdAdsage;

    iget-object v0, v0, Lcom/youku/player/ad/pausead/PauseAdAdsage;->mPauseAdCallback:Lcom/youku/player/ad/pausead/IPauseAdCallback;

    invoke-interface {v0}, Lcom/youku/player/ad/pausead/IPauseAdCallback;->onPauseAdClose()V

    .line 111
    :cond_0
    return-void
.end method

.method public onMobiSageProductPlacementError(Lcom/mobisage/android/MobiSageAdProductPlacement;)V
    .locals 1
    .param p1, "arg0"    # Lcom/mobisage/android/MobiSageAdProductPlacement;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/youku/player/ad/pausead/PauseAdAdsage$AdMobisageListener;->this$0:Lcom/youku/player/ad/pausead/PauseAdAdsage;

    iget-object v0, v0, Lcom/youku/player/ad/pausead/PauseAdAdsage;->mPauseAdCallback:Lcom/youku/player/ad/pausead/IPauseAdCallback;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/youku/player/ad/pausead/PauseAdAdsage$AdMobisageListener;->this$0:Lcom/youku/player/ad/pausead/PauseAdAdsage;

    iget-object v0, v0, Lcom/youku/player/ad/pausead/PauseAdAdsage;->mPauseAdCallback:Lcom/youku/player/ad/pausead/IPauseAdCallback;

    invoke-interface {v0}, Lcom/youku/player/ad/pausead/IPauseAdCallback;->onPauseAdFailed()V

    .line 119
    :cond_0
    return-void
.end method

.method public onMobiSageProductPlacementHide(Lcom/mobisage/android/MobiSageAdProductPlacement;)V
    .locals 0
    .param p1, "arg0"    # Lcom/mobisage/android/MobiSageAdProductPlacement;

    .prologue
    .line 126
    return-void
.end method

.method public onMobiSageProductPlacementHideWindow(Lcom/mobisage/android/MobiSageAdProductPlacement;)V
    .locals 0
    .param p1, "arg0"    # Lcom/mobisage/android/MobiSageAdProductPlacement;

    .prologue
    .line 133
    return-void
.end method

.method public onMobiSageProductPlacementPopupWindow(Lcom/mobisage/android/MobiSageAdProductPlacement;)V
    .locals 0
    .param p1, "arg0"    # Lcom/mobisage/android/MobiSageAdProductPlacement;

    .prologue
    .line 140
    return-void
.end method

.method public onMobiSageProductPlacementShow(Lcom/mobisage/android/MobiSageAdProductPlacement;)V
    .locals 2
    .param p1, "arg0"    # Lcom/mobisage/android/MobiSageAdProductPlacement;

    .prologue
    .line 145
    iget-object v0, p0, Lcom/youku/player/ad/pausead/PauseAdAdsage$AdMobisageListener;->this$0:Lcom/youku/player/ad/pausead/PauseAdAdsage;

    iget-object v0, v0, Lcom/youku/player/ad/pausead/PauseAdAdsage;->mPauseAdCallback:Lcom/youku/player/ad/pausead/IPauseAdCallback;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/youku/player/ad/pausead/PauseAdAdsage$AdMobisageListener;->this$0:Lcom/youku/player/ad/pausead/PauseAdAdsage;

    iget-object v0, v0, Lcom/youku/player/ad/pausead/PauseAdAdsage;->mPauseAdCallback:Lcom/youku/player/ad/pausead/IPauseAdCallback;

    iget-object v1, p0, Lcom/youku/player/ad/pausead/PauseAdAdsage$AdMobisageListener;->this$0:Lcom/youku/player/ad/pausead/PauseAdAdsage;

    iget v1, v1, Lcom/youku/player/ad/pausead/PauseAdAdsage;->mRequest:I

    invoke-interface {v0, v1}, Lcom/youku/player/ad/pausead/IPauseAdCallback;->onPauseAdPresent(I)V

    .line 148
    :cond_0
    return-void
.end method
