.class Lcom/youku/player/plugin/PluginSimplePlayer$18;
.super Ljava/lang/Object;
.source "PluginSimplePlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/player/plugin/PluginSimplePlayer;->clearPlayState()V
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
    .line 888
    iput-object p1, p0, Lcom/youku/player/plugin/PluginSimplePlayer$18;->this$0:Lcom/youku/player/plugin/PluginSimplePlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 892
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer$18;->this$0:Lcom/youku/player/plugin/PluginSimplePlayer;

    invoke-static {v0}, Lcom/youku/player/plugin/PluginSimplePlayer;->access$2500(Lcom/youku/player/plugin/PluginSimplePlayer;)V

    .line 893
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer$18;->this$0:Lcom/youku/player/plugin/PluginSimplePlayer;

    invoke-static {v0}, Lcom/youku/player/plugin/PluginSimplePlayer;->access$2600(Lcom/youku/player/plugin/PluginSimplePlayer;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 894
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer$18;->this$0:Lcom/youku/player/plugin/PluginSimplePlayer;

    invoke-static {v0}, Lcom/youku/player/plugin/PluginSimplePlayer;->access$2600(Lcom/youku/player/plugin/PluginSimplePlayer;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 895
    :cond_0
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer$18;->this$0:Lcom/youku/player/plugin/PluginSimplePlayer;

    iget-object v0, v0, Lcom/youku/player/plugin/PluginSimplePlayer;->videoBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_1

    .line 897
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer$18;->this$0:Lcom/youku/player/plugin/PluginSimplePlayer;

    iget-object v0, v0, Lcom/youku/player/plugin/PluginSimplePlayer;->videoBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 898
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer$18;->this$0:Lcom/youku/player/plugin/PluginSimplePlayer;

    iget-object v0, v0, Lcom/youku/player/plugin/PluginSimplePlayer;->videoBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setMax(I)V

    .line 902
    :cond_1
    return-void
.end method
