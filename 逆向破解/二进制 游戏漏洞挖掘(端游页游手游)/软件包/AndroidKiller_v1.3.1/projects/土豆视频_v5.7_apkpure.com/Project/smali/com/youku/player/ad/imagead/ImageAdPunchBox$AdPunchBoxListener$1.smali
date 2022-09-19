.class Lcom/youku/player/ad/imagead/ImageAdPunchBox$AdPunchBoxListener$1;
.super Ljava/lang/Object;
.source "ImageAdPunchBox.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/player/ad/imagead/ImageAdPunchBox$AdPunchBoxListener;->onPresentScreen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/youku/player/ad/imagead/ImageAdPunchBox$AdPunchBoxListener;


# direct methods
.method constructor <init>(Lcom/youku/player/ad/imagead/ImageAdPunchBox$AdPunchBoxListener;)V
    .locals 0

    .prologue
    .line 178
    iput-object p1, p0, Lcom/youku/player/ad/imagead/ImageAdPunchBox$AdPunchBoxListener$1;->this$1:Lcom/youku/player/ad/imagead/ImageAdPunchBox$AdPunchBoxListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 182
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdPunchBox$AdPunchBoxListener$1;->this$1:Lcom/youku/player/ad/imagead/ImageAdPunchBox$AdPunchBoxListener;

    iget-object v0, v0, Lcom/youku/player/ad/imagead/ImageAdPunchBox$AdPunchBoxListener;->this$0:Lcom/youku/player/ad/imagead/ImageAdPunchBox;

    iget-object v0, v0, Lcom/youku/player/ad/imagead/ImageAdPunchBox;->mPlayerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdPunchBox$AdPunchBoxListener$1;->this$1:Lcom/youku/player/ad/imagead/ImageAdPunchBox$AdPunchBoxListener;

    iget-object v0, v0, Lcom/youku/player/ad/imagead/ImageAdPunchBox$AdPunchBoxListener;->this$0:Lcom/youku/player/ad/imagead/ImageAdPunchBox;

    iget-object v0, v0, Lcom/youku/player/ad/imagead/ImageAdPunchBox;->mPlayerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

    invoke-interface {v0}, Lcom/youku/player/apiservice/IPlayerAdControl;->isImageAdStartToShow()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 183
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdPunchBox$AdPunchBoxListener$1;->this$1:Lcom/youku/player/ad/imagead/ImageAdPunchBox$AdPunchBoxListener;

    iget-object v0, v0, Lcom/youku/player/ad/imagead/ImageAdPunchBox$AdPunchBoxListener;->this$0:Lcom/youku/player/ad/imagead/ImageAdPunchBox;

    iget-object v0, v0, Lcom/youku/player/ad/imagead/ImageAdPunchBox;->mImageAdCallback:Lcom/youku/player/ad/imagead/IImageAdCallback;

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdPunchBox$AdPunchBoxListener$1;->this$1:Lcom/youku/player/ad/imagead/ImageAdPunchBox$AdPunchBoxListener;

    iget-object v0, v0, Lcom/youku/player/ad/imagead/ImageAdPunchBox$AdPunchBoxListener;->this$0:Lcom/youku/player/ad/imagead/ImageAdPunchBox;

    iget-object v0, v0, Lcom/youku/player/ad/imagead/ImageAdPunchBox;->mImageAdCallback:Lcom/youku/player/ad/imagead/IImageAdCallback;

    invoke-interface {v0}, Lcom/youku/player/ad/imagead/IImageAdCallback;->onAdPresent()V

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdPunchBox$AdPunchBoxListener$1;->this$1:Lcom/youku/player/ad/imagead/ImageAdPunchBox$AdPunchBoxListener;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/youku/player/ad/imagead/ImageAdPunchBox$AdPunchBoxListener;->isGetFeedBack:Z

    .line 190
    :goto_0
    return-void

    .line 188
    :cond_1
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdPunchBox$AdPunchBoxListener$1;->this$1:Lcom/youku/player/ad/imagead/ImageAdPunchBox$AdPunchBoxListener;

    iget-object v0, v0, Lcom/youku/player/ad/imagead/ImageAdPunchBox$AdPunchBoxListener;->this$0:Lcom/youku/player/ad/imagead/ImageAdPunchBox;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/youku/player/ad/imagead/ImageAdPunchBox;->disposeAdLoss(I)V

    goto :goto_0
.end method
