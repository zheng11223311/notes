.class Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$5;
.super Ljava/lang/Object;
.source "FullscreenUserInteraction.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->initIneract()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;


# direct methods
.method constructor <init>(Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;)V
    .locals 0

    .prologue
    .line 425
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$5;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x1

    .line 430
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v0

    if-nez v0, :cond_0

    .line 431
    const v0, 0x7f0d02c3

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(I)V

    .line 497
    :goto_0
    return-void

    .line 434
    :cond_0
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$5;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-nez v0, :cond_1

    .line 435
    const-string v0, "\u89c6\u9891\u6570\u636e\u5c1a\u672a\u53d6\u5f97\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5\u3002"

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    goto :goto_0

    .line 439
    :cond_1
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$5;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;

    invoke-static {v0}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->access$000(Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;)Lcom/tudou/detail/widget/SwitchButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tudou/detail/widget/SwitchButton;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v0}, Lcom/tudou/ui/activity/DetailActivity;->getVideoList()Lcom/tudou/detail/vo/VideoList;

    move-result-object v9

    .line 440
    .local v9, "list":Lcom/tudou/detail/vo/VideoList;
    if-nez v9, :cond_2

    .line 441
    const-string v0, "\u89c6\u9891\u6570\u636e\u5c1a\u672a\u53d6\u5f97\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5\u3002"

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    goto :goto_0

    .line 445
    :cond_2
    const-string v0, "t1.detail_player.download"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 446
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$5;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;

    invoke-static {v0}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->access$000(Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;)Lcom/tudou/detail/widget/SwitchButton;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/tudou/detail/widget/SwitchButton;->showProgress(Z)V

    .line 450
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$5;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->context:Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v0}, Lcom/tudou/ui/activity/DetailActivity;->dissmissPauseAD()V

    .line 451
    const/4 v8, 0x0

    .line 452
    .local v8, "format":I
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$5;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v0}, Lcom/youku/player/module/VideoUrlInfo;->getCurrentQuality()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 465
    :goto_1
    move v7, v8

    .line 467
    .local v7, "finalformat":I
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/youku/util/Util;->isWifi()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/tudou/service/download/DownloadManager;->getInstance()Lcom/tudou/service/download/DownloadManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tudou/service/download/DownloadManager;->canUse3GDownload()Z

    move-result v0

    if-nez v0, :cond_3

    .line 470
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$5;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->pauseNoAd()V

    .line 472
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$5;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->context:Lcom/tudou/ui/activity/DetailActivity;

    const-string v1, "\u662f\u5426\u5141\u8bb8\u79fb\u52a8\u7f51\u7edc\u4e0b\u7f13\u5b58\u89c6\u9891?"

    const-string v2, "\u5141\u8bb8"

    const-string v3, "\u53d6\u6d88"

    new-instance v4, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$5$1;

    invoke-direct {v4, p0, v7}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$5$1;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$5;I)V

    const/4 v5, 0x0

    invoke-static/range {v0 .. v6}, Lcom/youku/util/Util;->alertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/youku/util/IAlert;II)Lcom/youku/widget/TudouDialog;

    goto :goto_0

    .line 454
    .end local v7    # "finalformat":I
    :pswitch_0
    const/4 v8, 0x7

    .line 455
    goto :goto_1

    .line 457
    :pswitch_1
    const/4 v8, 0x1

    .line 458
    goto :goto_1

    .line 460
    :pswitch_2
    const/4 v8, 0x5

    .line 461
    goto :goto_1

    .line 492
    .restart local v7    # "finalformat":I
    :cond_3
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$5;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;

    invoke-virtual {v0, v7}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->addToCache(I)V

    goto/16 :goto_0

    .line 452
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
