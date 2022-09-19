.class Lcom/youku/player/plugin/PluginSimplePlayer$32;
.super Ljava/lang/Object;
.source "PluginSimplePlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/player/plugin/PluginSimplePlayer;->onVideoInfoGetted()V
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
    .line 1704
    iput-object p1, p0, Lcom/youku/player/plugin/PluginSimplePlayer$32;->this$0:Lcom/youku/player/plugin/PluginSimplePlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1708
    iget-object v1, p0, Lcom/youku/player/plugin/PluginSimplePlayer$32;->this$0:Lcom/youku/player/plugin/PluginSimplePlayer;

    iget-object v1, v1, Lcom/youku/player/plugin/PluginSimplePlayer;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/youku/player/plugin/PluginSimplePlayer$32;->this$0:Lcom/youku/player/plugin/PluginSimplePlayer;

    iget-object v1, v1, Lcom/youku/player/plugin/PluginSimplePlayer;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v1, :cond_1

    .line 1710
    iget-object v1, p0, Lcom/youku/player/plugin/PluginSimplePlayer$32;->this$0:Lcom/youku/player/plugin/PluginSimplePlayer;

    iget-object v1, v1, Lcom/youku/player/plugin/PluginSimplePlayer;->videoBar:Landroid/widget/SeekBar;

    if-eqz v1, :cond_0

    .line 1711
    iget-object v1, p0, Lcom/youku/player/plugin/PluginSimplePlayer$32;->this$0:Lcom/youku/player/plugin/PluginSimplePlayer;

    iget-object v1, v1, Lcom/youku/player/plugin/PluginSimplePlayer;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v1}, Lcom/youku/player/module/VideoUrlInfo;->getDurationMills()I

    move-result v0

    .line 1713
    .local v0, "duration":I
    iget-object v1, p0, Lcom/youku/player/plugin/PluginSimplePlayer$32;->this$0:Lcom/youku/player/plugin/PluginSimplePlayer;

    iget-object v1, v1, Lcom/youku/player/plugin/PluginSimplePlayer;->videoBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setMax(I)V

    .line 1714
    iget-object v1, p0, Lcom/youku/player/plugin/PluginSimplePlayer$32;->this$0:Lcom/youku/player/plugin/PluginSimplePlayer;

    iget-object v1, v1, Lcom/youku/player/plugin/PluginSimplePlayer;->totalTime:Landroid/widget/TextView;

    int-to-long v2, v0

    invoke-static {v2, v3}, Lcom/youku/player/util/PlayerUtil;->getFormatTime(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1716
    .end local v0    # "duration":I
    :cond_0
    iget-object v1, p0, Lcom/youku/player/plugin/PluginSimplePlayer$32;->this$0:Lcom/youku/player/plugin/PluginSimplePlayer;

    invoke-static {v1}, Lcom/youku/player/plugin/PluginSimplePlayer;->access$2600(Lcom/youku/player/plugin/PluginSimplePlayer;)Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1717
    iget-object v1, p0, Lcom/youku/player/plugin/PluginSimplePlayer$32;->this$0:Lcom/youku/player/plugin/PluginSimplePlayer;

    invoke-static {v1}, Lcom/youku/player/plugin/PluginSimplePlayer;->access$2600(Lcom/youku/player/plugin/PluginSimplePlayer;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/youku/player/plugin/PluginSimplePlayer$32;->this$0:Lcom/youku/player/plugin/PluginSimplePlayer;

    iget-object v2, v2, Lcom/youku/player/plugin/PluginSimplePlayer;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v2, v2, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v2}, Lcom/youku/player/module/VideoUrlInfo;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1721
    :cond_1
    return-void
.end method
