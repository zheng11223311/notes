.class Lcom/youku/player/plugin/PluginSimplePlayer$11;
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
    .line 512
    iput-object p1, p0, Lcom/youku/player/plugin/PluginSimplePlayer$11;->this$0:Lcom/youku/player/plugin/PluginSimplePlayer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 517
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer$11;->this$0:Lcom/youku/player/plugin/PluginSimplePlayer;

    invoke-static {v0}, Lcom/youku/player/plugin/PluginSimplePlayer;->access$1200(Lcom/youku/player/plugin/PluginSimplePlayer;)I

    move-result v0

    const/16 v1, 0x64

    if-ge v0, v1, :cond_1

    .line 518
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer$11;->this$0:Lcom/youku/player/plugin/PluginSimplePlayer;

    invoke-static {v0}, Lcom/youku/player/plugin/PluginSimplePlayer;->access$1208(Lcom/youku/player/plugin/PluginSimplePlayer;)I

    .line 519
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer$11;->this$0:Lcom/youku/player/plugin/PluginSimplePlayer;

    invoke-static {v0}, Lcom/youku/player/plugin/PluginSimplePlayer;->access$1000(Lcom/youku/player/plugin/PluginSimplePlayer;)Landroid/widget/SeekBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 520
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer$11;->this$0:Lcom/youku/player/plugin/PluginSimplePlayer;

    invoke-static {v0}, Lcom/youku/player/plugin/PluginSimplePlayer;->access$1000(Lcom/youku/player/plugin/PluginSimplePlayer;)Landroid/widget/SeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/player/plugin/PluginSimplePlayer$11;->this$0:Lcom/youku/player/plugin/PluginSimplePlayer;

    invoke-static {v1}, Lcom/youku/player/plugin/PluginSimplePlayer;->access$1200(Lcom/youku/player/plugin/PluginSimplePlayer;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 521
    :cond_0
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer$11;->this$0:Lcom/youku/player/plugin/PluginSimplePlayer;

    invoke-static {v0}, Lcom/youku/player/plugin/PluginSimplePlayer;->access$1100(Lcom/youku/player/plugin/PluginSimplePlayer;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 522
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer$11;->this$0:Lcom/youku/player/plugin/PluginSimplePlayer;

    invoke-static {v0}, Lcom/youku/player/plugin/PluginSimplePlayer;->access$1100(Lcom/youku/player/plugin/PluginSimplePlayer;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 525
    :cond_1
    return-void
.end method
