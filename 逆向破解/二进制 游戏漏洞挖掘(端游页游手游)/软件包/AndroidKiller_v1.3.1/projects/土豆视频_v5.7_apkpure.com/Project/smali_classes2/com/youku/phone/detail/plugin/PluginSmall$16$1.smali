.class Lcom/youku/phone/detail/plugin/PluginSmall$16$1;
.super Lcom/tudou/ui/fragment/BuyFilmFragment$BuyFilmCallBack;
.source "PluginSmall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/phone/detail/plugin/PluginSmall$16;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/youku/phone/detail/plugin/PluginSmall$16;


# direct methods
.method constructor <init>(Lcom/youku/phone/detail/plugin/PluginSmall$16;)V
    .locals 0

    .prologue
    .line 1566
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/PluginSmall$16$1;->this$1:Lcom/youku/phone/detail/plugin/PluginSmall$16;

    invoke-direct {p0}, Lcom/tudou/ui/fragment/BuyFilmFragment$BuyFilmCallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail()V
    .locals 2

    .prologue
    .line 1575
    const-string v0, "PluginSmall"

    const-string v1, "BuyFilmFragment onFail"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1576
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall$16$1;->this$1:Lcom/youku/phone/detail/plugin/PluginSmall$16;

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/PluginSmall$16;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-boolean v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isPause:Z

    if-eqz v0, :cond_0

    .line 1577
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall$16$1;->this$1:Lcom/youku/phone/detail/plugin/PluginSmall$16;

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/PluginSmall$16;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->start()V

    .line 1579
    :cond_0
    return-void
.end method

.method public onSucess()V
    .locals 2

    .prologue
    .line 1569
    const-string v0, "PluginSmall"

    const-string v1, "BuyFilmFragment onSuccess"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1570
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall$16$1;->this$1:Lcom/youku/phone/detail/plugin/PluginSmall$16;

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/PluginSmall$16;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-static {v0}, Lcom/youku/phone/detail/plugin/PluginSmall;->access$1200(Lcom/youku/phone/detail/plugin/PluginSmall;)Lcom/tudou/ui/activity/DetailActivity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tudou/ui/activity/DetailActivity;->replayWhenStateChange(Z)V

    .line 1571
    return-void
.end method
