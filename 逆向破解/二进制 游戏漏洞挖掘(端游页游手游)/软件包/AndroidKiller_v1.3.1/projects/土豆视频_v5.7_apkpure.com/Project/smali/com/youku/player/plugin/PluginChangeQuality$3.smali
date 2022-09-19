.class Lcom/youku/player/plugin/PluginChangeQuality$3;
.super Ljava/lang/Object;
.source "PluginChangeQuality.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/player/plugin/PluginChangeQuality;->showSmoothChangeQualityTip(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/player/plugin/PluginChangeQuality;


# direct methods
.method constructor <init>(Lcom/youku/player/plugin/PluginChangeQuality;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/youku/player/plugin/PluginChangeQuality$3;->this$0:Lcom/youku/player/plugin/PluginChangeQuality;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 79
    iget-object v0, p0, Lcom/youku/player/plugin/PluginChangeQuality$3;->this$0:Lcom/youku/player/plugin/PluginChangeQuality;

    invoke-static {v0}, Lcom/youku/player/plugin/PluginChangeQuality;->access$400(Lcom/youku/player/plugin/PluginChangeQuality;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/youku/player/plugin/PluginChangeQuality$3;->this$0:Lcom/youku/player/plugin/PluginChangeQuality;

    invoke-virtual {v0}, Lcom/youku/player/plugin/PluginChangeQuality;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/player/plugin/PluginChangeQuality$3;->this$0:Lcom/youku/player/plugin/PluginChangeQuality;

    invoke-static {v0}, Lcom/youku/player/plugin/PluginChangeQuality;->access$500(Lcom/youku/player/plugin/PluginChangeQuality;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/youku/player/plugin/PluginChangeQuality$3;->this$0:Lcom/youku/player/plugin/PluginChangeQuality;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/youku/player/plugin/PluginChangeQuality;->close(Landroid/view/animation/Animation$AnimationListener;)V

    .line 81
    iget-object v0, p0, Lcom/youku/player/plugin/PluginChangeQuality$3;->this$0:Lcom/youku/player/plugin/PluginChangeQuality;

    invoke-static {v0, v2}, Lcom/youku/player/plugin/PluginChangeQuality;->access$602(Lcom/youku/player/plugin/PluginChangeQuality;Z)Z

    .line 82
    iget-object v0, p0, Lcom/youku/player/plugin/PluginChangeQuality$3;->this$0:Lcom/youku/player/plugin/PluginChangeQuality;

    invoke-static {v0, v2}, Lcom/youku/player/plugin/PluginChangeQuality;->access$102(Lcom/youku/player/plugin/PluginChangeQuality;Z)Z

    .line 84
    :cond_0
    return-void
.end method
