.class Lcom/youku/player/plugin/PluginSimplePlayer$20;
.super Ljava/lang/Object;
.source "PluginSimplePlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/player/plugin/PluginSimplePlayer;->onCompletionListener()V
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
    .line 944
    iput-object p1, p0, Lcom/youku/player/plugin/PluginSimplePlayer$20;->this$0:Lcom/youku/player/plugin/PluginSimplePlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 947
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer$20;->this$0:Lcom/youku/player/plugin/PluginSimplePlayer;

    iget-object v0, v0, Lcom/youku/player/plugin/PluginSimplePlayer;->videoBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    .line 948
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer$20;->this$0:Lcom/youku/player/plugin/PluginSimplePlayer;

    iget-object v0, v0, Lcom/youku/player/plugin/PluginSimplePlayer;->videoBar:Landroid/widget/SeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 950
    :cond_0
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer$20;->this$0:Lcom/youku/player/plugin/PluginSimplePlayer;

    invoke-virtual {v0}, Lcom/youku/player/plugin/PluginSimplePlayer;->hideLoading()V

    .line 951
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer$20;->this$0:Lcom/youku/player/plugin/PluginSimplePlayer;

    iget-object v0, v0, Lcom/youku/player/plugin/PluginSimplePlayer;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v0, :cond_1

    .line 955
    :cond_1
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer$20;->this$0:Lcom/youku/player/plugin/PluginSimplePlayer;

    invoke-static {v0}, Lcom/youku/player/plugin/PluginSimplePlayer;->access$2700(Lcom/youku/player/plugin/PluginSimplePlayer;)V

    .line 956
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer$20;->this$0:Lcom/youku/player/plugin/PluginSimplePlayer;

    invoke-virtual {v0}, Lcom/youku/player/plugin/PluginSimplePlayer;->playComplete()V

    .line 957
    return-void
.end method
