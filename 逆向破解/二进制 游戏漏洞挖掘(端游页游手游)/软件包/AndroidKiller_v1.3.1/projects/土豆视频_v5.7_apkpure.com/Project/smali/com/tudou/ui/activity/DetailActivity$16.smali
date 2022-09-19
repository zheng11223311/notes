.class Lcom/tudou/ui/activity/DetailActivity$16;
.super Ljava/lang/Object;
.source "DetailActivity.java"

# interfaces
.implements Lcom/youku/phone/detail/plugin/fullscreen/FavorService$NetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/activity/DetailActivity;->onBtnFavClicked(Lcom/tudou/detail/DetailModel$OnVideoFavCompleteListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/activity/DetailActivity;

.field final synthetic val$lis:Lcom/tudou/detail/DetailModel$OnVideoFavCompleteListener;


# direct methods
.method constructor <init>(Lcom/tudou/ui/activity/DetailActivity;Lcom/tudou/detail/DetailModel$OnVideoFavCompleteListener;)V
    .locals 0

    .prologue
    .line 3322
    iput-object p1, p0, Lcom/tudou/ui/activity/DetailActivity$16;->this$0:Lcom/tudou/ui/activity/DetailActivity;

    iput-object p2, p0, Lcom/tudou/ui/activity/DetailActivity$16;->val$lis:Lcom/tudou/detail/DetailModel$OnVideoFavCompleteListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(Lcom/youku/player/plugin/SimpleMsgResult;)V
    .locals 6
    .param p1, "result"    # Lcom/youku/player/plugin/SimpleMsgResult;

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x1

    .line 3326
    invoke-static {}, Lcom/tudou/ui/activity/DetailActivity;->access$400()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "favor result.getSucc() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/youku/player/plugin/SimpleMsgResult;->getSucc()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3327
    invoke-virtual {p1}, Lcom/youku/player/plugin/SimpleMsgResult;->getSucc()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3328
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity$16;->this$0:Lcom/tudou/ui/activity/DetailActivity;

    invoke-static {v0}, Lcom/tudou/ui/activity/DetailActivity;->access$000(Lcom/tudou/ui/activity/DetailActivity;)Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v0

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->pluginManager:Lcom/youku/player/plugin/PluginManager;

    invoke-virtual {v0}, Lcom/youku/player/plugin/PluginManager;->setFav()V

    .line 3329
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity$16;->this$0:Lcom/tudou/ui/activity/DetailActivity;

    invoke-static {v0}, Lcom/tudou/ui/activity/DetailActivity;->access$000(Lcom/tudou/ui/activity/DetailActivity;)Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v0

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iput-boolean v1, v0, Lcom/youku/player/module/VideoUrlInfo;->isFaved:Z

    .line 3330
    const v0, 0x7f0d01e7

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(I)V

    .line 3331
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity$16;->val$lis:Lcom/tudou/detail/DetailModel$OnVideoFavCompleteListener;

    iget-object v2, p0, Lcom/tudou/ui/activity/DetailActivity$16;->this$0:Lcom/tudou/ui/activity/DetailActivity;

    invoke-static {v2}, Lcom/tudou/ui/activity/DetailActivity;->access$000(Lcom/tudou/ui/activity/DetailActivity;)Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v2

    iget-object v2, v2, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v2}, Lcom/youku/player/module/VideoUrlInfo;->getVid()Ljava/lang/String;

    move-result-object v3

    move v2, v1

    invoke-interface/range {v0 .. v5}, Lcom/tudou/detail/DetailModel$OnVideoFavCompleteListener;->onVideoFavComplete(ZZLjava/lang/String;Ljava/lang/String;I)V

    .line 3335
    :goto_0
    return-void

    .line 3333
    :cond_0
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity$16;->val$lis:Lcom/tudou/detail/DetailModel$OnVideoFavCompleteListener;

    iget-object v2, p0, Lcom/tudou/ui/activity/DetailActivity$16;->this$0:Lcom/tudou/ui/activity/DetailActivity;

    invoke-static {v2}, Lcom/tudou/ui/activity/DetailActivity;->access$000(Lcom/tudou/ui/activity/DetailActivity;)Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v2

    iget-object v2, v2, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v2}, Lcom/youku/player/module/VideoUrlInfo;->getVid()Ljava/lang/String;

    move-result-object v3

    move v2, v5

    invoke-interface/range {v0 .. v5}, Lcom/tudou/detail/DetailModel$OnVideoFavCompleteListener;->onVideoFavComplete(ZZLjava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method
