.class Lcom/youku/player/ad/pausead/PauseAdYouku$2$2;
.super Ljava/lang/Object;
.source "PauseAdYouku.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/player/ad/pausead/PauseAdYouku$2;->onLoadingComplete(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/youku/player/ad/pausead/PauseAdYouku$2;

.field final synthetic val$image:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/youku/player/ad/pausead/PauseAdYouku$2;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 166
    iput-object p1, p0, Lcom/youku/player/ad/pausead/PauseAdYouku$2$2;->this$1:Lcom/youku/player/ad/pausead/PauseAdYouku$2;

    iput-object p2, p0, Lcom/youku/player/ad/pausead/PauseAdYouku$2$2;->val$image:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 169
    iget-object v0, p0, Lcom/youku/player/ad/pausead/PauseAdYouku$2$2;->this$1:Lcom/youku/player/ad/pausead/PauseAdYouku$2;

    iget-object v0, v0, Lcom/youku/player/ad/pausead/PauseAdYouku$2;->this$0:Lcom/youku/player/ad/pausead/PauseAdYouku;

    invoke-static {v0}, Lcom/youku/player/ad/pausead/PauseAdYouku;->access$400(Lcom/youku/player/ad/pausead/PauseAdYouku;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/player/ad/pausead/PauseAdYouku$2$2;->val$image:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 170
    return-void
.end method
