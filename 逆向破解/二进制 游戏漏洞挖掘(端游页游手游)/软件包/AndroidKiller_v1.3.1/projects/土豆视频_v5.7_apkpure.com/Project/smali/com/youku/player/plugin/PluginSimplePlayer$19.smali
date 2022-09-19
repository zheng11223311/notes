.class Lcom/youku/player/plugin/PluginSimplePlayer$19;
.super Ljava/lang/Object;
.source "PluginSimplePlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/player/plugin/PluginSimplePlayer;->onBufferingUpdateListener(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/player/plugin/PluginSimplePlayer;

.field final synthetic val$percent:I


# direct methods
.method constructor <init>(Lcom/youku/player/plugin/PluginSimplePlayer;I)V
    .locals 0

    .prologue
    .line 914
    iput-object p1, p0, Lcom/youku/player/plugin/PluginSimplePlayer$19;->this$0:Lcom/youku/player/plugin/PluginSimplePlayer;

    iput p2, p0, Lcom/youku/player/plugin/PluginSimplePlayer$19;->val$percent:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/16 v3, 0x64

    .line 918
    iget v1, p0, Lcom/youku/player/plugin/PluginSimplePlayer$19;->val$percent:I

    if-ne v1, v3, :cond_0

    .line 919
    iget-object v1, p0, Lcom/youku/player/plugin/PluginSimplePlayer$19;->this$0:Lcom/youku/player/plugin/PluginSimplePlayer;

    iget-object v1, v1, Lcom/youku/player/plugin/PluginSimplePlayer;->videoBar:Landroid/widget/SeekBar;

    iget-object v2, p0, Lcom/youku/player/plugin/PluginSimplePlayer$19;->this$0:Lcom/youku/player/plugin/PluginSimplePlayer;

    iget-object v2, v2, Lcom/youku/player/plugin/PluginSimplePlayer;->videoBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getMax()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setSecondaryProgress(I)V

    .line 921
    :cond_0
    iget v1, p0, Lcom/youku/player/plugin/PluginSimplePlayer$19;->val$percent:I

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/youku/player/plugin/PluginSimplePlayer$19;->this$0:Lcom/youku/player/plugin/PluginSimplePlayer;

    iget v1, v1, Lcom/youku/player/plugin/PluginSimplePlayer;->Adaptation_lastPercent:I

    if-eq v1, v3, :cond_2

    .line 922
    iget-object v1, p0, Lcom/youku/player/plugin/PluginSimplePlayer$19;->this$0:Lcom/youku/player/plugin/PluginSimplePlayer;

    iget v2, p0, Lcom/youku/player/plugin/PluginSimplePlayer$19;->val$percent:I

    iput v2, v1, Lcom/youku/player/plugin/PluginSimplePlayer;->Adaptation_lastPercent:I

    .line 933
    :cond_1
    :goto_0
    return-void

    .line 926
    :cond_2
    iget-object v1, p0, Lcom/youku/player/plugin/PluginSimplePlayer$19;->this$0:Lcom/youku/player/plugin/PluginSimplePlayer;

    iget-object v1, v1, Lcom/youku/player/plugin/PluginSimplePlayer;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/youku/player/plugin/PluginSimplePlayer$19;->this$0:Lcom/youku/player/plugin/PluginSimplePlayer;

    iget-object v1, v1, Lcom/youku/player/plugin/PluginSimplePlayer;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v1, :cond_1

    .line 929
    iget v1, p0, Lcom/youku/player/plugin/PluginSimplePlayer$19;->val$percent:I

    iget-object v2, p0, Lcom/youku/player/plugin/PluginSimplePlayer$19;->this$0:Lcom/youku/player/plugin/PluginSimplePlayer;

    iget-object v2, v2, Lcom/youku/player/plugin/PluginSimplePlayer;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v2, v2, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v2}, Lcom/youku/player/module/VideoUrlInfo;->getDurationMills()I

    move-result v2

    mul-int/2addr v1, v2

    div-int/lit8 v0, v1, 0x64

    .line 931
    .local v0, "showSecond":I
    iget-object v1, p0, Lcom/youku/player/plugin/PluginSimplePlayer$19;->this$0:Lcom/youku/player/plugin/PluginSimplePlayer;

    iget-object v1, v1, Lcom/youku/player/plugin/PluginSimplePlayer;->videoBar:Landroid/widget/SeekBar;

    if-eqz v1, :cond_1

    .line 932
    iget-object v1, p0, Lcom/youku/player/plugin/PluginSimplePlayer$19;->this$0:Lcom/youku/player/plugin/PluginSimplePlayer;

    iget-object v1, v1, Lcom/youku/player/plugin/PluginSimplePlayer;->videoBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setSecondaryProgress(I)V

    goto :goto_0
.end method
