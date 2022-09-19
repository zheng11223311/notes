.class Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$20;
.super Ljava/lang/Object;
.source "PluginFullScreenVertical.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;


# direct methods
.method constructor <init>(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;)V
    .locals 0

    .prologue
    .line 2070
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$20;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2073
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$20;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    invoke-static {v0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->access$3400(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2074
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$20;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    invoke-static {v0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->access$3400(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2076
    :cond_0
    return-void
.end method
