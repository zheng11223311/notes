.class Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer$2;->onTimerComplete()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer$2;


# direct methods
.method constructor <init>(Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer$2;)V
    .locals 0

    iput-object p1, p0, Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer$2$1;->this$1:Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer$2$1;->this$1:Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer$2;

    iget-object v0, v0, Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer$2;->this$0:Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer;

    iget-object v0, v0, Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer;->mCloseButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer$2$1;->this$1:Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer$2;

    iget-object v0, v0, Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer$2;->this$0:Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer;

    iget-object v1, p0, Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer$2$1;->this$1:Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer$2;

    iget-object v1, v1, Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer$2;->this$0:Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer;

    iget-object v1, v1, Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer;->mCloseButton:Landroid/widget/ImageButton;

    invoke-static {v0, v1}, Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer;->access$100(Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer;Landroid/view/View;)V

    :cond_0
    return-void
.end method
