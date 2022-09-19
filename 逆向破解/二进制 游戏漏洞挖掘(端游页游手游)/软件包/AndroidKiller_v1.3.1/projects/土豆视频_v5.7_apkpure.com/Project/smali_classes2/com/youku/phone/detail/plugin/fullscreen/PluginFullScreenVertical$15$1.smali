.class Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$15$1;
.super Lcom/tudou/ui/fragment/BuyFilmFragment$BuyFilmCallBack;
.source "PluginFullScreenVertical.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$15;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$15;


# direct methods
.method constructor <init>(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$15;)V
    .locals 0

    .prologue
    .line 1420
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$15$1;->this$1:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$15;

    invoke-direct {p0}, Lcom/tudou/ui/fragment/BuyFilmFragment$BuyFilmCallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail()V
    .locals 1

    .prologue
    .line 1428
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$15$1;->this$1:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$15;

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$15;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-boolean v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isPause:Z

    if-eqz v0, :cond_0

    .line 1429
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$15$1;->this$1:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$15;

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$15;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->start()V

    .line 1431
    :cond_0
    return-void
.end method

.method public onSucess()V
    .locals 2

    .prologue
    .line 1423
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$15$1;->this$1:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$15;

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$15;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mDetailActivity:Lcom/tudou/ui/activity/DetailActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tudou/ui/activity/DetailActivity;->replayWhenStateChange(Z)V

    .line 1424
    return-void
.end method
