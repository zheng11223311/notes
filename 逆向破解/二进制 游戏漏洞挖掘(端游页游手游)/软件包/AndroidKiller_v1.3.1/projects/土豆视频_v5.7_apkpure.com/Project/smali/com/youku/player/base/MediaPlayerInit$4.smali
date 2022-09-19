.class Lcom/youku/player/base/MediaPlayerInit$4;
.super Ljava/lang/Object;
.source "MediaPlayerInit.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


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
    .line 110
    iput-object p1, p0, Lcom/youku/player/base/MediaPlayerInit$4;->this$0:Lcom/youku/player/base/MediaPlayerInit;

    iput-object p2, p0, Lcom/youku/player/base/MediaPlayerInit$4;->val$playerUiControl:Lcom/youku/player/apiservice/IPlayerUiControl;

    iput-object p3, p0, Lcom/youku/player/base/MediaPlayerInit$4;->val$playerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private disposeAdErrorLoss(I)V
    .locals 4
    .param p1, "what"    # I

    .prologue
    const/4 v3, 0x6

    .line 260
    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit$4;->this$0:Lcom/youku/player/base/MediaPlayerInit;

    invoke-static {v0}, Lcom/youku/player/base/MediaPlayerInit;->access$000(Lcom/youku/player/base/MediaPlayerInit;)Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit$4;->this$0:Lcom/youku/player/base/MediaPlayerInit;

    invoke-static {v0}, Lcom/youku/player/base/MediaPlayerInit;->access$000(Lcom/youku/player/base/MediaPlayerInit;)Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v0

    iget-object v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-nez v0, :cond_1

    .line 280
    :cond_0
    :goto_0
    return-void

    .line 264
    :cond_1
    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit$4;->this$0:Lcom/youku/player/base/MediaPlayerInit;

    invoke-static {v0}, Lcom/youku/player/base/MediaPlayerInit;->access$500(Lcom/youku/player/base/MediaPlayerInit;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/player/base/MediaPlayerInit$4;->this$0:Lcom/youku/player/base/MediaPlayerInit;

    invoke-static {v1}, Lcom/youku/player/base/MediaPlayerInit;->access$000(Lcom/youku/player/base/MediaPlayerInit;)Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v1

    iget-object v1, v1, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-static {v0, v1, v3}, Lcom/youku/player/util/DisposableStatsUtils;->disposeNotPlayedAd(Landroid/content/Context;Lcom/youku/player/module/VideoUrlInfo;I)V

    .line 266
    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit$4;->val$playerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

    invoke-interface {v0}, Lcom/youku/player/apiservice/IPlayerAdControl;->isMidAdShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 267
    const/16 v0, 0x3ee

    if-ne p1, v0, :cond_2

    .line 268
    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit$4;->this$0:Lcom/youku/player/base/MediaPlayerInit;

    invoke-static {v0}, Lcom/youku/player/base/MediaPlayerInit;->access$500(Lcom/youku/player/base/MediaPlayerInit;)Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x4

    sget-object v2, Lcom/youku/player/util/SessionUnitil;->playEvent_session:Ljava/lang/String;

    const-string v3, "mo"

    invoke-static {v0, v1, v2, v3}, Lcom/youku/player/util/DisposableStatsUtils;->disposeAdLoss(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 273
    :cond_2
    const/16 v0, 0x7d5

    if-ne p1, v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit$4;->this$0:Lcom/youku/player/base/MediaPlayerInit;

    invoke-static {v0}, Lcom/youku/player/base/MediaPlayerInit;->access$500(Lcom/youku/player/base/MediaPlayerInit;)Landroid/app/Activity;

    move-result-object v0

    sget-object v1, Lcom/youku/player/util/SessionUnitil;->playEvent_session:Ljava/lang/String;

    const-string v2, "mo"

    invoke-static {v0, v3, v1, v2}, Lcom/youku/player/util/DisposableStatsUtils;->disposeAdLoss(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private isAdPlayError(I)Z
    .locals 1
    .param p1, "what"    # I

    .prologue
    .line 247
    const/16 v0, 0x7d5

    if-eq p1, v0, :cond_4

    const/16 v0, 0x456

    if-eq p1, v0, :cond_4

    const/16 v0, 0x898

    if-eq p1, v0, :cond_4

    const/16 v0, 0x3ee

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit$4;->this$0:Lcom/youku/player/base/MediaPlayerInit;

    invoke-static {v0}, Lcom/youku/player/base/MediaPlayerInit;->access$000(Lcom/youku/player/base/MediaPlayerInit;)Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->isAdvShowFinished()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_0
    const/16 v0, 0x899

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit$4;->val$playerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

    invoke-interface {v0}, Lcom/youku/player/apiservice/IPlayerAdControl;->isMidAdShowing()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_1
    const/16 v0, 0x3ea

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit$4;->this$0:Lcom/youku/player/base/MediaPlayerInit;

    invoke-static {v0}, Lcom/youku/player/base/MediaPlayerInit;->access$000(Lcom/youku/player/base/MediaPlayerInit;)Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v0

    iget-boolean v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isADShowing:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit$4;->val$playerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

    invoke-interface {v0}, Lcom/youku/player/apiservice/IPlayerAdControl;->isMidAdShowing()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_2
    const/16 v0, 0x3f0

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit$4;->this$0:Lcom/youku/player/base/MediaPlayerInit;

    invoke-static {v0}, Lcom/youku/player/base/MediaPlayerInit;->access$000(Lcom/youku/player/base/MediaPlayerInit;)Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v0

    iget-boolean v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isADShowing:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit$4;->val$playerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

    invoke-interface {v0}, Lcom/youku/player/apiservice/IPlayerAdControl;->isMidAdShowing()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    const/16 v0, 0x7d4

    if-ne p1, v0, :cond_5

    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit$4;->this$0:Lcom/youku/player/base/MediaPlayerInit;

    invoke-static {v0}, Lcom/youku/player/base/MediaPlayerInit;->access$000(Lcom/youku/player/base/MediaPlayerInit;)Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v0

    iget-boolean v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isADShowing:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit$4;->val$playerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

    invoke-interface {v0}, Lcom/youku/player/apiservice/IPlayerAdControl;->isMidAdShowing()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private processExternalVideoError()V
    .locals 2

    .prologue
    .line 208
    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit$4;->this$0:Lcom/youku/player/base/MediaPlayerInit;

    invoke-static {v0}, Lcom/youku/player/base/MediaPlayerInit;->access$500(Lcom/youku/player/base/MediaPlayerInit;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/youku/player/base/MediaPlayerInit$4$1;

    invoke-direct {v1, p0}, Lcom/youku/player/base/MediaPlayerInit$4$1;-><init>(Lcom/youku/player/base/MediaPlayerInit$4;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 220
    return-void
.end method

.method private processP2PError()V
    .locals 2

    .prologue
    .line 223
    invoke-static {}, Lcom/youku/player/p2p/P2pManager;->getInstance()Lcom/youku/player/p2p/P2pManager;

    move-result-object v0

    iget v1, v0, Lcom/youku/player/p2p/P2pManager;->mRetryTimes:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/youku/player/p2p/P2pManager;->mRetryTimes:I

    .line 224
    iget-object v0, p0, Lcom/youku/player/base/MediaPlayerInit$4;->this$0:Lcom/youku/player/base/MediaPlayerInit;

    invoke-static {v0}, Lcom/youku/player/base/MediaPlayerInit;->access$500(Lcom/youku/player/base/MediaPlayerInit;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/youku/player/base/MediaPlayerInit$4$2;

    invoke-direct {v1, p0}, Lcom/youku/player/base/MediaPlayerInit$4$2;-><init>(Lcom/youku/player/base/MediaPlayerInit$4;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 244
    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 8
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 114
    sget-object v5, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "\u64ad\u653e\u5668\u51fa\u73b0\u9519\ufffd?MediaPlayer onError what="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " !!!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    iget-object v5, p0, Lcom/youku/player/base/MediaPlayerInit$4;->this$0:Lcom/youku/player/base/MediaPlayerInit;

    invoke-static {v5}, Lcom/youku/player/base/MediaPlayerInit;->access$000(Lcom/youku/player/base/MediaPlayerInit;)Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 117
    iget-object v5, p0, Lcom/youku/player/base/MediaPlayerInit$4;->this$0:Lcom/youku/player/base/MediaPlayerInit;

    invoke-static {v5}, Lcom/youku/player/base/MediaPlayerInit;->access$000(Lcom/youku/player/base/MediaPlayerInit;)Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v5

    iput-boolean v4, v5, Lcom/youku/player/plugin/MediaPlayerDelegate;->pauseDuringSeek:Z

    .line 118
    iget-object v5, p0, Lcom/youku/player/base/MediaPlayerInit$4;->this$0:Lcom/youku/player/base/MediaPlayerInit;

    invoke-static {v5}, Lcom/youku/player/base/MediaPlayerInit;->access$000(Lcom/youku/player/base/MediaPlayerInit;)Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v5

    iput-boolean v4, v5, Lcom/youku/player/plugin/MediaPlayerDelegate;->isSeeking:Z

    .line 121
    :cond_0
    iget-object v5, p0, Lcom/youku/player/base/MediaPlayerInit$4;->this$0:Lcom/youku/player/base/MediaPlayerInit;

    invoke-static {v5}, Lcom/youku/player/base/MediaPlayerInit;->access$000(Lcom/youku/player/base/MediaPlayerInit;)Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/youku/player/base/MediaPlayerInit$4;->this$0:Lcom/youku/player/base/MediaPlayerInit;

    invoke-static {v5}, Lcom/youku/player/base/MediaPlayerInit;->access$000(Lcom/youku/player/base/MediaPlayerInit;)Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v5

    iget-object v5, v5, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/youku/player/base/MediaPlayerInit$4;->this$0:Lcom/youku/player/base/MediaPlayerInit;

    invoke-static {v5}, Lcom/youku/player/base/MediaPlayerInit;->access$000(Lcom/youku/player/base/MediaPlayerInit;)Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v5

    iget-object v5, v5, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    iget-boolean v5, v5, Lcom/youku/player/module/VideoUrlInfo;->isExternalVideo:Z

    if-eqz v5, :cond_2

    invoke-static {}, Lcom/youku/uplayer/MediaPlayerProxy;->isUplayerSupported()Z

    move-result v5

    if-eqz v5, :cond_2

    if-eqz p1, :cond_2

    check-cast p1, Lcom/youku/uplayer/MediaPlayerProxy;

    .end local p1    # "mp":Landroid/media/MediaPlayer;
    invoke-virtual {p1}, Lcom/youku/uplayer/MediaPlayerProxy;->isUsingUMediaplayer()Z

    move-result v5

    if-nez v5, :cond_2

    .line 128
    invoke-direct {p0}, Lcom/youku/player/base/MediaPlayerInit$4;->processExternalVideoError()V

    .line 204
    :cond_1
    :goto_0
    return v3

    .line 132
    :cond_2
    iget-object v5, p0, Lcom/youku/player/base/MediaPlayerInit$4;->val$playerUiControl:Lcom/youku/player/apiservice/IPlayerUiControl;

    invoke-interface {v5}, Lcom/youku/player/apiservice/IPlayerUiControl;->getYoukuPlayerView()Lcom/youku/player/base/YoukuPlayerView;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 133
    iget-object v5, p0, Lcom/youku/player/base/MediaPlayerInit$4;->val$playerUiControl:Lcom/youku/player/apiservice/IPlayerUiControl;

    invoke-interface {v5}, Lcom/youku/player/apiservice/IPlayerUiControl;->getYoukuPlayerView()Lcom/youku/player/base/YoukuPlayerView;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "\u51fa\u73b0\u9519\u8bef-->onError:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/youku/player/base/YoukuPlayerView;->setDebugText(Ljava/lang/String;)V

    .line 135
    :cond_3
    invoke-direct {p0, p2}, Lcom/youku/player/base/MediaPlayerInit$4;->disposeAdErrorLoss(I)V

    .line 136
    iget-object v5, p0, Lcom/youku/player/base/MediaPlayerInit$4;->val$playerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

    invoke-interface {v5}, Lcom/youku/player/apiservice/IPlayerAdControl;->getMidAdModel()Lcom/youku/player/ad/MidAdModel;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 137
    iget-object v5, p0, Lcom/youku/player/base/MediaPlayerInit$4;->val$playerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

    invoke-interface {v5}, Lcom/youku/player/apiservice/IPlayerAdControl;->getMidAdModel()Lcom/youku/player/ad/MidAdModel;

    move-result-object v5

    iput-boolean v4, v5, Lcom/youku/player/ad/MidAdModel;->isAfterEndNoSeek:Z

    .line 139
    :cond_4
    const/16 v5, 0x899

    if-ne p2, v5, :cond_5

    iget-object v5, p0, Lcom/youku/player/base/MediaPlayerInit$4;->val$playerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

    invoke-interface {v5}, Lcom/youku/player/apiservice/IPlayerAdControl;->isMidAdShowing()Z

    move-result v5

    if-nez v5, :cond_5

    .line 142
    iget-object v5, p0, Lcom/youku/player/base/MediaPlayerInit$4;->val$playerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

    invoke-interface {v5}, Lcom/youku/player/apiservice/IPlayerAdControl;->getMidAdModel()Lcom/youku/player/ad/MidAdModel;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 143
    iget-object v5, p0, Lcom/youku/player/base/MediaPlayerInit$4;->val$playerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

    invoke-interface {v5}, Lcom/youku/player/apiservice/IPlayerAdControl;->getMidAdModel()Lcom/youku/player/ad/MidAdModel;

    move-result-object v5

    iput-boolean v4, v5, Lcom/youku/player/ad/MidAdModel;->isAfterEndNoSeek:Z

    .line 144
    iget-object v4, p0, Lcom/youku/player/base/MediaPlayerInit$4;->val$playerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

    invoke-interface {v4}, Lcom/youku/player/apiservice/IPlayerAdControl;->getMidAdModel()Lcom/youku/player/ad/MidAdModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/youku/player/ad/MidAdModel;->startTimer()V

    .line 145
    iget-object v4, p0, Lcom/youku/player/base/MediaPlayerInit$4;->val$playerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

    invoke-interface {v4}, Lcom/youku/player/apiservice/IPlayerAdControl;->onMidAdLoadingEndListener()V

    goto :goto_0

    .line 149
    :cond_5
    invoke-direct {p0, p2}, Lcom/youku/player/base/MediaPlayerInit$4;->isAdPlayError(I)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 150
    sget-object v5, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "\u51fa\u73b0\u9519\u8bef:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " \u5904\u7406\u7ed3\u679c:\u8df3\u8fc7\u5e7f\u544a\u64ad\u653e"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    iget-object v5, p0, Lcom/youku/player/base/MediaPlayerInit$4;->this$0:Lcom/youku/player/base/MediaPlayerInit;

    invoke-static {v5}, Lcom/youku/player/base/MediaPlayerInit;->access$000(Lcom/youku/player/base/MediaPlayerInit;)Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v5

    invoke-virtual {v5}, Lcom/youku/player/plugin/MediaPlayerDelegate;->isAdvShowFinished()Z

    move-result v5

    if-nez v5, :cond_6

    :goto_1
    invoke-static {p2, p3, v3}, Lcom/youku/player/Track;->addAdLevelErrors(IIZ)V

    .line 152
    iget-object v3, p0, Lcom/youku/player/base/MediaPlayerInit$4;->this$0:Lcom/youku/player/base/MediaPlayerInit;

    iget-object v4, p0, Lcom/youku/player/base/MediaPlayerInit$4;->val$playerUiControl:Lcom/youku/player/apiservice/IPlayerUiControl;

    iget-object v5, p0, Lcom/youku/player/base/MediaPlayerInit$4;->val$playerAdControl:Lcom/youku/player/apiservice/IPlayerAdControl;

    invoke-static {v3, v4, v5}, Lcom/youku/player/base/MediaPlayerInit;->access$100(Lcom/youku/player/base/MediaPlayerInit;Lcom/youku/player/apiservice/IPlayerUiControl;Lcom/youku/player/apiservice/IPlayerAdControl;)Z

    move-result v3

    goto/16 :goto_0

    :cond_6
    move v3, v4

    .line 151
    goto :goto_1

    .line 154
    :cond_7
    iget-object v5, p0, Lcom/youku/player/base/MediaPlayerInit$4;->this$0:Lcom/youku/player/base/MediaPlayerInit;

    invoke-static {v5}, Lcom/youku/player/base/MediaPlayerInit;->access$000(Lcom/youku/player/base/MediaPlayerInit;)Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v5

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/youku/player/base/MediaPlayerInit$4;->this$0:Lcom/youku/player/base/MediaPlayerInit;

    invoke-static {v5}, Lcom/youku/player/base/MediaPlayerInit;->access$000(Lcom/youku/player/base/MediaPlayerInit;)Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v5

    invoke-virtual {v5}, Lcom/youku/player/plugin/MediaPlayerDelegate;->getCurrentPosition()I

    move-result v5

    :goto_2
    invoke-static {p2, p3, v5}, Lcom/youku/player/Track;->onPlayError(III)V

    .line 156
    invoke-static {}, Lcom/youku/player/p2p/P2pManager;->getInstance()Lcom/youku/player/p2p/P2pManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/youku/player/p2p/P2pManager;->isUsingP2P()Z

    move-result v5

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/youku/player/base/MediaPlayerInit$4;->this$0:Lcom/youku/player/base/MediaPlayerInit;

    invoke-static {v5}, Lcom/youku/player/base/MediaPlayerInit;->access$000(Lcom/youku/player/base/MediaPlayerInit;)Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v5

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/youku/player/base/MediaPlayerInit$4;->this$0:Lcom/youku/player/base/MediaPlayerInit;

    invoke-static {v5}, Lcom/youku/player/base/MediaPlayerInit;->access$000(Lcom/youku/player/base/MediaPlayerInit;)Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v5

    iget-boolean v5, v5, Lcom/youku/player/plugin/MediaPlayerDelegate;->changeQuality:Z

    if-nez v5, :cond_9

    .line 159
    invoke-direct {p0}, Lcom/youku/player/base/MediaPlayerInit$4;->processP2PError()V

    goto/16 :goto_0

    :cond_8
    move v5, v4

    .line 154
    goto :goto_2

    .line 162
    :cond_9
    iget-object v5, p0, Lcom/youku/player/base/MediaPlayerInit$4;->val$playerUiControl:Lcom/youku/player/apiservice/IPlayerUiControl;

    invoke-interface {v5}, Lcom/youku/player/apiservice/IPlayerUiControl;->getYoukuPlayerView()Lcom/youku/player/base/YoukuPlayerView;

    move-result-object v5

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/youku/player/base/MediaPlayerInit$4;->val$playerUiControl:Lcom/youku/player/apiservice/IPlayerUiControl;

    invoke-interface {v5}, Lcom/youku/player/apiservice/IPlayerUiControl;->getYoukuPlayerView()Lcom/youku/player/base/YoukuPlayerView;

    move-result-object v5

    iget-boolean v5, v5, Lcom/youku/player/base/YoukuPlayerView;->realVideoStart:Z

    if-nez v5, :cond_a

    .line 164
    iget-object v5, p0, Lcom/youku/player/base/MediaPlayerInit$4;->val$playerUiControl:Lcom/youku/player/apiservice/IPlayerUiControl;

    const/4 v6, 0x7

    invoke-interface {v5, v6}, Lcom/youku/player/apiservice/IPlayerUiControl;->updatePlugin(I)V

    .line 167
    :cond_a
    const/16 v5, 0x457

    if-ne p2, v5, :cond_b

    iget-object v5, p0, Lcom/youku/player/base/MediaPlayerInit$4;->this$0:Lcom/youku/player/base/MediaPlayerInit;

    invoke-static {v5}, Lcom/youku/player/base/MediaPlayerInit;->access$000(Lcom/youku/player/base/MediaPlayerInit;)Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v5

    if-eqz v5, :cond_b

    iget-object v5, p0, Lcom/youku/player/base/MediaPlayerInit$4;->this$0:Lcom/youku/player/base/MediaPlayerInit;

    invoke-static {v5}, Lcom/youku/player/base/MediaPlayerInit;->access$000(Lcom/youku/player/base/MediaPlayerInit;)Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v5

    iget-object v5, v5, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v5, :cond_b

    .line 169
    iget-object v5, p0, Lcom/youku/player/base/MediaPlayerInit$4;->this$0:Lcom/youku/player/base/MediaPlayerInit;

    invoke-static {v5}, Lcom/youku/player/base/MediaPlayerInit;->access$000(Lcom/youku/player/base/MediaPlayerInit;)Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v5

    iget-object v5, v5, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v5, v3}, Lcom/youku/player/module/VideoUrlInfo;->setHttp4xxError(Z)V

    .line 171
    :cond_b
    iget-object v5, p0, Lcom/youku/player/base/MediaPlayerInit$4;->this$0:Lcom/youku/player/base/MediaPlayerInit;

    invoke-static {v5}, Lcom/youku/player/base/MediaPlayerInit;->access$200(Lcom/youku/player/base/MediaPlayerInit;)Z

    move-result v5

    if-nez v5, :cond_c

    invoke-static {}, Lcom/youku/player/config/MediaPlayerConfiguration;->getInstance()Lcom/youku/player/config/MediaPlayerConfiguration;

    move-result-object v5

    invoke-virtual {v5}, Lcom/youku/player/config/MediaPlayerConfiguration;->trackPlayError()Z

    move-result v5

    if-eqz v5, :cond_c

    iget-object v5, p0, Lcom/youku/player/base/MediaPlayerInit$4;->val$playerUiControl:Lcom/youku/player/apiservice/IPlayerUiControl;

    invoke-interface {v5}, Lcom/youku/player/apiservice/IPlayerUiControl;->getYoukuPlayerView()Lcom/youku/player/base/YoukuPlayerView;

    move-result-object v5

    iget-boolean v5, v5, Lcom/youku/player/base/YoukuPlayerView;->realVideoStart:Z

    if-eqz v5, :cond_c

    iget-object v5, p0, Lcom/youku/player/base/MediaPlayerInit$4;->this$0:Lcom/youku/player/base/MediaPlayerInit;

    invoke-static {v5}, Lcom/youku/player/base/MediaPlayerInit;->access$000(Lcom/youku/player/base/MediaPlayerInit;)Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v5

    if-eqz v5, :cond_c

    iget-object v5, p0, Lcom/youku/player/base/MediaPlayerInit$4;->this$0:Lcom/youku/player/base/MediaPlayerInit;

    invoke-static {v5}, Lcom/youku/player/base/MediaPlayerInit;->access$000(Lcom/youku/player/base/MediaPlayerInit;)Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v5

    iget-object v5, v5, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    if-eqz v5, :cond_c

    .line 176
    iget-object v5, p0, Lcom/youku/player/base/MediaPlayerInit$4;->this$0:Lcom/youku/player/base/MediaPlayerInit;

    invoke-static {v5}, Lcom/youku/player/base/MediaPlayerInit;->access$000(Lcom/youku/player/base/MediaPlayerInit;)Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v5

    iget-object v5, v5, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-virtual {v5}, Lcom/youku/player/module/VideoUrlInfo;->getWeburl()Ljava/lang/String;

    move-result-object v2

    .line 178
    .local v2, "videoUrl":Ljava/lang/String;
    new-instance v1, Lcom/youku/statistics/TaskSendPlayBreak;

    invoke-direct {v1, v2}, Lcom/youku/statistics/TaskSendPlayBreak;-><init>(Ljava/lang/String;)V

    .line 180
    .local v1, "task":Lcom/youku/statistics/TaskSendPlayBreak;
    new-array v5, v4, [Ljava/lang/Void;

    invoke-virtual {v1, v5}, Lcom/youku/statistics/TaskSendPlayBreak;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 181
    iget-object v5, p0, Lcom/youku/player/base/MediaPlayerInit$4;->this$0:Lcom/youku/player/base/MediaPlayerInit;

    invoke-static {v5, v3}, Lcom/youku/player/base/MediaPlayerInit;->access$202(Lcom/youku/player/base/MediaPlayerInit;Z)Z

    .line 183
    .end local v1    # "task":Lcom/youku/statistics/TaskSendPlayBreak;
    .end local v2    # "videoUrl":Ljava/lang/String;
    :cond_c
    iget-object v3, p0, Lcom/youku/player/base/MediaPlayerInit$4;->val$playerUiControl:Lcom/youku/player/apiservice/IPlayerUiControl;

    invoke-interface {v3}, Lcom/youku/player/apiservice/IPlayerUiControl;->getYoukuPlayerView()Lcom/youku/player/base/YoukuPlayerView;

    move-result-object v3

    iget-boolean v3, v3, Lcom/youku/player/base/YoukuPlayerView;->realVideoStart:Z

    if-eqz v3, :cond_d

    iget-object v3, p0, Lcom/youku/player/base/MediaPlayerInit$4;->this$0:Lcom/youku/player/base/MediaPlayerInit;

    invoke-static {v3}, Lcom/youku/player/base/MediaPlayerInit;->access$000(Lcom/youku/player/base/MediaPlayerInit;)Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v3

    iget-boolean v3, v3, Lcom/youku/player/plugin/MediaPlayerDelegate;->isLoading:Z

    if-eqz v3, :cond_d

    .line 184
    iget-object v3, p0, Lcom/youku/player/base/MediaPlayerInit$4;->this$0:Lcom/youku/player/base/MediaPlayerInit;

    invoke-static {v3}, Lcom/youku/player/base/MediaPlayerInit;->access$000(Lcom/youku/player/base/MediaPlayerInit;)Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v3

    iget-object v3, v3, Lcom/youku/player/plugin/MediaPlayerDelegate;->videoInfo:Lcom/youku/player/module/VideoUrlInfo;

    invoke-static {v3}, Lcom/youku/player/Track;->onPlayLoadingEnd(Lcom/youku/player/module/VideoUrlInfo;)V

    .line 185
    :cond_d
    iget-object v3, p0, Lcom/youku/player/base/MediaPlayerInit$4;->this$0:Lcom/youku/player/base/MediaPlayerInit;

    invoke-static {v3}, Lcom/youku/player/base/MediaPlayerInit;->access$000(Lcom/youku/player/base/MediaPlayerInit;)Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v3

    iput-boolean v4, v3, Lcom/youku/player/plugin/MediaPlayerDelegate;->isLoading:Z

    .line 186
    iget-object v3, p0, Lcom/youku/player/base/MediaPlayerInit$4;->this$0:Lcom/youku/player/base/MediaPlayerInit;

    invoke-static {v3, p2}, Lcom/youku/player/base/MediaPlayerInit;->access$300(Lcom/youku/player/base/MediaPlayerInit;I)V

    .line 187
    iget-object v3, p0, Lcom/youku/player/base/MediaPlayerInit$4;->this$0:Lcom/youku/player/base/MediaPlayerInit;

    invoke-static {v3}, Lcom/youku/player/base/MediaPlayerInit;->access$400(Lcom/youku/player/base/MediaPlayerInit;)V

    .line 188
    iget-object v3, p0, Lcom/youku/player/base/MediaPlayerInit$4;->this$0:Lcom/youku/player/base/MediaPlayerInit;

    invoke-static {v3}, Lcom/youku/player/base/MediaPlayerInit;->access$000(Lcom/youku/player/base/MediaPlayerInit;)Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v3

    iget-object v3, v3, Lcom/youku/player/plugin/MediaPlayerDelegate;->pluginManager:Lcom/youku/player/plugin/PluginManager;

    if-nez v3, :cond_e

    .line 189
    sget-object v3, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onError\u51fa\u73b0\u9519\u8bef:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " pluginManager == null  return false"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v4

    .line 190
    goto/16 :goto_0

    .line 193
    :cond_e
    iget-object v3, p0, Lcom/youku/player/base/MediaPlayerInit$4;->this$0:Lcom/youku/player/base/MediaPlayerInit;

    invoke-static {v3}, Lcom/youku/player/base/MediaPlayerInit;->access$000(Lcom/youku/player/base/MediaPlayerInit;)Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v3

    invoke-virtual {v3}, Lcom/youku/player/plugin/MediaPlayerDelegate;->getCurrentPosition()I

    move-result v0

    .line 194
    .local v0, "nowPostition":I
    if-lez v0, :cond_f

    .line 195
    iget-object v3, p0, Lcom/youku/player/base/MediaPlayerInit$4;->this$0:Lcom/youku/player/base/MediaPlayerInit;

    invoke-static {v3}, Lcom/youku/player/base/MediaPlayerInit;->access$000(Lcom/youku/player/base/MediaPlayerInit;)Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/youku/player/plugin/MediaPlayerDelegate;->setAdPausedPosition(I)V

    .line 198
    :cond_f
    const/16 v3, -0x26

    if-ne p2, v3, :cond_10

    invoke-static {}, Lcom/youku/uplayer/MediaPlayerProxy;->isUplayerSupported()Z

    move-result v3

    if-nez v3, :cond_10

    .line 200
    const/4 p2, 0x1

    .line 203
    :cond_10
    iget-object v3, p0, Lcom/youku/player/base/MediaPlayerInit$4;->val$playerUiControl:Lcom/youku/player/apiservice/IPlayerUiControl;

    invoke-interface {v3}, Lcom/youku/player/apiservice/IPlayerUiControl;->hideWebView()V

    .line 204
    iget-object v3, p0, Lcom/youku/player/base/MediaPlayerInit$4;->this$0:Lcom/youku/player/base/MediaPlayerInit;

    invoke-static {v3}, Lcom/youku/player/base/MediaPlayerInit;->access$000(Lcom/youku/player/base/MediaPlayerInit;)Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v3

    iget-object v3, v3, Lcom/youku/player/plugin/MediaPlayerDelegate;->pluginManager:Lcom/youku/player/plugin/PluginManager;

    invoke-virtual {v3, p2, p3}, Lcom/youku/player/plugin/PluginManager;->onError(II)Z

    move-result v3

    goto/16 :goto_0
.end method
