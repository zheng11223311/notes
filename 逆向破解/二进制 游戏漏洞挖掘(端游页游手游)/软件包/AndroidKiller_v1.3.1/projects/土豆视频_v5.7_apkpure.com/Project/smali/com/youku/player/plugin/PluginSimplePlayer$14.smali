.class Lcom/youku/player/plugin/PluginSimplePlayer$14;
.super Landroid/os/Handler;
.source "PluginSimplePlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/player/plugin/PluginSimplePlayer;
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
    .line 568
    iput-object p1, p0, Lcom/youku/player/plugin/PluginSimplePlayer$14;->this$0:Lcom/youku/player/plugin/PluginSimplePlayer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x0

    .line 572
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer$14;->this$0:Lcom/youku/player/plugin/PluginSimplePlayer;

    invoke-static {v0}, Lcom/youku/player/plugin/PluginSimplePlayer;->access$1600(Lcom/youku/player/plugin/PluginSimplePlayer;)I

    move-result v0

    if-nez v0, :cond_0

    .line 573
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer$14;->this$0:Lcom/youku/player/plugin/PluginSimplePlayer;

    invoke-static {v0, v4}, Lcom/youku/player/plugin/PluginSimplePlayer;->access$1702(Lcom/youku/player/plugin/PluginSimplePlayer;Z)Z

    .line 575
    :cond_0
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer$14;->this$0:Lcom/youku/player/plugin/PluginSimplePlayer;

    invoke-static {v0}, Lcom/youku/player/plugin/PluginSimplePlayer;->access$1600(Lcom/youku/player/plugin/PluginSimplePlayer;)I

    move-result v0

    const/16 v1, 0x64

    if-ne v0, v1, :cond_1

    .line 576
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer$14;->this$0:Lcom/youku/player/plugin/PluginSimplePlayer;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/youku/player/plugin/PluginSimplePlayer;->access$1702(Lcom/youku/player/plugin/PluginSimplePlayer;Z)Z

    .line 578
    :cond_1
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer$14;->this$0:Lcom/youku/player/plugin/PluginSimplePlayer;

    invoke-static {v0}, Lcom/youku/player/plugin/PluginSimplePlayer;->access$1700(Lcom/youku/player/plugin/PluginSimplePlayer;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 579
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer$14;->this$0:Lcom/youku/player/plugin/PluginSimplePlayer;

    invoke-static {v0}, Lcom/youku/player/plugin/PluginSimplePlayer;->access$1608(Lcom/youku/player/plugin/PluginSimplePlayer;)I

    .line 583
    :goto_0
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer$14;->this$0:Lcom/youku/player/plugin/PluginSimplePlayer;

    invoke-static {v0}, Lcom/youku/player/plugin/PluginSimplePlayer;->access$1800(Lcom/youku/player/plugin/PluginSimplePlayer;)Landroid/widget/SeekBar;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 584
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer$14;->this$0:Lcom/youku/player/plugin/PluginSimplePlayer;

    invoke-static {v0}, Lcom/youku/player/plugin/PluginSimplePlayer;->access$1800(Lcom/youku/player/plugin/PluginSimplePlayer;)Landroid/widget/SeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/player/plugin/PluginSimplePlayer$14;->this$0:Lcom/youku/player/plugin/PluginSimplePlayer;

    invoke-static {v1}, Lcom/youku/player/plugin/PluginSimplePlayer;->access$1600(Lcom/youku/player/plugin/PluginSimplePlayer;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 585
    :cond_2
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer$14;->this$0:Lcom/youku/player/plugin/PluginSimplePlayer;

    invoke-static {v0}, Lcom/youku/player/plugin/PluginSimplePlayer;->access$1500(Lcom/youku/player/plugin/PluginSimplePlayer;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 586
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer$14;->this$0:Lcom/youku/player/plugin/PluginSimplePlayer;

    invoke-static {v0}, Lcom/youku/player/plugin/PluginSimplePlayer;->access$1500(Lcom/youku/player/plugin/PluginSimplePlayer;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 587
    :cond_3
    return-void

    .line 581
    :cond_4
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer$14;->this$0:Lcom/youku/player/plugin/PluginSimplePlayer;

    invoke-static {v0}, Lcom/youku/player/plugin/PluginSimplePlayer;->access$1610(Lcom/youku/player/plugin/PluginSimplePlayer;)I

    goto :goto_0
.end method
