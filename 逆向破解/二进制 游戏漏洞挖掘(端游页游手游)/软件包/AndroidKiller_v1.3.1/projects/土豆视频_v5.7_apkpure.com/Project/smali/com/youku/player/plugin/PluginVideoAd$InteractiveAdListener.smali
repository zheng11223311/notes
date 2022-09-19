.class public Lcom/youku/player/plugin/PluginVideoAd$InteractiveAdListener;
.super Ljava/lang/Object;
.source "PluginVideoAd.java"

# interfaces
.implements Lorg/openad/events/IXYDEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/player/plugin/PluginVideoAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "InteractiveAdListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/player/plugin/PluginVideoAd;


# direct methods
.method protected constructor <init>(Lcom/youku/player/plugin/PluginVideoAd;)V
    .locals 0

    .prologue
    .line 823
    iput-object p1, p0, Lcom/youku/player/plugin/PluginVideoAd$InteractiveAdListener;->this$0:Lcom/youku/player/plugin/PluginVideoAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/openad/events/IXYDEvent;)V
    .locals 7
    .param p1, "arg0"    # Lorg/openad/events/IXYDEvent;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 827
    invoke-interface {p1}, Lorg/openad/events/IXYDEvent;->getType()Ljava/lang/String;

    move-result-object v2

    .line 828
    .local v2, "type":Ljava/lang/String;
    const-string v3, "ad_prepared"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 829
    iget-object v3, p0, Lcom/youku/player/plugin/PluginVideoAd$InteractiveAdListener;->this$0:Lcom/youku/player/plugin/PluginVideoAd;

    invoke-static {v3}, Lcom/youku/player/plugin/PluginVideoAd;->access$1100(Lcom/youku/player/plugin/PluginVideoAd;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 830
    sget-object v3, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    const-string v4, "Interactive ad is ready"

    invoke-static {v3, v4}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 923
    :cond_0
    :goto_0
    return-void

    .line 832
    :cond_1
    const-string v3, "ad_stop"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 833
    iget-object v3, p0, Lcom/youku/player/plugin/PluginVideoAd$InteractiveAdListener;->this$0:Lcom/youku/player/plugin/PluginVideoAd;

    invoke-static {v3, v5}, Lcom/youku/player/plugin/PluginVideoAd;->access$1102(Lcom/youku/player/plugin/PluginVideoAd;Z)Z

    .line 834
    iget-object v3, p0, Lcom/youku/player/plugin/PluginVideoAd$InteractiveAdListener;->this$0:Lcom/youku/player/plugin/PluginVideoAd;

    invoke-static {v3, v5}, Lcom/youku/player/plugin/PluginVideoAd;->access$202(Lcom/youku/player/plugin/PluginVideoAd;Z)Z

    .line 835
    iget-object v3, p0, Lcom/youku/player/plugin/PluginVideoAd$InteractiveAdListener;->this$0:Lcom/youku/player/plugin/PluginVideoAd;

    invoke-static {v3}, Lcom/youku/player/plugin/PluginVideoAd;->access$300(Lcom/youku/player/plugin/PluginVideoAd;)Lcom/youdo/ad/interfaces/IAdApplicationContext;

    move-result-object v3

    invoke-interface {v3}, Lcom/youdo/ad/interfaces/IAdApplicationContext;->removeAllListeners()V

    .line 836
    iget-object v3, p0, Lcom/youku/player/plugin/PluginVideoAd$InteractiveAdListener;->this$0:Lcom/youku/player/plugin/PluginVideoAd;

    invoke-static {v3}, Lcom/youku/player/plugin/PluginVideoAd;->access$300(Lcom/youku/player/plugin/PluginVideoAd;)Lcom/youdo/ad/interfaces/IAdApplicationContext;

    move-result-object v3

    invoke-interface {v3}, Lcom/youdo/ad/interfaces/IAdApplicationContext;->dispose()V

    .line 837
    iget-object v3, p0, Lcom/youku/player/plugin/PluginVideoAd$InteractiveAdListener;->this$0:Lcom/youku/player/plugin/PluginVideoAd;

    iget-object v3, v3, Lcom/youku/player/plugin/PluginVideoAd;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/youku/player/plugin/PluginVideoAd$InteractiveAdListener;->this$0:Lcom/youku/player/plugin/PluginVideoAd;

    invoke-virtual {v4}, Lcom/youku/player/plugin/PluginVideoAd;->getAdvInfo()Lcom/youku/player/goplay/AdvInfo;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/youku/player/util/DisposableStatsUtils;->disposeSUE(Landroid/content/Context;Lcom/youku/player/goplay/AdvInfo;)V

    .line 838
    iget-object v3, p0, Lcom/youku/player/plugin/PluginVideoAd$InteractiveAdListener;->this$0:Lcom/youku/player/plugin/PluginVideoAd;

    iget-object v3, v3, Lcom/youku/player/plugin/PluginVideoAd;->mActivity:Landroid/app/Activity;

    new-instance v4, Lcom/youku/player/plugin/PluginVideoAd$InteractiveAdListener$1;

    invoke-direct {v4, p0}, Lcom/youku/player/plugin/PluginVideoAd$InteractiveAdListener$1;-><init>(Lcom/youku/player/plugin/PluginVideoAd$InteractiveAdListener;)V

    invoke-virtual {v3, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 851
    iget-object v3, p0, Lcom/youku/player/plugin/PluginVideoAd$InteractiveAdListener;->this$0:Lcom/youku/player/plugin/PluginVideoAd;

    iget-object v3, v3, Lcom/youku/player/plugin/PluginVideoAd;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v3, v3, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v3, :cond_2

    const-string v3, "local"

    iget-object v4, p0, Lcom/youku/player/plugin/PluginVideoAd$InteractiveAdListener;->this$0:Lcom/youku/player/plugin/PluginVideoAd;

    iget-object v4, v4, Lcom/youku/player/plugin/PluginVideoAd;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v4, v4, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v4}, Lcom/youku/player/module/VideoUrlInfo;->getPlayType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/youku/player/plugin/PluginVideoAd$InteractiveAdListener;->this$0:Lcom/youku/player/plugin/PluginVideoAd;

    iget-object v3, v3, Lcom/youku/player/plugin/PluginVideoAd;->mActivity:Landroid/app/Activity;

    invoke-static {v3}, Lcom/youku/player/util/PlayerUtil;->isYoukuTablet(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 856
    iget-object v3, p0, Lcom/youku/player/plugin/PluginVideoAd$InteractiveAdListener;->this$0:Lcom/youku/player/plugin/PluginVideoAd;

    iget-object v3, v3, Lcom/youku/player/plugin/PluginVideoAd;->mPlayerUiControl:Lcom/youku/player/apiservice/IPlayerUiControl;

    invoke-interface {v3}, Lcom/youku/player/apiservice/IPlayerUiControl;->setOrientionEnable()V

    .line 858
    :cond_2
    iget-object v3, p0, Lcom/youku/player/plugin/PluginVideoAd$InteractiveAdListener;->this$0:Lcom/youku/player/plugin/PluginVideoAd;

    iget-object v3, v3, Lcom/youku/player/plugin/PluginVideoAd;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/youku/player/plugin/PluginVideoAd$InteractiveAdListener;->this$0:Lcom/youku/player/plugin/PluginVideoAd;

    iget-object v3, v3, Lcom/youku/player/plugin/PluginVideoAd;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v3, v3, Lcom/youku/player/plugin/MediaPlayerDelegate;->mediaPlayer:Lcom/youku/player/BaseMediaPlayer;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/youku/player/plugin/PluginVideoAd$InteractiveAdListener;->this$0:Lcom/youku/player/plugin/PluginVideoAd;

    invoke-virtual {v3}, Lcom/youku/player/plugin/PluginVideoAd;->getAdvInfo()Lcom/youku/player/goplay/AdvInfo;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/youku/player/plugin/PluginVideoAd$InteractiveAdListener;->this$0:Lcom/youku/player/plugin/PluginVideoAd;

    invoke-static {v3}, Lcom/youku/player/plugin/PluginVideoAd;->access$1200(Lcom/youku/player/plugin/PluginVideoAd;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/youku/player/plugin/PluginVideoAd$InteractiveAdListener;->this$0:Lcom/youku/player/plugin/PluginVideoAd;

    invoke-virtual {v4}, Lcom/youku/player/plugin/PluginVideoAd;->getAdvInfo()Lcom/youku/player/goplay/AdvInfo;

    move-result-object v4

    iget-object v4, v4, Lcom/youku/player/goplay/AdvInfo;->RS:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 863
    iget-object v3, p0, Lcom/youku/player/plugin/PluginVideoAd$InteractiveAdListener;->this$0:Lcom/youku/player/plugin/PluginVideoAd;

    invoke-virtual {v3}, Lcom/youku/player/plugin/PluginVideoAd;->removeCurrentAdv()V

    .line 864
    iget-object v3, p0, Lcom/youku/player/plugin/PluginVideoAd$InteractiveAdListener;->this$0:Lcom/youku/player/plugin/PluginVideoAd;

    iget-object v3, v3, Lcom/youku/player/plugin/PluginVideoAd;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v3, v3, Lcom/youku/player/plugin/MediaPlayerDelegate;->mediaPlayer:Lcom/youku/player/BaseMediaPlayer;

    invoke-virtual {v3}, Lcom/youku/player/BaseMediaPlayer;->skipCurPreAd()V

    .line 865
    iget-object v3, p0, Lcom/youku/player/plugin/PluginVideoAd$InteractiveAdListener;->this$0:Lcom/youku/player/plugin/PluginVideoAd;

    iget-object v3, v3, Lcom/youku/player/plugin/PluginVideoAd;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v3, v5}, Lcom/youku/player/plugin/MediaPlayerDelegate;->setAdPausedPosition(I)V

    goto/16 :goto_0

    .line 868
    :cond_3
    const-string v3, "ad_error"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 869
    sget-object v3, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    const-string v4, "PlugiADPlay: interactive ad error"

    invoke-static {v3, v4}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 870
    iget-object v3, p0, Lcom/youku/player/plugin/PluginVideoAd$InteractiveAdListener;->this$0:Lcom/youku/player/plugin/PluginVideoAd;

    invoke-virtual {v3}, Lcom/youku/player/plugin/PluginVideoAd;->closeInteractiveAd()V

    goto/16 :goto_0

    .line 871
    :cond_4
    const-string v3, "ad_view_mode_change"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 872
    invoke-interface {p1}, Lorg/openad/events/IXYDEvent;->getData()Ljava/util/Map;

    move-result-object v3

    const-string v4, "oldViewMode"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 873
    .local v1, "oldViewMode":Ljava/lang/String;
    invoke-interface {p1}, Lorg/openad/events/IXYDEvent;->getData()Ljava/util/Map;

    move-result-object v3

    const-string v4, "newViewMode"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 875
    .local v0, "newViewMode":Ljava/lang/String;
    sget-object v3, Lorg/openad/constants/IOpenAdContants$ViewMode;->EXPAND:Lorg/openad/constants/IOpenAdContants$ViewMode;

    invoke-virtual {v3}, Lorg/openad/constants/IOpenAdContants$ViewMode;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    sget-object v3, Lorg/openad/constants/IOpenAdContants$ViewMode;->THUMBNAIL:Lorg/openad/constants/IOpenAdContants$ViewMode;

    invoke-virtual {v3}, Lorg/openad/constants/IOpenAdContants$ViewMode;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 878
    iget-object v3, p0, Lcom/youku/player/plugin/PluginVideoAd$InteractiveAdListener;->this$0:Lcom/youku/player/plugin/PluginVideoAd;

    invoke-static {v3, v6}, Lcom/youku/player/plugin/PluginVideoAd;->access$202(Lcom/youku/player/plugin/PluginVideoAd;Z)Z

    .line 879
    iget-object v3, p0, Lcom/youku/player/plugin/PluginVideoAd$InteractiveAdListener;->this$0:Lcom/youku/player/plugin/PluginVideoAd;

    invoke-static {v3}, Lcom/youku/player/plugin/PluginVideoAd;->access$300(Lcom/youku/player/plugin/PluginVideoAd;)Lcom/youdo/ad/interfaces/IAdApplicationContext;

    move-result-object v3

    invoke-interface {v3}, Lcom/youdo/ad/interfaces/IAdApplicationContext;->hide()V

    .line 880
    iget-object v3, p0, Lcom/youku/player/plugin/PluginVideoAd$InteractiveAdListener;->this$0:Lcom/youku/player/plugin/PluginVideoAd;

    iget-object v3, v3, Lcom/youku/player/plugin/PluginVideoAd;->mActivity:Landroid/app/Activity;

    new-instance v4, Lcom/youku/player/plugin/PluginVideoAd$InteractiveAdListener$2;

    invoke-direct {v4, p0}, Lcom/youku/player/plugin/PluginVideoAd$InteractiveAdListener$2;-><init>(Lcom/youku/player/plugin/PluginVideoAd$InteractiveAdListener;)V

    invoke-virtual {v3, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 891
    iget-object v3, p0, Lcom/youku/player/plugin/PluginVideoAd$InteractiveAdListener;->this$0:Lcom/youku/player/plugin/PluginVideoAd;

    iget-object v3, v3, Lcom/youku/player/plugin/PluginVideoAd;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v3, v3, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v3, :cond_5

    const-string v3, "local"

    iget-object v4, p0, Lcom/youku/player/plugin/PluginVideoAd$InteractiveAdListener;->this$0:Lcom/youku/player/plugin/PluginVideoAd;

    iget-object v4, v4, Lcom/youku/player/plugin/PluginVideoAd;->mediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    iget-object v4, v4, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v4}, Lcom/youku/player/module/VideoUrlInfo;->getPlayType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/youku/player/plugin/PluginVideoAd$InteractiveAdListener;->this$0:Lcom/youku/player/plugin/PluginVideoAd;

    iget-object v3, v3, Lcom/youku/player/plugin/PluginVideoAd;->mActivity:Landroid/app/Activity;

    invoke-static {v3}, Lcom/youku/player/util/PlayerUtil;->isYoukuTablet(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 896
    iget-object v3, p0, Lcom/youku/player/plugin/PluginVideoAd$InteractiveAdListener;->this$0:Lcom/youku/player/plugin/PluginVideoAd;

    iget-object v3, v3, Lcom/youku/player/plugin/PluginVideoAd;->mPlayerUiControl:Lcom/youku/player/apiservice/IPlayerUiControl;

    invoke-interface {v3}, Lcom/youku/player/apiservice/IPlayerUiControl;->setOrientionEnable()V

    .line 898
    :cond_5
    iget-object v3, p0, Lcom/youku/player/plugin/PluginVideoAd$InteractiveAdListener;->this$0:Lcom/youku/player/plugin/PluginVideoAd;

    iget-object v3, v3, Lcom/youku/player/plugin/PluginVideoAd;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v3, :cond_6

    .line 899
    iget-object v3, p0, Lcom/youku/player/plugin/PluginVideoAd$InteractiveAdListener;->this$0:Lcom/youku/player/plugin/PluginVideoAd;

    iget-object v3, v3, Lcom/youku/player/plugin/PluginVideoAd;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v3}, Lcom/youku/player/plugin/MediaPlayerDelegate;->startByInteractiveAd()V

    .line 902
    :cond_6
    sget-object v3, Lorg/openad/constants/IOpenAdContants$ViewMode;->EXPAND:Lorg/openad/constants/IOpenAdContants$ViewMode;

    invoke-virtual {v3}, Lorg/openad/constants/IOpenAdContants$ViewMode;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 903
    iget-object v3, p0, Lcom/youku/player/plugin/PluginVideoAd$InteractiveAdListener;->this$0:Lcom/youku/player/plugin/PluginVideoAd;

    invoke-static {v3, v5}, Lcom/youku/player/plugin/PluginVideoAd;->access$202(Lcom/youku/player/plugin/PluginVideoAd;Z)Z

    goto/16 :goto_0

    .line 906
    .end local v0    # "newViewMode":Ljava/lang/String;
    .end local v1    # "oldViewMode":Ljava/lang/String;
    :cond_7
    const-string/jumbo v3, "video_pause"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 907
    sget-object v3, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    const-string v4, "-----> IAdApplicationContext.VIDEO_PAUSE"

    invoke-static {v3, v4}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 908
    iget-object v3, p0, Lcom/youku/player/plugin/PluginVideoAd$InteractiveAdListener;->this$0:Lcom/youku/player/plugin/PluginVideoAd;

    iget-object v3, v3, Lcom/youku/player/plugin/PluginVideoAd;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v3, :cond_0

    .line 909
    iget-object v3, p0, Lcom/youku/player/plugin/PluginVideoAd$InteractiveAdListener;->this$0:Lcom/youku/player/plugin/PluginVideoAd;

    iget-object v3, v3, Lcom/youku/player/plugin/PluginVideoAd;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v3}, Lcom/youku/player/plugin/MediaPlayerDelegate;->pauseByInteractiveAd()V

    .line 910
    iget-object v3, p0, Lcom/youku/player/plugin/PluginVideoAd$InteractiveAdListener;->this$0:Lcom/youku/player/plugin/PluginVideoAd;

    invoke-static {v3}, Lcom/youku/player/plugin/PluginVideoAd;->access$1308(Lcom/youku/player/plugin/PluginVideoAd;)I

    .line 911
    iget-object v3, p0, Lcom/youku/player/plugin/PluginVideoAd$InteractiveAdListener;->this$0:Lcom/youku/player/plugin/PluginVideoAd;

    invoke-static {v3}, Lcom/youku/player/plugin/PluginVideoAd;->access$1300(Lcom/youku/player/plugin/PluginVideoAd;)I

    move-result v3

    if-ne v3, v6, :cond_0

    .line 912
    iget-object v3, p0, Lcom/youku/player/plugin/PluginVideoAd$InteractiveAdListener;->this$0:Lcom/youku/player/plugin/PluginVideoAd;

    invoke-static {v3}, Lcom/youku/player/plugin/PluginVideoAd;->access$1100(Lcom/youku/player/plugin/PluginVideoAd;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 913
    iget-object v3, p0, Lcom/youku/player/plugin/PluginVideoAd$InteractiveAdListener;->this$0:Lcom/youku/player/plugin/PluginVideoAd;

    iget-object v3, v3, Lcom/youku/player/plugin/PluginVideoAd;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/youku/player/plugin/PluginVideoAd$InteractiveAdListener;->this$0:Lcom/youku/player/plugin/PluginVideoAd;

    invoke-virtual {v4}, Lcom/youku/player/plugin/PluginVideoAd;->getAdvInfo()Lcom/youku/player/goplay/AdvInfo;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/youku/player/util/DisposableStatsUtils;->disposeSHU(Landroid/content/Context;Lcom/youku/player/goplay/AdvInfo;)V

    goto/16 :goto_0

    .line 917
    :cond_8
    const-string/jumbo v3, "video_resume"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 918
    sget-object v3, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    const-string v4, "-----> IAdApplicationContext.VIDEO_RESUME"

    invoke-static {v3, v4}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 919
    iget-object v3, p0, Lcom/youku/player/plugin/PluginVideoAd$InteractiveAdListener;->this$0:Lcom/youku/player/plugin/PluginVideoAd;

    iget-object v3, v3, Lcom/youku/player/plugin/PluginVideoAd;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    if-eqz v3, :cond_0

    .line 920
    iget-object v3, p0, Lcom/youku/player/plugin/PluginVideoAd$InteractiveAdListener;->this$0:Lcom/youku/player/plugin/PluginVideoAd;

    iget-object v3, v3, Lcom/youku/player/plugin/PluginVideoAd;->mMediaPlayerDelegate:Lcom/youku/player/plugin/MediaPlayerDelegate;

    invoke-virtual {v3}, Lcom/youku/player/plugin/MediaPlayerDelegate;->startByInteractiveAd()V

    goto/16 :goto_0
.end method
