.class Lcom/youku/phone/detail/plugin/PluginSmall$30;
.super Ljava/lang/Object;
.source "PluginSmall.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/phone/detail/plugin/PluginSmall;->playComplete(Z)V
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
    .line 2633
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/PluginSmall$30;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 2636
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall$30;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall$30;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-nez v0, :cond_1

    .line 2649
    :cond_0
    :goto_0
    return-void

    .line 2640
    :cond_1
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall$30;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iput-boolean v1, v0, Lcom/youku/player/module/VideoUrlInfo;->IsSendVV:Z

    .line 2641
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall$30;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v0, v1}, Lcom/youku/player/module/VideoUrlInfo;->setProgress(I)V

    .line 2642
    invoke-static {}, Lcom/youku/player/Track;->init()V

    .line 2643
    const/4 v0, 0x1

    sput-boolean v0, Lcom/youku/player/Track;->isRealVideoStarted:Z

    .line 2644
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall$30;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-static {v0}, Lcom/youku/phone/detail/plugin/PluginSmall;->access$1200(Lcom/youku/phone/detail/plugin/PluginSmall;)Lcom/tudou/ui/activity/DetailActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/PluginSmall$30;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    iget-object v1, v1, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v1}, Lcom/youku/player/module/VideoUrlInfo;->getVid()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/youku/phone/detail/plugin/PluginSmall$30;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    iget-object v2, v2, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v2, v2, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v2, v2, Lcom/youku/player/module/VideoUrlInfo;->playType:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/youku/player/util/AnalyticsWrapper;->playRequest(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 2647
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall$30;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->start()V

    .line 2648
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall$30;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->onVVBegin()V

    goto :goto_0
.end method
