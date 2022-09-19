.class Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$35;
.super Ljava/lang/Object;
.source "PluginFullScreenHorizontal.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->onVideoInfoGetted()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

.field final synthetic val$tPayInfo:Lcom/youku/player/module/PayInfo;

.field final synthetic val$tVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;


# direct methods
.method constructor <init>(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;Lcom/youku/player/module/PayInfo;Lcom/youku/player/module/VideoUrlInfo;)V
    .locals 0

    .prologue
    .line 2762
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$35;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    iput-object p2, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$35;->val$tPayInfo:Lcom/youku/player/module/PayInfo;

    iput-object p3, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$35;->val$tVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/16 v7, 0x4e22

    .line 2766
    iget-object v5, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$35;->val$tPayInfo:Lcom/youku/player/module/PayInfo;

    invoke-virtual {v5}, Lcom/youku/player/module/PayInfo;->supportMon()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2767
    new-instance v2, Landroid/content/Intent;

    iget-object v5, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$35;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    iget-object v5, v5, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mDetailActivity:Lcom/tudou/ui/activity/DetailActivity;

    const-class v6, Lcom/tudou/ui/activity/VipBuyActivity;

    invoke-direct {v2, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2768
    .local v2, "intent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$35;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    iget-object v5, v5, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mDetailActivity:Lcom/tudou/ui/activity/DetailActivity;

    invoke-static {v5, v2, v7}, Lcom/tudou/android/Youku;->startActivityForResult(Landroid/content/Context;Landroid/content/Intent;I)V

    .line 2769
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "VideoDetail|Buy|ct=\u7535\u5f71&itemCode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$35;->val$tVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v6}, Lcom/youku/player/module/VideoUrlInfo;->getVid()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&albumID="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$35;->val$tVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v6}, Lcom/youku/player/module/VideoUrlInfo;->getShowId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2770
    .local v3, "str":Ljava/lang/String;
    const-string v5, "\u8bd5\u64ad\u524d10\u5206\u949f\u8d2d\u4e70\u4f1a\u5458\u70b9\u51fb"

    const-class v6, Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "\u8bd5\u64ad\u524d10\u5206\u949f\u8d2d\u4e70"

    invoke-static {v5, v6, v7, v3}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2805
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "str":Ljava/lang/String;
    :goto_0
    return-void

    .line 2772
    :cond_0
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v5

    invoke-virtual {v5}, Lcom/youku/vo/UserBean;->isLogin()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2773
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 2774
    .local v1, "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$35;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-virtual {v5}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->getContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Lcom/tudou/ui/activity/DetailActivity;

    .line 2775
    .local v4, "tActivity":Lcom/tudou/ui/activity/DetailActivity;
    const-string v5, "vid"

    invoke-virtual {v4}, Lcom/tudou/ui/activity/DetailActivity;->getCurrentVid()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2776
    const-string v5, "t1.detail_player.buyvideo"

    invoke-static {v5, v1}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 2777
    iget-object v5, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$35;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    iget-object v5, v5, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v5}, Lcom/youku/player/plugin/MediaPlayerDelegate;->isPlaying()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2778
    iget-object v5, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$35;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    iget-object v5, v5, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v5}, Lcom/youku/player/plugin/MediaPlayerDelegate;->pauseNoAd()V

    .line 2780
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2781
    .local v0, "b":Landroid/os/Bundle;
    const-string v5, "arguments.extra.aid"

    iget-object v6, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$35;->val$tPayInfo:Lcom/youku/player/module/PayInfo;

    iget-object v6, v6, Lcom/youku/player/module/PayInfo;->showid:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2782
    const-string v5, "arguments.extra.pay.type"

    iget-object v6, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$35;->val$tPayInfo:Lcom/youku/player/module/PayInfo;

    iget-object v6, v6, Lcom/youku/player/module/PayInfo;->payType:Ljava/util/ArrayList;

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 2783
    const-string v5, "arguments.extra.oriprice"

    iget-object v6, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$35;->val$tPayInfo:Lcom/youku/player/module/PayInfo;

    iget-object v6, v6, Lcom/youku/player/module/PayInfo;->oriprice:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2784
    const-string v5, "arguments.extra.coprice"

    iget-object v6, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$35;->val$tPayInfo:Lcom/youku/player/module/PayInfo;

    iget-object v6, v6, Lcom/youku/player/module/PayInfo;->coprice:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2785
    const-string v5, "arguments.extra.title"

    iget-object v6, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$35;->val$tVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v6}, Lcom/youku/player/module/VideoUrlInfo;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2786
    const-string v5, "arguments.extra.duration"

    iget-object v6, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$35;->val$tPayInfo:Lcom/youku/player/module/PayInfo;

    iget-object v6, v6, Lcom/youku/player/module/PayInfo;->duration:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2787
    iget-object v5, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$35;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-virtual {v5}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->getContext()Landroid/content/Context;

    move-result-object v5

    check-cast v5, Landroid/app/Activity;

    new-instance v6, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$35$1;

    invoke-direct {v6, p0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$35$1;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$35;)V

    invoke-static {v5, v0, v6}, Lcom/tudou/ui/fragment/BuyFilmFragment;->ShowBuyFilmFragment(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tudou/ui/fragment/BuyFilmFragment$BuyFilmCallBack;)V

    goto/16 :goto_0

    .line 2801
    .end local v0    # "b":Landroid/os/Bundle;
    .end local v1    # "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "tActivity":Lcom/tudou/ui/activity/DetailActivity;
    :cond_2
    new-instance v2, Landroid/content/Intent;

    iget-object v5, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$35;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    iget-object v5, v5, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mDetailActivity:Lcom/tudou/ui/activity/DetailActivity;

    const-class v6, Lcom/tudou/ui/activity/LoginActivity;

    invoke-direct {v2, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2802
    .restart local v2    # "intent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$35;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    iget-object v5, v5, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mDetailActivity:Lcom/tudou/ui/activity/DetailActivity;

    invoke-static {v5, v2, v7}, Lcom/tudou/android/Youku;->startActivityForResult(Landroid/content/Context;Landroid/content/Intent;I)V

    goto/16 :goto_0
.end method
