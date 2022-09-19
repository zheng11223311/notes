.class Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$46;
.super Ljava/lang/Object;
.source "PluginFullScreenHorizontal.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;


# direct methods
.method constructor <init>(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)V
    .locals 0

    .prologue
    .line 3614
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$46;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 3618
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "t1.detail_player.nextvideoclick.1_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$46;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    iget-object v2, v2, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mNextVid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 3619
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$46;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    iget-object v1, v1, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mDetailActivity:Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v1}, Lcom/tudou/ui/activity/DetailActivity;->getCurrentVid()Ljava/lang/String;

    move-result-object v0

    .line 3621
    .local v0, "vid":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$46;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    iget-object v1, v1, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v1, v1, Lcom/youku/player/module/VideoUrlInfo;->nextVideoId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3622
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$46;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    iget-object v1, v1, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mDetailActivity:Lcom/tudou/ui/activity/DetailActivity;

    const/4 v2, 0x1

    invoke-virtual {v1, v3, v2}, Lcom/tudou/ui/activity/DetailActivity;->seekTo(IZ)V

    .line 3623
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$46;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-static {v1, v3}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->access$2002(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;I)I

    .line 3633
    :goto_0
    return-void

    .line 3626
    :cond_0
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$46;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    iget-boolean v1, v1, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mHasGetNext:Z

    if-eqz v1, :cond_1

    .line 3627
    invoke-static {v3}, Lcom/youku/player/Track;->setplayCompleted(Z)V

    .line 3628
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$46;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    iget-object v1, v1, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v1}, Lcom/youku/player/plugin/MediaPlayerDelegate;->onVVEnd()V

    .line 3629
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$46;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-static {v1, v3}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->access$5900(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;Z)V

    goto :goto_0

    .line 3631
    :cond_1
    const-string v1, "\u7b49\u89c6\u9891\u52a0\u8f7d\u6210\u529f\u540e\u624d\u53ef\u70b9\u51fb\u54e6"

    invoke-static {v1}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    goto :goto_0
.end method
