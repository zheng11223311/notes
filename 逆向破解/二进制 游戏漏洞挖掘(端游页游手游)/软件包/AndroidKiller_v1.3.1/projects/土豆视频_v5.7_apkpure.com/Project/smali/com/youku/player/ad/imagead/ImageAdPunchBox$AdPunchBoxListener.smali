.class Lcom/youku/player/ad/imagead/ImageAdPunchBox$AdPunchBoxListener;
.super Ljava/lang/Object;
.source "ImageAdPunchBox.java"

# interfaces
.implements Lcom/punchbox/listener/AdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/player/ad/imagead/ImageAdPunchBox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdPunchBoxListener"
.end annotation


# instance fields
.field public isGetFeedBack:Z

.field final synthetic this$0:Lcom/youku/player/ad/imagead/ImageAdPunchBox;


# direct methods
.method private constructor <init>(Lcom/youku/player/ad/imagead/ImageAdPunchBox;)V
    .locals 1

    .prologue
    .line 147
    iput-object p1, p0, Lcom/youku/player/ad/imagead/ImageAdPunchBox$AdPunchBoxListener;->this$0:Lcom/youku/player/ad/imagead/ImageAdPunchBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youku/player/ad/imagead/ImageAdPunchBox$AdPunchBoxListener;->isGetFeedBack:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/youku/player/ad/imagead/ImageAdPunchBox;Lcom/youku/player/ad/imagead/ImageAdPunchBox$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/youku/player/ad/imagead/ImageAdPunchBox;
    .param p2, "x1"    # Lcom/youku/player/ad/imagead/ImageAdPunchBox$1;

    .prologue
    .line 147
    invoke-direct {p0, p1}, Lcom/youku/player/ad/imagead/ImageAdPunchBox$AdPunchBoxListener;-><init>(Lcom/youku/player/ad/imagead/ImageAdPunchBox;)V

    return-void
.end method


# virtual methods
.method public onDismissScreen()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 152
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdPunchBox$AdPunchBoxListener;->this$0:Lcom/youku/player/ad/imagead/ImageAdPunchBox;

    iget-object v0, v0, Lcom/youku/player/ad/imagead/ImageAdPunchBox;->mPlayerUiControl:Lcom/youku/player/apiservice/IPlayerUiControl;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdPunchBox$AdPunchBoxListener;->this$0:Lcom/youku/player/ad/imagead/ImageAdPunchBox;

    iget-object v0, v0, Lcom/youku/player/ad/imagead/ImageAdPunchBox;->mPlayerUiControl:Lcom/youku/player/apiservice/IPlayerUiControl;

    invoke-interface {v0}, Lcom/youku/player/apiservice/IPlayerUiControl;->isOnPause()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 153
    iput-boolean v1, p0, Lcom/youku/player/ad/imagead/ImageAdPunchBox$AdPunchBoxListener;->isGetFeedBack:Z

    .line 154
    invoke-static {}, Lcom/youku/player/Track;->onImageAdEnd()V

    .line 165
    :cond_0
    :goto_0
    return-void

    .line 158
    :cond_1
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdPunchBox$AdPunchBoxListener;->this$0:Lcom/youku/player/ad/imagead/ImageAdPunchBox;

    iget-object v0, v0, Lcom/youku/player/ad/imagead/ImageAdPunchBox;->mPlayerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

    invoke-interface {v0}, Lcom/youku/player/apiservice/IPlayerAdControl;->isImageAdShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    iput-boolean v1, p0, Lcom/youku/player/ad/imagead/ImageAdPunchBox$AdPunchBoxListener;->isGetFeedBack:Z

    .line 161
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdPunchBox$AdPunchBoxListener;->this$0:Lcom/youku/player/ad/imagead/ImageAdPunchBox;

    iget-object v0, v0, Lcom/youku/player/ad/imagead/ImageAdPunchBox;->mImageAdCallback:Lcom/youku/player/ad/imagead/IImageAdCallback;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdPunchBox$AdPunchBoxListener;->this$0:Lcom/youku/player/ad/imagead/ImageAdPunchBox;

    iget-object v0, v0, Lcom/youku/player/ad/imagead/ImageAdPunchBox;->mImageAdCallback:Lcom/youku/player/ad/imagead/IImageAdCallback;

    invoke-interface {v0}, Lcom/youku/player/ad/imagead/IImageAdCallback;->onAdClose()V

    goto :goto_0
.end method

.method public onFailedToReceiveAd(Lcom/punchbox/exception/PBException;)V
    .locals 2
    .param p1, "arg0"    # Lcom/punchbox/exception/PBException;

    .prologue
    .line 169
    sget-object v0, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    const-string v1, "punchbox onFailedToReceiveAd"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdPunchBox$AdPunchBoxListener;->this$0:Lcom/youku/player/ad/imagead/ImageAdPunchBox;

    iget-object v0, v0, Lcom/youku/player/ad/imagead/ImageAdPunchBox;->mImageAdCallback:Lcom/youku/player/ad/imagead/IImageAdCallback;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdPunchBox$AdPunchBoxListener;->this$0:Lcom/youku/player/ad/imagead/ImageAdPunchBox;

    iget-object v0, v0, Lcom/youku/player/ad/imagead/ImageAdPunchBox;->mImageAdCallback:Lcom/youku/player/ad/imagead/IImageAdCallback;

    invoke-interface {v0}, Lcom/youku/player/ad/imagead/IImageAdCallback;->onAdFailed()V

    .line 173
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youku/player/ad/imagead/ImageAdPunchBox$AdPunchBoxListener;->isGetFeedBack:Z

    .line 174
    return-void
.end method

.method public onPresentScreen()V
    .locals 2

    .prologue
    .line 178
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdPunchBox$AdPunchBoxListener;->this$0:Lcom/youku/player/ad/imagead/ImageAdPunchBox;

    iget-object v0, v0, Lcom/youku/player/ad/imagead/ImageAdPunchBox;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/youku/player/ad/imagead/ImageAdPunchBox$AdPunchBoxListener$1;

    invoke-direct {v1, p0}, Lcom/youku/player/ad/imagead/ImageAdPunchBox$AdPunchBoxListener$1;-><init>(Lcom/youku/player/ad/imagead/ImageAdPunchBox$AdPunchBoxListener;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 192
    return-void
.end method

.method public onReceiveAd()V
    .locals 4

    .prologue
    .line 197
    :try_start_0
    iget-object v1, p0, Lcom/youku/player/ad/imagead/ImageAdPunchBox$AdPunchBoxListener;->this$0:Lcom/youku/player/ad/imagead/ImageAdPunchBox;

    invoke-static {v1}, Lcom/youku/player/ad/imagead/ImageAdPunchBox;->access$200(Lcom/youku/player/ad/imagead/ImageAdPunchBox;)Lcom/punchbox/ads/InterstitialAd;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/youku/player/ad/imagead/ImageAdPunchBox$AdPunchBoxListener;->this$0:Lcom/youku/player/ad/imagead/ImageAdPunchBox;

    invoke-static {v1}, Lcom/youku/player/ad/imagead/ImageAdPunchBox;->access$200(Lcom/youku/player/ad/imagead/ImageAdPunchBox;)Lcom/punchbox/ads/InterstitialAd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/punchbox/ads/InterstitialAd;->isReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 198
    iget-object v1, p0, Lcom/youku/player/ad/imagead/ImageAdPunchBox$AdPunchBoxListener;->this$0:Lcom/youku/player/ad/imagead/ImageAdPunchBox;

    invoke-static {v1}, Lcom/youku/player/ad/imagead/ImageAdPunchBox;->access$200(Lcom/youku/player/ad/imagead/ImageAdPunchBox;)Lcom/punchbox/ads/InterstitialAd;

    move-result-object v1

    iget-object v2, p0, Lcom/youku/player/ad/imagead/ImageAdPunchBox$AdPunchBoxListener;->this$0:Lcom/youku/player/ad/imagead/ImageAdPunchBox;

    invoke-static {v2}, Lcom/youku/player/ad/imagead/ImageAdPunchBox;->access$300(Lcom/youku/player/ad/imagead/ImageAdPunchBox;)Landroid/widget/LinearLayout;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/punchbox/ads/InterstitialAd;->show(Landroid/view/ViewGroup;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/punchbox/exception/PBException; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    :cond_0
    :goto_0
    return-void

    .line 200
    :catch_0
    move-exception v0

    .line 201
    .local v0, "e":Lcom/punchbox/exception/PBException;
    iget-object v1, p0, Lcom/youku/player/ad/imagead/ImageAdPunchBox$AdPunchBoxListener;->this$0:Lcom/youku/player/ad/imagead/ImageAdPunchBox;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/youku/player/ad/imagead/ImageAdPunchBox;->disposeAdLoss(I)V

    .line 203
    invoke-virtual {v0}, Lcom/punchbox/exception/PBException;->printStackTrace()V

    goto :goto_0
.end method
