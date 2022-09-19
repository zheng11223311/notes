.class Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$15;
.super Ljava/lang/Object;
.source "PluginFullScreenVertical.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->onVideoInfoGetted()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

.field final synthetic val$tPayInfo:Lcom/youku/player/module/PayInfo;

.field final synthetic val$tVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;


# direct methods
.method constructor <init>(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;Lcom/youku/player/module/PayInfo;Lcom/youku/player/module/VideoUrlInfo;)V
    .locals 0

    .prologue
    .line 1395
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$15;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    iput-object p2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$15;->val$tPayInfo:Lcom/youku/player/module/PayInfo;

    iput-object p3, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$15;->val$tVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/16 v7, 0x4e22

    .line 1399
    iget-object v5, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$15;->val$tPayInfo:Lcom/youku/player/module/PayInfo;

    invoke-virtual {v5}, Lcom/youku/player/module/PayInfo;->supportMon()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1400
    new-instance v2, Landroid/content/Intent;

    iget-object v5, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$15;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    iget-object v5, v5, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mDetailActivity:Lcom/tudou/ui/activity/DetailActivity;

    const-class v6, Lcom/tudou/ui/activity/VipBuyActivity;

    invoke-direct {v2, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1401
    .local v2, "intent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$15;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    iget-object v5, v5, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mDetailActivity:Lcom/tudou/ui/activity/DetailActivity;

    invoke-static {v5, v2, v7}, Lcom/tudou/android/Youku;->startActivityForResult(Landroid/content/Context;Landroid/content/Intent;I)V

    .line 1402
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "VideoDetail|Buy|ct=\u7535\u5f71&itemCode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$15;->val$tVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v6}, Lcom/youku/player/module/VideoUrlInfo;->getVid()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&albumID="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$15;->val$tVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v6}, Lcom/youku/player/module/VideoUrlInfo;->getShowId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1403
    .local v3, "str":Ljava/lang/String;
    const-string v5, "\u8bd5\u64ad\u524d10\u5206\u949f\u8d2d\u4e70\u4f1a\u5458\u70b9\u51fb"

    const-class v6, Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "\u8bd5\u64ad\u524d10\u5206\u949f\u8d2d\u4e70"

    invoke-static {v5, v6, v7, v3}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1438
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "str":Ljava/lang/String;
    :goto_0
    return-void

    .line 1405
    :cond_0
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v5

    invoke-virtual {v5}, Lcom/youku/vo/UserBean;->isLogin()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1406
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1407
    .local v1, "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$15;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    invoke-virtual {v5}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->getContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Lcom/tudou/ui/activity/DetailActivity;

    .line 1408
    .local v4, "tActivity":Lcom/tudou/ui/activity/DetailActivity;
    const-string v5, "vid"

    invoke-virtual {v4}, Lcom/tudou/ui/activity/DetailActivity;->getCurrentVid()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1409
    const-string v5, "t1.detail_player.buyvideo"

    invoke-static {v5, v1}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 1410
    iget-object v5, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$15;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    iget-object v5, v5, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v5}, Lcom/youku/player/plugin/MediaPlayerDelegate;->isPlaying()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1411
    iget-object v5, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$15;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    iget-object v5, v5, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v5}, Lcom/youku/player/plugin/MediaPlayerDelegate;->pauseNoAd()V

    .line 1413
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1414
    .local v0, "b":Landroid/os/Bundle;
    const-string v5, "arguments.extra.aid"

    iget-object v6, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$15;->val$tPayInfo:Lcom/youku/player/module/PayInfo;

    iget-object v6, v6, Lcom/youku/player/module/PayInfo;->showid:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1415
    const-string v5, "arguments.extra.pay.type"

    iget-object v6, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$15;->val$tPayInfo:Lcom/youku/player/module/PayInfo;

    iget-object v6, v6, Lcom/youku/player/module/PayInfo;->payType:Ljava/util/ArrayList;

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 1416
    const-string v5, "arguments.extra.oriprice"

    iget-object v6, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$15;->val$tPayInfo:Lcom/youku/player/module/PayInfo;

    iget-object v6, v6, Lcom/youku/player/module/PayInfo;->oriprice:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1417
    const-string v5, "arguments.extra.coprice"

    iget-object v6, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$15;->val$tPayInfo:Lcom/youku/player/module/PayInfo;

    iget-object v6, v6, Lcom/youku/player/module/PayInfo;->coprice:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1418
    const-string v5, "arguments.extra.title"

    iget-object v6, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$15;->val$tVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v6}, Lcom/youku/player/module/VideoUrlInfo;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1419
    const-string v5, "arguments.extra.duration"

    iget-object v6, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$15;->val$tPayInfo:Lcom/youku/player/module/PayInfo;

    iget-object v6, v6, Lcom/youku/player/module/PayInfo;->duration:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1420
    iget-object v5, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$15;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    invoke-virtual {v5}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->getContext()Landroid/content/Context;

    move-result-object v5

    check-cast v5, Landroid/app/Activity;

    new-instance v6, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$15$1;

    invoke-direct {v6, p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$15$1;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$15;)V

    invoke-static {v5, v0, v6}, Lcom/tudou/ui/fragment/BuyFilmFragment;->ShowBuyFilmFragment(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tudou/ui/fragment/BuyFilmFragment$BuyFilmCallBack;)V

    goto/16 :goto_0

    .line 1434
    .end local v0    # "b":Landroid/os/Bundle;
    .end local v1    # "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "tActivity":Lcom/tudou/ui/activity/DetailActivity;
    :cond_2
    new-instance v2, Landroid/content/Intent;

    iget-object v5, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$15;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    iget-object v5, v5, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mDetailActivity:Lcom/tudou/ui/activity/DetailActivity;

    const-class v6, Lcom/tudou/ui/activity/LoginActivity;

    invoke-direct {v2, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1435
    .restart local v2    # "intent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical$15;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;

    iget-object v5, v5, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenVertical;->mDetailActivity:Lcom/tudou/ui/activity/DetailActivity;

    invoke-static {v5, v2, v7}, Lcom/tudou/android/Youku;->startActivityForResult(Landroid/content/Context;Landroid/content/Intent;I)V

    goto/16 :goto_0
.end method
