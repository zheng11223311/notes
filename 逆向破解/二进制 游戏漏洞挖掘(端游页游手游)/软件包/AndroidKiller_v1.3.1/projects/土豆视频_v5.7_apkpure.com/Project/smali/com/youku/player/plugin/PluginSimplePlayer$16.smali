.class Lcom/youku/player/plugin/PluginSimplePlayer$16;
.super Ljava/lang/Object;
.source "PluginSimplePlayer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 733
    iput-object p1, p0, Lcom/youku/player/plugin/PluginSimplePlayer$16;->this$0:Lcom/youku/player/plugin/PluginSimplePlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 737
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer$16;->this$0:Lcom/youku/player/plugin/PluginSimplePlayer;

    invoke-static {v0}, Lcom/youku/player/plugin/PluginSimplePlayer;->access$2000(Lcom/youku/player/plugin/PluginSimplePlayer;)V

    .line 738
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer$16;->this$0:Lcom/youku/player/plugin/PluginSimplePlayer;

    iget-object v0, v0, Lcom/youku/player/plugin/PluginSimplePlayer;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v0, :cond_0

    .line 739
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer$16;->this$0:Lcom/youku/player/plugin/PluginSimplePlayer;

    iget-object v0, v0, Lcom/youku/player/plugin/PluginSimplePlayer;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->start()V

    .line 740
    :cond_0
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer$16;->this$0:Lcom/youku/player/plugin/PluginSimplePlayer;

    invoke-static {v0}, Lcom/youku/player/plugin/PluginSimplePlayer;->access$2100(Lcom/youku/player/plugin/PluginSimplePlayer;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 741
    iget-object v0, p0, Lcom/youku/player/plugin/PluginSimplePlayer$16;->this$0:Lcom/youku/player/plugin/PluginSimplePlayer;

    invoke-static {v0}, Lcom/youku/player/plugin/PluginSimplePlayer;->access$2100(Lcom/youku/player/plugin/PluginSimplePlayer;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 742
    :cond_1
    return-void
.end method
