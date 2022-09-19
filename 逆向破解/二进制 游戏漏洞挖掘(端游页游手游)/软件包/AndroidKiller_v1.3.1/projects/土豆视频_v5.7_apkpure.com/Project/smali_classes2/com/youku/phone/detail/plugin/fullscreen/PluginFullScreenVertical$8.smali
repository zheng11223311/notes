.class Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$8;
.super Ljava/lang/Object;
.source "PluginFullScreenVertical.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->playNextVideo(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

.field final synthetic val$auto:Z

.field final synthetic val$currentInfo:Lcom/tudou/service/download/DownloadInfo;


# direct methods
.method constructor <init>(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;Lcom/tudou/service/download/DownloadInfo;Z)V
    .locals 0

    .prologue
    .line 916
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$8;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    iput-object p2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$8;->val$currentInfo:Lcom/tudou/service/download/DownloadInfo;

    iput-boolean p3, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$8;->val$auto:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 920
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$8;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    invoke-static {v0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->access$1000(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;)V

    .line 921
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$8;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mDetailActivity:Lcom/tudou/ui/activity/DetailActivity;

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$8;->val$currentInfo:Lcom/tudou/service/download/DownloadInfo;

    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$8;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    iget-object v2, v2, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$8;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    iget-object v3, v3, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mPluginFullScreenPlay:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;

    iget-boolean v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$8;->val$auto:Z

    invoke-static {v0, v1, v2, v3, v4}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenUtils;->showPlayNextDialog(Lcom/tudou/ui/activity/DetailActivity;Lcom/tudou/service/download/DownloadInfo;Lcom/youku/player/plugin/MediaPlayerDelegate;Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;Z)V

    .line 922
    return-void
.end method
