.class Lcom/youku/player/plugin/PluginSimplePlayer$15;
.super Ljava/lang/Object;
.source "PluginSimplePlayer.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


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
    .line 691
    iput-object p1, p0, Lcom/youku/player/plugin/PluginSimplePlayer$15;->this$0:Lcom/youku/player/plugin/PluginSimplePlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 4
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 696
    invoke-static {}, Lcom/baseproject/utils/Util;->hasInternet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 697
    if-eqz p3, :cond_0

    .line 699
    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 700
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer$15;->this$0:Lcom/youku/player/plugin/PluginSimplePlayer;

    iget-object v0, v0, Lcom/youku/player/plugin/PluginSimplePlayer;->currentTime:Landroid/widget/TextView;

    int-to-long v2, p2

    invoke-static {v2, v3}, Lcom/youku/player/util/PlayerUtil;->getFormatTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 702
    :cond_0
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer$15;->this$0:Lcom/youku/player/plugin/PluginSimplePlayer;

    invoke-static {v0}, Lcom/youku/player/plugin/PluginSimplePlayer;->access$1900(Lcom/youku/player/plugin/PluginSimplePlayer;)V

    .line 703
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 708
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 712
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer$15;->this$0:Lcom/youku/player/plugin/PluginSimplePlayer;

    invoke-virtual {v0, p1}, Lcom/youku/player/plugin/PluginSimplePlayer;->seekChange(Landroid/widget/SeekBar;)V

    .line 714
    return-void
.end method
