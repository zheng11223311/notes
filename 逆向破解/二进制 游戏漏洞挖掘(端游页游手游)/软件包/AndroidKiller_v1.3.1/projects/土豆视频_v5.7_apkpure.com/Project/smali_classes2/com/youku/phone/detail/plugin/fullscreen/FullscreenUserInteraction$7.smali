.class Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$7;
.super Ljava/lang/Object;
.source "FullscreenUserInteraction.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;
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
    .line 521
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$7;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    .line 525
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$7;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;

    iget-object v1, v1, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->context:Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v1}, Lcom/tudou/ui/activity/DetailActivity;->getmVideoDetail()Lcom/youku/vo/NewVideoDetail;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$7;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;

    iget-object v1, v1, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-nez v1, :cond_1

    .line 527
    :cond_0
    const-string v1, "\u89c6\u9891\u6570\u636e\u5c1a\u672a\u53d6\u5f97\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5"

    invoke-static {v1}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    .line 634
    :goto_0
    return-void

    .line 532
    :cond_1
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 533
    .local v9, "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "type"

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$7;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;

    iget-object v1, v1, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v1}, Lcom/youku/player/module/VideoUrlInfo;->getAttention()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "\u53d6\u6d88\u8ba2\u9605"

    :goto_1
    invoke-virtual {v9, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 534
    const-string v1, "vid"

    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$7;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;

    iget-object v3, v3, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v3, v3, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v3}, Lcom/youku/player/module/VideoUrlInfo;->getVid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 535
    const-string v1, "t1.detail_player.subscribe"

    invoke-static {v1, v9}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 537
    sput-boolean v4, Lcom/tudou/ui/fragment/SubscribeFragment;->mRefreshKey:Z

    .line 538
    sput-boolean v4, Lcom/tudou/ui/fragment/NewPodcastFragment;->mRefreshKey:Z

    .line 541
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$7;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;

    invoke-static {v1}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->access$300(Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;)Lcom/tudou/detail/widget/SwitchButton;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/tudou/detail/widget/SwitchButton;->showProgress(Z)V

    .line 542
    invoke-static {}, Lcom/tudou/service/attention/AttentionManager;->getInstance()Lcom/tudou/service/attention/IAttention;

    move-result-object v0

    .line 543
    .local v0, "iattention":Lcom/tudou/service/attention/IAttention;
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$7;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;

    iget-object v1, v1, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v1}, Lcom/youku/player/module/VideoUrlInfo;->getAttention()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 548
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$7;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;

    iget-object v1, v1, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v1}, Lcom/youku/player/module/VideoUrlInfo;->getShowId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 550
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$7;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;

    iget-object v1, v1, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v1}, Lcom/youku/player/module/VideoUrlInfo;->getShowId()Ljava/lang/String;

    move-result-object v2

    .line 551
    .local v2, "id":Ljava/lang/String;
    const/4 v7, 0x1

    .line 556
    .local v7, "type":I
    :goto_2
    const-string v1, "\u64ad\u653e\u9875\u53d6\u6d88\u8ba2\u9605\u6309\u94ae\u70b9\u51fb"

    const-class v3, Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "\u64ad\u653e\u9875\u53d6\u6d88\u8ba2\u9605\u6309\u94ae"

    invoke-static {v1, v3, v4}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$7;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;

    iget-object v1, v1, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->context:Lcom/tudou/ui/activity/DetailActivity;

    new-instance v3, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$7$1;

    invoke-direct {v3, p0}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$7$1;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$7;)V

    invoke-interface {v0, v1, v2, v7, v3}, Lcom/tudou/service/attention/IAttention;->cancelAttention(Landroid/content/Context;Ljava/lang/String;ILcom/tudou/service/attention/IAttention$CallBack;)V

    goto :goto_0

    .line 533
    .end local v0    # "iattention":Lcom/tudou/service/attention/IAttention;
    .end local v2    # "id":Ljava/lang/String;
    .end local v7    # "type":I
    :cond_2
    const-string v1, "\u8ba2\u9605"

    goto :goto_1

    .line 553
    .restart local v0    # "iattention":Lcom/tudou/service/attention/IAttention;
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$7;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;

    iget-object v3, v3, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->context:Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v3}, Lcom/tudou/ui/activity/DetailActivity;->getmVideoDetail()Lcom/youku/vo/NewVideoDetail;

    move-result-object v3

    iget-object v3, v3, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    iget v3, v3, Lcom/youku/vo/NewVideoDetail$Detail;->userid:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 554
    .restart local v2    # "id":Ljava/lang/String;
    const/4 v7, 0x2

    .restart local v7    # "type":I
    goto :goto_2

    .line 579
    .end local v2    # "id":Ljava/lang/String;
    .end local v7    # "type":I
    :cond_4
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$7;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;

    iget-object v1, v1, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v1}, Lcom/youku/player/module/VideoUrlInfo;->getShowId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 581
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$7;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;

    iget-object v1, v1, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v1}, Lcom/youku/player/module/VideoUrlInfo;->getShowId()Ljava/lang/String;

    move-result-object v2

    .line 582
    .restart local v2    # "id":Ljava/lang/String;
    const/4 v7, 0x1

    .line 583
    .restart local v7    # "type":I
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$7;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;

    iget-object v1, v1, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->context:Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v1}, Lcom/tudou/ui/activity/DetailActivity;->getmVideoDetail()Lcom/youku/vo/NewVideoDetail;

    move-result-object v1

    iget-object v1, v1, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    iget-object v6, v1, Lcom/youku/vo/NewVideoDetail$Detail;->title:Ljava/lang/String;

    .line 601
    .local v6, "title":Ljava/lang/String;
    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/youku/vo/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 602
    const v1, 0x7f0d00a8

    invoke-static {v1}, Lcom/youku/util/Util;->showTips(I)V

    .line 603
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$7;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;

    invoke-static {v1}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->access$300(Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;)Lcom/tudou/detail/widget/SwitchButton;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/tudou/detail/widget/SwitchButton;->showProgress(Z)V

    goto/16 :goto_0

    .line 585
    .end local v2    # "id":Ljava/lang/String;
    .end local v6    # "title":Ljava/lang/String;
    .end local v7    # "type":I
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$7;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;

    iget-object v3, v3, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->context:Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v3}, Lcom/tudou/ui/activity/DetailActivity;->getmVideoDetail()Lcom/youku/vo/NewVideoDetail;

    move-result-object v3

    iget-object v3, v3, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    iget v3, v3, Lcom/youku/vo/NewVideoDetail$Detail;->userid:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 586
    .restart local v2    # "id":Ljava/lang/String;
    const/4 v7, 0x2

    .line 587
    .restart local v7    # "type":I
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$7;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;

    iget-object v1, v1, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->context:Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v1}, Lcom/tudou/ui/activity/DetailActivity;->getmVideoDetail()Lcom/youku/vo/NewVideoDetail;

    move-result-object v1

    iget-object v1, v1, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    iget-object v6, v1, Lcom/youku/vo/NewVideoDetail$Detail;->username:Ljava/lang/String;

    .restart local v6    # "title":Ljava/lang/String;
    goto :goto_3

    .line 606
    :cond_6
    const-string v1, "\u64ad\u653e\u9875\u8ba2\u9605\u6309\u94ae\u70b9\u51fb"

    const-class v3, Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "\u64ad\u653e\u9875\u8ba2\u9605\u6309\u94ae"

    invoke-static {v1, v3, v4}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 608
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$7;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;

    iget-object v1, v1, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->context:Lcom/tudou/ui/activity/DetailActivity;

    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$7;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;

    iget-object v3, v3, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->context:Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v3}, Lcom/tudou/ui/activity/DetailActivity;->getmVideoDetail()Lcom/youku/vo/NewVideoDetail;

    move-result-object v3

    iget-object v3, v3, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    iget-object v3, v3, Lcom/youku/vo/NewVideoDetail$Detail;->channel_pic:Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$7;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;

    iget-object v5, v5, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->context:Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v5}, Lcom/tudou/ui/activity/DetailActivity;->getmVideoDetail()Lcom/youku/vo/NewVideoDetail;

    move-result-object v5

    iget-object v5, v5, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    iget-boolean v5, v5, Lcom/youku/vo/NewVideoDetail$Detail;->isVuser:Z

    new-instance v8, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$7$2;

    invoke-direct {v8, p0}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$7$2;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$7;)V

    invoke-interface/range {v0 .. v8}, Lcom/tudou/service/attention/IAttention;->addAttention(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ILcom/tudou/service/attention/IAttention$CallBack;)V

    goto/16 :goto_0
.end method
