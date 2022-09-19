.class Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5$1;
.super Ljava/lang/Object;
.source "ImageAdYoukuHtml5.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;->findView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;


# direct methods
.method constructor <init>(Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5$1;->this$0:Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5$1;->this$0:Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;

    iget-object v0, v0, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;->mImageAdCallback:Lcom/youku/player/ad/imagead/IImageAdCallback;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5$1;->this$0:Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;

    invoke-virtual {v0}, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;->dismiss()V

    .line 59
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5$1;->this$0:Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;

    iget-object v0, v0, Lcom/youku/player/ad/imagead/ImageAdYoukuHtml5;->mImageAdCallback:Lcom/youku/player/ad/imagead/IImageAdCallback;

    invoke-interface {v0}, Lcom/youku/player/ad/imagead/IImageAdCallback;->onAdClose()V

    .line 61
    :cond_0
    return-void
.end method
