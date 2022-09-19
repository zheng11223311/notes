.class Lcom/youku/player/ad/imagead/ImageAdYouku$1;
.super Ljava/lang/Object;
.source "ImageAdYouku.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/player/ad/imagead/ImageAdYouku;->findView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/player/ad/imagead/ImageAdYouku;


# direct methods
.method constructor <init>(Lcom/youku/player/ad/imagead/ImageAdYouku;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/youku/player/ad/imagead/ImageAdYouku$1;->this$0:Lcom/youku/player/ad/imagead/ImageAdYouku;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdYouku$1;->this$0:Lcom/youku/player/ad/imagead/ImageAdYouku;

    iget-object v0, v0, Lcom/youku/player/ad/imagead/ImageAdYouku;->mImageAdCallback:Lcom/youku/player/ad/imagead/IImageAdCallback;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdYouku$1;->this$0:Lcom/youku/player/ad/imagead/ImageAdYouku;

    invoke-virtual {v0}, Lcom/youku/player/ad/imagead/ImageAdYouku;->dismiss()V

    .line 68
    iget-object v0, p0, Lcom/youku/player/ad/imagead/ImageAdYouku$1;->this$0:Lcom/youku/player/ad/imagead/ImageAdYouku;

    iget-object v0, v0, Lcom/youku/player/ad/imagead/ImageAdYouku;->mImageAdCallback:Lcom/youku/player/ad/imagead/IImageAdCallback;

    invoke-interface {v0}, Lcom/youku/player/ad/imagead/IImageAdCallback;->onAdClose()V

    .line 70
    :cond_0
    return-void
.end method
