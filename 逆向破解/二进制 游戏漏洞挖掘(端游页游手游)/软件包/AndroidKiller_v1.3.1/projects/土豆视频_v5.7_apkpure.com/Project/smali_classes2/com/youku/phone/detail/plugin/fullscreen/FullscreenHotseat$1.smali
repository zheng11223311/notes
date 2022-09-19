.class Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat$1;
.super Ljava/lang/Object;
.source "FullscreenHotseat.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 90
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat$1;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat$1;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;

    invoke-static {v0}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->access$000(Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 103
    .end local p1    # "v":Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 96
    .restart local p1    # "v":Landroid/view/View;
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat$1;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;

    invoke-static {v0}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->access$100(Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;)Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat$Callbacks;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat$1;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;

    invoke-static {v0}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;->access$100(Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat;)Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat$Callbacks;

    move-result-object v0

    check-cast p1, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;

    .end local p1    # "v":Landroid/view/View;
    invoke-interface {v0, p1}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseat$Callbacks;->onHotseatItemClick(Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;)V

    goto :goto_0
.end method
