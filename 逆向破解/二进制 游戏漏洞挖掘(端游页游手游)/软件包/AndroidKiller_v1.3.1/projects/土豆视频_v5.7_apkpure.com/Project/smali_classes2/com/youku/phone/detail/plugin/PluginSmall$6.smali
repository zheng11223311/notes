.class Lcom/youku/phone/detail/plugin/PluginSmall$6;
.super Ljava/lang/Object;
.source "PluginSmall.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/phone/detail/plugin/PluginSmall;->initRetry()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/phone/detail/plugin/PluginSmall;


# direct methods
.method constructor <init>(Lcom/youku/phone/detail/plugin/PluginSmall;)V
    .locals 0

    .prologue
    .line 668
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/PluginSmall$6;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private isNotNeedRefetchUrl()Z
    .locals 2

    .prologue
    const/16 v1, 0x3ee

    .line 769
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall$6;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-static {v0}, Lcom/youku/phone/detail/plugin/PluginSmall;->access$1300(Lcom/youku/phone/detail/plugin/PluginSmall;)I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall$6;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-static {v0}, Lcom/youku/phone/detail/plugin/PluginSmall;->access$1300(Lcom/youku/phone/detail/plugin/PluginSmall;)I

    move-result v0

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall$6;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v0}, Lcom/youku/player/module/VideoUrlInfo;->isVideoUrlOutOfDate()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 672
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/PluginSmall$6;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-static {v1, v4}, Lcom/youku/phone/detail/plugin/PluginSmall;->access$1002(Lcom/youku/phone/detail/plugin/PluginSmall;Z)Z

    .line 673
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v1

    if-nez v1, :cond_1

    .line 674
    const v1, 0x7f0d02c3

    invoke-static {v1}, Lcom/youku/util/Util;->showTips(I)V

    .line 766
    :cond_0
    :goto_0
    return-void

    .line 677
    :cond_1
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/PluginSmall$6;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-static {v1}, Lcom/youku/phone/detail/plugin/PluginSmall;->access$1100(Lcom/youku/phone/detail/plugin/PluginSmall;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 678
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/PluginSmall$6;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-static {v1}, Lcom/youku/phone/detail/plugin/PluginSmall;->access$1100(Lcom/youku/phone/detail/plugin/PluginSmall;)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 709
    :cond_2
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/PluginSmall$6;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-static {v1}, Lcom/youku/phone/detail/plugin/PluginSmall;->access$1200(Lcom/youku/phone/detail/plugin/PluginSmall;)Lcom/tudou/ui/activity/DetailActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tudou/ui/activity/DetailActivity;->checkAndRestore3GPlay()V

    .line 710
    const-string v1, "\u89c6\u9891\u64ad\u653e\u5931\u8d25\u91cd\u8bd5\u70b9\u51fb"

    const-class v2, Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\u89c6\u9891\u64ad\u653e\u91cd\u8bd5\u6309\u94ae"

    invoke-static {v1, v2, v3}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 712
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/PluginSmall$6;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-virtual {v1, v4}, Lcom/youku/phone/detail/plugin/PluginSmall;->showLoading(Z)V

    .line 713
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/PluginSmall$6;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    iget-object v1, v1, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->nowVid:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 716
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/PluginSmall$6;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-static {v1}, Lcom/youku/phone/detail/plugin/PluginSmall;->access$1200(Lcom/youku/phone/detail/plugin/PluginSmall;)Lcom/tudou/ui/activity/DetailActivity;

    move-result-object v1

    iput-boolean v4, v1, Lcom/tudou/ui/activity/DetailActivity;->mIsError:Z

    .line 717
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/PluginSmall$6;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    iget-object v1, v1, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/PluginSmall$6;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    iget-object v1, v1, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v1}, Lcom/youku/player/module/VideoUrlInfo;->isAlbum()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 725
    new-instance v0, Lcom/youku/player/module/PlayVideoInfo$Builder;

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/PluginSmall$6;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    iget-object v1, v1, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->nowVid:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/youku/player/module/PlayVideoInfo$Builder;-><init>(Ljava/lang/String;)V

    .line 726
    .local v0, "builder":Lcom/youku/player/module/PlayVideoInfo$Builder;
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/PluginSmall$6;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    iget-object v1, v1, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v1}, Lcom/youku/player/module/VideoUrlInfo;->getProgress()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setPoint(I)Lcom/youku/player/module/PlayVideoInfo$Builder;

    .line 727
    invoke-virtual {v0, v5}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setNoAdv(Z)Lcom/youku/player/module/PlayVideoInfo$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setFromYouku(Z)Lcom/youku/player/module/PlayVideoInfo$Builder;

    .line 728
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/PluginSmall$6;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    iget-object v1, v1, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0}, Lcom/youku/player/module/PlayVideoInfo$Builder;->build()Lcom/youku/player/module/PlayVideoInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/youku/player/plugin/MediaPlayerDelegate;->playVideo(Lcom/youku/player/module/PlayVideoInfo;)V

    .line 763
    .end local v0    # "builder":Lcom/youku/player/module/PlayVideoInfo$Builder;
    :goto_1
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/PluginSmall$6;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    iget-object v1, v1, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v1}, Lcom/youku/player/plugin/MediaPlayerDelegate;->setFirstUnloaded()V

    goto/16 :goto_0

    .line 731
    :cond_3
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/PluginSmall$6;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    iget-object v1, v1, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/PluginSmall$6;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    iget-object v1, v1, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v1, v1, Lcom/youku/player/module/VideoUrlInfo;->playlistCode:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 738
    new-instance v0, Lcom/youku/player/module/PlayVideoInfo$Builder;

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/PluginSmall$6;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    iget-object v1, v1, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->nowVid:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/youku/player/module/PlayVideoInfo$Builder;-><init>(Ljava/lang/String;)V

    .line 739
    .restart local v0    # "builder":Lcom/youku/player/module/PlayVideoInfo$Builder;
    invoke-virtual {v0, v6}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setTudouQuality(I)Lcom/youku/player/module/PlayVideoInfo$Builder;

    .line 740
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/PluginSmall$6;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    iget-object v1, v1, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v1}, Lcom/youku/player/module/VideoUrlInfo;->getProgress()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setPoint(I)Lcom/youku/player/module/PlayVideoInfo$Builder;

    .line 741
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/PluginSmall$6;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    iget-object v1, v1, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v1, v1, Lcom/youku/player/module/VideoUrlInfo;->playlistCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setPlaylistCode(Ljava/lang/String;)Lcom/youku/player/module/PlayVideoInfo$Builder;

    .line 742
    invoke-virtual {v0, v5}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setNoAdv(Z)Lcom/youku/player/module/PlayVideoInfo$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setFromYouku(Z)Lcom/youku/player/module/PlayVideoInfo$Builder;

    .line 743
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/PluginSmall$6;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    iget-object v1, v1, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0}, Lcom/youku/player/module/PlayVideoInfo$Builder;->build()Lcom/youku/player/module/PlayVideoInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/youku/player/plugin/MediaPlayerDelegate;->playVideo(Lcom/youku/player/module/PlayVideoInfo;)V

    goto :goto_1

    .line 753
    .end local v0    # "builder":Lcom/youku/player/module/PlayVideoInfo$Builder;
    :cond_4
    :try_start_0
    new-instance v0, Lcom/youku/player/module/PlayVideoInfo$Builder;

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/PluginSmall$6;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    iget-object v1, v1, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->nowVid:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/youku/player/module/PlayVideoInfo$Builder;-><init>(Ljava/lang/String;)V

    .line 754
    .restart local v0    # "builder":Lcom/youku/player/module/PlayVideoInfo$Builder;
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setTudouQuality(I)Lcom/youku/player/module/PlayVideoInfo$Builder;

    .line 755
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/PluginSmall$6;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    iget-object v1, v1, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v1}, Lcom/youku/player/module/VideoUrlInfo;->getProgress()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setPoint(I)Lcom/youku/player/module/PlayVideoInfo$Builder;

    .line 756
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setNoAdv(Z)Lcom/youku/player/module/PlayVideoInfo$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setFromYouku(Z)Lcom/youku/player/module/PlayVideoInfo$Builder;

    .line 757
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/PluginSmall$6;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    iget-object v1, v1, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0}, Lcom/youku/player/module/PlayVideoInfo$Builder;->build()Lcom/youku/player/module/PlayVideoInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/youku/player/plugin/MediaPlayerDelegate;->playVideo(Lcom/youku/player/module/PlayVideoInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 758
    .end local v0    # "builder":Lcom/youku/player/module/PlayVideoInfo$Builder;
    :catch_0
    move-exception v1

    goto/16 :goto_1
.end method
