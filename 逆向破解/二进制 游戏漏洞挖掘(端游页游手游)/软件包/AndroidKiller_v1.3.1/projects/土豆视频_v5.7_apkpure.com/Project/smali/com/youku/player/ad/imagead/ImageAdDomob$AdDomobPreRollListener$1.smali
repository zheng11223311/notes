.class Lcom/youku/player/ad/imagead/ImageAdDomob$AdDomobPreRollListener$1;
.super Ljava/lang/Object;
.source "ImageAdDomob.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/player/ad/imagead/ImageAdDomob$AdDomobPreRollListener;->onPreRollAdPresent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/youku/player/ad/imagead/ImageAdDomob$AdDomobPreRollListener;


# direct methods
.method constructor <init>(Lcom/youku/player/ad/imagead/ImageAdDomob$AdDomobPreRollListener;)V
    .locals 0

    .prologue
    .line 175
    iput-object p1, p0, Lcom/youku/player/ad/imagead/ImageAdDomob$AdDomobPreRollListener$1;->this$1:Lcom/youku/player/ad/imagead/ImageAdDomob$AdDomobPreRollListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 179
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdDomob$AdDomobPreRollListener$1;->this$1:Lcom/youku/player/ad/imagead/ImageAdDomob$AdDomobPreRollListener;

    iget-object v0, v0, Lcom/youku/player/ad/imagead/ImageAdDomob$AdDomobPreRollListener;->this$0:Lcom/youku/player/ad/imagead/ImageAdDomob;

    iget-object v0, v0, Lcom/youku/player/ad/imagead/ImageAdDomob;->mPlayerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdDomob$AdDomobPreRollListener$1;->this$1:Lcom/youku/player/ad/imagead/ImageAdDomob$AdDomobPreRollListener;

    iget-object v0, v0, Lcom/youku/player/ad/imagead/ImageAdDomob$AdDomobPreRollListener;->this$0:Lcom/youku/player/ad/imagead/ImageAdDomob;

    iget-object v0, v0, Lcom/youku/player/ad/imagead/ImageAdDomob;->mPlayerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

    invoke-interface {v0}, Lcom/youku/player/apiservice/IPlayerAdControl;->isImageAdStartToShow()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 180
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdDomob$AdDomobPreRollListener$1;->this$1:Lcom/youku/player/ad/imagead/ImageAdDomob$AdDomobPreRollListener;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/youku/player/ad/imagead/ImageAdDomob$AdDomobPreRollListener;->isGetFeedBack:Z

    .line 181
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdDomob$AdDomobPreRollListener$1;->this$1:Lcom/youku/player/ad/imagead/ImageAdDomob$AdDomobPreRollListener;

    iget-object v0, v0, Lcom/youku/player/ad/imagead/ImageAdDomob$AdDomobPreRollListener;->this$0:Lcom/youku/player/ad/imagead/ImageAdDomob;

    iget-object v0, v0, Lcom/youku/player/ad/imagead/ImageAdDomob;->mImageAdCallback:Lcom/youku/player/ad/imagead/IImageAdCallback;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdDomob$AdDomobPreRollListener$1;->this$1:Lcom/youku/player/ad/imagead/ImageAdDomob$AdDomobPreRollListener;

    iget-object v0, v0, Lcom/youku/player/ad/imagead/ImageAdDomob$AdDomobPreRollListener;->this$0:Lcom/youku/player/ad/imagead/ImageAdDomob;

    iget-object v0, v0, Lcom/youku/player/ad/imagead/ImageAdDomob;->mImageAdCallback:Lcom/youku/player/ad/imagead/IImageAdCallback;

    invoke-interface {v0}, Lcom/youku/player/ad/imagead/IImageAdCallback;->onAdPresent()V

    .line 187
    :cond_0
    :goto_0
    return-void

    .line 185
    :cond_1
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdDomob$AdDomobPreRollListener$1;->this$1:Lcom/youku/player/ad/imagead/ImageAdDomob$AdDomobPreRollListener;

    iget-object v0, v0, Lcom/youku/player/ad/imagead/ImageAdDomob$AdDomobPreRollListener;->this$0:Lcom/youku/player/ad/imagead/ImageAdDomob;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/youku/player/ad/imagead/ImageAdDomob;->disposeAdLoss(I)V

    goto :goto_0
.end method
