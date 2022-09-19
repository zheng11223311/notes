.class Lcom/tudou/service/download/DownloadManager$5;
.super Ljava/lang/Thread;
.source "DownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/service/download/DownloadManager;->deleteDownloaded(Lcom/tudou/service/download/DownloadInfo;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/service/download/DownloadManager;

.field final synthetic val$info:Lcom/tudou/service/download/DownloadInfo;


# direct methods
.method constructor <init>(Lcom/tudou/service/download/DownloadManager;Lcom/tudou/service/download/DownloadInfo;)V
    .locals 0

    .prologue
    .line 655
    iput-object p1, p0, Lcom/tudou/service/download/DownloadManager$5;->this$0:Lcom/tudou/service/download/DownloadManager;

    iput-object p2, p0, Lcom/tudou/service/download/DownloadManager$5;->val$info:Lcom/tudou/service/download/DownloadInfo;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 657
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/tudou/service/download/DownloadManager$5;->val$info:Lcom/tudou/service/download/DownloadInfo;

    iget-object v1, v1, Lcom/tudou/service/download/DownloadInfo;->savePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/youku/util/Util;->deleteFile(Ljava/io/File;)V

    .line 658
    return-void
.end method
