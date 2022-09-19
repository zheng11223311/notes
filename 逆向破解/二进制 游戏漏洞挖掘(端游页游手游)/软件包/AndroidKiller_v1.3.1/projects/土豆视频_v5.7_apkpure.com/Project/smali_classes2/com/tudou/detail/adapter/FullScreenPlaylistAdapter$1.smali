.class Lcom/tudou/detail/adapter/FullScreenPlaylistAdapter$1;
.super Ljava/lang/Object;
.source "FullScreenPlaylistAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/detail/adapter/FullScreenPlaylistAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/detail/adapter/FullScreenPlaylistAdapter;

.field final synthetic val$position:I

.field final synthetic val$video:Lcom/tudou/detail/vo/Video;


# direct methods
.method constructor <init>(Lcom/tudou/detail/adapter/FullScreenPlaylistAdapter;Lcom/tudou/detail/vo/Video;I)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/tudou/detail/adapter/FullScreenPlaylistAdapter$1;->this$0:Lcom/tudou/detail/adapter/FullScreenPlaylistAdapter;

    iput-object p2, p0, Lcom/tudou/detail/adapter/FullScreenPlaylistAdapter$1;->val$video:Lcom/tudou/detail/vo/Video;

    iput p3, p0, Lcom/tudou/detail/adapter/FullScreenPlaylistAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 19
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 98
    const-string v3, "onItemClick_play"

    invoke-static {v3}, Lcom/youku/util/Util;->isGoOn(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 163
    :cond_0
    :goto_0
    return-void

    .line 101
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tudou/detail/adapter/FullScreenPlaylistAdapter$1;->this$0:Lcom/tudou/detail/adapter/FullScreenPlaylistAdapter;

    invoke-static {v3}, Lcom/tudou/detail/adapter/FullScreenPlaylistAdapter;->access$000(Lcom/tudou/detail/adapter/FullScreenPlaylistAdapter;)Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/tudou/ui/activity/DetailActivity;

    .line 102
    .local v2, "tActivity":Lcom/tudou/ui/activity/DetailActivity;
    invoke-virtual {v2}, Lcom/tudou/ui/activity/DetailActivity;->getModel()Lcom/tudou/detail/DetailModel;

    move-result-object v1

    .line 103
    .local v1, "tModel":Lcom/tudou/detail/DetailModel;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/tudou/ui/activity/DetailActivity;->getPlugin(Z)Lcom/youku/player/plugin/PluginOverlay;

    move-result-object v16

    check-cast v16, Lcom/youku/phone/detail/plugin/PluginSmall;

    .line 104
    .local v16, "tPluginSmall":Lcom/youku/phone/detail/plugin/PluginSmall;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/tudou/ui/activity/DetailActivity;->getPlugin(Z)Lcom/youku/player/plugin/PluginOverlay;

    move-result-object v15

    check-cast v15, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;

    .line 105
    .local v15, "tPluginFullScreen":Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;
    invoke-virtual {v2}, Lcom/tudou/ui/activity/DetailActivity;->getMediaPlayerDelegate()Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v13

    .line 107
    .local v13, "mMediaPlayerDelegate":Lcom/youku/player/plugin/MediaPlayerDelegate;
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 108
    .local v11, "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "type"

    const-string v4, "\u5267\u96c6"

    invoke-virtual {v11, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "t1.detail_player.playlistvideoclick.1_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tudou/detail/adapter/FullScreenPlaylistAdapter$1;->val$video:Lcom/tudou/detail/vo/Video;

    iget-object v4, v4, Lcom/tudou/detail/vo/Video;->mIId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/tudou/detail/adapter/FullScreenPlaylistAdapter$1;->val$position:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v11}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 112
    if-eqz v16, :cond_2

    .line 113
    :try_start_0
    invoke-virtual/range {v16 .. v16}, Lcom/youku/phone/detail/plugin/PluginSmall;->clearPayPage()V

    .line 115
    :cond_2
    if-eqz v15, :cond_3

    .line 116
    invoke-virtual {v15}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->clearPayPage()V

    .line 119
    :cond_3
    iget-object v3, v13, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v3, :cond_4

    .line 120
    iget-object v3, v13, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v3}, Lcom/youku/player/module/VideoUrlInfo;->getVid()Ljava/lang/String;

    move-result-object v17

    .line 121
    .local v17, "tmpidString":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tudou/detail/adapter/FullScreenPlaylistAdapter$1;->val$video:Lcom/tudou/detail/vo/Video;

    iget-object v3, v3, Lcom/tudou/detail/vo/Video;->mIId:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 125
    .end local v17    # "tmpidString":Ljava/lang/String;
    :cond_4
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/youku/player/Track;->setplayCompleted(Z)V

    .line 127
    iget-object v3, v13, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v3, :cond_5

    .line 128
    iget-object v3, v13, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/youku/player/module/VideoUrlInfo;->isFirstLoaded:Z

    .line 130
    :cond_5
    iget-object v3, v15, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->mCurrenInner:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenHorizontal;->firstLoaded:Z

    .line 131
    invoke-virtual {v15}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->hideControllerAndSystemUI()V

    .line 132
    invoke-virtual {v13}, Lcom/youku/player/plugin/MediaPlayerDelegate;->onVVEnd()V

    .line 133
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tudou/detail/adapter/FullScreenPlaylistAdapter$1;->this$0:Lcom/tudou/detail/adapter/FullScreenPlaylistAdapter;

    invoke-static {v3}, Lcom/tudou/detail/adapter/FullScreenPlaylistAdapter;->access$100(Lcom/tudou/detail/adapter/FullScreenPlaylistAdapter;)Lcom/tudou/detail/vo/VideoList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tudou/detail/vo/VideoList;->isCached()Z

    move-result v3

    if-nez v3, :cond_7

    .line 136
    new-instance v3, Lcom/youku/player/module/PlayVideoInfo$Builder;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tudou/detail/adapter/FullScreenPlaylistAdapter$1;->val$video:Lcom/tudou/detail/vo/Video;

    iget-object v4, v4, Lcom/tudou/detail/vo/Video;->mIId:Ljava/lang/String;

    invoke-direct {v3, v4}, Lcom/youku/player/module/PlayVideoInfo$Builder;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setTudouQuality(I)Lcom/youku/player/module/PlayVideoInfo$Builder;

    move-result-object v3

    iget-object v4, v2, Lcom/tudou/ui/activity/DetailActivity;->playlistCode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setPlaylistCode(Ljava/lang/String;)Lcom/youku/player/module/PlayVideoInfo$Builder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setFromYouku(Z)Lcom/youku/player/module/PlayVideoInfo$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/youku/player/module/PlayVideoInfo$Builder;->build()Lcom/youku/player/module/PlayVideoInfo;

    move-result-object v14

    .line 137
    .local v14, "playVideoInfo":Lcom/youku/player/module/PlayVideoInfo;
    invoke-virtual {v13, v14}, Lcom/youku/player/plugin/MediaPlayerDelegate;->playVideo(Lcom/youku/player/module/PlayVideoInfo;)V

    .line 139
    const/4 v7, 0x0

    .line 140
    .local v7, "flag":I
    invoke-virtual {v2}, Lcom/tudou/ui/activity/DetailActivity;->ismHasVideoList()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 141
    or-int/lit8 v7, v7, 0x4

    .line 143
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tudou/detail/adapter/FullScreenPlaylistAdapter$1;->val$video:Lcom/tudou/detail/vo/Video;

    iget-object v3, v3, Lcom/tudou/detail/vo/Video;->mIId:Ljava/lang/String;

    iget-object v4, v2, Lcom/tudou/ui/activity/DetailActivity;->mAlbumIdUseToLoadInfo:Ljava/lang/String;

    iget-object v5, v2, Lcom/tudou/ui/activity/DetailActivity;->playlistCode:Ljava/lang/String;

    sget-object v6, Lcom/tudou/android/Youku$Type;->VIDEOID:Lcom/tudou/android/Youku$Type;

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Lcom/tudou/detail/DetailModel;->startLoader(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tudou/android/Youku$Type;IZ)V

    .line 159
    .end local v7    # "flag":I
    :goto_1
    invoke-virtual {v15}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->showLoadingBychangeVideo()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 160
    .end local v14    # "playVideoInfo":Lcom/youku/player/module/PlayVideoInfo;
    :catch_0
    move-exception v10

    .line 161
    .local v10, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/tudou/detail/adapter/FullScreenPlaylistAdapter;->access$200()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-static {v3, v4, v10}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 145
    .end local v10    # "e":Ljava/lang/Exception;
    :cond_7
    :try_start_1
    invoke-static {}, Lcom/tudou/service/download/DownloadManager;->getInstance()Lcom/tudou/service/download/DownloadManager;

    move-result-object v9

    .line 146
    .local v9, "download":Lcom/tudou/service/download/DownloadManager;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tudou/detail/adapter/FullScreenPlaylistAdapter$1;->val$video:Lcom/tudou/detail/vo/Video;

    iget-object v3, v3, Lcom/tudou/detail/vo/Video;->mIId:Ljava/lang/String;

    invoke-virtual {v9, v3}, Lcom/tudou/service/download/DownloadManager;->getDownloadInfo(Ljava/lang/String;)Lcom/tudou/service/download/DownloadInfo;

    move-result-object v12

    .line 147
    .local v12, "info":Lcom/tudou/service/download/DownloadInfo;
    const/4 v3, 0x1

    invoke-static {v12, v3}, Lcom/tudou/service/download/DownloadUtils;->makeM3U8File(Lcom/tudou/service/download/DownloadInfo;Z)V

    .line 148
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v12, Lcom/tudou/service/download/DownloadInfo;->savePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v3, Lcom/tudou/android/Youku;->isHighEnd:Z

    if-eqz v3, :cond_8

    const-string v3, "/youku.m3u8"

    :goto_2
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 150
    .local v18, "url":Ljava/lang/String;
    new-instance v3, Lcom/youku/player/module/PlayVideoInfo$Builder;

    iget-object v4, v12, Lcom/tudou/service/download/DownloadInfo;->videoid:Ljava/lang/String;

    invoke-direct {v3, v4}, Lcom/youku/player/module/PlayVideoInfo$Builder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/youku/player/base/PlayType;->LOCAL_DOWNLOAD:Lcom/youku/player/base/PlayType;

    invoke-virtual {v3, v4}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setPlayType(Lcom/youku/player/base/PlayType;)Lcom/youku/player/module/PlayVideoInfo$Builder;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setUrl(Ljava/lang/String;)Lcom/youku/player/module/PlayVideoInfo$Builder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setFromYouku(Z)Lcom/youku/player/module/PlayVideoInfo$Builder;

    move-result-object v3

    iget-object v4, v12, Lcom/tudou/service/download/DownloadInfo;->title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setTitle(Ljava/lang/String;)Lcom/youku/player/module/PlayVideoInfo$Builder;

    move-result-object v3

    iget-boolean v4, v12, Lcom/tudou/service/download/DownloadInfo;->isShowWatermark:Z

    invoke-virtual {v3, v4}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setWaterMark(Z)Lcom/youku/player/module/PlayVideoInfo$Builder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setFromYouku(Z)Lcom/youku/player/module/PlayVideoInfo$Builder;

    move-result-object v3

    iget v4, v12, Lcom/tudou/service/download/DownloadInfo;->type:I

    invoke-virtual {v3, v4}, Lcom/youku/player/module/PlayVideoInfo$Builder;->setWaterMarkType(I)Lcom/youku/player/module/PlayVideoInfo$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/youku/player/module/PlayVideoInfo$Builder;->build()Lcom/youku/player/module/PlayVideoInfo;

    move-result-object v14

    .line 156
    .restart local v14    # "playVideoInfo":Lcom/youku/player/module/PlayVideoInfo;
    invoke-virtual {v13, v14}, Lcom/youku/player/plugin/MediaPlayerDelegate;->playVideo(Lcom/youku/player/module/PlayVideoInfo;)V

    goto :goto_1

    .line 148
    .end local v14    # "playVideoInfo":Lcom/youku/player/module/PlayVideoInfo;
    .end local v18    # "url":Ljava/lang/String;
    :cond_8
    const-string v3, "/1.3gp"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method
