.class Lcom/youku/player/plugin/PluginSimplePlayer$13;
.super Ljava/lang/Object;
.source "PluginSimplePlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/player/plugin/PluginSimplePlayer;->hideLoadinfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/player/plugin/PluginSimplePlayer;


# direct methods
.method constructor <init>(Lcom/youku/player/plugin/PluginSimplePlayer;)V
    .locals 0

    .prologue
    .line 553
    iput-object p1, p0, Lcom/youku/player/plugin/PluginSimplePlayer$13;->this$0:Lcom/youku/player/plugin/PluginSimplePlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 556
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer$13;->this$0:Lcom/youku/player/plugin/PluginSimplePlayer;

    invoke-static {v0}, Lcom/youku/player/plugin/PluginSimplePlayer;->access$1300(Lcom/youku/player/plugin/PluginSimplePlayer;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 557
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer$13;->this$0:Lcom/youku/player/plugin/PluginSimplePlayer;

    invoke-static {v0}, Lcom/youku/player/plugin/PluginSimplePlayer;->access$1300(Lcom/youku/player/plugin/PluginSimplePlayer;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/player/plugin/PluginSimplePlayer$13;->this$0:Lcom/youku/player/plugin/PluginSimplePlayer;

    invoke-static {v1}, Lcom/youku/player/plugin/PluginSimplePlayer;->access$1400(Lcom/youku/player/plugin/PluginSimplePlayer;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 559
    :cond_0
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer$13;->this$0:Lcom/youku/player/plugin/PluginSimplePlayer;

    invoke-static {v0}, Lcom/youku/player/plugin/PluginSimplePlayer;->access$1500(Lcom/youku/player/plugin/PluginSimplePlayer;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 560
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer$13;->this$0:Lcom/youku/player/plugin/PluginSimplePlayer;

    invoke-static {v0}, Lcom/youku/player/plugin/PluginSimplePlayer;->access$1500(Lcom/youku/player/plugin/PluginSimplePlayer;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 561
    :cond_1
    return-void
.end method
