.class Lcom/youku/phone/detail/plugin/PluginSmall$12;
.super Ljava/lang/Object;
.source "PluginSmall.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/phone/detail/plugin/PluginSmall;->alertRetry(Landroid/app/Activity;I)V
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
    .line 1078
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/PluginSmall$12;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1081
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall$12;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/PluginSmall;->hideLoading()V

    .line 1082
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall$12;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-static {v0}, Lcom/youku/phone/detail/plugin/PluginSmall;->access$1800(Lcom/youku/phone/detail/plugin/PluginSmall;)V

    .line 1084
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall$12;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v0, :cond_0

    .line 1085
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall$12;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->release()V

    .line 1086
    :cond_0
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall$12;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-static {v0}, Lcom/youku/phone/detail/plugin/PluginSmall;->access$1200(Lcom/youku/phone/detail/plugin/PluginSmall;)Lcom/tudou/ui/activity/DetailActivity;

    move-result-object v0

    new-instance v1, Lcom/youku/phone/detail/plugin/PluginSmall$12$1;

    invoke-direct {v1, p0}, Lcom/youku/phone/detail/plugin/PluginSmall$12$1;-><init>(Lcom/youku/phone/detail/plugin/PluginSmall$12;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1093
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall$12;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall$12;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-boolean v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isFullScreen:Z

    if-nez v0, :cond_1

    .line 1095
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall$12;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isStartPlay:Z

    .line 1097
    :cond_1
    return-void
.end method
