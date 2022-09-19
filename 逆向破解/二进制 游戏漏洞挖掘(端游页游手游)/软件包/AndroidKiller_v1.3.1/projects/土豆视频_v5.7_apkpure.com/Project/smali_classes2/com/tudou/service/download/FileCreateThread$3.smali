.class Lcom/tudou/service/download/FileCreateThread$3;
.super Ljava/lang/Thread;
.source "FileCreateThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/service/download/FileCreateThread;->init(Lcom/tudou/service/download/DownloadInfo;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/service/download/FileCreateThread;

.field final synthetic val$info:Lcom/tudou/service/download/DownloadInfo;


# direct methods
.method constructor <init>(Lcom/tudou/service/download/FileCreateThread;Lcom/tudou/service/download/DownloadInfo;)V
    .locals 0

    .prologue
    .line 274
    iput-object p1, p0, Lcom/tudou/service/download/FileCreateThread$3;->this$0:Lcom/tudou/service/download/FileCreateThread;

    iput-object p2, p0, Lcom/tudou/service/download/FileCreateThread$3;->val$info:Lcom/tudou/service/download/DownloadInfo;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 276
    iget-object v0, p0, Lcom/tudou/service/download/FileCreateThread$3;->val$info:Lcom/tudou/service/download/DownloadInfo;

    iget-object v0, v0, Lcom/tudou/service/download/DownloadInfo;->imgUrl:Ljava/lang/String;

    iget-object v1, p0, Lcom/tudou/service/download/FileCreateThread$3;->val$info:Lcom/tudou/service/download/DownloadInfo;

    iget-object v1, v1, Lcom/tudou/service/download/DownloadInfo;->savePath:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/tudou/service/download/DownloadUtils;->createVideoThumbnail(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    return-void
.end method
