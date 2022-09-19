.class Lcom/youku/phone/detail/plugin/PluginSmall$16;
.super Ljava/lang/Object;
.source "PluginSmall.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/phone/detail/plugin/PluginSmall;->onVideoInfoGetted()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

.field final synthetic val$tPayInfo:Lcom/youku/player/module/PayInfo;

.field final synthetic val$tVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;


# direct methods
.method constructor <init>(Lcom/youku/phone/detail/plugin/PluginSmall;Lcom/youku/player/module/PayInfo;Lcom/youku/player/module/VideoUrlInfo;)V
    .locals 0

    .prologue
    .line 1545
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/PluginSmall$16;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    iput-object p2, p0, Lcom/youku/phone/detail/plugin/PluginSmall$16;->val$tPayInfo:Lcom/youku/player/module/PayInfo;

    iput-object p3, p0, Lcom/youku/phone/detail/plugin/PluginSmall$16;->val$tVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/16 v5, 0x4e22

    .line 1549
    iget-object v3, p0, Lcom/youku/phone/detail/plugin/PluginSmall$16;->val$tPayInfo:Lcom/youku/player/module/PayInfo;

    invoke-virtual {v3}, Lcom/youku/player/module/PayInfo;->supportMon()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1550
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/youku/phone/detail/plugin/PluginSmall$16;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-static {v3}, Lcom/youku/phone/detail/plugin/PluginSmall;->access$1200(Lcom/youku/phone/detail/plugin/PluginSmall;)Lcom/tudou/ui/activity/DetailActivity;

    move-result-object v3

    const-class v4, Lcom/tudou/ui/activity/VipBuyActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1551
    .local v1, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/youku/phone/detail/plugin/PluginSmall$16;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-static {v3}, Lcom/youku/phone/detail/plugin/PluginSmall;->access$1200(Lcom/youku/phone/detail/plugin/PluginSmall;)Lcom/tudou/ui/activity/DetailActivity;

    move-result-object v3

    invoke-static {v3, v1, v5}, Lcom/tudou/android/Youku;->startActivityForResult(Landroid/content/Context;Landroid/content/Intent;I)V

    .line 1552
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VideoDetail|Buy|ct=\u7535\u5f71&itemCode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/youku/phone/detail/plugin/PluginSmall$16;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    iget-object v4, v4, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v4, v4, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v4}, Lcom/youku/player/module/VideoUrlInfo;->getVid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&albumID="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/youku/phone/detail/plugin/PluginSmall$16;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    iget-object v4, v4, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v4, v4, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v4}, Lcom/youku/player/module/VideoUrlInfo;->getShowId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1553
    .local v2, "str":Ljava/lang/String;
    const-string v3, "\u8bd5\u64ad\u524d10\u5206\u949f\u8d2d\u4e70\u4f1a\u5458\u70b9\u51fb"

    const-class v4, Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "\u8bd5\u64ad\u524d10\u5206\u949f\u8d2d\u4e70"

    invoke-static {v3, v4, v5, v2}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1586
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "str":Ljava/lang/String;
    :goto_0
    return-void

    .line 1555
    :cond_0
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/youku/vo/UserBean;->isLogin()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1556
    iget-object v3, p0, Lcom/youku/phone/detail/plugin/PluginSmall$16;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    iget-object v3, v3, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v3}, Lcom/youku/player/plugin/MediaPlayerDelegate;->isPlaying()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1557
    iget-object v3, p0, Lcom/youku/phone/detail/plugin/PluginSmall$16;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    iget-object v3, v3, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v3}, Lcom/youku/player/plugin/MediaPlayerDelegate;->pauseNoAd()V

    .line 1559
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1560
    .local v0, "b":Landroid/os/Bundle;
    const-string v3, "arguments.extra.aid"

    iget-object v4, p0, Lcom/youku/phone/detail/plugin/PluginSmall$16;->val$tPayInfo:Lcom/youku/player/module/PayInfo;

    iget-object v4, v4, Lcom/youku/player/module/PayInfo;->showid:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1561
    const-string v3, "arguments.extra.oriprice"

    iget-object v4, p0, Lcom/youku/phone/detail/plugin/PluginSmall$16;->val$tPayInfo:Lcom/youku/player/module/PayInfo;

    iget-object v4, v4, Lcom/youku/player/module/PayInfo;->oriprice:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1562
    const-string v3, "arguments.extra.coprice"

    iget-object v4, p0, Lcom/youku/phone/detail/plugin/PluginSmall$16;->val$tPayInfo:Lcom/youku/player/module/PayInfo;

    iget-object v4, v4, Lcom/youku/player/module/PayInfo;->coprice:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1563
    const-string v3, "arguments.extra.pay.type"

    iget-object v4, p0, Lcom/youku/phone/detail/plugin/PluginSmall$16;->val$tPayInfo:Lcom/youku/player/module/PayInfo;

    iget-object v4, v4, Lcom/youku/player/module/PayInfo;->payType:Ljava/util/ArrayList;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 1564
    const-string v3, "arguments.extra.title"

    iget-object v4, p0, Lcom/youku/phone/detail/plugin/PluginSmall$16;->val$tVideoUrlInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v4}, Lcom/youku/player/module/VideoUrlInfo;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1565
    const-string v3, "arguments.extra.duration"

    iget-object v4, p0, Lcom/youku/phone/detail/plugin/PluginSmall$16;->val$tPayInfo:Lcom/youku/player/module/PayInfo;

    iget-object v4, v4, Lcom/youku/player/module/PayInfo;->duration:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1566
    iget-object v3, p0, Lcom/youku/phone/detail/plugin/PluginSmall$16;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-virtual {v3}, Lcom/youku/phone/detail/plugin/PluginSmall;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    new-instance v4, Lcom/youku/phone/detail/plugin/PluginSmall$16$1;

    invoke-direct {v4, p0}, Lcom/youku/phone/detail/plugin/PluginSmall$16$1;-><init>(Lcom/youku/phone/detail/plugin/PluginSmall$16;)V

    invoke-static {v3, v0, v4}, Lcom/tudou/ui/fragment/BuyFilmFragment;->ShowBuyFilmFragment(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tudou/ui/fragment/BuyFilmFragment$BuyFilmCallBack;)V

    goto :goto_0

    .line 1582
    .end local v0    # "b":Landroid/os/Bundle;
    :cond_2
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/youku/phone/detail/plugin/PluginSmall$16;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-static {v3}, Lcom/youku/phone/detail/plugin/PluginSmall;->access$1200(Lcom/youku/phone/detail/plugin/PluginSmall;)Lcom/tudou/ui/activity/DetailActivity;

    move-result-object v3

    const-class v4, Lcom/tudou/ui/activity/LoginActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1583
    .restart local v1    # "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/youku/phone/detail/plugin/PluginSmall$16;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-static {v3}, Lcom/youku/phone/detail/plugin/PluginSmall;->access$1200(Lcom/youku/phone/detail/plugin/PluginSmall;)Lcom/tudou/ui/activity/DetailActivity;

    move-result-object v3

    invoke-static {v3, v1, v5}, Lcom/tudou/android/Youku;->startActivityForResult(Landroid/content/Context;Landroid/content/Intent;I)V

    goto :goto_0
.end method
