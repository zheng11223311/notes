.class Lcom/youku/gamecenter/GameBaseActivity$MyOnGameUpgradationServiceListener;
.super Ljava/lang/Object;
.source "GameBaseActivity.java"

# interfaces
.implements Lcom/youku/gamecenter/services/GetGamesUpgradationService$OnGameUpgradationServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/gamecenter/GameBaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyOnGameUpgradationServiceListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/gamecenter/GameBaseActivity;


# direct methods
.method constructor <init>(Lcom/youku/gamecenter/GameBaseActivity;)V
    .locals 0

    .prologue
    .line 605
    iput-object p1, p0, Lcom/youku/gamecenter/GameBaseActivity$MyOnGameUpgradationServiceListener;->this$0:Lcom/youku/gamecenter/GameBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Lcom/youku/gamecenter/services/GetResponseService$FailedInfo;)V
    .locals 2
    .param p1, "failedInfo"    # Lcom/youku/gamecenter/services/GetResponseService$FailedInfo;

    .prologue
    .line 610
    const-string v0, "GameCenterHomeActivity"

    const-string v1, "no one app can update!!!"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    return-void
.end method

.method public onSuccess(Lcom/youku/gamecenter/data/GameUpgradationInfo;)V
    .locals 6
    .param p1, "gameListInfo"    # Lcom/youku/gamecenter/data/GameUpgradationInfo;

    .prologue
    .line 616
    iget-object v4, p0, Lcom/youku/gamecenter/GameBaseActivity$MyOnGameUpgradationServiceListener;->this$0:Lcom/youku/gamecenter/GameBaseActivity;

    invoke-virtual {v4, p1}, Lcom/youku/gamecenter/GameBaseActivity;->checkGamesUpgradation(Lcom/youku/gamecenter/data/GameUpgradationInfo;)V

    .line 617
    invoke-static {}, Lcom/youku/gamecenter/GameCenterModel;->getUpgradeGameManagerData()Ljava/util/List;

    move-result-object v3

    .line 618
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Lcom/youku/gamecenter/data/GameInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/gamecenter/data/GameInfo;

    .line 619
    .local v2, "info":Lcom/youku/gamecenter/data/GameInfo;
    new-instance v4, Lcom/youku/gamecenter/download/DownloadInfo$Builder;

    invoke-direct {v4}, Lcom/youku/gamecenter/download/DownloadInfo$Builder;-><init>()V

    invoke-virtual {v2}, Lcom/youku/gamecenter/data/GameInfo;->getLogo()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/youku/gamecenter/download/DownloadInfo$Builder;->setIcon(Ljava/lang/String;)Lcom/youku/gamecenter/download/DownloadInfo$Builder;

    move-result-object v4

    iget-object v5, v2, Lcom/youku/gamecenter/data/GameInfo;->packagename:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/youku/gamecenter/download/DownloadInfo$Builder;->setPackageName(Ljava/lang/String;)Lcom/youku/gamecenter/download/DownloadInfo$Builder;

    move-result-object v4

    iget v5, v2, Lcom/youku/gamecenter/data/GameInfo;->ver_code:I

    invoke-virtual {v4, v5}, Lcom/youku/gamecenter/download/DownloadInfo$Builder;->setVersion(I)Lcom/youku/gamecenter/download/DownloadInfo$Builder;

    move-result-object v4

    iget-object v5, v2, Lcom/youku/gamecenter/data/GameInfo;->download_link:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/youku/gamecenter/download/DownloadInfo$Builder;->setUrl(Ljava/lang/String;)Lcom/youku/gamecenter/download/DownloadInfo$Builder;

    move-result-object v4

    iget-object v5, v2, Lcom/youku/gamecenter/data/GameInfo;->id:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/youku/gamecenter/download/DownloadInfo$Builder;->setId(Ljava/lang/String;)Lcom/youku/gamecenter/download/DownloadInfo$Builder;

    move-result-object v4

    iget-object v5, v2, Lcom/youku/gamecenter/data/GameInfo;->appname:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/youku/gamecenter/download/DownloadInfo$Builder;->setTitle(Ljava/lang/String;)Lcom/youku/gamecenter/download/DownloadInfo$Builder;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lcom/youku/gamecenter/download/DownloadInfo$Builder;->setType(I)Lcom/youku/gamecenter/download/DownloadInfo$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/youku/gamecenter/download/DownloadInfo$Builder;->build()Lcom/youku/gamecenter/download/DownloadInfo;

    move-result-object v0

    .line 626
    .local v0, "downloadInfo":Lcom/youku/gamecenter/download/DownloadInfo;
    iget-object v4, p0, Lcom/youku/gamecenter/GameBaseActivity$MyOnGameUpgradationServiceListener;->this$0:Lcom/youku/gamecenter/GameBaseActivity;

    invoke-virtual {v4}, Lcom/youku/gamecenter/GameBaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/youku/gamecenter/download/DownloadManager;->getInstance(Landroid/content/Context;)Lcom/youku/gamecenter/download/DownloadManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/youku/gamecenter/download/DownloadManager;->startGameSilentUpdate(Lcom/youku/gamecenter/download/DownloadInfo;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 628
    iget-object v4, p0, Lcom/youku/gamecenter/GameBaseActivity$MyOnGameUpgradationServiceListener;->this$0:Lcom/youku/gamecenter/GameBaseActivity;

    invoke-virtual {v4}, Lcom/youku/gamecenter/GameBaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, v2, Lcom/youku/gamecenter/data/GameInfo;->packagename:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/youku/gamecenter/widgets/GameCustomNotification;->clearSingleUpgradeNotify(Landroid/content/Context;Ljava/lang/String;)V

    .line 634
    .end local v0    # "downloadInfo":Lcom/youku/gamecenter/download/DownloadInfo;
    .end local v2    # "info":Lcom/youku/gamecenter/data/GameInfo;
    :cond_1
    return-void
.end method
