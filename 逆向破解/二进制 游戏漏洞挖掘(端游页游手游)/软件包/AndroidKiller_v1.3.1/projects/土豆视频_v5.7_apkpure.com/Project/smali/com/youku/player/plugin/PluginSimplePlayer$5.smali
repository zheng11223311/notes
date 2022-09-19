.class Lcom/youku/player/plugin/PluginSimplePlayer$5;
.super Ljava/lang/Object;
.source "PluginSimplePlayer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/player/plugin/PluginSimplePlayer;->initPlayLayout()V
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
    .line 247
    iput-object p1, p0, Lcom/youku/player/plugin/PluginSimplePlayer$5;->this$0:Lcom/youku/player/plugin/PluginSimplePlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 251
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer$5;->this$0:Lcom/youku/player/plugin/PluginSimplePlayer;

    iget-object v0, v0, Lcom/youku/player/plugin/PluginSimplePlayer;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-boolean v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isFullScreen:Z

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer$5;->this$0:Lcom/youku/player/plugin/PluginSimplePlayer;

    iget-object v0, v0, Lcom/youku/player/plugin/PluginSimplePlayer;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->goSmall()V

    .line 257
    :goto_0
    return-void

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer$5;->this$0:Lcom/youku/player/plugin/PluginSimplePlayer;

    iget-object v0, v0, Lcom/youku/player/plugin/PluginSimplePlayer;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->goFullScreen()V

    goto :goto_0
.end method
