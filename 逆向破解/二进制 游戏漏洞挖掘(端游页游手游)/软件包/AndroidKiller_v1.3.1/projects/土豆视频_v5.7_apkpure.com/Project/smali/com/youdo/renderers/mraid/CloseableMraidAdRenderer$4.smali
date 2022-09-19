.class Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer;->hideCloseButton(Ljava/lang/Boolean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer;

.field final synthetic val$hide:Ljava/lang/Boolean;


# direct methods
.method constructor <init>(Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer;Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer$4;->this$0:Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer;

    iput-object p2, p0, Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer$4;->val$hide:Ljava/lang/Boolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer$4;->val$hide:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer$4;->this$0:Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer;

    iget-object v0, v0, Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer;->mCloseButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer$4;->this$0:Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer;

    iget-object v0, v0, Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer;->mCloseButton:Landroid/widget/ImageButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer$4;->this$0:Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer;

    iget-object v1, p0, Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer$4;->this$0:Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer;

    iget-object v1, v1, Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer;->mCloseButton:Landroid/widget/ImageButton;

    invoke-static {v0, v1}, Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer;->access$100(Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer;Landroid/view/View;)V

    goto :goto_0
.end method
