.class Lcom/youku/phone/detail/plugin/PluginSmall$18;
.super Ljava/lang/Object;
.source "PluginSmall.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/phone/detail/plugin/PluginSmall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/phone/detail/plugin/PluginSmall;


# direct methods
.method constructor <init>(Lcom/youku/phone/detail/plugin/PluginSmall;)V
    .locals 0

    .prologue
    .line 1761
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/PluginSmall$18;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

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
    .line 1766
    if-eqz p3, :cond_1

    .line 1767
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1768
    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1769
    :cond_0
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall$18;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-static {v0}, Lcom/youku/phone/detail/plugin/PluginSmall;->access$2200(Lcom/youku/phone/detail/plugin/PluginSmall;)Landroid/widget/TextView;

    move-result-object v0

    int-to-long v2, p2

    invoke-static {v2, v3}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUtils;->getFormatTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1770
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall$18;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/PluginSmall;->userAction()V

    .line 1773
    :cond_1
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall$18;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-static {v0}, Lcom/youku/phone/detail/plugin/PluginSmall;->access$2300(Lcom/youku/phone/detail/plugin/PluginSmall;)V

    .line 1774
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 1778
    const-string v0, "wangyan"

    const-string v1, "onStartTrackingTouch"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1779
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall$18;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/youku/phone/detail/plugin/PluginSmall;->thumbMoving:Z

    .line 1780
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 1784
    const-string v0, "wangyan"

    const-string v1, "onStopTrackingTouch"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1785
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall$18;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/youku/phone/detail/plugin/PluginSmall;->thumbMoving:Z

    .line 1786
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall$18;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall$18;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall$18;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getMax()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 1790
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall$18;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->start()V

    .line 1792
    :cond_0
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall$18;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-virtual {v0, p1}, Lcom/youku/phone/detail/plugin/PluginSmall;->seekChange(Landroid/widget/SeekBar;)V

    .line 1793
    return-void
.end method
