.class Lcom/youku/player/ad/imagead/ImageAdDomob$AdDomobPreRollListener;
.super Ljava/lang/Object;
.source "ImageAdDomob.java"

# interfaces
.implements Lcn/domob/android/ads/PreRollAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/player/ad/imagead/ImageAdDomob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdDomobPreRollListener"
.end annotation


# instance fields
.field public isGetFeedBack:Z

.field final synthetic this$0:Lcom/youku/player/ad/imagead/ImageAdDomob;


# direct methods
.method private constructor <init>(Lcom/youku/player/ad/imagead/ImageAdDomob;)V
    .locals 1

    .prologue
    .line 162
    iput-object p1, p0, Lcom/youku/player/ad/imagead/ImageAdDomob$AdDomobPreRollListener;->this$0:Lcom/youku/player/ad/imagead/ImageAdDomob;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youku/player/ad/imagead/ImageAdDomob$AdDomobPreRollListener;->isGetFeedBack:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/youku/player/ad/imagead/ImageAdDomob;Lcom/youku/player/ad/imagead/ImageAdDomob$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/youku/player/ad/imagead/ImageAdDomob;
    .param p2, "x1"    # Lcom/youku/player/ad/imagead/ImageAdDomob$1;

    .prologue
    .line 162
    invoke-direct {p0, p1}, Lcom/youku/player/ad/imagead/ImageAdDomob$AdDomobPreRollListener;-><init>(Lcom/youku/player/ad/imagead/ImageAdDomob;)V

    return-void
.end method


# virtual methods
.method public onLandingPageClose()V
    .locals 2

    .prologue
    .line 224
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdDomob$AdDomobPreRollListener;->this$0:Lcom/youku/player/ad/imagead/ImageAdDomob;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/youku/player/ad/imagead/ImageAdDomob;->access$202(Lcom/youku/player/ad/imagead/ImageAdDomob;Z)Z

    .line 225
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youku/player/ad/imagead/ImageAdDomob$AdDomobPreRollListener;->isGetFeedBack:Z

    .line 226
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdDomob$AdDomobPreRollListener;->this$0:Lcom/youku/player/ad/imagead/ImageAdDomob;

    iget-object v0, v0, Lcom/youku/player/ad/imagead/ImageAdDomob;->mImageAdCallback:Lcom/youku/player/ad/imagead/IImageAdCallback;

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdDomob$AdDomobPreRollListener;->this$0:Lcom/youku/player/ad/imagead/ImageAdDomob;

    iget-object v0, v0, Lcom/youku/player/ad/imagead/ImageAdDomob;->mImageAdCallback:Lcom/youku/player/ad/imagead/IImageAdCallback;

    invoke-interface {v0}, Lcom/youku/player/ad/imagead/IImageAdCallback;->onAdClose()V

    .line 229
    :cond_0
    return-void
.end method

.method public onLandingPageOpen()V
    .locals 2

    .prologue
    .line 219
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdDomob$AdDomobPreRollListener;->this$0:Lcom/youku/player/ad/imagead/ImageAdDomob;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/youku/player/ad/imagead/ImageAdDomob;->access$202(Lcom/youku/player/ad/imagead/ImageAdDomob;Z)Z

    .line 220
    return-void
.end method

.method public onPreRollAdClicked()V
    .locals 0

    .prologue
    .line 215
    return-void
.end method

.method public onPreRollAdDismiss()V
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdDomob$AdDomobPreRollListener;->this$0:Lcom/youku/player/ad/imagead/ImageAdDomob;

    iget-object v0, v0, Lcom/youku/player/ad/imagead/ImageAdDomob;->mPlayerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

    invoke-interface {v0}, Lcom/youku/player/apiservice/IPlayerAdControl;->isImageAdShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youku/player/ad/imagead/ImageAdDomob$AdDomobPreRollListener;->isGetFeedBack:Z

    .line 207
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdDomob$AdDomobPreRollListener;->this$0:Lcom/youku/player/ad/imagead/ImageAdDomob;

    iget-object v0, v0, Lcom/youku/player/ad/imagead/ImageAdDomob;->mImageAdCallback:Lcom/youku/player/ad/imagead/IImageAdCallback;

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdDomob$AdDomobPreRollListener;->this$0:Lcom/youku/player/ad/imagead/ImageAdDomob;

    iget-object v0, v0, Lcom/youku/player/ad/imagead/ImageAdDomob;->mImageAdCallback:Lcom/youku/player/ad/imagead/IImageAdCallback;

    invoke-interface {v0}, Lcom/youku/player/ad/imagead/IImageAdCallback;->onAdClose()V

    .line 211
    :cond_0
    return-void
.end method

.method public onPreRollAdFailed(Lcn/domob/android/ads/AdManager$ErrorCode;)V
    .locals 1
    .param p1, "code"    # Lcn/domob/android/ads/AdManager$ErrorCode;

    .prologue
    .line 197
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youku/player/ad/imagead/ImageAdDomob$AdDomobPreRollListener;->isGetFeedBack:Z

    .line 198
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdDomob$AdDomobPreRollListener;->this$0:Lcom/youku/player/ad/imagead/ImageAdDomob;

    iget-object v0, v0, Lcom/youku/player/ad/imagead/ImageAdDomob;->mImageAdCallback:Lcom/youku/player/ad/imagead/IImageAdCallback;

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdDomob$AdDomobPreRollListener;->this$0:Lcom/youku/player/ad/imagead/ImageAdDomob;

    iget-object v0, v0, Lcom/youku/player/ad/imagead/ImageAdDomob;->mImageAdCallback:Lcom/youku/player/ad/imagead/IImageAdCallback;

    invoke-interface {v0}, Lcom/youku/player/ad/imagead/IImageAdCallback;->onAdFailed()V

    .line 201
    :cond_0
    return-void
.end method

.method public onPreRollAdLeaveApplication()V
    .locals 0

    .prologue
    .line 193
    return-void
.end method

.method public onPreRollAdPresent()V
    .locals 2

    .prologue
    .line 175
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdDomob$AdDomobPreRollListener;->this$0:Lcom/youku/player/ad/imagead/ImageAdDomob;

    iget-object v0, v0, Lcom/youku/player/ad/imagead/ImageAdDomob;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/youku/player/ad/imagead/ImageAdDomob$AdDomobPreRollListener$1;

    invoke-direct {v1, p0}, Lcom/youku/player/ad/imagead/ImageAdDomob$AdDomobPreRollListener$1;-><init>(Lcom/youku/player/ad/imagead/ImageAdDomob$AdDomobPreRollListener;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 189
    return-void
.end method

.method public onPreRollAdReady()V
    .locals 0

    .prologue
    .line 171
    return-void
.end method

.method public onPreRollAdStartLoadData()V
    .locals 0

    .prologue
    .line 167
    return-void
.end method
