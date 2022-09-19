.class Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer$2;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/openad/common/util/XYDTimer$EventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer;-><init>(Landroid/app/Activity;Landroid/widget/RelativeLayout;Lcom/youdo/ad/interfaces/IAdDataVO;Lcom/youdo/ad/interfaces/IAdApplicationContext;Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer$EventHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer;


# direct methods
.method constructor <init>(Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer;)V
    .locals 0

    iput-object p1, p0, Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer$2;->this$0:Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimer(I)V
    .locals 0

    return-void
.end method

.method public onTimerComplete()V
    .locals 2

    iget-object v0, p0, Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer$2;->this$0:Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer;

    invoke-static {v0}, Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer;->access$000(Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer$2;->this$0:Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer;

    invoke-static {v1}, Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer;->access$200(Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer$2$1;

    invoke-direct {v1, p0}, Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer$2$1;-><init>(Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer$2;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
