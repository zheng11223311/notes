.class public Lcom/youku/player/base/YoukuPlayer;
.super Ljava/lang/Object;
.source "YoukuPlayer.java"


# instance fields
.field private mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

.field private mPlayerControl:Lcom/youku/player/base/PlayerController;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentActivity;Lcom/youku/player/base/YoukuPlayerView;)V
    .locals 1
    .param p1, "activity"    # Landroid/support/v4/app/FragmentActivity;
    .param p2, "youkuPlayerView"    # Lcom/youku/player/base/YoukuPlayerView;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Lcom/youku/player/base/PlayerController;

    invoke-direct {v0, p1, p2}, Lcom/youku/player/base/PlayerController;-><init>(Landroid/support/v4/app/FragmentActivity;Lcom/youku/player/base/YoukuPlayerView;)V

    iput-object v0, p0, Lcom/youku/player/base/YoukuPlayer;->mPlayerControl:Lcom/youku/player/base/PlayerController;

    .line 20
    iget-object v0, p0, Lcom/youku/player/base/YoukuPlayer;->mPlayerControl:Lcom/youku/player/base/PlayerController;

    invoke-virtual {v0}, Lcom/youku/player/base/PlayerController;->getMediaPlayerDelegate()Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/player/base/YoukuPlayer;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    .line 21
    return-void
.end method


# virtual methods
.method public getPlayerAdControl()Lcom/youku/player/apiservice/IPlayerAdControl;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/youku/player/base/YoukuPlayer;->mPlayerControl:Lcom/youku/player/base/PlayerController;

    invoke-virtual {v0}, Lcom/youku/player/base/PlayerController;->getPlayerAdControl()Lcom/youku/player/apiservice/IPlayerAdControl;

    move-result-object v0

    return-object v0
.end method

.method public getPlayerUiControl()Lcom/youku/player/apiservice/IPlayerUiControl;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/youku/player/base/YoukuPlayer;->mPlayerControl:Lcom/youku/player/base/PlayerController;

    return-object v0
.end method

.method public getmMediaPlayerDelegate()Lcom/youku/player/plugin/MediaPlayerDelegate;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/youku/player/base/YoukuPlayer;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    return-object v0
.end method

.method public playHLS(Ljava/lang/String;)V
    .locals 1
    .param p1, "liveid"    # Ljava/lang/String;

    .prologue
    .line 214
    iget-object v0, p0, Lcom/youku/player/base/YoukuPlayer;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0, p1}, Lcom/youku/player/plugin/MediaPlayerDelegate;->playHLS(Ljava/lang/String;)V

    .line 215
    return-void
.end method

.method public playLocalVideo(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "progress"    # I

    .prologue
    .line 160
    iget-object v0, p0, Lcom/youku/player/base/YoukuPlayer;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0, p1, p2, p3}, Lcom/youku/player/plugin/MediaPlayerDelegate;->playLocalVideo(Ljava/lang/String;Ljava/lang/String;I)V

    .line 161
    return-void
.end method

.method public playLocalVideo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 7
    .param p1, "vid"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "progress"    # I
    .param p5, "isWaterMark"    # Z

    .prologue
    .line 146
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/youku/player/base/YoukuPlayer;->playLocalVideo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZI)V

    .line 147
    return-void
.end method

.method public playLocalVideo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZI)V
    .locals 7
    .param p1, "vid"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "progress"    # I
    .param p5, "isWaterMark"    # Z
    .param p6, "type"    # I

    .prologue
    .line 140
    iget-object v0, p0, Lcom/youku/player/base/YoukuPlayer;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/youku/player/util/PlayerUtil;->useUplayer(Lcom/youku/player/module/VideoUrlInfo;)Z

    move-result v1

    if-nez v1, :cond_0

    move-object v2, p2

    :goto_0
    move-object v1, p1

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/youku/player/plugin/MediaPlayerDelegate;->playLocalVideo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZI)V

    .line 142
    return-void

    .line 140
    :cond_0
    invoke-static {p2}, Lcom/youku/player/util/PlayerUtil;->getM3u8File(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public playTudouAlbum(Ljava/lang/String;IZ)V
    .locals 2
    .param p1, "albumID"    # Ljava/lang/String;
    .param p2, "point"    # I
    .param p3, "noadv"    # Z

    .prologue
    .line 99
    iget-object v0, p0, Lcom/youku/player/base/YoukuPlayer;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1, p3}, Lcom/youku/player/plugin/MediaPlayerDelegate;->playTudouAlbum(Ljava/lang/String;ILjava/lang/String;Z)V

    .line 100
    return-void
.end method

.method public playTudouAlbum(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "albumID"    # Ljava/lang/String;
    .param p2, "languageCode"    # Ljava/lang/String;
    .param p3, "noadv"    # Z

    .prologue
    .line 116
    iget-object v0, p0, Lcom/youku/player/base/YoukuPlayer;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2, p3}, Lcom/youku/player/plugin/MediaPlayerDelegate;->playTudouAlbum(Ljava/lang/String;ILjava/lang/String;Z)V

    .line 117
    return-void
.end method

.method public playTudouAlbum(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "albumID"    # Ljava/lang/String;
    .param p2, "noadv"    # Z

    .prologue
    .line 107
    iget-object v0, p0, Lcom/youku/player/base/YoukuPlayer;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2, p2}, Lcom/youku/player/plugin/MediaPlayerDelegate;->playTudouAlbum(Ljava/lang/String;ILjava/lang/String;Z)V

    .line 108
    return-void
.end method

.method public playTudouVideo(Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 7
    .param p1, "itemCode"    # Ljava/lang/String;
    .param p2, "point"    # I
    .param p3, "playlistCode"    # Ljava/lang/String;
    .param p4, "noadv"    # Z

    .prologue
    .line 55
    iget-object v0, p0, Lcom/youku/player/base/YoukuPlayer;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    const/4 v2, 0x4

    const/4 v5, 0x0

    move-object v1, p1

    move v3, p2

    move-object v4, p3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/youku/player/plugin/MediaPlayerDelegate;->playTudouVideo(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Z)V

    .line 56
    return-void
.end method

.method public playTudouVideo(Ljava/lang/String;IZ)V
    .locals 7
    .param p1, "itemCode"    # Ljava/lang/String;
    .param p2, "point"    # I
    .param p3, "noadv"    # Z

    .prologue
    const/4 v4, 0x0

    .line 44
    iget-object v0, p0, Lcom/youku/player/base/YoukuPlayer;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    const/4 v2, 0x4

    move-object v1, p1

    move v3, p2

    move-object v5, v4

    move v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/youku/player/plugin/MediaPlayerDelegate;->playTudouVideo(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Z)V

    .line 45
    return-void
.end method

.method public playTudouVideo(Ljava/lang/String;Z)V
    .locals 7
    .param p1, "itemCode"    # Ljava/lang/String;
    .param p2, "noadv"    # Z

    .prologue
    const/4 v4, 0x0

    .line 64
    iget-object v0, p0, Lcom/youku/player/base/YoukuPlayer;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    const/4 v2, 0x4

    const/4 v3, 0x0

    move-object v1, p1

    move-object v5, v4

    move v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/youku/player/plugin/MediaPlayerDelegate;->playTudouVideo(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Z)V

    .line 65
    return-void
.end method

.method public playTudouVideoWithAlbumID(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 14
    .param p1, "itemCode"    # Ljava/lang/String;
    .param p2, "albumID"    # Ljava/lang/String;
    .param p3, "noadv"    # Z

    .prologue
    .line 73
    iget-object v0, p0, Lcom/youku/player/base/YoukuPlayer;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x4

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    move-object v1, p1

    move/from16 v6, p3

    move-object/from16 v12, p2

    invoke-virtual/range {v0 .. v13}, Lcom/youku/player/plugin/MediaPlayerDelegate;->playVideo(Ljava/lang/String;Ljava/lang/String;ZIIZZZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method public playTudouVideoWithPassword(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "itemCode"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/youku/player/base/YoukuPlayer;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0, p1, p2}, Lcom/youku/player/plugin/MediaPlayerDelegate;->playTudouVideoWithPassword(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method public playVideo(Lcom/youku/player/module/PlayVideoInfo;)V
    .locals 1
    .param p1, "playVideoInfo"    # Lcom/youku/player/module/PlayVideoInfo;

    .prologue
    .line 210
    iget-object v0, p0, Lcom/youku/player/base/YoukuPlayer;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0, p1}, Lcom/youku/player/plugin/MediaPlayerDelegate;->playVideo(Lcom/youku/player/module/PlayVideoInfo;)V

    .line 211
    return-void
.end method

.method public playVideo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "vid"    # Ljava/lang/String;
    .param p2, "playlistId"    # Ljava/lang/String;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/youku/player/base/YoukuPlayer;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0, p1, p2}, Lcom/youku/player/plugin/MediaPlayerDelegate;->playVideo(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method public playVideo(Ljava/lang/String;ZI)V
    .locals 1
    .param p1, "vid"    # Ljava/lang/String;
    .param p2, "isCache"    # Z
    .param p3, "point"    # I

    .prologue
    .line 136
    iget-object v0, p0, Lcom/youku/player/base/YoukuPlayer;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0, p1, p2, p3}, Lcom/youku/player/plugin/MediaPlayerDelegate;->playVideo(Ljava/lang/String;ZI)V

    .line 137
    return-void
.end method

.method public playVideoAdvext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "adext"    # Ljava/lang/String;
    .param p3, "adMid"    # Ljava/lang/String;
    .param p4, "adPause"    # Ljava/lang/String;

    .prologue
    .line 202
    iget-object v0, p0, Lcom/youku/player/base/YoukuPlayer;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/youku/player/plugin/MediaPlayerDelegate;->playVideoAdvext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    return-void
.end method

.method public playVideoWithStage(Ljava/lang/String;ZII)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "isCache"    # Z
    .param p3, "point"    # I
    .param p4, "videoStage"    # I

    .prologue
    .line 184
    iget-object v0, p0, Lcom/youku/player/base/YoukuPlayer;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/youku/player/plugin/MediaPlayerDelegate;->playVideoWithStage(Ljava/lang/String;ZII)V

    .line 185
    return-void
.end method

.method public playVideoWithStageTudou(Ljava/lang/String;ZII)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "isCache"    # Z
    .param p3, "point"    # I
    .param p4, "videoStage"    # I

    .prologue
    .line 197
    iget-object v0, p0, Lcom/youku/player/base/YoukuPlayer;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/youku/player/plugin/MediaPlayerDelegate;->playVideoWithStageTudou(Ljava/lang/String;ZII)V

    .line 198
    return-void
.end method

.method public replayLocalVideo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 6
    .param p1, "vid"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "isWaterMark"    # Z
    .param p5, "type"    # I

    .prologue
    .line 169
    iget-object v0, p0, Lcom/youku/player/base/YoukuPlayer;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/youku/player/util/PlayerUtil;->useUplayer(Lcom/youku/player/module/VideoUrlInfo;)Z

    move-result v1

    if-nez v1, :cond_0

    move-object v2, p2

    :goto_0
    move-object v1, p1

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/youku/player/plugin/MediaPlayerDelegate;->replayLocalVideo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 172
    return-void

    .line 169
    :cond_0
    invoke-static {p2}, Lcom/youku/player/util/PlayerUtil;->getM3u8File(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public replayTudouAlbum(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "albumID"    # Ljava/lang/String;
    .param p2, "noadv"    # Z

    .prologue
    .line 124
    iget-object v0, p0, Lcom/youku/player/base/YoukuPlayer;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v0, p1, p2}, Lcom/youku/player/plugin/MediaPlayerDelegate;->replayTudouAlbum(Ljava/lang/String;Z)V

    .line 125
    return-void
.end method

.method public replayTudouVideo(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "itemCode"    # Ljava/lang/String;
    .param p2, "noadv"    # Z

    .prologue
    .line 91
    iget-object v0, p0, Lcom/youku/player/base/YoukuPlayer;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    const/4 v1, 0x4

    invoke-virtual {v0, p1, v1, p2}, Lcom/youku/player/plugin/MediaPlayerDelegate;->replayTudouVideo(Ljava/lang/String;IZ)V

    .line 92
    return-void
.end method
