.class Lcom/tudou/service/download/DownloadManager$3;
.super Ljava/lang/Thread;
.source "DownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/service/download/DownloadManager;->getNewDownloadedData()Ljava/util/HashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/service/download/DownloadManager;

.field final synthetic val$d:Lcom/tudou/service/download/DownloadInfo;


# direct methods
.method constructor <init>(Lcom/tudou/service/download/DownloadManager;Lcom/tudou/service/download/DownloadInfo;)V
    .locals 0

    .prologue
    .line 252
    iput-object p1, p0, Lcom/tudou/service/download/DownloadManager$3;->this$0:Lcom/tudou/service/download/DownloadManager;

    iput-object p2, p0, Lcom/tudou/service/download/DownloadManager$3;->val$d:Lcom/tudou/service/download/DownloadInfo;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 255
    :try_start_0
    iget-object v0, p0, Lcom/tudou/service/download/DownloadManager$3;->val$d:Lcom/tudou/service/download/DownloadInfo;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tudou/service/download/DownloadUtils;->getDownloadData(Lcom/tudou/service/download/DownloadInfo;Lcom/tudou/service/download/IVideoDownloadCallBack;)Z

    .line 256
    invoke-static {}, Lcom/tudou/service/download/DownloadManager;->access$200()Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/tudou/service/download/DownloadManager$3;->val$d:Lcom/tudou/service/download/DownloadInfo;

    iget-object v1, v1, Lcom/tudou/service/download/DownloadInfo;->videoid:Ljava/lang/String;

    iget-object v2, p0, Lcom/tudou/service/download/DownloadManager$3;->val$d:Lcom/tudou/service/download/DownloadInfo;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    iget-object v0, p0, Lcom/tudou/service/download/DownloadManager$3;->val$d:Lcom/tudou/service/download/DownloadInfo;

    invoke-static {v0}, Lcom/tudou/service/download/DownloadUtils;->makeDownloadInfoFile(Lcom/tudou/service/download/DownloadInfo;)Z

    .line 258
    iget-object v0, p0, Lcom/tudou/service/download/DownloadManager$3;->val$d:Lcom/tudou/service/download/DownloadInfo;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/tudou/service/download/DownloadUtils;->makeM3U8File(Lcom/tudou/service/download/DownloadInfo;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 261
    :goto_0
    return-void

    .line 259
    :catch_0
    move-exception v0

    goto :goto_0
.end method
