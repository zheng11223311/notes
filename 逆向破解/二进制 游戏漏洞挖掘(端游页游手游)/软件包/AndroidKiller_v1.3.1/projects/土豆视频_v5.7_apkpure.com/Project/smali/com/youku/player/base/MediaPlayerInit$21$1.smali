.class Lcom/youku/player/base/MediaPlayerInit$21$1;
.super Ljava/lang/Object;
.source "MediaPlayerInit.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/player/base/MediaPlayerInit$21;->onHwPlayError()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/youku/player/base/MediaPlayerInit$21;


# direct methods
.method constructor <init>(Lcom/youku/player/base/MediaPlayerInit$21;)V
    .locals 0

    .prologue
    .line 758
    iput-object p1, p0, Lcom/youku/player/base/MediaPlayerInit$21$1;->this$1:Lcom/youku/player/base/MediaPlayerInit$21;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x6

    const/4 v3, 0x0

    .line 760
    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit$21$1;->this$1:Lcom/youku/player/base/MediaPlayerInit$21;

    iget-object v0, v0, Lcom/youku/player/base/MediaPlayerInit$21;->this$0:Lcom/youku/player/base/MediaPlayerInit;

    invoke-static {v0}, Lcom/youku/player/base/MediaPlayerInit;->access$000(Lcom/youku/player/base/MediaPlayerInit;)Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 761
    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit$21$1;->this$1:Lcom/youku/player/base/MediaPlayerInit$21;

    iget-object v0, v0, Lcom/youku/player/base/MediaPlayerInit$21;->this$0:Lcom/youku/player/base/MediaPlayerInit;

    invoke-static {v0}, Lcom/youku/player/base/MediaPlayerInit;->access$000(Lcom/youku/player/base/MediaPlayerInit;)Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->release()V

    .line 762
    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit$21$1;->this$1:Lcom/youku/player/base/MediaPlayerInit$21;

    iget-boolean v0, v0, Lcom/youku/player/base/MediaPlayerInit$21;->isHwPlayErrorReceived:Z

    if-eqz v0, :cond_1

    .line 793
    :cond_0
    :goto_0
    return-void

    .line 764
    :cond_1
    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit$21$1;->this$1:Lcom/youku/player/base/MediaPlayerInit$21;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/youku/player/base/MediaPlayerInit$21;->isHwPlayErrorReceived:Z

    .line 765
    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit$21$1;->this$1:Lcom/youku/player/base/MediaPlayerInit$21;

    iget-object v0, v0, Lcom/youku/player/base/MediaPlayerInit$21;->val$playerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

    invoke-interface {v0}, Lcom/youku/player/apiservice/IPlayerAdControl;->isMidAdShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit$21$1;->this$1:Lcom/youku/player/base/MediaPlayerInit$21;

    iget-object v0, v0, Lcom/youku/player/base/MediaPlayerInit$21;->val$playerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

    invoke-interface {v0}, Lcom/youku/player/apiservice/IPlayerAdControl;->getMidAdModel()Lcom/youku/player/ad/MidAdModel;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 767
    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit$21$1;->this$1:Lcom/youku/player/base/MediaPlayerInit$21;

    iget-object v0, v0, Lcom/youku/player/base/MediaPlayerInit$21;->val$playerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

    invoke-interface {v0}, Lcom/youku/player/apiservice/IPlayerAdControl;->getMidAdModel()Lcom/youku/player/ad/MidAdModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/player/ad/MidAdModel;->removeCurrentAdvInfo()V

    .line 768
    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit$21$1;->this$1:Lcom/youku/player/base/MediaPlayerInit$21;

    iget-object v0, v0, Lcom/youku/player/base/MediaPlayerInit$21;->val$playerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

    sget-object v1, Lcom/youku/player/ad/AdState;->REALVIDEO:Lcom/youku/player/ad/AdState;

    invoke-interface {v0, v1}, Lcom/youku/player/apiservice/IPlayerAdControl;->setAdState(Lcom/youku/player/ad/AdState;)V

    .line 769
    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit$21$1;->this$1:Lcom/youku/player/base/MediaPlayerInit$21;

    iget-object v0, v0, Lcom/youku/player/base/MediaPlayerInit$21;->val$playerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

    invoke-interface {v0}, Lcom/youku/player/apiservice/IPlayerAdControl;->getMidAdModel()Lcom/youku/player/ad/MidAdModel;

    move-result-object v0

    iput-boolean v3, v0, Lcom/youku/player/ad/MidAdModel;->isAfterEndNoSeek:Z

    .line 770
    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit$21$1;->this$1:Lcom/youku/player/base/MediaPlayerInit$21;

    iget-object v0, v0, Lcom/youku/player/base/MediaPlayerInit$21;->this$0:Lcom/youku/player/base/MediaPlayerInit;

    invoke-static {v0}, Lcom/youku/player/base/MediaPlayerInit;->access$500(Lcom/youku/player/base/MediaPlayerInit;)Landroid/app/Activity;

    move-result-object v0

    sget-object v1, Lcom/youku/player/util/SessionUnitil;->playEvent_session:Ljava/lang/String;

    const-string v2, "mo"

    invoke-static {v0, v4, v1, v2}, Lcom/youku/player/util/DisposableStatsUtils;->disposeAdLoss(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    .line 777
    :cond_2
    invoke-static {}, Lcom/youku/player/Track;->sendHwError()V

    .line 778
    invoke-static {}, Lcom/youku/player/config/MediaPlayerConfiguration;->getInstance()Lcom/youku/player/config/MediaPlayerConfiguration;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/youku/player/config/MediaPlayerConfiguration;->setUseHardwareDecode(Z)Lcom/youku/player/config/MediaPlayerConfiguration;

    .line 780
    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit$21$1;->this$1:Lcom/youku/player/base/MediaPlayerInit$21;

    iget-object v0, v0, Lcom/youku/player/base/MediaPlayerInit$21;->this$0:Lcom/youku/player/base/MediaPlayerInit;

    invoke-static {v0}, Lcom/youku/player/base/MediaPlayerInit;->access$000(Lcom/youku/player/base/MediaPlayerInit;)Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v0

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->pluginManager:Lcom/youku/player/plugin/PluginManager;

    invoke-virtual {v0}, Lcom/youku/player/plugin/PluginManager;->onLoading()V

    .line 781
    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit$21$1;->this$1:Lcom/youku/player/base/MediaPlayerInit$21;

    iget-object v0, v0, Lcom/youku/player/base/MediaPlayerInit$21;->val$playerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

    invoke-interface {v0}, Lcom/youku/player/apiservice/IPlayerAdControl;->getAdState()Lcom/youku/player/ad/AdState;

    move-result-object v0

    sget-object v1, Lcom/youku/player/ad/AdState;->PREAD:Lcom/youku/player/ad/AdState;

    if-ne v0, v1, :cond_3

    .line 782
    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit$21$1;->this$1:Lcom/youku/player/base/MediaPlayerInit$21;

    iget-object v0, v0, Lcom/youku/player/base/MediaPlayerInit$21;->val$playerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

    sget-object v1, Lcom/youku/player/ad/AdState;->REALVIDEO:Lcom/youku/player/ad/AdState;

    invoke-interface {v0, v1}, Lcom/youku/player/apiservice/IPlayerAdControl;->setAdState(Lcom/youku/player/ad/AdState;)V

    .line 783
    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit$21$1;->this$1:Lcom/youku/player/base/MediaPlayerInit$21;

    iget-object v0, v0, Lcom/youku/player/base/MediaPlayerInit$21;->this$0:Lcom/youku/player/base/MediaPlayerInit;

    invoke-static {v0}, Lcom/youku/player/base/MediaPlayerInit;->access$000(Lcom/youku/player/base/MediaPlayerInit;)Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->playVideoWhenADOverTime()V

    .line 785
    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit$21$1;->this$1:Lcom/youku/player/base/MediaPlayerInit$21;

    iget-object v0, v0, Lcom/youku/player/base/MediaPlayerInit$21;->this$0:Lcom/youku/player/base/MediaPlayerInit;

    invoke-static {v0}, Lcom/youku/player/base/MediaPlayerInit;->access$500(Lcom/youku/player/base/MediaPlayerInit;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/player/base/MediaPlayerInit$21$1;->this$1:Lcom/youku/player/base/MediaPlayerInit$21;

    iget-object v1, v1, Lcom/youku/player/base/MediaPlayerInit$21;->this$0:Lcom/youku/player/base/MediaPlayerInit;

    invoke-static {v1}, Lcom/youku/player/base/MediaPlayerInit;->access$000(Lcom/youku/player/base/MediaPlayerInit;)Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v1

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-static {v0, v1, v4}, Lcom/youku/player/util/DisposableStatsUtils;->disposeNotPlayedAd(Landroid/content/Context;Lcom/youku/player/module/VideoUrlInfo;I)V

    goto/16 :goto_0

    .line 790
    :cond_3
    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit$21$1;->this$1:Lcom/youku/player/base/MediaPlayerInit$21;

    iget-object v0, v0, Lcom/youku/player/base/MediaPlayerInit$21;->this$0:Lcom/youku/player/base/MediaPlayerInit;

    invoke-static {v0}, Lcom/youku/player/base/MediaPlayerInit;->access$000(Lcom/youku/player/base/MediaPlayerInit;)Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->start()V

    goto/16 :goto_0
.end method
