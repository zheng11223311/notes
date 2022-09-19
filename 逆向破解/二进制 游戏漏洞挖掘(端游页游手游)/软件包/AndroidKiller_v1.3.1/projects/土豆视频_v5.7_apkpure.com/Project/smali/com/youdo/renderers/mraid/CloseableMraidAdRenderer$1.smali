.class Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/youdo/view/MraidView$MraidViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer;-><init>(Landroid/app/Activity;Landroid/widget/RelativeLayout;Lcom/youdo/ad/interfaces/IAdDataVO;Lcom/youdo/ad/interfaces/IAdApplicationContext;Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer$EventHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private isErrorDispatched:Ljava/lang/Boolean;

.field final synthetic this$0:Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer;


# direct methods
.method constructor <init>(Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer;)V
    .locals 1

    iput-object p1, p0, Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer$1;->this$0:Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer$1;->isErrorDispatched:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public handleRequest(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onError()Z
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer$1;->isErrorDispatched:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer$1;->this$0:Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer;

    iget-object v0, v0, Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer;->mEventHandler:Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer$EventHandler;

    invoke-interface {v0}, Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer$EventHandler;->onError()V

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer$1;->isErrorDispatched:Ljava/lang/Boolean;

    :cond_0
    return v1
.end method

.method public onEventFired()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onExpand()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onExpandClose()Z
    .locals 1

    invoke-virtual {p0}, Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer$1;->onExpand()Z

    const/4 v0, 0x1

    return v0
.end method

.method public onHide()Z
    .locals 1

    iget-object v0, p0, Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer$1;->this$0:Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer;

    iget-object v0, v0, Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer;->mEventHandler:Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer$EventHandler;

    invoke-interface {v0}, Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer$EventHandler;->onHide()V

    const/4 v0, 0x0

    return v0
.end method

.method public onReady()Z
    .locals 1

    iget-object v0, p0, Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer$1;->this$0:Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer;

    iget-object v0, v0, Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer;->mEventHandler:Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer$EventHandler;

    invoke-interface {v0}, Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer$EventHandler;->onReady()V

    const/4 v0, 0x1

    return v0
.end method

.method public onResize()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onResizeCloseAfter()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onResizeCloseBefore()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onShow()Z
    .locals 1

    iget-object v0, p0, Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer$1;->this$0:Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer;

    iget-object v0, v0, Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer;->mEventHandler:Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer$EventHandler;

    invoke-interface {v0}, Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer$EventHandler;->onShow()V

    const/4 v0, 0x0

    return v0
.end method
