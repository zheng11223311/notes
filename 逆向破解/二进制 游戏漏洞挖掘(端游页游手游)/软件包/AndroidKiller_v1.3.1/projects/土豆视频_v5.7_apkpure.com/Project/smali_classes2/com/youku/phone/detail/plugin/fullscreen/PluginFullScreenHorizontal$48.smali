.class Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$48;
.super Ljava/lang/Object;
.source "PluginFullScreenHorizontal.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->goEndPage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;


# direct methods
.method constructor <init>(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)V
    .locals 0

    .prologue
    .line 3778
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$48;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 3782
    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$48;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-static {v3}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->access$6000(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3783
    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$48;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    iget-object v3, v3, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v3}, Lcom/youku/player/plugin/MediaPlayerDelegate;->release()V

    .line 3784
    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$48;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    iget-object v3, v3, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v3}, Lcom/youku/player/plugin/MediaPlayerDelegate;->setFirstUnloaded()V

    .line 3785
    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$48;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->hasGotoEnd:Z

    .line 3787
    const/4 v2, 0x0

    .line 3789
    .local v2, "video":Lcom/tudou/detail/vo/Video;
    :try_start_0
    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$48;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    iget-object v3, v3, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mDetailActivity:Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v3}, Lcom/tudou/ui/activity/DetailActivity;->getVideoList()Lcom/tudou/detail/vo/VideoList;

    move-result-object v3

    iget-object v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$48;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    iget-object v4, v4, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v4, v4, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v4}, Lcom/youku/player/module/VideoUrlInfo;->getVid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/tudou/detail/vo/VideoList;->getVideoByVideoId(Ljava/lang/String;)Lcom/tudou/detail/vo/Video;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 3792
    :goto_0
    const/4 v1, 0x0

    .line 3793
    .local v1, "tPlayTimesFromVideolist":I
    if-eqz v2, :cond_0

    .line 3794
    iget v1, v2, Lcom/tudou/detail/vo/Video;->playtimes_count:I

    .line 3797
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$48;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    iget-object v3, v3, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mDetailActivity:Lcom/tudou/ui/activity/DetailActivity;

    const-class v4, Lcom/youku/phone/detail/plugin/fullscreen/EndActivity;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3798
    .local v0, "endIntent":Landroid/content/Intent;
    const-string v3, "intent.extra.video.id"

    iget-object v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$48;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    iget-object v4, v4, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v4, v4, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v4}, Lcom/youku/player/module/VideoUrlInfo;->getVid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3799
    const-string v3, "intent.extra.video.title"

    iget-object v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$48;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    iget-object v4, v4, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v4, v4, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v4}, Lcom/youku/player/module/VideoUrlInfo;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3800
    const-string v3, "intent.extra.video.img.path"

    iget-object v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$48;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    iget-object v4, v4, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v4, v4, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v4}, Lcom/youku/player/module/VideoUrlInfo;->getimgUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3801
    const-string v3, "intent.extra.video.detail"

    iget-object v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$48;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    iget-object v4, v4, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mDetailActivity:Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v4}, Lcom/tudou/ui/activity/DetailActivity;->getmVideoDetail()Lcom/youku/vo/NewVideoDetail;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 3802
    const-string v3, "intent.extra.video.weburl"

    iget-object v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$48;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    iget-object v4, v4, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v4, v4, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v4}, Lcom/youku/player/module/VideoUrlInfo;->getWeburl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3803
    const-string v3, "intent.extra.video.img.path.16.9"

    iget-object v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$48;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    iget-object v4, v4, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v4, v4, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v4}, Lcom/youku/player/module/VideoUrlInfo;->getItem_img_16_9()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3804
    const-string v3, "intent.extra.video.channel.name"

    iget-object v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$48;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    iget-object v4, v4, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v4, v4, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v4}, Lcom/youku/player/module/VideoUrlInfo;->getChannel_name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3805
    const-string v3, "intent.extra.video.img.show.id"

    iget-object v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$48;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    iget-object v4, v4, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v4, v4, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v4}, Lcom/youku/player/module/VideoUrlInfo;->getShowId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3806
    const-string v3, "intent.extra.video.brief"

    iget-object v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$48;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    iget-object v4, v4, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mDetailActivity:Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v4}, Lcom/tudou/ui/activity/DetailActivity;->getVideoBrief()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3807
    const-string v3, "intent.extra.video.item.short.desc"

    iget-object v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$48;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    iget-object v4, v4, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v4, v4, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v4}, Lcom/youku/player/module/VideoUrlInfo;->getItemShortDesc()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3808
    const-string v3, "intent.extra.video.item.playtimes"

    iget-object v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$48;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    iget-object v4, v4, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v4, v4, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v4}, Lcom/youku/player/module/VideoUrlInfo;->getItemPlayTimes()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    int-to-long v4, v1

    :goto_1
    invoke-virtual {v0, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3809
    const-string v3, "intent.extra.video.cid"

    iget-object v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$48;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    iget-object v4, v4, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v4, v4, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v4}, Lcom/youku/player/module/VideoUrlInfo;->getCid()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3810
    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$48;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    iput-boolean v8, v3, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->firstLoaded:Z

    .line 3811
    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$48;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-static {v3, v8}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->access$5802(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;Z)Z

    .line 3812
    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$48;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    invoke-static {v3, v8}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->access$2802(Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;Z)Z

    .line 3814
    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$48;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    iget-object v3, v3, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mDetailActivity:Lcom/tudou/ui/activity/DetailActivity;

    const/16 v4, 0xc9

    invoke-static {v3, v0, v4}, Lcom/tudou/android/Youku;->startActivityForResult(Landroid/content/Context;Landroid/content/Intent;I)V

    .line 3821
    .end local v0    # "endIntent":Landroid/content/Intent;
    .end local v1    # "tPlayTimesFromVideolist":I
    .end local v2    # "video":Lcom/tudou/detail/vo/Video;
    :goto_2
    return-void

    .line 3808
    .restart local v0    # "endIntent":Landroid/content/Intent;
    .restart local v1    # "tPlayTimesFromVideolist":I
    .restart local v2    # "video":Lcom/tudou/detail/vo/Video;
    :cond_1
    iget-object v4, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$48;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    iget-object v4, v4, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v4, v4, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v4}, Lcom/youku/player/module/VideoUrlInfo;->getItemPlayTimes()J

    move-result-wide v4

    goto :goto_1

    .line 3817
    .end local v0    # "endIntent":Landroid/content/Intent;
    .end local v1    # "tPlayTimesFromVideolist":I
    .end local v2    # "video":Lcom/tudou/detail/vo/Video;
    :cond_2
    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$48;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    iget-object v3, v3, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v3}, Lcom/youku/player/plugin/MediaPlayerDelegate;->playCompleteGoSmall()V

    .line 3818
    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal$48;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    iget-object v3, v3, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->mDetailActivity:Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v3}, Lcom/tudou/ui/activity/DetailActivity;->onPlayEnd()V

    goto :goto_2

    .line 3790
    .restart local v2    # "video":Lcom/tudou/detail/vo/Video;
    :catch_0
    move-exception v3

    goto/16 :goto_0
.end method
