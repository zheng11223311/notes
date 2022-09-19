.class Lcom/youku/player/base/MediaPlayerInit$17;
.super Ljava/lang/Object;
.source "MediaPlayerInit.java"

# interfaces
.implements Lcom/youku/uplayer/OnRealVideoStartListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/player/base/MediaPlayerInit;->execute(Lcom/youku/player/apiservice/IPlayerUiControl;Lcom/youku/player/apiservice/IPlayerAdControl;Lcom/youku/player/apiservice/IAdPlayerCallback;Lcom/youku/player/apiservice/IAdPlayerCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/player/base/MediaPlayerInit;

.field final synthetic val$playerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

.field final synthetic val$playerUiControl:Lcom/youku/player/apiservice/IPlayerUiControl;


# direct methods
.method constructor <init>(Lcom/youku/player/base/MediaPlayerInit;Lcom/youku/player/apiservice/IPlayerUiControl;Lcom/youku/player/apiservice/IPlayerAdControl;)V
    .locals 0

    .prologue
    .line 541
    iput-object p1, p0, Lcom/youku/player/base/MediaPlayerInit$17;->this$0:Lcom/youku/player/base/MediaPlayerInit;

    iput-object p2, p0, Lcom/youku/player/base/MediaPlayerInit$17;->val$playerUiControl:Lcom/youku/player/apiservice/IPlayerUiControl;

    iput-object p3, p0, Lcom/youku/player/base/MediaPlayerInit$17;->val$playerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRealVideoStart()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 546
    iget-object v1, p0, Lcom/youku/player/base/MediaPlayerInit$17;->val$playerUiControl:Lcom/youku/player/apiservice/IPlayerUiControl;

    invoke-interface {v1}, Lcom/youku/player/apiservice/IPlayerUiControl;->isOnPause()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 612
    :cond_0
    :goto_0
    return-void

    .line 550
    :cond_1
    sget-object v1, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    const-string/jumbo v2, "\u6b63\u7247\u5f00\u59cb\u64ad\u653e\uff0c\u6ca1\u6709\u9519\u8bef"

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    sput-boolean v3, Lcom/youku/player/Track;->isRealVideoStarted:Z

    .line 552
    invoke-static {v3}, Lcom/youku/player/Track;->setPlayerStarted(Z)V

    .line 553
    iget-object v1, p0, Lcom/youku/player/base/MediaPlayerInit$17;->val$playerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

    sget-object v2, Lcom/youku/player/ad/AdState;->REALVIDEO:Lcom/youku/player/ad/AdState;

    invoke-interface {v1, v2}, Lcom/youku/player/apiservice/IPlayerAdControl;->setAdState(Lcom/youku/player/ad/AdState;)V

    .line 554
    iget-object v1, p0, Lcom/youku/player/base/MediaPlayerInit$17;->this$0:Lcom/youku/player/base/MediaPlayerInit;

    invoke-static {v1}, Lcom/youku/player/base/MediaPlayerInit;->access$000(Lcom/youku/player/base/MediaPlayerInit;)Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 555
    iget-object v1, p0, Lcom/youku/player/base/MediaPlayerInit$17;->this$0:Lcom/youku/player/base/MediaPlayerInit;

    invoke-static {v1}, Lcom/youku/player/base/MediaPlayerInit;->access$000(Lcom/youku/player/base/MediaPlayerInit;)Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v1

    iput-boolean v4, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->changeQuality:Z

    .line 557
    :cond_2
    const-string v0, ""

    .line 558
    .local v0, "vid":Ljava/lang/String;
    iget-object v1, p0, Lcom/youku/player/base/MediaPlayerInit$17;->this$0:Lcom/youku/player/base/MediaPlayerInit;

    invoke-static {v1}, Lcom/youku/player/base/MediaPlayerInit;->access$000(Lcom/youku/player/base/MediaPlayerInit;)Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/youku/player/base/MediaPlayerInit$17;->this$0:Lcom/youku/player/base/MediaPlayerInit;

    invoke-static {v1}, Lcom/youku/player/base/MediaPlayerInit;->access$000(Lcom/youku/player/base/MediaPlayerInit;)Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v1

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v1, :cond_3

    .line 560
    iget-object v1, p0, Lcom/youku/player/base/MediaPlayerInit$17;->this$0:Lcom/youku/player/base/MediaPlayerInit;

    invoke-static {v1}, Lcom/youku/player/base/MediaPlayerInit;->access$000(Lcom/youku/player/base/MediaPlayerInit;)Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v1

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v1}, Lcom/youku/player/module/VideoUrlInfo;->getVid()Ljava/lang/String;

    move-result-object v0

    .line 562
    :cond_3
    iget-object v1, p0, Lcom/youku/player/base/MediaPlayerInit$17;->this$0:Lcom/youku/player/base/MediaPlayerInit;

    invoke-static {v1}, Lcom/youku/player/base/MediaPlayerInit;->access$500(Lcom/youku/player/base/MediaPlayerInit;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/youku/player/base/MediaPlayerInit$17;->this$0:Lcom/youku/player/base/MediaPlayerInit;

    invoke-static {v2}, Lcom/youku/player/base/MediaPlayerInit;->access$000(Lcom/youku/player/base/MediaPlayerInit;)Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v2

    iget-object v2, v2, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-static {v1, v0, v2}, Lcom/youku/player/Track;->onRealVideoFirstLoadEnd(Landroid/content/Context;Ljava/lang/String;Lcom/youku/player/module/VideoUrlInfo;)V

    .line 564
    iget-object v1, p0, Lcom/youku/player/base/MediaPlayerInit$17;->this$0:Lcom/youku/player/base/MediaPlayerInit;

    invoke-static {v1}, Lcom/youku/player/base/MediaPlayerInit;->access$800(Lcom/youku/player/base/MediaPlayerInit;)V

    .line 565
    iget-object v1, p0, Lcom/youku/player/base/MediaPlayerInit$17;->this$0:Lcom/youku/player/base/MediaPlayerInit;

    iget-object v2, p0, Lcom/youku/player/base/MediaPlayerInit$17;->val$playerUiControl:Lcom/youku/player/apiservice/IPlayerUiControl;

    invoke-static {v1, v2}, Lcom/youku/player/base/MediaPlayerInit;->access$900(Lcom/youku/player/base/MediaPlayerInit;Lcom/youku/player/apiservice/IPlayerUiControl;)V

    .line 566
    iget-object v1, p0, Lcom/youku/player/base/MediaPlayerInit$17;->val$playerUiControl:Lcom/youku/player/apiservice/IPlayerUiControl;

    invoke-interface {v1}, Lcom/youku/player/apiservice/IPlayerUiControl;->getYoukuPlayerView()Lcom/youku/player/base/YoukuPlayerView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/youku/player/base/YoukuPlayerView;->setPlayerBlackGone()V

    .line 567
    iget-object v1, p0, Lcom/youku/player/base/MediaPlayerInit$17;->this$0:Lcom/youku/player/base/MediaPlayerInit;

    invoke-static {v1}, Lcom/youku/player/base/MediaPlayerInit;->access$000(Lcom/youku/player/base/MediaPlayerInit;)Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/youku/player/base/MediaPlayerInit$17;->this$0:Lcom/youku/player/base/MediaPlayerInit;

    invoke-static {v1}, Lcom/youku/player/base/MediaPlayerInit;->access$000(Lcom/youku/player/base/MediaPlayerInit;)Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v1

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v1, :cond_8

    .line 569
    iget-object v1, p0, Lcom/youku/player/base/MediaPlayerInit$17;->this$0:Lcom/youku/player/base/MediaPlayerInit;

    invoke-static {v1}, Lcom/youku/player/base/MediaPlayerInit;->access$000(Lcom/youku/player/base/MediaPlayerInit;)Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v1

    iput-boolean v4, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->isADShowing:Z

    .line 570
    invoke-static {}, Lcom/youku/player/base/MediaPlayerInit;->access$700()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onRealVideoStart"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/youku/player/base/MediaPlayerInit$17;->this$0:Lcom/youku/player/base/MediaPlayerInit;

    invoke-static {v3}, Lcom/youku/player/base/MediaPlayerInit;->access$000(Lcom/youku/player/base/MediaPlayerInit;)Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v3

    iget-object v3, v3, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-boolean v3, v3, Lcom/youku/player/module/VideoUrlInfo;->IsSendVV:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    invoke-static {}, Lcom/youku/player/base/MediaPlayerInit;->access$700()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OnRealVideoStartListener mMediaPlayerDelegate.videoInfo.getProgress():"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/youku/player/base/MediaPlayerInit$17;->this$0:Lcom/youku/player/base/MediaPlayerInit;

    invoke-static {v3}, Lcom/youku/player/base/MediaPlayerInit;->access$000(Lcom/youku/player/base/MediaPlayerInit;)Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v3

    iget-object v3, v3, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v3}, Lcom/youku/player/module/VideoUrlInfo;->getProgress()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    iget-object v1, p0, Lcom/youku/player/base/MediaPlayerInit$17;->this$0:Lcom/youku/player/base/MediaPlayerInit;

    invoke-static {v1}, Lcom/youku/player/base/MediaPlayerInit;->access$000(Lcom/youku/player/base/MediaPlayerInit;)Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v1

    iget-object v2, p0, Lcom/youku/player/base/MediaPlayerInit$17;->this$0:Lcom/youku/player/base/MediaPlayerInit;

    invoke-static {v2}, Lcom/youku/player/base/MediaPlayerInit;->access$000(Lcom/youku/player/base/MediaPlayerInit;)Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v2

    invoke-virtual {v2}, Lcom/youku/player/plugin/MediaPlayerDelegate;->getPlayRate()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/youku/player/plugin/MediaPlayerDelegate;->setPlayRate(I)V

    .line 582
    :goto_1
    iget-object v1, p0, Lcom/youku/player/base/MediaPlayerInit$17;->this$0:Lcom/youku/player/base/MediaPlayerInit;

    invoke-static {v1}, Lcom/youku/player/base/MediaPlayerInit;->access$000(Lcom/youku/player/base/MediaPlayerInit;)Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v1

    iput-boolean v4, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->isLoading:Z

    .line 583
    iget-object v1, p0, Lcom/youku/player/base/MediaPlayerInit$17;->this$0:Lcom/youku/player/base/MediaPlayerInit;

    invoke-static {v1}, Lcom/youku/player/base/MediaPlayerInit;->access$000(Lcom/youku/player/base/MediaPlayerInit;)Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v1

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->pluginManager:Lcom/youku/player/plugin/PluginManager;

    if-eqz v1, :cond_4

    .line 584
    iget-object v1, p0, Lcom/youku/player/base/MediaPlayerInit$17;->this$0:Lcom/youku/player/base/MediaPlayerInit;

    invoke-static {v1}, Lcom/youku/player/base/MediaPlayerInit;->access$500(Lcom/youku/player/base/MediaPlayerInit;)Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/youku/player/base/MediaPlayerInit$17$1;

    invoke-direct {v2, p0}, Lcom/youku/player/base/MediaPlayerInit$17$1;-><init>(Lcom/youku/player/base/MediaPlayerInit$17;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 593
    :cond_4
    iget-object v1, p0, Lcom/youku/player/base/MediaPlayerInit$17;->val$playerUiControl:Lcom/youku/player/apiservice/IPlayerUiControl;

    invoke-interface {v1}, Lcom/youku/player/apiservice/IPlayerUiControl;->getDanmakuManager()Lcom/youku/player/danmaku/IDanmakuManager;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/youku/player/config/MediaPlayerConfiguration;->getInstance()Lcom/youku/player/config/MediaPlayerConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/youku/player/config/MediaPlayerConfiguration;->hideDanmaku()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 594
    iget-object v1, p0, Lcom/youku/player/base/MediaPlayerInit$17;->val$playerUiControl:Lcom/youku/player/apiservice/IPlayerUiControl;

    invoke-interface {v1}, Lcom/youku/player/apiservice/IPlayerUiControl;->getDanmakuManager()Lcom/youku/player/danmaku/IDanmakuManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/youku/player/danmaku/IDanmakuManager;->startLiveDanmaku()V

    .line 597
    :cond_5
    iget-object v1, p0, Lcom/youku/player/base/MediaPlayerInit$17;->this$0:Lcom/youku/player/base/MediaPlayerInit;

    iget-object v2, p0, Lcom/youku/player/base/MediaPlayerInit$17;->val$playerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

    invoke-static {v1, v2}, Lcom/youku/player/base/MediaPlayerInit;->access$1000(Lcom/youku/player/base/MediaPlayerInit;Lcom/youku/player/apiservice/IPlayerAdControl;)V

    .line 598
    iget-object v1, p0, Lcom/youku/player/base/MediaPlayerInit$17;->val$playerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

    invoke-interface {v1}, Lcom/youku/player/apiservice/IPlayerAdControl;->getMidAdModel()Lcom/youku/player/ad/MidAdModel;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 599
    iget-object v1, p0, Lcom/youku/player/base/MediaPlayerInit$17;->val$playerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

    invoke-interface {v1}, Lcom/youku/player/apiservice/IPlayerAdControl;->getMidAdModel()Lcom/youku/player/ad/MidAdModel;

    move-result-object v1

    iput-boolean v4, v1, Lcom/youku/player/ad/MidAdModel;->isAfterEndNoSeek:Z

    .line 600
    iget-object v1, p0, Lcom/youku/player/base/MediaPlayerInit$17;->val$playerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

    invoke-interface {v1}, Lcom/youku/player/apiservice/IPlayerAdControl;->getMidAdModel()Lcom/youku/player/ad/MidAdModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/youku/player/ad/MidAdModel;->startTimer()V

    .line 602
    :cond_6
    iget-object v1, p0, Lcom/youku/player/base/MediaPlayerInit$17;->val$playerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

    invoke-interface {v1}, Lcom/youku/player/apiservice/IPlayerAdControl;->showInvestigate()V

    .line 603
    iget-object v1, p0, Lcom/youku/player/base/MediaPlayerInit$17;->this$0:Lcom/youku/player/base/MediaPlayerInit;

    invoke-static {v1}, Lcom/youku/player/base/MediaPlayerInit;->access$500(Lcom/youku/player/base/MediaPlayerInit;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/youku/player/base/MediaPlayerInit$17;->this$0:Lcom/youku/player/base/MediaPlayerInit;

    invoke-static {v2}, Lcom/youku/player/base/MediaPlayerInit;->access$000(Lcom/youku/player/base/MediaPlayerInit;)Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/youku/player/unicom/ChinaUnicomFreeFlowUtil;->checkChinaUnicomStatus(Landroid/app/Activity;Lcom/youku/player/plugin/MediaPlayerDelegate;)V

    .line 604
    iget-object v1, p0, Lcom/youku/player/base/MediaPlayerInit$17;->this$0:Lcom/youku/player/base/MediaPlayerInit;

    invoke-static {v1}, Lcom/youku/player/base/MediaPlayerInit;->access$000(Lcom/youku/player/base/MediaPlayerInit;)Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/youku/player/base/MediaPlayerInit$17;->this$0:Lcom/youku/player/base/MediaPlayerInit;

    invoke-static {v1}, Lcom/youku/player/base/MediaPlayerInit;->access$000(Lcom/youku/player/base/MediaPlayerInit;)Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v1

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/youku/player/base/MediaPlayerInit$17;->this$0:Lcom/youku/player/base/MediaPlayerInit;

    invoke-static {v1}, Lcom/youku/player/base/MediaPlayerInit;->access$000(Lcom/youku/player/base/MediaPlayerInit;)Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v1

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v1}, Lcom/youku/player/module/VideoUrlInfo;->isCached()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 605
    iget-object v1, p0, Lcom/youku/player/base/MediaPlayerInit$17;->val$playerUiControl:Lcom/youku/player/apiservice/IPlayerUiControl;

    invoke-interface {v1}, Lcom/youku/player/apiservice/IPlayerUiControl;->getDanmakuManager()Lcom/youku/player/danmaku/IDanmakuManager;

    move-result-object v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/youku/player/base/MediaPlayerInit$17;->val$playerUiControl:Lcom/youku/player/apiservice/IPlayerUiControl;

    invoke-interface {v1}, Lcom/youku/player/apiservice/IPlayerUiControl;->getDanmakuManager()Lcom/youku/player/danmaku/IDanmakuManager;

    move-result-object v1

    instance-of v1, v1, Lcom/youku/player/danmaku/LocalDanmakuManager;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/youku/player/base/MediaPlayerInit$17;->val$playerUiControl:Lcom/youku/player/apiservice/IPlayerUiControl;

    invoke-interface {v1}, Lcom/youku/player/apiservice/IPlayerUiControl;->getDanmakuManager()Lcom/youku/player/danmaku/IDanmakuManager;

    move-result-object v1

    check-cast v1, Lcom/youku/player/danmaku/LocalDanmakuManager;

    iget-boolean v1, v1, Lcom/youku/player/danmaku/LocalDanmakuManager;->isPaused:Z

    if-nez v1, :cond_7

    .line 606
    iget-object v1, p0, Lcom/youku/player/base/MediaPlayerInit$17;->val$playerUiControl:Lcom/youku/player/apiservice/IPlayerUiControl;

    invoke-interface {v1}, Lcom/youku/player/apiservice/IPlayerUiControl;->getDanmakuManager()Lcom/youku/player/danmaku/IDanmakuManager;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/youku/player/base/MediaPlayerInit$17;->this$0:Lcom/youku/player/base/MediaPlayerInit;

    invoke-static {v3}, Lcom/youku/player/base/MediaPlayerInit;->access$000(Lcom/youku/player/base/MediaPlayerInit;)Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v3

    iget-object v3, v3, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-object v3, v3, Lcom/youku/player/module/VideoUrlInfo;->savePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "danmu"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v4}, Lcom/youku/player/danmaku/IDanmakuManager;->beginDanmaku(Ljava/lang/String;I)V

    .line 609
    :cond_7
    iget-object v1, p0, Lcom/youku/player/base/MediaPlayerInit$17;->val$playerUiControl:Lcom/youku/player/apiservice/IPlayerUiControl;

    invoke-interface {v1}, Lcom/youku/player/apiservice/IPlayerUiControl;->getDanmakuManager()Lcom/youku/player/danmaku/IDanmakuManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 610
    iget-object v1, p0, Lcom/youku/player/base/MediaPlayerInit$17;->val$playerUiControl:Lcom/youku/player/apiservice/IPlayerUiControl;

    invoke-interface {v1}, Lcom/youku/player/apiservice/IPlayerUiControl;->getDanmakuManager()Lcom/youku/player/danmaku/IDanmakuManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/youku/player/danmaku/IDanmakuManager;->continueDanmaku()V

    goto/16 :goto_0

    .line 579
    :cond_8
    invoke-static {}, Lcom/youku/player/base/MediaPlayerInit;->access$700()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onRealVideoStart mMediaPlayerDelegate\u7a7a\u6307"

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method
