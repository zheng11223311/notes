.class Lcom/tudou/ui/activity/DetailActivity$8;
.super Ljava/lang/Object;
.source "DetailActivity.java"

# interfaces
.implements Lcom/youku/player/apiservice/ICacheInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/activity/DetailActivity;->initPlayer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mDownload:Lcom/tudou/service/download/DownloadManager;

.field final synthetic this$0:Lcom/tudou/ui/activity/DetailActivity;


# direct methods
.method constructor <init>(Lcom/tudou/ui/activity/DetailActivity;)V
    .locals 1

    .prologue
    .line 569
    iput-object p1, p0, Lcom/tudou/ui/activity/DetailActivity$8;->this$0:Lcom/tudou/ui/activity/DetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 570
    invoke-static {}, Lcom/tudou/service/download/DownloadManager;->getInstance()Lcom/tudou/service/download/DownloadManager;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/ui/activity/DetailActivity$8;->mDownload:Lcom/tudou/service/download/DownloadManager;

    return-void
.end method


# virtual methods
.method public afresh()V
    .locals 0

    .prologue
    .line 602
    return-void
.end method

.method public getDownloadInfo(Ljava/lang/String;)Lcom/youku/player/module/VideoCacheInfo;
    .locals 2
    .param p1, "vid"    # Ljava/lang/String;

    .prologue
    .line 596
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity$8;->this$0:Lcom/tudou/ui/activity/DetailActivity;

    iget-object v1, p0, Lcom/tudou/ui/activity/DetailActivity$8;->mDownload:Lcom/tudou/service/download/DownloadManager;

    invoke-virtual {v1, p1}, Lcom/tudou/service/download/DownloadManager;->getDownloadInfo(Ljava/lang/String;)Lcom/tudou/service/download/DownloadInfo;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tudou/ui/activity/DetailActivity;->access$700(Lcom/tudou/ui/activity/DetailActivity;Lcom/tudou/service/download/DownloadInfo;)Lcom/youku/player/module/VideoCacheInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDownloadInfo(Ljava/lang/String;I)Lcom/youku/player/module/VideoCacheInfo;
    .locals 2
    .param p1, "showId"    # Ljava/lang/String;
    .param p2, "videoseq"    # I

    .prologue
    .line 590
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity$8;->this$0:Lcom/tudou/ui/activity/DetailActivity;

    iget-object v1, p0, Lcom/tudou/ui/activity/DetailActivity$8;->mDownload:Lcom/tudou/service/download/DownloadManager;

    invoke-virtual {v1, p1, p2}, Lcom/tudou/service/download/DownloadManager;->getDownloadInfo(Ljava/lang/String;I)Lcom/tudou/service/download/DownloadInfo;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tudou/ui/activity/DetailActivity;->access$700(Lcom/tudou/ui/activity/DetailActivity;Lcom/tudou/service/download/DownloadInfo;)Lcom/youku/player/module/VideoCacheInfo;

    move-result-object v0

    return-object v0
.end method

.method public getNextDownloadInfo(Ljava/lang/String;)Lcom/youku/player/module/VideoCacheInfo;
    .locals 2
    .param p1, "vid"    # Ljava/lang/String;

    .prologue
    .line 585
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity$8;->this$0:Lcom/tudou/ui/activity/DetailActivity;

    iget-object v1, p0, Lcom/tudou/ui/activity/DetailActivity$8;->mDownload:Lcom/tudou/service/download/DownloadManager;

    invoke-virtual {v1, p1}, Lcom/tudou/service/download/DownloadManager;->getNextDownloadInfo(Ljava/lang/String;)Lcom/tudou/service/download/DownloadInfo;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tudou/ui/activity/DetailActivity;->access$700(Lcom/tudou/ui/activity/DetailActivity;Lcom/tudou/service/download/DownloadInfo;)Lcom/youku/player/module/VideoCacheInfo;

    move-result-object v0

    return-object v0
.end method

.method public isDownloadFinished(Ljava/lang/String;)Z
    .locals 1
    .param p1, "videoid"    # Ljava/lang/String;

    .prologue
    .line 580
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity$8;->mDownload:Lcom/tudou/service/download/DownloadManager;

    invoke-virtual {v0, p1}, Lcom/tudou/service/download/DownloadManager;->isDownloadFinished(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public makeDownloadInfoFile(Lcom/youku/player/module/VideoCacheInfo;)V
    .locals 1
    .param p1, "downloadInfo"    # Lcom/youku/player/module/VideoCacheInfo;

    .prologue
    .line 574
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity$8;->this$0:Lcom/tudou/ui/activity/DetailActivity;

    invoke-static {v0, p1}, Lcom/tudou/ui/activity/DetailActivity;->access$600(Lcom/tudou/ui/activity/DetailActivity;Lcom/youku/player/module/VideoCacheInfo;)Lcom/tudou/service/download/DownloadInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/tudou/service/download/DownloadUtils;->makeDownloadInfoFile(Lcom/tudou/service/download/DownloadInfo;)Z

    .line 576
    return-void
.end method

.method public startCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/youku/player/apiservice/IStartCacheCallBack;)V
    .locals 0
    .param p1, "vid"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "language"    # Ljava/lang/String;
    .param p4, "format"    # I
    .param p5, "callback"    # Lcom/youku/player/apiservice/IStartCacheCallBack;

    .prologue
    .line 608
    return-void
.end method

.method public startCache([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILcom/youku/player/apiservice/IStartCacheCallBack;)V
    .locals 0
    .param p1, "vids"    # [Ljava/lang/String;
    .param p2, "titles"    # [Ljava/lang/String;
    .param p3, "language"    # Ljava/lang/String;
    .param p4, "format"    # I
    .param p5, "callback"    # Lcom/youku/player/apiservice/IStartCacheCallBack;

    .prologue
    .line 614
    return-void
.end method
