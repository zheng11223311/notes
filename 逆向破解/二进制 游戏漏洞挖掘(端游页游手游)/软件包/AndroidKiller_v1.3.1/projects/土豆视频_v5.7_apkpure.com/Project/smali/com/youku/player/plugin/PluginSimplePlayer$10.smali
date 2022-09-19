.class Lcom/youku/player/plugin/PluginSimplePlayer$10;
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
    .line 481
    iput-object p1, p0, Lcom/youku/player/plugin/PluginSimplePlayer$10;->this$0:Lcom/youku/player/plugin/PluginSimplePlayer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v4, 0x457

    .line 484
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer$10;->this$0:Lcom/youku/player/plugin/PluginSimplePlayer;

    invoke-static {v0}, Lcom/youku/player/plugin/PluginSimplePlayer;->access$1100(Lcom/youku/player/plugin/PluginSimplePlayer;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer$10;->this$0:Lcom/youku/player/plugin/PluginSimplePlayer;

    invoke-static {v0}, Lcom/youku/player/plugin/PluginSimplePlayer;->access$1000(Lcom/youku/player/plugin/PluginSimplePlayer;)Landroid/widget/SeekBar;

    move-result-object v0

    if-nez v0, :cond_1

    .line 509
    :cond_0
    :goto_0
    return-void

    .line 486
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v4, :cond_3

    .line 487
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer$10;->this$0:Lcom/youku/player/plugin/PluginSimplePlayer;

    invoke-static {v0}, Lcom/youku/player/plugin/PluginSimplePlayer;->access$1200(Lcom/youku/player/plugin/PluginSimplePlayer;)I

    move-result v0

    const/16 v1, 0x5f

    if-lt v0, v1, :cond_2

    .line 488
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer$10;->this$0:Lcom/youku/player/plugin/PluginSimplePlayer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/youku/player/plugin/PluginSimplePlayer;->access$1202(Lcom/youku/player/plugin/PluginSimplePlayer;I)I

    .line 490
    :cond_2
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer$10;->this$0:Lcom/youku/player/plugin/PluginSimplePlayer;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/youku/player/plugin/PluginSimplePlayer;->access$1212(Lcom/youku/player/plugin/PluginSimplePlayer;I)I

    .line 491
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer$10;->this$0:Lcom/youku/player/plugin/PluginSimplePlayer;

    invoke-static {v0}, Lcom/youku/player/plugin/PluginSimplePlayer;->access$1100(Lcom/youku/player/plugin/PluginSimplePlayer;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 493
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer$10;->this$0:Lcom/youku/player/plugin/PluginSimplePlayer;

    invoke-static {v0}, Lcom/youku/player/plugin/PluginSimplePlayer;->access$1000(Lcom/youku/player/plugin/PluginSimplePlayer;)Landroid/widget/SeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/player/plugin/PluginSimplePlayer$10;->this$0:Lcom/youku/player/plugin/PluginSimplePlayer;

    invoke-static {v1}, Lcom/youku/player/plugin/PluginSimplePlayer;->access$1200(Lcom/youku/player/plugin/PluginSimplePlayer;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0

    .line 495
    :cond_3
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer$10;->this$0:Lcom/youku/player/plugin/PluginSimplePlayer;

    invoke-static {v0}, Lcom/youku/player/plugin/PluginSimplePlayer;->access$1100(Lcom/youku/player/plugin/PluginSimplePlayer;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 496
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer$10;->this$0:Lcom/youku/player/plugin/PluginSimplePlayer;

    invoke-static {v0}, Lcom/youku/player/plugin/PluginSimplePlayer;->access$1200(Lcom/youku/player/plugin/PluginSimplePlayer;)I

    move-result v0

    const/16 v1, 0x5a

    if-lt v0, v1, :cond_5

    .line 497
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer$10;->this$0:Lcom/youku/player/plugin/PluginSimplePlayer;

    invoke-static {v0}, Lcom/youku/player/plugin/PluginSimplePlayer;->access$1000(Lcom/youku/player/plugin/PluginSimplePlayer;)Landroid/widget/SeekBar;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 498
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer$10;->this$0:Lcom/youku/player/plugin/PluginSimplePlayer;

    invoke-static {v0}, Lcom/youku/player/plugin/PluginSimplePlayer;->access$1000(Lcom/youku/player/plugin/PluginSimplePlayer;)Landroid/widget/SeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/player/plugin/PluginSimplePlayer$10;->this$0:Lcom/youku/player/plugin/PluginSimplePlayer;

    invoke-static {v1}, Lcom/youku/player/plugin/PluginSimplePlayer;->access$1200(Lcom/youku/player/plugin/PluginSimplePlayer;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 499
    :cond_4
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer$10;->this$0:Lcom/youku/player/plugin/PluginSimplePlayer;

    invoke-static {v0}, Lcom/youku/player/plugin/PluginSimplePlayer;->access$900(Lcom/youku/player/plugin/PluginSimplePlayer;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 500
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer$10;->this$0:Lcom/youku/player/plugin/PluginSimplePlayer;

    invoke-static {v0}, Lcom/youku/player/plugin/PluginSimplePlayer;->access$900(Lcom/youku/player/plugin/PluginSimplePlayer;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 503
    :cond_5
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer$10;->this$0:Lcom/youku/player/plugin/PluginSimplePlayer;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lcom/youku/player/plugin/PluginSimplePlayer;->access$1212(Lcom/youku/player/plugin/PluginSimplePlayer;I)I

    .line 504
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer$10;->this$0:Lcom/youku/player/plugin/PluginSimplePlayer;

    invoke-static {v0}, Lcom/youku/player/plugin/PluginSimplePlayer;->access$1000(Lcom/youku/player/plugin/PluginSimplePlayer;)Landroid/widget/SeekBar;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 505
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer$10;->this$0:Lcom/youku/player/plugin/PluginSimplePlayer;

    invoke-static {v0}, Lcom/youku/player/plugin/PluginSimplePlayer;->access$1000(Lcom/youku/player/plugin/PluginSimplePlayer;)Landroid/widget/SeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/player/plugin/PluginSimplePlayer$10;->this$0:Lcom/youku/player/plugin/PluginSimplePlayer;

    invoke-static {v1}, Lcom/youku/player/plugin/PluginSimplePlayer;->access$1200(Lcom/youku/player/plugin/PluginSimplePlayer;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 506
    :cond_6
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer$10;->this$0:Lcom/youku/player/plugin/PluginSimplePlayer;

    invoke-static {v0}, Lcom/youku/player/plugin/PluginSimplePlayer;->access$1100(Lcom/youku/player/plugin/PluginSimplePlayer;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x458

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0
.end method
