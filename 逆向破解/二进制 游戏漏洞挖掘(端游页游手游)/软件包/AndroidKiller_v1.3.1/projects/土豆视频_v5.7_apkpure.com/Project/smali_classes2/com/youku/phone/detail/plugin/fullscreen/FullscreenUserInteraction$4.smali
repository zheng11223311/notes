.class Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$4;
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
    .line 353
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$4;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 26
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 357
    const-string v3, "onClick_share"

    invoke-static {v3}, Lcom/youku/util/Util;->isGoOn(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 422
    :goto_0
    return-void

    .line 360
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$4;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;

    iget-object v3, v3, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$4;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;

    iget-object v3, v3, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v3, v3, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$4;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;

    iget-object v3, v3, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->context:Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v3}, Lcom/tudou/ui/activity/DetailActivity;->getmVideoDetail()Lcom/youku/vo/NewVideoDetail;

    move-result-object v3

    if-nez v3, :cond_2

    .line 365
    :cond_1
    const-string v3, "\u89c6\u9891\u4fe1\u606f\u5c1a\u672a\u6210\u529f\u83b7\u53d6\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5\u3002"

    invoke-static {v3}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    goto :goto_0

    .line 369
    :cond_2
    new-instance v20, Ljava/util/HashMap;

    invoke-direct/range {v20 .. v20}, Ljava/util/HashMap;-><init>()V

    .line 370
    .local v20, "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "type"

    const-string v4, "\u6a2a\u5c4f"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    const-string v3, "t1.detail_player.share"

    move-object/from16 v0, v20

    invoke-static {v3, v0}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 375
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$4;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;

    iget-object v3, v3, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->context:Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v3}, Lcom/tudou/ui/activity/DetailActivity;->dissmissPauseAD()V

    .line 376
    const-string v3, "\u64ad\u653e\u9875\u5206\u4eab\u6309\u94ae\u70b9\u51fb"

    const-class v4, Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "\u5206\u4eab\u6309\u94ae"

    invoke-static {v3, v4, v5}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 380
    .local v2, "bundle":Landroid/os/Bundle;
    const-string v3, "videoTitle"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$4;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;

    iget-object v4, v4, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v4, v4, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v4}, Lcom/youku/player/module/VideoUrlInfo;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    const-string v3, "videoUrl"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$4;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;

    iget-object v4, v4, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v4, v4, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v4}, Lcom/youku/player/module/VideoUrlInfo;->getWeburl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    const-string v3, "itemCode"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$4;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;

    iget-object v4, v4, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v4, v4, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v4}, Lcom/youku/player/module/VideoUrlInfo;->getVid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    const-string v3, "picUrl"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$4;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;

    iget-object v4, v4, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v4, v4, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v4}, Lcom/youku/player/module/VideoUrlInfo;->getimgUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$4;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;

    iget-object v3, v3, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->context:Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v3}, Lcom/tudou/ui/activity/DetailActivity;->getmVideoDetail()Lcom/youku/vo/NewVideoDetail;

    move-result-object v3

    iget-object v3, v3, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    iget-object v8, v3, Lcom/youku/vo/NewVideoDetail$Detail;->desc:Ljava/lang/String;

    .line 390
    .local v8, "summary":Ljava/lang/String;
    if-eqz v8, :cond_4

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x23

    if-lt v3, v4, :cond_4

    .line 391
    const-string v3, "summary"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    const/16 v6, 0x23

    invoke-virtual {v8, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    :goto_1
    const/16 v22, 0x0

    .line 399
    .local v22, "video":Lcom/tudou/detail/vo/Video;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$4;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;

    iget-object v3, v3, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->context:Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v3}, Lcom/tudou/ui/activity/DetailActivity;->getVideoList()Lcom/tudou/detail/vo/VideoList;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$4;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;

    iget-object v4, v4, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v4, v4, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v4}, Lcom/youku/player/module/VideoUrlInfo;->getVid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/tudou/detail/vo/VideoList;->getVideoByVideoId(Ljava/lang/String;)Lcom/tudou/detail/vo/Video;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v22

    .line 402
    :goto_2
    const/16 v21, 0x0

    .line 403
    .local v21, "tPlayTimesFromVideolist":I
    if-eqz v22, :cond_3

    .line 404
    move-object/from16 v0, v22

    iget v0, v0, Lcom/tudou/detail/vo/Video;->playtimes_count:I

    move/from16 v21, v0

    .line 407
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$4;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;

    iget-object v3, v3, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->context:Lcom/tudou/ui/activity/DetailActivity;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$4;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;

    iget-object v4, v4, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v4, v4, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v4}, Lcom/youku/player/module/VideoUrlInfo;->getTitle()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$4;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;

    iget-object v5, v5, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v5, v5, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v5}, Lcom/youku/player/module/VideoUrlInfo;->getWeburl()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$4;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;

    iget-object v6, v6, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v6, v6, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v6}, Lcom/youku/player/module/VideoUrlInfo;->getVid()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$4;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;

    iget-object v7, v7, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v7, v7, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v7}, Lcom/youku/player/module/VideoUrlInfo;->getItem_img_16_9()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x6

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$4;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;

    iget-object v11, v11, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v11, v11, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v11}, Lcom/youku/player/module/VideoUrlInfo;->getChannel_name()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$4;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;

    iget-object v12, v12, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->context:Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v12}, Lcom/tudou/ui/activity/DetailActivity;->getVideoBrief()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$4;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;

    iget-object v14, v14, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v14, v14, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v14}, Lcom/youku/player/module/VideoUrlInfo;->getShowId()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$4;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;

    iget-object v15, v15, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->context:Lcom/tudou/ui/activity/DetailActivity;

    iget-boolean v15, v15, Lcom/tudou/ui/activity/DetailActivity;->mIsFromDanmu:Z

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$4;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/youku/player/module/VideoUrlInfo;->getCid()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ""

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$4;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/youku/player/module/VideoUrlInfo;->getItemShortDesc()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$4;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/youku/player/module/VideoUrlInfo;->getItemPlayTimes()J

    move-result-wide v18

    const-wide/16 v24, 0x0

    cmp-long v18, v18, v24

    if-nez v18, :cond_5

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v18, v0

    :goto_3
    invoke-static/range {v3 .. v19}, Lcom/tudou/android/TudouApi;->shareVideo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;J)Lcom/tudou/ui/activity/BindActivity;

    goto/16 :goto_0

    .line 394
    .end local v21    # "tPlayTimesFromVideolist":I
    .end local v22    # "video":Lcom/tudou/detail/vo/Video;
    :cond_4
    const-string v3, "summary"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 407
    .restart local v21    # "tPlayTimesFromVideolist":I
    .restart local v22    # "video":Lcom/tudou/detail/vo/Video;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction$4;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenUserInteraction;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/youku/player/module/VideoUrlInfo;->getItemPlayTimes()J

    move-result-wide v18

    goto :goto_3

    .line 400
    .end local v21    # "tPlayTimesFromVideolist":I
    :catch_0
    move-exception v3

    goto/16 :goto_2
.end method
