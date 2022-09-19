.class Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer$5;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer;->load()V
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

    iput-object p1, p0, Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer$5;->this$0:Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const-string v0, "CloseableMraidAdRenderer"

    const-string v1, "close mraid ad"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer$5;->this$0:Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer;

    iget-object v0, v0, Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer;->mEventHandler:Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer$EventHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer$5;->this$0:Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer;

    iget-object v0, v0, Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer;->mMraidView:Lcom/youdo/view/MraidView;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lorg/openad/common/util/ViewUtils;->setLayerType(Landroid/view/View;ILandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer$5;->this$0:Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer;

    iget-object v0, v0, Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer;->mEventHandler:Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer$EventHandler;

    invoke-interface {v0}, Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer$EventHandler;->onClose()V

    :cond_0
    return-void
.end method
