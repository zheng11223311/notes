.class Lcom/tudou/ui/activity/DetailActivity$6;
.super Ljava/lang/Object;
.source "DetailActivity.java"

# interfaces
.implements Lcom/youku/player/apiservice/IVideoHistoryInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/activity/DetailActivity;->initPlayer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/activity/DetailActivity;


# direct methods
.method constructor <init>(Lcom/tudou/ui/activity/DetailActivity;)V
    .locals 0

    .prologue
    .line 499
    iput-object p1, p0, Lcom/tudou/ui/activity/DetailActivity$6;->this$0:Lcom/tudou/ui/activity/DetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addIntervalHistory(Lcom/youku/player/module/VideoUrlInfo;)V
    .locals 0
    .param p1, "videoUrlInfo"    # Lcom/youku/player/module/VideoUrlInfo;

    .prologue
    .line 552
    return-void
.end method

.method public addReleaseHistory(Lcom/youku/player/module/VideoUrlInfo;)V
    .locals 12
    .param p1, "videoUrlInfo"    # Lcom/youku/player/module/VideoUrlInfo;

    .prologue
    .line 509
    sget v0, Lcom/youku/player/goplay/Profile;->from:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    iget-boolean v0, p1, Lcom/youku/player/module/VideoUrlInfo;->isExternalVideo:Z

    if-nez v0, :cond_1

    .line 511
    invoke-static {}, Lcom/tudou/service/chat/ChatManager;->getInstance()Lcom/tudou/service/chat/ChatManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/youku/player/module/VideoUrlInfo;->getVid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/youku/player/module/VideoUrlInfo;->getProgress()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/tudou/service/chat/ChatManager;->setVideoPoint(Ljava/lang/String;I)V

    .line 513
    :try_start_0
    invoke-static {p1}, Lcom/youku/phone/detail/DetailUtil;->isPayVideo(Lcom/youku/player/module/VideoUrlInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 514
    const-string v0, "Youku"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addToPlayHistory getProgress = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/youku/player/module/VideoUrlInfo;->getProgress()I

    move-result v2

    div-int/lit16 v2, v2, 0x3e8

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "time ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/youku/player/module/VideoUrlInfo;->mPayInfo:Lcom/youku/player/module/PayInfo;

    iget-object v2, v2, Lcom/youku/player/module/PayInfo;->trail:Lcom/youku/player/module/PayInfo$Trial;

    iget v2, v2, Lcom/youku/player/module/PayInfo$Trial;->time:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    :cond_0
    invoke-static {}, Lcom/tudou/service/playhistory/PlayhistoryManagerImp;->getInstance()Lcom/tudou/service/playhistory/PlayhistoryManagerImp;

    move-result-object v11

    .line 526
    .local v11, "historyManager":Lcom/tudou/service/playhistory/PlayhistoryManagerImp;
    invoke-virtual {p1}, Lcom/youku/player/module/VideoUrlInfo;->getVid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/youku/player/module/VideoUrlInfo;->getProgress()I

    move-result v1

    div-int/lit16 v1, v1, 0x3e8

    invoke-virtual {p1}, Lcom/youku/player/module/VideoUrlInfo;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/youku/player/module/VideoUrlInfo;->getItem_img_16_9()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/youku/player/module/VideoUrlInfo;->getShowId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/youku/player/module/VideoUrlInfo;->getDurationMills()I

    move-result v5

    div-int/lit16 v5, v5, 0x3e8

    invoke-virtual {p1}, Lcom/youku/player/module/VideoUrlInfo;->getHaveNext()I

    move-result v6

    invoke-virtual {p1}, Lcom/youku/player/module/VideoUrlInfo;->getShow_videoseq()I

    move-result v7

    invoke-virtual {p1}, Lcom/youku/player/module/VideoUrlInfo;->isTrailer()Z

    move-result v8

    iget-object v9, p1, Lcom/youku/player/module/VideoUrlInfo;->playlistCode:Ljava/lang/String;

    invoke-static/range {v0 .. v9}, Lcom/tudou/service/playhistory/PlayhistoryManagerImp;->addToPlayHistory(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 547
    .end local v11    # "historyManager":Lcom/tudou/service/playhistory/PlayhistoryManagerImp;
    :cond_1
    :goto_0
    return-void

    .line 536
    :catch_0
    move-exception v10

    .line 537
    .local v10, "e":Ljava/lang/Exception;
    const-string v0, "Youku"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "database error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getVideoHistoryInfo(Ljava/lang/String;)Lcom/youku/player/module/VideoHistoryInfo;
    .locals 2
    .param p1, "vid"    # Ljava/lang/String;

    .prologue
    .line 503
    invoke-static {p1}, Lcom/youku/data/SQLiteManagerTudou;->getVideoInfoUseID(Ljava/lang/String;)Lcom/youku/vo/VideoInfo;

    move-result-object v0

    .line 504
    .local v0, "video":Lcom/youku/vo/VideoInfo;
    iget-object v1, p0, Lcom/tudou/ui/activity/DetailActivity$6;->this$0:Lcom/tudou/ui/activity/DetailActivity;

    invoke-static {v1, v0}, Lcom/tudou/ui/activity/DetailActivity;->access$300(Lcom/tudou/ui/activity/DetailActivity;Lcom/youku/vo/VideoInfo;)Lcom/youku/player/module/VideoHistoryInfo;

    move-result-object v1

    return-object v1
.end method
