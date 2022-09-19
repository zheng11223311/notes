.class Lcom/youdo/AdApplicationContext$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer$EventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youdo/AdApplicationContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youdo/AdApplicationContext;


# direct methods
.method constructor <init>(Lcom/youdo/AdApplicationContext;)V
    .locals 0

    iput-object p1, p0, Lcom/youdo/AdApplicationContext$1;->this$0:Lcom/youdo/AdApplicationContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose()V
    .locals 3

    iget-object v0, p0, Lcom/youdo/AdApplicationContext$1;->this$0:Lcom/youdo/AdApplicationContext;

    new-instance v1, Lorg/openad/events/XYDEvent;

    const-string v2, "ad_stop"

    invoke-direct {v1, v2}, Lorg/openad/events/XYDEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/youdo/AdApplicationContext;->dispatchEvent(Lorg/openad/events/IXYDEvent;)V

    return-void
.end method

.method public onError()V
    .locals 2

    new-instance v0, Lorg/openad/events/XYDEvent;

    const-string v1, "ad_error"

    invoke-direct {v0, v1}, Lorg/openad/events/XYDEvent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/youdo/AdApplicationContext$1;->this$0:Lcom/youdo/AdApplicationContext;

    invoke-virtual {v1, v0}, Lcom/youdo/AdApplicationContext;->dispatchEvent(Lorg/openad/events/IXYDEvent;)V

    return-void
.end method

.method public onHide()V
    .locals 0

    return-void
.end method

.method public onReady()V
    .locals 2

    new-instance v0, Lorg/openad/events/XYDEvent;

    const-string v1, "ad_prepared"

    invoke-direct {v0, v1}, Lorg/openad/events/XYDEvent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/youdo/AdApplicationContext$1;->this$0:Lcom/youdo/AdApplicationContext;

    invoke-virtual {v1, v0}, Lcom/youdo/AdApplicationContext;->dispatchEvent(Lorg/openad/events/IXYDEvent;)V

    return-void
.end method

.method public onShow()V
    .locals 3

    new-instance v1, Lorg/openad/events/XYDEvent;

    iget-object v0, p0, Lcom/youdo/AdApplicationContext$1;->this$0:Lcom/youdo/AdApplicationContext;

    invoke-virtual {v0}, Lcom/youdo/AdApplicationContext;->getVideoState()Lorg/openad/constants/IOpenAdContants$VideoState;

    move-result-object v0

    sget-object v2, Lorg/openad/constants/IOpenAdContants$VideoState;->PAUSED:Lorg/openad/constants/IOpenAdContants$VideoState;

    if-ne v0, v2, :cond_0

    const-string/jumbo v0, "video_pause"

    :goto_0
    invoke-direct {v1, v0}, Lorg/openad/events/XYDEvent;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/youdo/AdApplicationContext$1;->this$0:Lcom/youdo/AdApplicationContext;

    invoke-virtual {v0, v1}, Lcom/youdo/AdApplicationContext;->dispatchEvent(Lorg/openad/events/IXYDEvent;)V

    return-void

    :cond_0
    const-string/jumbo v0, "video_resume"

    goto :goto_0
.end method

.method public onViewModeChange(Lorg/openad/constants/IOpenAdContants$ViewMode;Lorg/openad/constants/IOpenAdContants$ViewMode;)V
    .locals 4

    new-instance v0, Lorg/openad/events/XYDEvent;

    const-string v1, "ad_view_mode_change"

    invoke-direct {v0, v1}, Lorg/openad/events/XYDEvent;-><init>(Ljava/lang/String;)V

    iget-object v1, v0, Lorg/openad/events/XYDEvent;->data:Ljava/util/Map;

    const-string v2, "oldViewMode"

    invoke-virtual {p1}, Lorg/openad/constants/IOpenAdContants$ViewMode;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lorg/openad/events/XYDEvent;->data:Ljava/util/Map;

    const-string v2, "newViewMode"

    invoke-virtual {p2}, Lorg/openad/constants/IOpenAdContants$ViewMode;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/youdo/AdApplicationContext$1;->this$0:Lcom/youdo/AdApplicationContext;

    invoke-virtual {v1, v0}, Lcom/youdo/AdApplicationContext;->dispatchEvent(Lorg/openad/events/IXYDEvent;)V

    return-void
.end method
