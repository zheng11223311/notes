.class Lcom/youku/player/plugin/PluginSimplePlayer$21;
.super Ljava/lang/Object;
.source "PluginSimplePlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/player/plugin/PluginSimplePlayer;->alertRetry(Landroid/app/Activity;I)V
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
    .line 1070
    iput-object p1, p0, Lcom/youku/player/plugin/PluginSimplePlayer$21;->this$0:Lcom/youku/player/plugin/PluginSimplePlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1073
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer$21;->this$0:Lcom/youku/player/plugin/PluginSimplePlayer;

    invoke-virtual {v0}, Lcom/youku/player/plugin/PluginSimplePlayer;->hideLoading()V

    .line 1074
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer$21;->this$0:Lcom/youku/player/plugin/PluginSimplePlayer;

    invoke-static {v0}, Lcom/youku/player/plugin/PluginSimplePlayer;->access$2800(Lcom/youku/player/plugin/PluginSimplePlayer;)V

    .line 1075
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer$21;->this$0:Lcom/youku/player/plugin/PluginSimplePlayer;

    iget-object v0, v0, Lcom/youku/player/plugin/PluginSimplePlayer;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v0, :cond_0

    .line 1076
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer$21;->this$0:Lcom/youku/player/plugin/PluginSimplePlayer;

    iget-object v0, v0, Lcom/youku/player/plugin/PluginSimplePlayer;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->release()V

    .line 1077
    :cond_0
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer$21;->this$0:Lcom/youku/player/plugin/PluginSimplePlayer;

    invoke-static {v0}, Lcom/youku/player/plugin/PluginSimplePlayer;->access$3000(Lcom/youku/player/plugin/PluginSimplePlayer;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/youku/player/plugin/PluginSimplePlayer$21$1;

    invoke-direct {v1, p0}, Lcom/youku/player/plugin/PluginSimplePlayer$21$1;-><init>(Lcom/youku/player/plugin/PluginSimplePlayer$21;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1084
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer$21;->this$0:Lcom/youku/player/plugin/PluginSimplePlayer;

    iget-object v0, v0, Lcom/youku/player/plugin/PluginSimplePlayer;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer$21;->this$0:Lcom/youku/player/plugin/PluginSimplePlayer;

    iget-object v0, v0, Lcom/youku/player/plugin/PluginSimplePlayer;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-boolean v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isFullScreen:Z

    if-nez v0, :cond_1

    .line 1086
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer$21;->this$0:Lcom/youku/player/plugin/PluginSimplePlayer;

    iget-object v0, v0, Lcom/youku/player/plugin/PluginSimplePlayer;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isStartPlay:Z

    .line 1088
    :cond_1
    return-void
.end method
