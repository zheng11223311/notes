.class Lcom/youku/player/base/PlayerController$3;
.super Ljava/lang/Object;
.source "PlayerController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/player/base/PlayerController;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/player/base/PlayerController;


# direct methods
.method constructor <init>(Lcom/youku/player/base/PlayerController;)V
    .locals 0

    .prologue
    .line 418
    iput-object p1, p0, Lcom/youku/player/base/PlayerController$3;->this$0:Lcom/youku/player/base/PlayerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 422
    iget-object v0, p0, Lcom/youku/player/base/PlayerController$3;->this$0:Lcom/youku/player/base/PlayerController;

    iget-object v1, p0, Lcom/youku/player/base/PlayerController$3;->this$0:Lcom/youku/player/base/PlayerController;

    iget-object v1, v1, Lcom/youku/player/base/PlayerController;->surfaceView:Lcom/youku/player/NewSurfaceView;

    invoke-virtual {v1}, Lcom/youku/player/NewSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    iput-object v1, v0, Lcom/youku/player/base/PlayerController;->surfaceHolder:Landroid/view/SurfaceHolder;

    .line 424
    invoke-static {}, Lcom/baseproject/utils/UIUtils;->hasKitKat()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 425
    iget-object v0, p0, Lcom/youku/player/base/PlayerController$3;->this$0:Lcom/youku/player/base/PlayerController;

    iget-object v0, v0, Lcom/youku/player/base/PlayerController;->surfaceView:Lcom/youku/player/NewSurfaceView;

    invoke-virtual {v0}, Lcom/youku/player/NewSurfaceView;->requestLayout()V

    .line 427
    :cond_0
    iget-object v0, p0, Lcom/youku/player/base/PlayerController$3;->this$0:Lcom/youku/player/base/PlayerController;

    iget-object v0, v0, Lcom/youku/player/base/PlayerController;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/youku/player/base/PlayerController$3;->this$0:Lcom/youku/player/base/PlayerController;

    iget-object v0, v0, Lcom/youku/player/base/PlayerController;->surfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_1

    .line 428
    iget-object v0, p0, Lcom/youku/player/base/PlayerController$3;->this$0:Lcom/youku/player/base/PlayerController;

    invoke-static {v0}, Lcom/youku/player/base/PlayerController;->access$000(Lcom/youku/player/base/PlayerController;)Lcom/youku/player/ad/PlayerAdControl;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/youku/player/ad/PlayerAdControl;->doOnResumeDelayedOperation(Z)V

    .line 430
    :cond_1
    return-void
.end method
