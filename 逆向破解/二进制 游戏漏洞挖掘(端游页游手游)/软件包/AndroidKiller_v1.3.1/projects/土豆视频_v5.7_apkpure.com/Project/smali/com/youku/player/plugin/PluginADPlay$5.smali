.class Lcom/youku/player/plugin/PluginADPlay$5;
.super Ljava/lang/Object;
.source "PluginADPlay.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/player/plugin/PluginADPlay;->onPluginAdded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/player/plugin/PluginADPlay;

.field final synthetic val$adInfo:Lcom/youku/player/goplay/VideoAdvInfo;


# direct methods
.method constructor <init>(Lcom/youku/player/plugin/PluginADPlay;Lcom/youku/player/goplay/VideoAdvInfo;)V
    .locals 0

    .prologue
    .line 201
    iput-object p1, p0, Lcom/youku/player/plugin/PluginADPlay$5;->this$0:Lcom/youku/player/plugin/PluginADPlay;

    iput-object p2, p0, Lcom/youku/player/plugin/PluginADPlay$5;->val$adInfo:Lcom/youku/player/goplay/VideoAdvInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x0

    .line 204
    iget-object v4, p0, Lcom/youku/player/plugin/PluginADPlay$5;->val$adInfo:Lcom/youku/player/goplay/VideoAdvInfo;

    iget-object v4, v4, Lcom/youku/player/goplay/VideoAdvInfo;->VAL:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gtz v4, :cond_1

    .line 258
    :cond_0
    :goto_0
    return-void

    .line 208
    :cond_1
    iget-object v4, p0, Lcom/youku/player/plugin/PluginADPlay$5;->val$adInfo:Lcom/youku/player/goplay/VideoAdvInfo;

    iget-object v4, v4, Lcom/youku/player/goplay/VideoAdvInfo;->VAL:Ljava/util/ArrayList;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/player/goplay/AdvInfo;

    .line 209
    .local v0, "advInfo":Lcom/youku/player/goplay/AdvInfo;
    if-eqz v0, :cond_0

    .line 212
    iget-object v4, p0, Lcom/youku/player/plugin/PluginADPlay$5;->this$0:Lcom/youku/player/plugin/PluginADPlay;

    iget-boolean v4, v4, Lcom/youku/player/plugin/PluginADPlay;->canSkipTrueViewAd:Z

    if-eqz v4, :cond_0

    .line 213
    iget-object v4, p0, Lcom/youku/player/plugin/PluginADPlay$5;->this$0:Lcom/youku/player/plugin/PluginADPlay;

    iget-object v4, v4, Lcom/youku/player/plugin/PluginADPlay;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v4, v4, Lcom/youku/player/plugin/MediaPlayerDelegate;->mediaPlayer:Lcom/youku/player/BaseMediaPlayer;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/youku/player/plugin/PluginADPlay$5;->this$0:Lcom/youku/player/plugin/PluginADPlay;

    iget-object v4, v4, Lcom/youku/player/plugin/PluginADPlay;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v4, v4, Lcom/youku/player/plugin/MediaPlayerDelegate;->mediaPlayer:Lcom/youku/player/BaseMediaPlayer;

    invoke-virtual {v4}, Lcom/youku/player/BaseMediaPlayer;->isPreparing()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 214
    sget-object v4, Lcom/youku/player/LogTag;->TAG_TRUE_VIEW:Ljava/lang/String;

    const-string v5, "-----> mediaPlayer is preparing!"

    invoke-static {v4, v5}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 218
    :cond_2
    iget-object v4, p0, Lcom/youku/player/plugin/PluginADPlay$5;->this$0:Lcom/youku/player/plugin/PluginADPlay;

    iget-object v4, v4, Lcom/youku/player/plugin/PluginADPlay;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v4}, Lcom/youku/player/plugin/MediaPlayerDelegate;->isPlaying()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/youku/player/plugin/PluginADPlay$5;->this$0:Lcom/youku/player/plugin/PluginADPlay;

    iget-object v4, v4, Lcom/youku/player/plugin/PluginADPlay;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v4}, Lcom/youku/player/plugin/MediaPlayerDelegate;->getCurrentPosition()I

    move-result v4

    :goto_1
    div-int/lit16 v3, v4, 0x3e8

    .line 219
    .local v3, "progress":I
    invoke-static {v0, v3}, Lcom/youku/player/util/DisposableStatsUtils;->disposeSkipIMP(Lcom/youku/player/goplay/AdvInfo;I)V

    .line 220
    invoke-static {}, Lcom/youku/player/Track;->onAdEnd()V

    .line 221
    iget-object v4, p0, Lcom/youku/player/plugin/PluginADPlay$5;->this$0:Lcom/youku/player/plugin/PluginADPlay;

    iget-object v4, v4, Lcom/youku/player/plugin/PluginADPlay;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v4}, Lcom/youku/player/plugin/MediaPlayerDelegate;->isPlaying()Z

    move-result v4

    if-nez v4, :cond_6

    .line 222
    invoke-static {}, Lcom/baseproject/utils/Util;->hasInternet()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {}, Lcom/baseproject/utils/Util;->isWifi()Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/youku/player/plugin/PluginADPlay$5;->this$0:Lcom/youku/player/plugin/PluginADPlay;

    iget-object v4, v4, Lcom/youku/player/plugin/PluginADPlay;->mActivity:Landroid/app/Activity;

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "allowONline3G"

    invoke-static {}, Lcom/youku/player/config/MediaPlayerConfiguration;->getInstance()Lcom/youku/player/config/MediaPlayerConfiguration;

    move-result-object v6

    invoke-virtual {v6}, Lcom/youku/player/config/MediaPlayerConfiguration;->defaultAllow3G()Z

    move-result v6

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_5

    .line 226
    iget-object v4, p0, Lcom/youku/player/plugin/PluginADPlay$5;->this$0:Lcom/youku/player/plugin/PluginADPlay;

    iget-object v4, v4, Lcom/youku/player/plugin/PluginADPlay;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v4, v4, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v4, v4, Lcom/youku/player/module/VideoUrlInfo;->playType:Ljava/lang/String;

    const-string v5, "local"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 228
    iget-object v4, p0, Lcom/youku/player/plugin/PluginADPlay$5;->this$0:Lcom/youku/player/plugin/PluginADPlay;

    iget-object v4, v4, Lcom/youku/player/plugin/PluginADPlay;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v4}, Lcom/youku/player/plugin/MediaPlayerDelegate;->playVideoWhenADOverTime()V

    goto/16 :goto_0

    .line 218
    .end local v3    # "progress":I
    :cond_3
    iget-object v4, p0, Lcom/youku/player/plugin/PluginADPlay$5;->this$0:Lcom/youku/player/plugin/PluginADPlay;

    iget-object v4, v4, Lcom/youku/player/plugin/PluginADPlay;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v4}, Lcom/youku/player/plugin/MediaPlayerDelegate;->getAdPausedPosition()I

    move-result v4

    goto :goto_1

    .line 230
    .restart local v3    # "progress":I
    :cond_4
    iget-object v4, p0, Lcom/youku/player/plugin/PluginADPlay$5;->this$0:Lcom/youku/player/plugin/PluginADPlay;

    iget-object v4, v4, Lcom/youku/player/plugin/PluginADPlay;->mActivity:Landroid/app/Activity;

    const-string/jumbo v5, "\u8bf7\u8bbe\u7f6e3g/2g\u5141\u8bb8\u64ad\u653e"

    invoke-static {v4, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 235
    :cond_5
    iget-object v4, p0, Lcom/youku/player/plugin/PluginADPlay$5;->this$0:Lcom/youku/player/plugin/PluginADPlay;

    iget-object v4, v4, Lcom/youku/player/plugin/PluginADPlay;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v4}, Lcom/youku/player/plugin/MediaPlayerDelegate;->playVideoWhenADOverTime()V

    .line 236
    iget-object v4, p0, Lcom/youku/player/plugin/PluginADPlay$5;->this$0:Lcom/youku/player/plugin/PluginADPlay;

    iget-object v4, v4, Lcom/youku/player/plugin/PluginADPlay;->play_adButton:Landroid/widget/ImageButton;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 255
    :goto_2
    iget-object v4, p0, Lcom/youku/player/plugin/PluginADPlay$5;->this$0:Lcom/youku/player/plugin/PluginADPlay;

    invoke-virtual {v4}, Lcom/youku/player/plugin/PluginADPlay;->dismissDownloadDialog()V

    .line 256
    iget-object v4, p0, Lcom/youku/player/plugin/PluginADPlay$5;->this$0:Lcom/youku/player/plugin/PluginADPlay;

    iput-boolean v7, v4, Lcom/youku/player/plugin/PluginADPlay;->canSkipTrueViewAd:Z

    goto/16 :goto_0

    .line 238
    :cond_6
    iget-object v4, p0, Lcom/youku/player/plugin/PluginADPlay$5;->this$0:Lcom/youku/player/plugin/PluginADPlay;

    invoke-virtual {v4}, Lcom/youku/player/plugin/PluginADPlay;->removeCurrentAdv()V

    .line 239
    iget-object v4, p0, Lcom/youku/player/plugin/PluginADPlay$5;->this$0:Lcom/youku/player/plugin/PluginADPlay;

    iget-object v4, v4, Lcom/youku/player/plugin/PluginADPlay;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v4, v4, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v4}, Lcom/youku/player/module/VideoUrlInfo;->isCached()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 240
    sget-object v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->mICacheInfo:Lcom/youku/player/apiservice/ICacheInfo;

    .line 241
    .local v1, "download":Lcom/youku/player/apiservice/ICacheInfo;
    if-eqz v1, :cond_7

    .line 242
    iget-object v4, p0, Lcom/youku/player/plugin/PluginADPlay$5;->this$0:Lcom/youku/player/plugin/PluginADPlay;

    iget-object v4, v4, Lcom/youku/player/plugin/PluginADPlay;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v4, v4, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v4}, Lcom/youku/player/module/VideoUrlInfo;->getVid()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Lcom/youku/player/apiservice/ICacheInfo;->isDownloadFinished(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 243
    iget-object v4, p0, Lcom/youku/player/plugin/PluginADPlay$5;->this$0:Lcom/youku/player/plugin/PluginADPlay;

    iget-object v4, v4, Lcom/youku/player/plugin/PluginADPlay;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v4, v4, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v4}, Lcom/youku/player/module/VideoUrlInfo;->getVid()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Lcom/youku/player/apiservice/ICacheInfo;->getDownloadInfo(Ljava/lang/String;)Lcom/youku/player/module/VideoCacheInfo;

    move-result-object v2

    .line 245
    .local v2, "downloadInfo":Lcom/youku/player/module/VideoCacheInfo;
    sget-boolean v4, Lcom/youku/player/base/YoukuBasePlayerActivity;->isHighEnd:Z

    if-eqz v4, :cond_7

    .line 246
    iget-object v4, p0, Lcom/youku/player/plugin/PluginADPlay$5;->this$0:Lcom/youku/player/plugin/PluginADPlay;

    iget-object v4, v4, Lcom/youku/player/plugin/PluginADPlay;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v4, v4, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v2, Lcom/youku/player/module/VideoCacheInfo;->savePath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "youku.m3u8"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/youku/player/util/PlayerUtil;->getM3u8File(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/youku/player/module/VideoUrlInfo;->cachePath:Ljava/lang/String;

    .line 252
    .end local v1    # "download":Lcom/youku/player/apiservice/ICacheInfo;
    .end local v2    # "downloadInfo":Lcom/youku/player/module/VideoCacheInfo;
    :cond_7
    iget-object v4, p0, Lcom/youku/player/plugin/PluginADPlay$5;->this$0:Lcom/youku/player/plugin/PluginADPlay;

    iget-object v4, v4, Lcom/youku/player/plugin/PluginADPlay;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v4, v4, Lcom/youku/player/plugin/MediaPlayerDelegate;->mediaPlayer:Lcom/youku/player/BaseMediaPlayer;

    invoke-virtual {v4}, Lcom/youku/player/BaseMediaPlayer;->skipCurPreAd()V

    .line 253
    iget-object v4, p0, Lcom/youku/player/plugin/PluginADPlay$5;->this$0:Lcom/youku/player/plugin/PluginADPlay;

    iget-object v4, v4, Lcom/youku/player/plugin/PluginADPlay;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v4, v7}, Lcom/youku/player/plugin/MediaPlayerDelegate;->setAdPausedPosition(I)V

    goto :goto_2
.end method
