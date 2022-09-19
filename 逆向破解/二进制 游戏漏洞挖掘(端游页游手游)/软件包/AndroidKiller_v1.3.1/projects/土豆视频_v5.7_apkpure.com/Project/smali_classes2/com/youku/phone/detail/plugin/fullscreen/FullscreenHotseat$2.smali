.class Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat$2;
.super Ljava/lang/Object;
.source "FullscreenHotseat.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;


# direct methods
.method constructor <init>(Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat$2;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat$2;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;

    invoke-static {v0}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->access$100(Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;)Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat$Callbacks;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat$2;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;

    invoke-static {v0}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->access$100(Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;)Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat$Callbacks;

    move-result-object v0

    check-cast p1, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;

    .end local p1    # "v":Landroid/view/View;
    invoke-interface {v0, p1, p2}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat$Callbacks;->onHotseatItemTouch(Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;Landroid/view/MotionEvent;)Z

    move-result v0

    .line 112
    :goto_0
    return v0

    .restart local p1    # "v":Landroid/view/View;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
