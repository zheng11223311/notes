.class Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$13;
.super Ljava/lang/Object;
.source "PluginFullScreenHorizontal.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->onFinishInflate()V
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
    .line 1097
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$13;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1101
    const-string v1, "t1.detail_player.playlist"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 1103
    const-string v1, "PLUGIN_BTN_PLAYLIST"

    const-wide/16 v2, 0x190

    invoke-static {v1, v2, v3}, Lcom/youku/util/Util;->isGoOn(Ljava/lang/String;J)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1118
    :goto_0
    return-void

    .line 1107
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1108
    .local v0, "b":Landroid/os/Bundle;
    const-string v1, "bundle.video.id"

    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$13;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    iget-object v2, v2, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mDetailActivity:Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v2}, Lcom/tudou/ui/activity/DetailActivity;->getCurrentVid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1109
    const-string v1, "bundle.id"

    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$13;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    iget-object v2, v2, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mDetailActivity:Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v2}, Lcom/tudou/ui/activity/DetailActivity;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 1110
    const-string v1, "bundle.playlist.id"

    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$13;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    iget-object v2, v2, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mDetailActivity:Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v2}, Lcom/tudou/ui/activity/DetailActivity;->getPlaylistId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 1111
    const-string v1, "bundle.album.id"

    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$13;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    iget-object v2, v2, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mDetailActivity:Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v2}, Lcom/tudou/ui/activity/DetailActivity;->getAlbumId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 1112
    const-string v1, "bundle.type"

    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$13;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    iget-object v2, v2, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mDetailActivity:Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v2}, Lcom/tudou/ui/activity/DetailActivity;->getType()Lcom/tudou/android/Youku$Type;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 1113
    const-string v1, "bundle.video.list"

    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$13;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    iget-object v2, v2, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mVideolist:Lcom/tudou/detail/vo/VideoList;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 1114
    const-string v1, "bundle.video.feature"

    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$13;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    iget-object v2, v2, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mVideoFeature:Lcom/tudou/detail/vo/DetailFeature;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 1115
    const-string v1, "bundle.video.recommend"

    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$13;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    iget-object v2, v2, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mVideoRecommend:Lcom/youku/vo/DetailRecomment;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 1116
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$13;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-static {v1}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->access$2600(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel;

    move-result-object v1

    sget-object v2, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel$PageState;->PLAYLIST:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel$PageState;

    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$13;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    iget-object v3, v3, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v1, v2, v0, v3}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel;->initialize(Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel$PageState;Landroid/os/Bundle;Lcom/youku/player/plugin/MediaPlayerDelegate;)V

    .line 1117
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$13;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->hideController(Z)V

    goto :goto_0
.end method
