.class Lcom/youku/phone/detail/plugin/PluginSmall$31;
.super Ljava/lang/Object;
.source "PluginSmall.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/phone/detail/plugin/PluginSmall;->onPlayReleateNoRightVideo()V
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
    .line 2725
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/PluginSmall$31;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private isNotNeedRefetchUrl()Z
    .locals 2

    .prologue
    const/16 v1, 0x3ee

    .line 2771
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall$31;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-static {v0}, Lcom/youku/phone/detail/plugin/PluginSmall;->access$1300(Lcom/youku/phone/detail/plugin/PluginSmall;)I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall$31;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-static {v0}, Lcom/youku/phone/detail/plugin/PluginSmall;->access$1300(Lcom/youku/phone/detail/plugin/PluginSmall;)I

    move-result v0

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/youku/phone/detail/plugin/PluginSmall$31;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

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
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2729
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2730
    const v1, 0x7f0d02c3

    invoke-static {v1}, Lcom/youku/util/Util;->showTips(I)V

    .line 2768
    :cond_0
    :goto_0
    return-void

    .line 2734
    :cond_1
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/PluginSmall$31;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    iget-object v1, v1, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v1, :cond_0

    .line 2735
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/PluginSmall$31;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-static {v1}, Lcom/youku/phone/detail/plugin/PluginSmall;->access$1100(Lcom/youku/phone/detail/plugin/PluginSmall;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 2736
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/PluginSmall$31;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-static {v1}, Lcom/youku/phone/detail/plugin/PluginSmall;->access$1100(Lcom/youku/phone/detail/plugin/PluginSmall;)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2737
    :cond_2
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/PluginSmall$31;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    invoke-static {v1}, Lcom/youku/phone/detail/plugin/PluginSmall;->access$3800(Lcom/youku/phone/detail/plugin/PluginSmall;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 2739
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/PluginSmall$31;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    iget-object v1, v1, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v1}, Lcom/youku/player/plugin/MediaPlayerDelegate;->start()V

    .line 2740
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/PluginSmall$31;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    iget-object v1, v1, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v1}, Lcom/youku/player/plugin/MediaPlayerDelegate;->retry()V

    goto :goto_0

    .line 2742
    :cond_3
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/PluginSmall$31;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    iget-object v1, v1, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v1, :cond_0

    .line 2746
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/PluginSmall$31;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    iget-object v1, v1, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v1}, Lcom/youku/player/module/VideoUrlInfo;->isAlbum()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2750
    new-instance v0, Lcom/youku/player/module/PlayVideoInfo$Builder;

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/PluginSmall$31;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    iget-object v1, v1, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v1}, Lcom/youku/player/module/VideoUrlInfo;->getShowId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/youku/player/module/PlayVideoInfo$Builder;-><init>(Ljava/lang/String;)V

    .line 2751
    .local v0, "builder":Lcom/youku/player/module/PlayVideoInfo$Builder;
    invoke-virtual {v0, v4}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setNoAdv(Z)Lcom/youku/player/module/PlayVideoInfo$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setFromYouku(Z)Lcom/youku/player/module/PlayVideoInfo$Builder;

    .line 2752
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/PluginSmall$31;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    iget-object v1, v1, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0}, Lcom/youku/player/module/PlayVideoInfo$Builder;->build()Lcom/youku/player/module/PlayVideoInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/youku/player/plugin/MediaPlayerDelegate;->playVideo(Lcom/youku/player/module/PlayVideoInfo;)V

    .line 2764
    :goto_1
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/PluginSmall$31;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    iget-object v1, v1, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v1}, Lcom/youku/player/plugin/MediaPlayerDelegate;->setFirstUnloaded()V

    goto :goto_0

    .line 2758
    .end local v0    # "builder":Lcom/youku/player/module/PlayVideoInfo$Builder;
    :cond_4
    new-instance v0, Lcom/youku/player/module/PlayVideoInfo$Builder;

    iget-object v1, p0, Lcom/youku/phone/detail/plugin/PluginSmall$31;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    iget-object v1, v1, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v1}, Lcom/youku/player/module/VideoUrlInfo;->getVid()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/youku/player/module/PlayVideoInfo$Builder;-><init>(Ljava/lang/String;)V

    .line 2759
    .restart local v0    # "builder":Lcom/youku/player/module/PlayVideoInfo$Builder;
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setTudouQuality(I)Lcom/youku/player/module/PlayVideoInfo$Builder;

    .line 2760
    invoke-virtual {v0, v4}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setNoAdv(Z)Lcom/youku/player/module/PlayVideoInfo$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setFromYouku(Z)Lcom/youku/player/module/PlayVideoInfo$Builder;

    .line 2761
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/PluginSmall$31;->this$0:Lcom/youku/phone/detail/plugin/PluginSmall;

    iget-object v1, v1, Lcom/youku/phone/detail/plugin/PluginSmall;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0}, Lcom/youku/player/module/PlayVideoInfo$Builder;->build()Lcom/youku/player/module/PlayVideoInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/youku/player/plugin/MediaPlayerDelegate;->playVideo(Lcom/youku/player/module/PlayVideoInfo;)V

    goto :goto_1
.end method
